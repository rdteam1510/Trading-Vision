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
dense_126/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_126/kernel
u
$dense_126/kernel/Read/ReadVariableOpReadVariableOpdense_126/kernel*
_output_shapes

:
*
dtype0
t
dense_126/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_126/bias
m
"dense_126/bias/Read/ReadVariableOpReadVariableOpdense_126/bias*
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
lstm_378/lstm_cell_378/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_378/lstm_cell_378/kernel
?
1lstm_378/lstm_cell_378/kernel/Read/ReadVariableOpReadVariableOplstm_378/lstm_cell_378/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_378/lstm_cell_378/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_378/lstm_cell_378/recurrent_kernel
?
;lstm_378/lstm_cell_378/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_378/lstm_cell_378/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_378/lstm_cell_378/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_378/lstm_cell_378/bias
?
/lstm_378/lstm_cell_378/bias/Read/ReadVariableOpReadVariableOplstm_378/lstm_cell_378/bias*
_output_shapes	
:?*
dtype0
?
lstm_379/lstm_cell_379/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_379/lstm_cell_379/kernel
?
1lstm_379/lstm_cell_379/kernel/Read/ReadVariableOpReadVariableOplstm_379/lstm_cell_379/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_379/lstm_cell_379/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_379/lstm_cell_379/recurrent_kernel
?
;lstm_379/lstm_cell_379/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_379/lstm_cell_379/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_379/lstm_cell_379/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_379/lstm_cell_379/bias
?
/lstm_379/lstm_cell_379/bias/Read/ReadVariableOpReadVariableOplstm_379/lstm_cell_379/bias*
_output_shapes	
:?*
dtype0
?
lstm_380/lstm_cell_380/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_380/lstm_cell_380/kernel
?
1lstm_380/lstm_cell_380/kernel/Read/ReadVariableOpReadVariableOplstm_380/lstm_cell_380/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_380/lstm_cell_380/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_380/lstm_cell_380/recurrent_kernel
?
;lstm_380/lstm_cell_380/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_380/lstm_cell_380/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_380/lstm_cell_380/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_380/lstm_cell_380/bias
?
/lstm_380/lstm_cell_380/bias/Read/ReadVariableOpReadVariableOplstm_380/lstm_cell_380/bias*
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
Adam/dense_126/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_126/kernel/m
?
+Adam/dense_126/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_126/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_126/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_126/bias/m
{
)Adam/dense_126/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_126/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_378/lstm_cell_378/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_378/lstm_cell_378/kernel/m
?
8Adam/lstm_378/lstm_cell_378/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_378/lstm_cell_378/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_378/lstm_cell_378/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_378/lstm_cell_378/recurrent_kernel/m
?
BAdam/lstm_378/lstm_cell_378/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_378/lstm_cell_378/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_378/lstm_cell_378/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_378/lstm_cell_378/bias/m
?
6Adam/lstm_378/lstm_cell_378/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_378/lstm_cell_378/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_379/lstm_cell_379/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_379/lstm_cell_379/kernel/m
?
8Adam/lstm_379/lstm_cell_379/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_379/lstm_cell_379/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_379/lstm_cell_379/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_379/lstm_cell_379/recurrent_kernel/m
?
BAdam/lstm_379/lstm_cell_379/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_379/lstm_cell_379/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_379/lstm_cell_379/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_379/lstm_cell_379/bias/m
?
6Adam/lstm_379/lstm_cell_379/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_379/lstm_cell_379/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_380/lstm_cell_380/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_380/lstm_cell_380/kernel/m
?
8Adam/lstm_380/lstm_cell_380/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_380/lstm_cell_380/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_380/lstm_cell_380/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_380/lstm_cell_380/recurrent_kernel/m
?
BAdam/lstm_380/lstm_cell_380/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_380/lstm_cell_380/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_380/lstm_cell_380/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_380/lstm_cell_380/bias/m
?
6Adam/lstm_380/lstm_cell_380/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_380/lstm_cell_380/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_126/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_126/kernel/v
?
+Adam/dense_126/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_126/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_126/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_126/bias/v
{
)Adam/dense_126/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_126/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_378/lstm_cell_378/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_378/lstm_cell_378/kernel/v
?
8Adam/lstm_378/lstm_cell_378/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_378/lstm_cell_378/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_378/lstm_cell_378/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_378/lstm_cell_378/recurrent_kernel/v
?
BAdam/lstm_378/lstm_cell_378/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_378/lstm_cell_378/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_378/lstm_cell_378/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_378/lstm_cell_378/bias/v
?
6Adam/lstm_378/lstm_cell_378/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_378/lstm_cell_378/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_379/lstm_cell_379/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_379/lstm_cell_379/kernel/v
?
8Adam/lstm_379/lstm_cell_379/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_379/lstm_cell_379/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_379/lstm_cell_379/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_379/lstm_cell_379/recurrent_kernel/v
?
BAdam/lstm_379/lstm_cell_379/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_379/lstm_cell_379/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_379/lstm_cell_379/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_379/lstm_cell_379/bias/v
?
6Adam/lstm_379/lstm_cell_379/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_379/lstm_cell_379/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_380/lstm_cell_380/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_380/lstm_cell_380/kernel/v
?
8Adam/lstm_380/lstm_cell_380/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_380/lstm_cell_380/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_380/lstm_cell_380/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_380/lstm_cell_380/recurrent_kernel/v
?
BAdam/lstm_380/lstm_cell_380/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_380/lstm_cell_380/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_380/lstm_cell_380/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_380/lstm_cell_380/bias/v
?
6Adam/lstm_380/lstm_cell_380/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_380/lstm_cell_380/bias/v*
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
VARIABLE_VALUEdense_126/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_126/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_378/lstm_cell_378/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_378/lstm_cell_378/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_378/lstm_cell_378/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_379/lstm_cell_379/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_379/lstm_cell_379/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_379/lstm_cell_379/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_380/lstm_cell_380/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_380/lstm_cell_380/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_380/lstm_cell_380/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_126/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_126/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_378/lstm_cell_378/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_378/lstm_cell_378/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_378/lstm_cell_378/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_379/lstm_cell_379/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_379/lstm_cell_379/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_379/lstm_cell_379/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_380/lstm_cell_380/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_380/lstm_cell_380/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_380/lstm_cell_380/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_126/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_126/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_378/lstm_cell_378/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_378/lstm_cell_378/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_378/lstm_cell_378/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_379/lstm_cell_379/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_379/lstm_cell_379/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_379/lstm_cell_379/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_380/lstm_cell_380/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_380/lstm_cell_380/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_380/lstm_cell_380/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_378_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_378_inputlstm_378/lstm_cell_378/kernel'lstm_378/lstm_cell_378/recurrent_kernellstm_378/lstm_cell_378/biaslstm_379/lstm_cell_379/kernel'lstm_379/lstm_cell_379/recurrent_kernellstm_379/lstm_cell_379/biaslstm_380/lstm_cell_380/kernel'lstm_380/lstm_cell_380/recurrent_kernellstm_380/lstm_cell_380/biasdense_126/kerneldense_126/bias*
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
%__inference_signature_wrapper_1701909
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_126/kernel/Read/ReadVariableOp"dense_126/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_378/lstm_cell_378/kernel/Read/ReadVariableOp;lstm_378/lstm_cell_378/recurrent_kernel/Read/ReadVariableOp/lstm_378/lstm_cell_378/bias/Read/ReadVariableOp1lstm_379/lstm_cell_379/kernel/Read/ReadVariableOp;lstm_379/lstm_cell_379/recurrent_kernel/Read/ReadVariableOp/lstm_379/lstm_cell_379/bias/Read/ReadVariableOp1lstm_380/lstm_cell_380/kernel/Read/ReadVariableOp;lstm_380/lstm_cell_380/recurrent_kernel/Read/ReadVariableOp/lstm_380/lstm_cell_380/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_126/kernel/m/Read/ReadVariableOp)Adam/dense_126/bias/m/Read/ReadVariableOp8Adam/lstm_378/lstm_cell_378/kernel/m/Read/ReadVariableOpBAdam/lstm_378/lstm_cell_378/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_378/lstm_cell_378/bias/m/Read/ReadVariableOp8Adam/lstm_379/lstm_cell_379/kernel/m/Read/ReadVariableOpBAdam/lstm_379/lstm_cell_379/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_379/lstm_cell_379/bias/m/Read/ReadVariableOp8Adam/lstm_380/lstm_cell_380/kernel/m/Read/ReadVariableOpBAdam/lstm_380/lstm_cell_380/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_380/lstm_cell_380/bias/m/Read/ReadVariableOp+Adam/dense_126/kernel/v/Read/ReadVariableOp)Adam/dense_126/bias/v/Read/ReadVariableOp8Adam/lstm_378/lstm_cell_378/kernel/v/Read/ReadVariableOpBAdam/lstm_378/lstm_cell_378/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_378/lstm_cell_378/bias/v/Read/ReadVariableOp8Adam/lstm_379/lstm_cell_379/kernel/v/Read/ReadVariableOpBAdam/lstm_379/lstm_cell_379/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_379/lstm_cell_379/bias/v/Read/ReadVariableOp8Adam/lstm_380/lstm_cell_380/kernel/v/Read/ReadVariableOpBAdam/lstm_380/lstm_cell_380/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_380/lstm_cell_380/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1705121
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_126/kerneldense_126/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_378/lstm_cell_378/kernel'lstm_378/lstm_cell_378/recurrent_kernellstm_378/lstm_cell_378/biaslstm_379/lstm_cell_379/kernel'lstm_379/lstm_cell_379/recurrent_kernellstm_379/lstm_cell_379/biaslstm_380/lstm_cell_380/kernel'lstm_380/lstm_cell_380/recurrent_kernellstm_380/lstm_cell_380/biastotalcountAdam/dense_126/kernel/mAdam/dense_126/bias/m$Adam/lstm_378/lstm_cell_378/kernel/m.Adam/lstm_378/lstm_cell_378/recurrent_kernel/m"Adam/lstm_378/lstm_cell_378/bias/m$Adam/lstm_379/lstm_cell_379/kernel/m.Adam/lstm_379/lstm_cell_379/recurrent_kernel/m"Adam/lstm_379/lstm_cell_379/bias/m$Adam/lstm_380/lstm_cell_380/kernel/m.Adam/lstm_380/lstm_cell_380/recurrent_kernel/m"Adam/lstm_380/lstm_cell_380/bias/mAdam/dense_126/kernel/vAdam/dense_126/bias/v$Adam/lstm_378/lstm_cell_378/kernel/v.Adam/lstm_378/lstm_cell_378/recurrent_kernel/v"Adam/lstm_378/lstm_cell_378/bias/v$Adam/lstm_379/lstm_cell_379/kernel/v.Adam/lstm_379/lstm_cell_379/recurrent_kernel/v"Adam/lstm_379/lstm_cell_379/bias/v$Adam/lstm_380/lstm_cell_380/kernel/v.Adam/lstm_380/lstm_cell_380/recurrent_kernel/v"Adam/lstm_380/lstm_cell_380/bias/v*4
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
#__inference__traced_restore_1705251??+
?K
?
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703147
inputs_0?
,lstm_cell_279_matmul_readvariableop_resource:	?A
.lstm_cell_279_matmul_1_readvariableop_resource:	d?<
-lstm_cell_279_biasadd_readvariableop_resource:	?
identity??$lstm_cell_279/BiasAdd/ReadVariableOp?#lstm_cell_279/MatMul/ReadVariableOp?%lstm_cell_279/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_279/MatMul/ReadVariableOpReadVariableOp,lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_279/MatMulMatMulstrided_slice_2:output:0+lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_279/MatMul_1MatMulzeros:output:0-lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_279/addAddV2lstm_cell_279/MatMul:product:0 lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_279/BiasAddBiasAddlstm_cell_279/add:z:0,lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_279/splitSplit&lstm_cell_279/split/split_dim:output:0lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_279/SigmoidSigmoidlstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_1Sigmoidlstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_279/mulMullstm_cell_279/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_279/ReluRelulstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_1Mullstm_cell_279/Sigmoid:y:0 lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_279/add_1AddV2lstm_cell_279/mul:z:0lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_2Sigmoidlstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_279/Relu_1Relulstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_2Mullstm_cell_279/Sigmoid_2:y:0"lstm_cell_279/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_279_matmul_readvariableop_resource.lstm_cell_279_matmul_1_readvariableop_resource-lstm_cell_279_biasadd_readvariableop_resource*
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
while_body_1703063*
condR
while_cond_1703062*K
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
NoOpNoOp%^lstm_cell_279/BiasAdd/ReadVariableOp$^lstm_cell_279/MatMul/ReadVariableOp&^lstm_cell_279/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_279/BiasAdd/ReadVariableOp$lstm_cell_279/BiasAdd/ReadVariableOp2J
#lstm_cell_279/MatMul/ReadVariableOp#lstm_cell_279/MatMul/ReadVariableOp2N
%lstm_cell_279/MatMul_1/ReadVariableOp%lstm_cell_279/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1701279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1701279___redundant_placeholder05
1while_while_cond_1701279___redundant_placeholder15
1while_while_cond_1701279___redundant_placeholder25
1while_while_cond_1701279___redundant_placeholder3
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
while_cond_1700763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1700763___redundant_placeholder05
1while_while_cond_1700763___redundant_placeholder15
1while_while_cond_1700763___redundant_placeholder25
1while_while_cond_1700763___redundant_placeholder3
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
*__inference_lstm_379_layer_call_fn_1703455
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700340|
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
while_body_1701610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_279_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_279_matmul_readvariableop_resource:	?G
4while_lstm_cell_279_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_279_biasadd_readvariableop_resource:	???*while/lstm_cell_279/BiasAdd/ReadVariableOp?)while/lstm_cell_279/MatMul/ReadVariableOp?+while/lstm_cell_279/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_279/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_279/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_279/addAddV2$while/lstm_cell_279/MatMul:product:0&while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_279/BiasAddBiasAddwhile/lstm_cell_279/add:z:02while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_279/splitSplit,while/lstm_cell_279/split/split_dim:output:0$while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_279/SigmoidSigmoid"while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_1Sigmoid"while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mulMul!while/lstm_cell_279/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_279/ReluRelu"while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_1Mulwhile/lstm_cell_279/Sigmoid:y:0&while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/add_1AddV2while/lstm_cell_279/mul:z:0while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_2Sigmoid"while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_279/Relu_1Reluwhile/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_2Mul!while/lstm_cell_279/Sigmoid_2:y:0(while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_279/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_279/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_279/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_279/BiasAdd/ReadVariableOp*^while/lstm_cell_279/MatMul/ReadVariableOp,^while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_279_biasadd_readvariableop_resource5while_lstm_cell_279_biasadd_readvariableop_resource_0"n
4while_lstm_cell_279_matmul_1_readvariableop_resource6while_lstm_cell_279_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_279_matmul_readvariableop_resource4while_lstm_cell_279_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_279/BiasAdd/ReadVariableOp*while/lstm_cell_279/BiasAdd/ReadVariableOp2V
)while/lstm_cell_279/MatMul/ReadVariableOp)while/lstm_cell_279/MatMul/ReadVariableOp2Z
+while/lstm_cell_279/MatMul_1/ReadVariableOp+while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1702920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_279_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_279_matmul_readvariableop_resource:	?G
4while_lstm_cell_279_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_279_biasadd_readvariableop_resource:	???*while/lstm_cell_279/BiasAdd/ReadVariableOp?)while/lstm_cell_279/MatMul/ReadVariableOp?+while/lstm_cell_279/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_279/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_279/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_279/addAddV2$while/lstm_cell_279/MatMul:product:0&while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_279/BiasAddBiasAddwhile/lstm_cell_279/add:z:02while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_279/splitSplit,while/lstm_cell_279/split/split_dim:output:0$while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_279/SigmoidSigmoid"while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_1Sigmoid"while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mulMul!while/lstm_cell_279/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_279/ReluRelu"while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_1Mulwhile/lstm_cell_279/Sigmoid:y:0&while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/add_1AddV2while/lstm_cell_279/mul:z:0while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_2Sigmoid"while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_279/Relu_1Reluwhile/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_2Mul!while/lstm_cell_279/Sigmoid_2:y:0(while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_279/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_279/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_279/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_279/BiasAdd/ReadVariableOp*^while/lstm_cell_279/MatMul/ReadVariableOp,^while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_279_biasadd_readvariableop_resource5while_lstm_cell_279_biasadd_readvariableop_resource_0"n
4while_lstm_cell_279_matmul_1_readvariableop_resource6while_lstm_cell_279_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_279_matmul_readvariableop_resource4while_lstm_cell_279_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_279/BiasAdd/ReadVariableOp*while/lstm_cell_279/BiasAdd/ReadVariableOp2V
)while/lstm_cell_279/MatMul/ReadVariableOp)while/lstm_cell_279/MatMul/ReadVariableOp2Z
+while/lstm_cell_279/MatMul_1/ReadVariableOp+while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700066

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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700416

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
/__inference_lstm_cell_281_layer_call_fn_1704914

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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700562o
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
?#
?
while_body_1700271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_280_1700295_0:	d?0
while_lstm_cell_280_1700297_0:	2?,
while_lstm_cell_280_1700299_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_280_1700295:	d?.
while_lstm_cell_280_1700297:	2?*
while_lstm_cell_280_1700299:	???+while/lstm_cell_280/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_280/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_280_1700295_0while_lstm_cell_280_1700297_0while_lstm_cell_280_1700299_0*
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700212?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_280/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_280/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_280/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_280/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_280_1700295while_lstm_cell_280_1700295_0"<
while_lstm_cell_280_1700297while_lstm_cell_280_1700297_0"<
while_lstm_cell_280_1700299while_lstm_cell_280_1700299_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_280/StatefulPartitionedCall+while/lstm_cell_280/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_378_layer_call_fn_1702839
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1699990|
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
0__inference_sequential_126_layer_call_fn_1701936

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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701173o
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
while_cond_1702919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1702919___redundant_placeholder05
1while_while_cond_1702919___redundant_placeholder15
1while_while_cond_1702919___redundant_placeholder25
1while_while_cond_1702919___redundant_placeholder3
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703290

inputs?
,lstm_cell_279_matmul_readvariableop_resource:	?A
.lstm_cell_279_matmul_1_readvariableop_resource:	d?<
-lstm_cell_279_biasadd_readvariableop_resource:	?
identity??$lstm_cell_279/BiasAdd/ReadVariableOp?#lstm_cell_279/MatMul/ReadVariableOp?%lstm_cell_279/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_279/MatMul/ReadVariableOpReadVariableOp,lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_279/MatMulMatMulstrided_slice_2:output:0+lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_279/MatMul_1MatMulzeros:output:0-lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_279/addAddV2lstm_cell_279/MatMul:product:0 lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_279/BiasAddBiasAddlstm_cell_279/add:z:0,lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_279/splitSplit&lstm_cell_279/split/split_dim:output:0lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_279/SigmoidSigmoidlstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_1Sigmoidlstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_279/mulMullstm_cell_279/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_279/ReluRelulstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_1Mullstm_cell_279/Sigmoid:y:0 lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_279/add_1AddV2lstm_cell_279/mul:z:0lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_2Sigmoidlstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_279/Relu_1Relulstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_2Mullstm_cell_279/Sigmoid_2:y:0"lstm_cell_279/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_279_matmul_readvariableop_resource.lstm_cell_279_matmul_1_readvariableop_resource-lstm_cell_279_biasadd_readvariableop_resource*
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
while_body_1703206*
condR
while_cond_1703205*K
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
NoOpNoOp%^lstm_cell_279/BiasAdd/ReadVariableOp$^lstm_cell_279/MatMul/ReadVariableOp&^lstm_cell_279/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_279/BiasAdd/ReadVariableOp$lstm_cell_279/BiasAdd/ReadVariableOp2J
#lstm_cell_279/MatMul/ReadVariableOp#lstm_cell_279/MatMul/ReadVariableOp2N
%lstm_cell_279/MatMul_1/ReadVariableOp%lstm_cell_279/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_1705121
file_prefix/
+savev2_dense_126_kernel_read_readvariableop-
)savev2_dense_126_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_378_lstm_cell_378_kernel_read_readvariableopF
Bsavev2_lstm_378_lstm_cell_378_recurrent_kernel_read_readvariableop:
6savev2_lstm_378_lstm_cell_378_bias_read_readvariableop<
8savev2_lstm_379_lstm_cell_379_kernel_read_readvariableopF
Bsavev2_lstm_379_lstm_cell_379_recurrent_kernel_read_readvariableop:
6savev2_lstm_379_lstm_cell_379_bias_read_readvariableop<
8savev2_lstm_380_lstm_cell_380_kernel_read_readvariableopF
Bsavev2_lstm_380_lstm_cell_380_recurrent_kernel_read_readvariableop:
6savev2_lstm_380_lstm_cell_380_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_126_kernel_m_read_readvariableop4
0savev2_adam_dense_126_bias_m_read_readvariableopC
?savev2_adam_lstm_378_lstm_cell_378_kernel_m_read_readvariableopM
Isavev2_adam_lstm_378_lstm_cell_378_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_378_lstm_cell_378_bias_m_read_readvariableopC
?savev2_adam_lstm_379_lstm_cell_379_kernel_m_read_readvariableopM
Isavev2_adam_lstm_379_lstm_cell_379_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_379_lstm_cell_379_bias_m_read_readvariableopC
?savev2_adam_lstm_380_lstm_cell_380_kernel_m_read_readvariableopM
Isavev2_adam_lstm_380_lstm_cell_380_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_380_lstm_cell_380_bias_m_read_readvariableop6
2savev2_adam_dense_126_kernel_v_read_readvariableop4
0savev2_adam_dense_126_bias_v_read_readvariableopC
?savev2_adam_lstm_378_lstm_cell_378_kernel_v_read_readvariableopM
Isavev2_adam_lstm_378_lstm_cell_378_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_378_lstm_cell_378_bias_v_read_readvariableopC
?savev2_adam_lstm_379_lstm_cell_379_kernel_v_read_readvariableopM
Isavev2_adam_lstm_379_lstm_cell_379_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_379_lstm_cell_379_bias_v_read_readvariableopC
?savev2_adam_lstm_380_lstm_cell_380_kernel_v_read_readvariableopM
Isavev2_adam_lstm_380_lstm_cell_380_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_380_lstm_cell_380_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_126_kernel_read_readvariableop)savev2_dense_126_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_378_lstm_cell_378_kernel_read_readvariableopBsavev2_lstm_378_lstm_cell_378_recurrent_kernel_read_readvariableop6savev2_lstm_378_lstm_cell_378_bias_read_readvariableop8savev2_lstm_379_lstm_cell_379_kernel_read_readvariableopBsavev2_lstm_379_lstm_cell_379_recurrent_kernel_read_readvariableop6savev2_lstm_379_lstm_cell_379_bias_read_readvariableop8savev2_lstm_380_lstm_cell_380_kernel_read_readvariableopBsavev2_lstm_380_lstm_cell_380_recurrent_kernel_read_readvariableop6savev2_lstm_380_lstm_cell_380_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_126_kernel_m_read_readvariableop0savev2_adam_dense_126_bias_m_read_readvariableop?savev2_adam_lstm_378_lstm_cell_378_kernel_m_read_readvariableopIsavev2_adam_lstm_378_lstm_cell_378_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_378_lstm_cell_378_bias_m_read_readvariableop?savev2_adam_lstm_379_lstm_cell_379_kernel_m_read_readvariableopIsavev2_adam_lstm_379_lstm_cell_379_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_379_lstm_cell_379_bias_m_read_readvariableop?savev2_adam_lstm_380_lstm_cell_380_kernel_m_read_readvariableopIsavev2_adam_lstm_380_lstm_cell_380_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_380_lstm_cell_380_bias_m_read_readvariableop2savev2_adam_dense_126_kernel_v_read_readvariableop0savev2_adam_dense_126_bias_v_read_readvariableop?savev2_adam_lstm_378_lstm_cell_378_kernel_v_read_readvariableopIsavev2_adam_lstm_378_lstm_cell_378_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_378_lstm_cell_378_bias_v_read_readvariableop?savev2_adam_lstm_379_lstm_cell_379_kernel_v_read_readvariableopIsavev2_adam_lstm_379_lstm_cell_379_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_379_lstm_cell_379_bias_v_read_readvariableop?savev2_adam_lstm_380_lstm_cell_380_kernel_v_read_readvariableopIsavev2_adam_lstm_380_lstm_cell_380_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_380_lstm_cell_380_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_1703063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_279_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_279_matmul_readvariableop_resource:	?G
4while_lstm_cell_279_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_279_biasadd_readvariableop_resource:	???*while/lstm_cell_279/BiasAdd/ReadVariableOp?)while/lstm_cell_279/MatMul/ReadVariableOp?+while/lstm_cell_279/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_279/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_279/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_279/addAddV2$while/lstm_cell_279/MatMul:product:0&while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_279/BiasAddBiasAddwhile/lstm_cell_279/add:z:02while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_279/splitSplit,while/lstm_cell_279/split/split_dim:output:0$while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_279/SigmoidSigmoid"while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_1Sigmoid"while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mulMul!while/lstm_cell_279/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_279/ReluRelu"while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_1Mulwhile/lstm_cell_279/Sigmoid:y:0&while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/add_1AddV2while/lstm_cell_279/mul:z:0while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_2Sigmoid"while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_279/Relu_1Reluwhile/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_2Mul!while/lstm_cell_279/Sigmoid_2:y:0(while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_279/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_279/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_279/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_279/BiasAdd/ReadVariableOp*^while/lstm_cell_279/MatMul/ReadVariableOp,^while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_279_biasadd_readvariableop_resource5while_lstm_cell_279_biasadd_readvariableop_resource_0"n
4while_lstm_cell_279_matmul_1_readvariableop_resource6while_lstm_cell_279_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_279_matmul_readvariableop_resource4while_lstm_cell_279_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_279/BiasAdd/ReadVariableOp*while/lstm_cell_279/BiasAdd/ReadVariableOp2V
)while/lstm_cell_279/MatMul/ReadVariableOp)while/lstm_cell_279/MatMul/ReadVariableOp2Z
+while/lstm_cell_279/MatMul_1/ReadVariableOp+while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703004
inputs_0?
,lstm_cell_279_matmul_readvariableop_resource:	?A
.lstm_cell_279_matmul_1_readvariableop_resource:	d?<
-lstm_cell_279_biasadd_readvariableop_resource:	?
identity??$lstm_cell_279/BiasAdd/ReadVariableOp?#lstm_cell_279/MatMul/ReadVariableOp?%lstm_cell_279/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_279/MatMul/ReadVariableOpReadVariableOp,lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_279/MatMulMatMulstrided_slice_2:output:0+lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_279/MatMul_1MatMulzeros:output:0-lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_279/addAddV2lstm_cell_279/MatMul:product:0 lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_279/BiasAddBiasAddlstm_cell_279/add:z:0,lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_279/splitSplit&lstm_cell_279/split/split_dim:output:0lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_279/SigmoidSigmoidlstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_1Sigmoidlstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_279/mulMullstm_cell_279/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_279/ReluRelulstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_1Mullstm_cell_279/Sigmoid:y:0 lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_279/add_1AddV2lstm_cell_279/mul:z:0lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_2Sigmoidlstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_279/Relu_1Relulstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_2Mullstm_cell_279/Sigmoid_2:y:0"lstm_cell_279/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_279_matmul_readvariableop_resource.lstm_cell_279_matmul_1_readvariableop_resource-lstm_cell_279_biasadd_readvariableop_resource*
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
while_body_1702920*
condR
while_cond_1702919*K
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
NoOpNoOp%^lstm_cell_279/BiasAdd/ReadVariableOp$^lstm_cell_279/MatMul/ReadVariableOp&^lstm_cell_279/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_279/BiasAdd/ReadVariableOp$lstm_cell_279/BiasAdd/ReadVariableOp2J
#lstm_cell_279/MatMul/ReadVariableOp#lstm_cell_279/MatMul/ReadVariableOp2N
%lstm_cell_279/MatMul_1/ReadVariableOp%lstm_cell_279/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1699920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1699920___redundant_placeholder05
1while_while_cond_1699920___redundant_placeholder15
1while_while_cond_1699920___redundant_placeholder25
1while_while_cond_1699920___redundant_placeholder3
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704665

inputs>
,lstm_cell_281_matmul_readvariableop_resource:2(@
.lstm_cell_281_matmul_1_readvariableop_resource:
(;
-lstm_cell_281_biasadd_readvariableop_resource:(
identity??$lstm_cell_281/BiasAdd/ReadVariableOp?#lstm_cell_281/MatMul/ReadVariableOp?%lstm_cell_281/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_281/MatMul/ReadVariableOpReadVariableOp,lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_281/MatMulMatMulstrided_slice_2:output:0+lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_281/MatMul_1MatMulzeros:output:0-lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_281/addAddV2lstm_cell_281/MatMul:product:0 lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_281/BiasAddBiasAddlstm_cell_281/add:z:0,lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_281/splitSplit&lstm_cell_281/split/split_dim:output:0lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_281/SigmoidSigmoidlstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_1Sigmoidlstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_281/mulMullstm_cell_281/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_281/ReluRelulstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_1Mullstm_cell_281/Sigmoid:y:0 lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_281/add_1AddV2lstm_cell_281/mul:z:0lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_2Sigmoidlstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_281/Relu_1Relulstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_2Mullstm_cell_281/Sigmoid_2:y:0"lstm_cell_281/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_281_matmul_readvariableop_resource.lstm_cell_281_matmul_1_readvariableop_resource-lstm_cell_281_biasadd_readvariableop_resource*
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
while_body_1704581*
condR
while_cond_1704580*K
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
NoOpNoOp%^lstm_cell_281/BiasAdd/ReadVariableOp$^lstm_cell_281/MatMul/ReadVariableOp&^lstm_cell_281/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_281/BiasAdd/ReadVariableOp$lstm_cell_281/BiasAdd/ReadVariableOp2J
#lstm_cell_281/MatMul/ReadVariableOp#lstm_cell_281/MatMul/ReadVariableOp2N
%lstm_cell_281/MatMul_1/ReadVariableOp%lstm_cell_281/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703906

inputs?
,lstm_cell_280_matmul_readvariableop_resource:	d?A
.lstm_cell_280_matmul_1_readvariableop_resource:	2?<
-lstm_cell_280_biasadd_readvariableop_resource:	?
identity??$lstm_cell_280/BiasAdd/ReadVariableOp?#lstm_cell_280/MatMul/ReadVariableOp?%lstm_cell_280/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_280/MatMul/ReadVariableOpReadVariableOp,lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_280/MatMulMatMulstrided_slice_2:output:0+lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_280/MatMul_1MatMulzeros:output:0-lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_280/addAddV2lstm_cell_280/MatMul:product:0 lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_280/BiasAddBiasAddlstm_cell_280/add:z:0,lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_280/splitSplit&lstm_cell_280/split/split_dim:output:0lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_280/SigmoidSigmoidlstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_1Sigmoidlstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_280/mulMullstm_cell_280/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_280/ReluRelulstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_1Mullstm_cell_280/Sigmoid:y:0 lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_280/add_1AddV2lstm_cell_280/mul:z:0lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_2Sigmoidlstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_280/Relu_1Relulstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_2Mullstm_cell_280/Sigmoid_2:y:0"lstm_cell_280/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_280_matmul_readvariableop_resource.lstm_cell_280_matmul_1_readvariableop_resource-lstm_cell_280_biasadd_readvariableop_resource*
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
while_body_1703822*
condR
while_cond_1703821*K
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
NoOpNoOp%^lstm_cell_280/BiasAdd/ReadVariableOp$^lstm_cell_280/MatMul/ReadVariableOp&^lstm_cell_280/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_280/BiasAdd/ReadVariableOp$lstm_cell_280/BiasAdd/ReadVariableOp2J
#lstm_cell_280/MatMul/ReadVariableOp#lstm_cell_280/MatMul/ReadVariableOp2N
%lstm_cell_280/MatMul_1/ReadVariableOp%lstm_cell_280/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700998

inputs?
,lstm_cell_280_matmul_readvariableop_resource:	d?A
.lstm_cell_280_matmul_1_readvariableop_resource:	2?<
-lstm_cell_280_biasadd_readvariableop_resource:	?
identity??$lstm_cell_280/BiasAdd/ReadVariableOp?#lstm_cell_280/MatMul/ReadVariableOp?%lstm_cell_280/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_280/MatMul/ReadVariableOpReadVariableOp,lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_280/MatMulMatMulstrided_slice_2:output:0+lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_280/MatMul_1MatMulzeros:output:0-lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_280/addAddV2lstm_cell_280/MatMul:product:0 lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_280/BiasAddBiasAddlstm_cell_280/add:z:0,lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_280/splitSplit&lstm_cell_280/split/split_dim:output:0lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_280/SigmoidSigmoidlstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_1Sigmoidlstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_280/mulMullstm_cell_280/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_280/ReluRelulstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_1Mullstm_cell_280/Sigmoid:y:0 lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_280/add_1AddV2lstm_cell_280/mul:z:0lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_2Sigmoidlstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_280/Relu_1Relulstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_2Mullstm_cell_280/Sigmoid_2:y:0"lstm_cell_280/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_280_matmul_readvariableop_resource.lstm_cell_280_matmul_1_readvariableop_resource-lstm_cell_280_biasadd_readvariableop_resource*
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
while_body_1700914*
condR
while_cond_1700913*K
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
NoOpNoOp%^lstm_cell_280/BiasAdd/ReadVariableOp$^lstm_cell_280/MatMul/ReadVariableOp&^lstm_cell_280/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_280/BiasAdd/ReadVariableOp$lstm_cell_280/BiasAdd/ReadVariableOp2J
#lstm_cell_280/MatMul/ReadVariableOp#lstm_cell_280/MatMul/ReadVariableOp2N
%lstm_cell_280/MatMul_1/ReadVariableOp%lstm_cell_280/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1703062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1703062___redundant_placeholder05
1while_while_cond_1703062___redundant_placeholder15
1while_while_cond_1703062___redundant_placeholder25
1while_while_cond_1703062___redundant_placeholder3
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
while_cond_1704437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1704437___redundant_placeholder05
1while_while_cond_1704437___redundant_placeholder15
1while_while_cond_1704437___redundant_placeholder25
1while_while_cond_1704437___redundant_placeholder3
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
F__inference_dense_126_layer_call_and_return_conditional_losses_1701166

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
?
/__inference_lstm_cell_279_layer_call_fn_1704718

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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699862o
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
??
?
K__inference_sequential_126_layer_call_and_return_conditional_losses_1702817

inputsH
5lstm_378_lstm_cell_279_matmul_readvariableop_resource:	?J
7lstm_378_lstm_cell_279_matmul_1_readvariableop_resource:	d?E
6lstm_378_lstm_cell_279_biasadd_readvariableop_resource:	?H
5lstm_379_lstm_cell_280_matmul_readvariableop_resource:	d?J
7lstm_379_lstm_cell_280_matmul_1_readvariableop_resource:	2?E
6lstm_379_lstm_cell_280_biasadd_readvariableop_resource:	?G
5lstm_380_lstm_cell_281_matmul_readvariableop_resource:2(I
7lstm_380_lstm_cell_281_matmul_1_readvariableop_resource:
(D
6lstm_380_lstm_cell_281_biasadd_readvariableop_resource:(:
(dense_126_matmul_readvariableop_resource:
7
)dense_126_biasadd_readvariableop_resource:
identity?? dense_126/BiasAdd/ReadVariableOp?dense_126/MatMul/ReadVariableOp?-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp?,lstm_378/lstm_cell_279/MatMul/ReadVariableOp?.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp?lstm_378/while?-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp?,lstm_379/lstm_cell_280/MatMul/ReadVariableOp?.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp?lstm_379/while?-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp?,lstm_380/lstm_cell_281/MatMul/ReadVariableOp?.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp?lstm_380/whileD
lstm_378/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_378/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_378/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_378/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_sliceStridedSlicelstm_378/Shape:output:0%lstm_378/strided_slice/stack:output:0'lstm_378/strided_slice/stack_1:output:0'lstm_378/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_378/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_378/zeros/packedPacklstm_378/strided_slice:output:0 lstm_378/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_378/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_378/zerosFilllstm_378/zeros/packed:output:0lstm_378/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_378/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_378/zeros_1/packedPacklstm_378/strided_slice:output:0"lstm_378/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_378/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_378/zeros_1Fill lstm_378/zeros_1/packed:output:0lstm_378/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_378/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_378/transpose	Transposeinputs lstm_378/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_378/Shape_1Shapelstm_378/transpose:y:0*
T0*
_output_shapes
:h
lstm_378/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_378/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_378/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_slice_1StridedSlicelstm_378/Shape_1:output:0'lstm_378/strided_slice_1/stack:output:0)lstm_378/strided_slice_1/stack_1:output:0)lstm_378/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_378/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_378/TensorArrayV2TensorListReserve-lstm_378/TensorArrayV2/element_shape:output:0!lstm_378/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_378/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_378/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_378/transpose:y:0Glstm_378/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_378/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_378/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_378/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_slice_2StridedSlicelstm_378/transpose:y:0'lstm_378/strided_slice_2/stack:output:0)lstm_378/strided_slice_2/stack_1:output:0)lstm_378/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_378/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp5lstm_378_lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_378/lstm_cell_279/MatMulMatMul!lstm_378/strided_slice_2:output:04lstm_378/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp7lstm_378_lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_378/lstm_cell_279/MatMul_1MatMullstm_378/zeros:output:06lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_378/lstm_cell_279/addAddV2'lstm_378/lstm_cell_279/MatMul:product:0)lstm_378/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp6lstm_378_lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_378/lstm_cell_279/BiasAddBiasAddlstm_378/lstm_cell_279/add:z:05lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_378/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_378/lstm_cell_279/splitSplit/lstm_378/lstm_cell_279/split/split_dim:output:0'lstm_378/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_378/lstm_cell_279/SigmoidSigmoid%lstm_378/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_378/lstm_cell_279/Sigmoid_1Sigmoid%lstm_378/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/mulMul$lstm_378/lstm_cell_279/Sigmoid_1:y:0lstm_378/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_378/lstm_cell_279/ReluRelu%lstm_378/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/mul_1Mul"lstm_378/lstm_cell_279/Sigmoid:y:0)lstm_378/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/add_1AddV2lstm_378/lstm_cell_279/mul:z:0 lstm_378/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_378/lstm_cell_279/Sigmoid_2Sigmoid%lstm_378/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_378/lstm_cell_279/Relu_1Relu lstm_378/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/mul_2Mul$lstm_378/lstm_cell_279/Sigmoid_2:y:0+lstm_378/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_378/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_378/TensorArrayV2_1TensorListReserve/lstm_378/TensorArrayV2_1/element_shape:output:0!lstm_378/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_378/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_378/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_378/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_378/whileWhile$lstm_378/while/loop_counter:output:0*lstm_378/while/maximum_iterations:output:0lstm_378/time:output:0!lstm_378/TensorArrayV2_1:handle:0lstm_378/zeros:output:0lstm_378/zeros_1:output:0!lstm_378/strided_slice_1:output:0@lstm_378/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_378_lstm_cell_279_matmul_readvariableop_resource7lstm_378_lstm_cell_279_matmul_1_readvariableop_resource6lstm_378_lstm_cell_279_biasadd_readvariableop_resource*
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
lstm_378_while_body_1702449*'
condR
lstm_378_while_cond_1702448*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_378/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_378/TensorArrayV2Stack/TensorListStackTensorListStacklstm_378/while:output:3Blstm_378/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_378/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_378/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_378/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_slice_3StridedSlice4lstm_378/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_378/strided_slice_3/stack:output:0)lstm_378/strided_slice_3/stack_1:output:0)lstm_378/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_378/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_378/transpose_1	Transpose4lstm_378/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_378/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_378/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_379/ShapeShapelstm_378/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_379/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_379/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_379/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_sliceStridedSlicelstm_379/Shape:output:0%lstm_379/strided_slice/stack:output:0'lstm_379/strided_slice/stack_1:output:0'lstm_379/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_379/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_379/zeros/packedPacklstm_379/strided_slice:output:0 lstm_379/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_379/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_379/zerosFilllstm_379/zeros/packed:output:0lstm_379/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_379/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_379/zeros_1/packedPacklstm_379/strided_slice:output:0"lstm_379/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_379/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_379/zeros_1Fill lstm_379/zeros_1/packed:output:0lstm_379/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_379/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_379/transpose	Transposelstm_378/transpose_1:y:0 lstm_379/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_379/Shape_1Shapelstm_379/transpose:y:0*
T0*
_output_shapes
:h
lstm_379/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_379/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_379/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_slice_1StridedSlicelstm_379/Shape_1:output:0'lstm_379/strided_slice_1/stack:output:0)lstm_379/strided_slice_1/stack_1:output:0)lstm_379/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_379/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_379/TensorArrayV2TensorListReserve-lstm_379/TensorArrayV2/element_shape:output:0!lstm_379/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_379/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_379/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_379/transpose:y:0Glstm_379/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_379/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_379/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_379/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_slice_2StridedSlicelstm_379/transpose:y:0'lstm_379/strided_slice_2/stack:output:0)lstm_379/strided_slice_2/stack_1:output:0)lstm_379/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_379/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp5lstm_379_lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_379/lstm_cell_280/MatMulMatMul!lstm_379/strided_slice_2:output:04lstm_379/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp7lstm_379_lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_379/lstm_cell_280/MatMul_1MatMullstm_379/zeros:output:06lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_379/lstm_cell_280/addAddV2'lstm_379/lstm_cell_280/MatMul:product:0)lstm_379/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp6lstm_379_lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_379/lstm_cell_280/BiasAddBiasAddlstm_379/lstm_cell_280/add:z:05lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_379/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_379/lstm_cell_280/splitSplit/lstm_379/lstm_cell_280/split/split_dim:output:0'lstm_379/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_379/lstm_cell_280/SigmoidSigmoid%lstm_379/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_379/lstm_cell_280/Sigmoid_1Sigmoid%lstm_379/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/mulMul$lstm_379/lstm_cell_280/Sigmoid_1:y:0lstm_379/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_379/lstm_cell_280/ReluRelu%lstm_379/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/mul_1Mul"lstm_379/lstm_cell_280/Sigmoid:y:0)lstm_379/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/add_1AddV2lstm_379/lstm_cell_280/mul:z:0 lstm_379/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_379/lstm_cell_280/Sigmoid_2Sigmoid%lstm_379/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_379/lstm_cell_280/Relu_1Relu lstm_379/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/mul_2Mul$lstm_379/lstm_cell_280/Sigmoid_2:y:0+lstm_379/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_379/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_379/TensorArrayV2_1TensorListReserve/lstm_379/TensorArrayV2_1/element_shape:output:0!lstm_379/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_379/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_379/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_379/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_379/whileWhile$lstm_379/while/loop_counter:output:0*lstm_379/while/maximum_iterations:output:0lstm_379/time:output:0!lstm_379/TensorArrayV2_1:handle:0lstm_379/zeros:output:0lstm_379/zeros_1:output:0!lstm_379/strided_slice_1:output:0@lstm_379/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_379_lstm_cell_280_matmul_readvariableop_resource7lstm_379_lstm_cell_280_matmul_1_readvariableop_resource6lstm_379_lstm_cell_280_biasadd_readvariableop_resource*
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
lstm_379_while_body_1702588*'
condR
lstm_379_while_cond_1702587*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_379/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_379/TensorArrayV2Stack/TensorListStackTensorListStacklstm_379/while:output:3Blstm_379/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_379/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_379/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_379/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_slice_3StridedSlice4lstm_379/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_379/strided_slice_3/stack:output:0)lstm_379/strided_slice_3/stack_1:output:0)lstm_379/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_379/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_379/transpose_1	Transpose4lstm_379/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_379/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_379/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_380/ShapeShapelstm_379/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_380/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_380/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_380/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_sliceStridedSlicelstm_380/Shape:output:0%lstm_380/strided_slice/stack:output:0'lstm_380/strided_slice/stack_1:output:0'lstm_380/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_380/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_380/zeros/packedPacklstm_380/strided_slice:output:0 lstm_380/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_380/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_380/zerosFilllstm_380/zeros/packed:output:0lstm_380/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_380/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_380/zeros_1/packedPacklstm_380/strided_slice:output:0"lstm_380/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_380/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_380/zeros_1Fill lstm_380/zeros_1/packed:output:0lstm_380/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_380/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_380/transpose	Transposelstm_379/transpose_1:y:0 lstm_380/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_380/Shape_1Shapelstm_380/transpose:y:0*
T0*
_output_shapes
:h
lstm_380/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_380/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_380/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_slice_1StridedSlicelstm_380/Shape_1:output:0'lstm_380/strided_slice_1/stack:output:0)lstm_380/strided_slice_1/stack_1:output:0)lstm_380/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_380/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_380/TensorArrayV2TensorListReserve-lstm_380/TensorArrayV2/element_shape:output:0!lstm_380/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_380/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_380/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_380/transpose:y:0Glstm_380/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_380/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_380/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_380/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_slice_2StridedSlicelstm_380/transpose:y:0'lstm_380/strided_slice_2/stack:output:0)lstm_380/strided_slice_2/stack_1:output:0)lstm_380/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_380/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp5lstm_380_lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_380/lstm_cell_281/MatMulMatMul!lstm_380/strided_slice_2:output:04lstm_380/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp7lstm_380_lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_380/lstm_cell_281/MatMul_1MatMullstm_380/zeros:output:06lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_380/lstm_cell_281/addAddV2'lstm_380/lstm_cell_281/MatMul:product:0)lstm_380/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp6lstm_380_lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_380/lstm_cell_281/BiasAddBiasAddlstm_380/lstm_cell_281/add:z:05lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_380/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_380/lstm_cell_281/splitSplit/lstm_380/lstm_cell_281/split/split_dim:output:0'lstm_380/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_380/lstm_cell_281/SigmoidSigmoid%lstm_380/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_380/lstm_cell_281/Sigmoid_1Sigmoid%lstm_380/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/mulMul$lstm_380/lstm_cell_281/Sigmoid_1:y:0lstm_380/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_380/lstm_cell_281/ReluRelu%lstm_380/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/mul_1Mul"lstm_380/lstm_cell_281/Sigmoid:y:0)lstm_380/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/add_1AddV2lstm_380/lstm_cell_281/mul:z:0 lstm_380/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_380/lstm_cell_281/Sigmoid_2Sigmoid%lstm_380/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_380/lstm_cell_281/Relu_1Relu lstm_380/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/mul_2Mul$lstm_380/lstm_cell_281/Sigmoid_2:y:0+lstm_380/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_380/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_380/TensorArrayV2_1TensorListReserve/lstm_380/TensorArrayV2_1/element_shape:output:0!lstm_380/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_380/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_380/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_380/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_380/whileWhile$lstm_380/while/loop_counter:output:0*lstm_380/while/maximum_iterations:output:0lstm_380/time:output:0!lstm_380/TensorArrayV2_1:handle:0lstm_380/zeros:output:0lstm_380/zeros_1:output:0!lstm_380/strided_slice_1:output:0@lstm_380/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_380_lstm_cell_281_matmul_readvariableop_resource7lstm_380_lstm_cell_281_matmul_1_readvariableop_resource6lstm_380_lstm_cell_281_biasadd_readvariableop_resource*
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
lstm_380_while_body_1702727*'
condR
lstm_380_while_cond_1702726*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_380/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_380/TensorArrayV2Stack/TensorListStackTensorListStacklstm_380/while:output:3Blstm_380/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_380/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_380/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_380/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_slice_3StridedSlice4lstm_380/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_380/strided_slice_3/stack:output:0)lstm_380/strided_slice_3/stack_1:output:0)lstm_380/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_380/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_380/transpose_1	Transpose4lstm_380/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_380/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_380/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_126/MatMul/ReadVariableOpReadVariableOp(dense_126_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_126/MatMulMatMul!lstm_380/strided_slice_3:output:0'dense_126/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_126/BiasAdd/ReadVariableOpReadVariableOp)dense_126_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_126/BiasAddBiasAdddense_126/MatMul:product:0(dense_126/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_126/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_126/BiasAdd/ReadVariableOp ^dense_126/MatMul/ReadVariableOp.^lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp-^lstm_378/lstm_cell_279/MatMul/ReadVariableOp/^lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp^lstm_378/while.^lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp-^lstm_379/lstm_cell_280/MatMul/ReadVariableOp/^lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp^lstm_379/while.^lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp-^lstm_380/lstm_cell_281/MatMul/ReadVariableOp/^lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp^lstm_380/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_126/BiasAdd/ReadVariableOp dense_126/BiasAdd/ReadVariableOp2B
dense_126/MatMul/ReadVariableOpdense_126/MatMul/ReadVariableOp2^
-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp2\
,lstm_378/lstm_cell_279/MatMul/ReadVariableOp,lstm_378/lstm_cell_279/MatMul/ReadVariableOp2`
.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp2 
lstm_378/whilelstm_378/while2^
-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp2\
,lstm_379/lstm_cell_280/MatMul/ReadVariableOp,lstm_379/lstm_cell_280/MatMul/ReadVariableOp2`
.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp2 
lstm_379/whilelstm_379/while2^
-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp2\
,lstm_380/lstm_cell_281/MatMul/ReadVariableOp,lstm_380/lstm_cell_281/MatMul/ReadVariableOp2`
.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp2 
lstm_380/whilelstm_380/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_378_while_cond_1702448.
*lstm_378_while_lstm_378_while_loop_counter4
0lstm_378_while_lstm_378_while_maximum_iterations
lstm_378_while_placeholder 
lstm_378_while_placeholder_1 
lstm_378_while_placeholder_2 
lstm_378_while_placeholder_30
,lstm_378_while_less_lstm_378_strided_slice_1G
Clstm_378_while_lstm_378_while_cond_1702448___redundant_placeholder0G
Clstm_378_while_lstm_378_while_cond_1702448___redundant_placeholder1G
Clstm_378_while_lstm_378_while_cond_1702448___redundant_placeholder2G
Clstm_378_while_lstm_378_while_cond_1702448___redundant_placeholder3
lstm_378_while_identity
?
lstm_378/while/LessLesslstm_378_while_placeholder,lstm_378_while_less_lstm_378_strided_slice_1*
T0*
_output_shapes
: ]
lstm_378/while/IdentityIdentitylstm_378/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_378_while_identity lstm_378/while/Identity:output:0*(
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
0__inference_sequential_126_layer_call_fn_1701963

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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701762o
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
0__inference_sequential_126_layer_call_fn_1701198
lstm_378_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_378_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701173o
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
_user_specified_namelstm_378_input
?J
?
E__inference_lstm_379_layer_call_and_return_conditional_losses_1701529

inputs?
,lstm_cell_280_matmul_readvariableop_resource:	d?A
.lstm_cell_280_matmul_1_readvariableop_resource:	2?<
-lstm_cell_280_biasadd_readvariableop_resource:	?
identity??$lstm_cell_280/BiasAdd/ReadVariableOp?#lstm_cell_280/MatMul/ReadVariableOp?%lstm_cell_280/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_280/MatMul/ReadVariableOpReadVariableOp,lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_280/MatMulMatMulstrided_slice_2:output:0+lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_280/MatMul_1MatMulzeros:output:0-lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_280/addAddV2lstm_cell_280/MatMul:product:0 lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_280/BiasAddBiasAddlstm_cell_280/add:z:0,lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_280/splitSplit&lstm_cell_280/split/split_dim:output:0lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_280/SigmoidSigmoidlstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_1Sigmoidlstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_280/mulMullstm_cell_280/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_280/ReluRelulstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_1Mullstm_cell_280/Sigmoid:y:0 lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_280/add_1AddV2lstm_cell_280/mul:z:0lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_2Sigmoidlstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_280/Relu_1Relulstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_2Mullstm_cell_280/Sigmoid_2:y:0"lstm_cell_280/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_280_matmul_readvariableop_resource.lstm_cell_280_matmul_1_readvariableop_resource-lstm_cell_280_biasadd_readvariableop_resource*
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
while_body_1701445*
condR
while_cond_1701444*K
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
NoOpNoOp%^lstm_cell_280/BiasAdd/ReadVariableOp$^lstm_cell_280/MatMul/ReadVariableOp&^lstm_cell_280/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_280/BiasAdd/ReadVariableOp$lstm_cell_280/BiasAdd/ReadVariableOp2J
#lstm_cell_280/MatMul/ReadVariableOp#lstm_cell_280/MatMul/ReadVariableOp2N
%lstm_cell_280/MatMul_1/ReadVariableOp%lstm_cell_280/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1703964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1703964___redundant_placeholder05
1while_while_cond_1703964___redundant_placeholder15
1while_while_cond_1703964___redundant_placeholder25
1while_while_cond_1703964___redundant_placeholder3
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
F__inference_dense_126_layer_call_and_return_conditional_losses_1704684

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
?
/__inference_lstm_cell_280_layer_call_fn_1704799

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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700066o
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700149

inputs(
lstm_cell_280_1700067:	d?(
lstm_cell_280_1700069:	2?$
lstm_cell_280_1700071:	?
identity??%lstm_cell_280/StatefulPartitionedCall?while;
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
%lstm_cell_280/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_280_1700067lstm_cell_280_1700069lstm_cell_280_1700071*
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700066n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_280_1700067lstm_cell_280_1700069lstm_cell_280_1700071*
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
while_body_1700080*
condR
while_cond_1700079*K
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
NoOpNoOp&^lstm_cell_280/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_280/StatefulPartitionedCall%lstm_cell_280/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1705251
file_prefix3
!assignvariableop_dense_126_kernel:
/
!assignvariableop_1_dense_126_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_378_lstm_cell_378_kernel:	?M
:assignvariableop_8_lstm_378_lstm_cell_378_recurrent_kernel:	d?=
.assignvariableop_9_lstm_378_lstm_cell_378_bias:	?D
1assignvariableop_10_lstm_379_lstm_cell_379_kernel:	d?N
;assignvariableop_11_lstm_379_lstm_cell_379_recurrent_kernel:	2?>
/assignvariableop_12_lstm_379_lstm_cell_379_bias:	?C
1assignvariableop_13_lstm_380_lstm_cell_380_kernel:2(M
;assignvariableop_14_lstm_380_lstm_cell_380_recurrent_kernel:
(=
/assignvariableop_15_lstm_380_lstm_cell_380_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_126_kernel_m:
7
)assignvariableop_19_adam_dense_126_bias_m:K
8assignvariableop_20_adam_lstm_378_lstm_cell_378_kernel_m:	?U
Bassignvariableop_21_adam_lstm_378_lstm_cell_378_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_378_lstm_cell_378_bias_m:	?K
8assignvariableop_23_adam_lstm_379_lstm_cell_379_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_379_lstm_cell_379_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_379_lstm_cell_379_bias_m:	?J
8assignvariableop_26_adam_lstm_380_lstm_cell_380_kernel_m:2(T
Bassignvariableop_27_adam_lstm_380_lstm_cell_380_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_380_lstm_cell_380_bias_m:(=
+assignvariableop_29_adam_dense_126_kernel_v:
7
)assignvariableop_30_adam_dense_126_bias_v:K
8assignvariableop_31_adam_lstm_378_lstm_cell_378_kernel_v:	?U
Bassignvariableop_32_adam_lstm_378_lstm_cell_378_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_378_lstm_cell_378_bias_v:	?K
8assignvariableop_34_adam_lstm_379_lstm_cell_379_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_379_lstm_cell_379_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_379_lstm_cell_379_bias_v:	?J
8assignvariableop_37_adam_lstm_380_lstm_cell_380_kernel_v:2(T
Bassignvariableop_38_adam_lstm_380_lstm_cell_380_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_380_lstm_cell_380_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_126_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_126_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_378_lstm_cell_378_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_378_lstm_cell_378_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_378_lstm_cell_378_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_379_lstm_cell_379_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_379_lstm_cell_379_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_379_lstm_cell_379_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_380_lstm_cell_380_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_380_lstm_cell_380_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_380_lstm_cell_380_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_126_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_126_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_378_lstm_cell_378_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_378_lstm_cell_378_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_378_lstm_cell_378_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_379_lstm_cell_379_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_379_lstm_cell_379_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_379_lstm_cell_379_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_380_lstm_cell_380_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_380_lstm_cell_380_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_380_lstm_cell_380_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_126_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_126_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_378_lstm_cell_378_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_378_lstm_cell_378_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_378_lstm_cell_378_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_379_lstm_cell_379_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_379_lstm_cell_379_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_379_lstm_cell_379_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_380_lstm_cell_380_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_380_lstm_cell_380_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_380_lstm_cell_380_bias_vIdentity_39:output:0"/device:CPU:0*
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
??
?
"__inference__wrapped_model_1699649
lstm_378_inputW
Dsequential_126_lstm_378_lstm_cell_279_matmul_readvariableop_resource:	?Y
Fsequential_126_lstm_378_lstm_cell_279_matmul_1_readvariableop_resource:	d?T
Esequential_126_lstm_378_lstm_cell_279_biasadd_readvariableop_resource:	?W
Dsequential_126_lstm_379_lstm_cell_280_matmul_readvariableop_resource:	d?Y
Fsequential_126_lstm_379_lstm_cell_280_matmul_1_readvariableop_resource:	2?T
Esequential_126_lstm_379_lstm_cell_280_biasadd_readvariableop_resource:	?V
Dsequential_126_lstm_380_lstm_cell_281_matmul_readvariableop_resource:2(X
Fsequential_126_lstm_380_lstm_cell_281_matmul_1_readvariableop_resource:
(S
Esequential_126_lstm_380_lstm_cell_281_biasadd_readvariableop_resource:(I
7sequential_126_dense_126_matmul_readvariableop_resource:
F
8sequential_126_dense_126_biasadd_readvariableop_resource:
identity??/sequential_126/dense_126/BiasAdd/ReadVariableOp?.sequential_126/dense_126/MatMul/ReadVariableOp?<sequential_126/lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp?;sequential_126/lstm_378/lstm_cell_279/MatMul/ReadVariableOp?=sequential_126/lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp?sequential_126/lstm_378/while?<sequential_126/lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp?;sequential_126/lstm_379/lstm_cell_280/MatMul/ReadVariableOp?=sequential_126/lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp?sequential_126/lstm_379/while?<sequential_126/lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp?;sequential_126/lstm_380/lstm_cell_281/MatMul/ReadVariableOp?=sequential_126/lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp?sequential_126/lstm_380/while[
sequential_126/lstm_378/ShapeShapelstm_378_input*
T0*
_output_shapes
:u
+sequential_126/lstm_378/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_126/lstm_378/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_126/lstm_378/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_126/lstm_378/strided_sliceStridedSlice&sequential_126/lstm_378/Shape:output:04sequential_126/lstm_378/strided_slice/stack:output:06sequential_126/lstm_378/strided_slice/stack_1:output:06sequential_126/lstm_378/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_126/lstm_378/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_126/lstm_378/zeros/packedPack.sequential_126/lstm_378/strided_slice:output:0/sequential_126/lstm_378/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_126/lstm_378/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_126/lstm_378/zerosFill-sequential_126/lstm_378/zeros/packed:output:0,sequential_126/lstm_378/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_126/lstm_378/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_126/lstm_378/zeros_1/packedPack.sequential_126/lstm_378/strided_slice:output:01sequential_126/lstm_378/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_126/lstm_378/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_126/lstm_378/zeros_1Fill/sequential_126/lstm_378/zeros_1/packed:output:0.sequential_126/lstm_378/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_126/lstm_378/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_126/lstm_378/transpose	Transposelstm_378_input/sequential_126/lstm_378/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_126/lstm_378/Shape_1Shape%sequential_126/lstm_378/transpose:y:0*
T0*
_output_shapes
:w
-sequential_126/lstm_378/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_378/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_126/lstm_378/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_378/strided_slice_1StridedSlice(sequential_126/lstm_378/Shape_1:output:06sequential_126/lstm_378/strided_slice_1/stack:output:08sequential_126/lstm_378/strided_slice_1/stack_1:output:08sequential_126/lstm_378/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_126/lstm_378/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_126/lstm_378/TensorArrayV2TensorListReserve<sequential_126/lstm_378/TensorArrayV2/element_shape:output:00sequential_126/lstm_378/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_126/lstm_378/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_126/lstm_378/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_126/lstm_378/transpose:y:0Vsequential_126/lstm_378/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_126/lstm_378/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_378/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_126/lstm_378/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_378/strided_slice_2StridedSlice%sequential_126/lstm_378/transpose:y:06sequential_126/lstm_378/strided_slice_2/stack:output:08sequential_126/lstm_378/strided_slice_2/stack_1:output:08sequential_126/lstm_378/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_126/lstm_378/lstm_cell_279/MatMul/ReadVariableOpReadVariableOpDsequential_126_lstm_378_lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_126/lstm_378/lstm_cell_279/MatMulMatMul0sequential_126/lstm_378/strided_slice_2:output:0Csequential_126/lstm_378/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_126/lstm_378/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOpFsequential_126_lstm_378_lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_126/lstm_378/lstm_cell_279/MatMul_1MatMul&sequential_126/lstm_378/zeros:output:0Esequential_126/lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_126/lstm_378/lstm_cell_279/addAddV26sequential_126/lstm_378/lstm_cell_279/MatMul:product:08sequential_126/lstm_378/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_126/lstm_378/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOpEsequential_126_lstm_378_lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_126/lstm_378/lstm_cell_279/BiasAddBiasAdd-sequential_126/lstm_378/lstm_cell_279/add:z:0Dsequential_126/lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_126/lstm_378/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_126/lstm_378/lstm_cell_279/splitSplit>sequential_126/lstm_378/lstm_cell_279/split/split_dim:output:06sequential_126/lstm_378/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_126/lstm_378/lstm_cell_279/SigmoidSigmoid4sequential_126/lstm_378/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_126/lstm_378/lstm_cell_279/Sigmoid_1Sigmoid4sequential_126/lstm_378/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_126/lstm_378/lstm_cell_279/mulMul3sequential_126/lstm_378/lstm_cell_279/Sigmoid_1:y:0(sequential_126/lstm_378/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_126/lstm_378/lstm_cell_279/ReluRelu4sequential_126/lstm_378/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_126/lstm_378/lstm_cell_279/mul_1Mul1sequential_126/lstm_378/lstm_cell_279/Sigmoid:y:08sequential_126/lstm_378/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_126/lstm_378/lstm_cell_279/add_1AddV2-sequential_126/lstm_378/lstm_cell_279/mul:z:0/sequential_126/lstm_378/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_126/lstm_378/lstm_cell_279/Sigmoid_2Sigmoid4sequential_126/lstm_378/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_126/lstm_378/lstm_cell_279/Relu_1Relu/sequential_126/lstm_378/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_126/lstm_378/lstm_cell_279/mul_2Mul3sequential_126/lstm_378/lstm_cell_279/Sigmoid_2:y:0:sequential_126/lstm_378/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_126/lstm_378/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_126/lstm_378/TensorArrayV2_1TensorListReserve>sequential_126/lstm_378/TensorArrayV2_1/element_shape:output:00sequential_126/lstm_378/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_126/lstm_378/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_126/lstm_378/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_126/lstm_378/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_126/lstm_378/whileWhile3sequential_126/lstm_378/while/loop_counter:output:09sequential_126/lstm_378/while/maximum_iterations:output:0%sequential_126/lstm_378/time:output:00sequential_126/lstm_378/TensorArrayV2_1:handle:0&sequential_126/lstm_378/zeros:output:0(sequential_126/lstm_378/zeros_1:output:00sequential_126/lstm_378/strided_slice_1:output:0Osequential_126/lstm_378/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_126_lstm_378_lstm_cell_279_matmul_readvariableop_resourceFsequential_126_lstm_378_lstm_cell_279_matmul_1_readvariableop_resourceEsequential_126_lstm_378_lstm_cell_279_biasadd_readvariableop_resource*
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
*sequential_126_lstm_378_while_body_1699281*6
cond.R,
*sequential_126_lstm_378_while_cond_1699280*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_126/lstm_378/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_126/lstm_378/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_126/lstm_378/while:output:3Qsequential_126/lstm_378/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_126/lstm_378/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_126/lstm_378/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_378/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_378/strided_slice_3StridedSliceCsequential_126/lstm_378/TensorArrayV2Stack/TensorListStack:tensor:06sequential_126/lstm_378/strided_slice_3/stack:output:08sequential_126/lstm_378/strided_slice_3/stack_1:output:08sequential_126/lstm_378/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_126/lstm_378/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_126/lstm_378/transpose_1	TransposeCsequential_126/lstm_378/TensorArrayV2Stack/TensorListStack:tensor:01sequential_126/lstm_378/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_126/lstm_378/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_126/lstm_379/ShapeShape'sequential_126/lstm_378/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_126/lstm_379/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_126/lstm_379/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_126/lstm_379/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_126/lstm_379/strided_sliceStridedSlice&sequential_126/lstm_379/Shape:output:04sequential_126/lstm_379/strided_slice/stack:output:06sequential_126/lstm_379/strided_slice/stack_1:output:06sequential_126/lstm_379/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_126/lstm_379/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_126/lstm_379/zeros/packedPack.sequential_126/lstm_379/strided_slice:output:0/sequential_126/lstm_379/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_126/lstm_379/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_126/lstm_379/zerosFill-sequential_126/lstm_379/zeros/packed:output:0,sequential_126/lstm_379/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_126/lstm_379/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_126/lstm_379/zeros_1/packedPack.sequential_126/lstm_379/strided_slice:output:01sequential_126/lstm_379/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_126/lstm_379/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_126/lstm_379/zeros_1Fill/sequential_126/lstm_379/zeros_1/packed:output:0.sequential_126/lstm_379/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_126/lstm_379/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_126/lstm_379/transpose	Transpose'sequential_126/lstm_378/transpose_1:y:0/sequential_126/lstm_379/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_126/lstm_379/Shape_1Shape%sequential_126/lstm_379/transpose:y:0*
T0*
_output_shapes
:w
-sequential_126/lstm_379/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_379/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_126/lstm_379/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_379/strided_slice_1StridedSlice(sequential_126/lstm_379/Shape_1:output:06sequential_126/lstm_379/strided_slice_1/stack:output:08sequential_126/lstm_379/strided_slice_1/stack_1:output:08sequential_126/lstm_379/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_126/lstm_379/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_126/lstm_379/TensorArrayV2TensorListReserve<sequential_126/lstm_379/TensorArrayV2/element_shape:output:00sequential_126/lstm_379/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_126/lstm_379/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_126/lstm_379/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_126/lstm_379/transpose:y:0Vsequential_126/lstm_379/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_126/lstm_379/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_379/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_126/lstm_379/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_379/strided_slice_2StridedSlice%sequential_126/lstm_379/transpose:y:06sequential_126/lstm_379/strided_slice_2/stack:output:08sequential_126/lstm_379/strided_slice_2/stack_1:output:08sequential_126/lstm_379/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_126/lstm_379/lstm_cell_280/MatMul/ReadVariableOpReadVariableOpDsequential_126_lstm_379_lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_126/lstm_379/lstm_cell_280/MatMulMatMul0sequential_126/lstm_379/strided_slice_2:output:0Csequential_126/lstm_379/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_126/lstm_379/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOpFsequential_126_lstm_379_lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_126/lstm_379/lstm_cell_280/MatMul_1MatMul&sequential_126/lstm_379/zeros:output:0Esequential_126/lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_126/lstm_379/lstm_cell_280/addAddV26sequential_126/lstm_379/lstm_cell_280/MatMul:product:08sequential_126/lstm_379/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_126/lstm_379/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOpEsequential_126_lstm_379_lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_126/lstm_379/lstm_cell_280/BiasAddBiasAdd-sequential_126/lstm_379/lstm_cell_280/add:z:0Dsequential_126/lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_126/lstm_379/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_126/lstm_379/lstm_cell_280/splitSplit>sequential_126/lstm_379/lstm_cell_280/split/split_dim:output:06sequential_126/lstm_379/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_126/lstm_379/lstm_cell_280/SigmoidSigmoid4sequential_126/lstm_379/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_126/lstm_379/lstm_cell_280/Sigmoid_1Sigmoid4sequential_126/lstm_379/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_126/lstm_379/lstm_cell_280/mulMul3sequential_126/lstm_379/lstm_cell_280/Sigmoid_1:y:0(sequential_126/lstm_379/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_126/lstm_379/lstm_cell_280/ReluRelu4sequential_126/lstm_379/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_126/lstm_379/lstm_cell_280/mul_1Mul1sequential_126/lstm_379/lstm_cell_280/Sigmoid:y:08sequential_126/lstm_379/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_126/lstm_379/lstm_cell_280/add_1AddV2-sequential_126/lstm_379/lstm_cell_280/mul:z:0/sequential_126/lstm_379/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_126/lstm_379/lstm_cell_280/Sigmoid_2Sigmoid4sequential_126/lstm_379/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_126/lstm_379/lstm_cell_280/Relu_1Relu/sequential_126/lstm_379/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_126/lstm_379/lstm_cell_280/mul_2Mul3sequential_126/lstm_379/lstm_cell_280/Sigmoid_2:y:0:sequential_126/lstm_379/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_126/lstm_379/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_126/lstm_379/TensorArrayV2_1TensorListReserve>sequential_126/lstm_379/TensorArrayV2_1/element_shape:output:00sequential_126/lstm_379/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_126/lstm_379/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_126/lstm_379/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_126/lstm_379/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_126/lstm_379/whileWhile3sequential_126/lstm_379/while/loop_counter:output:09sequential_126/lstm_379/while/maximum_iterations:output:0%sequential_126/lstm_379/time:output:00sequential_126/lstm_379/TensorArrayV2_1:handle:0&sequential_126/lstm_379/zeros:output:0(sequential_126/lstm_379/zeros_1:output:00sequential_126/lstm_379/strided_slice_1:output:0Osequential_126/lstm_379/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_126_lstm_379_lstm_cell_280_matmul_readvariableop_resourceFsequential_126_lstm_379_lstm_cell_280_matmul_1_readvariableop_resourceEsequential_126_lstm_379_lstm_cell_280_biasadd_readvariableop_resource*
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
*sequential_126_lstm_379_while_body_1699420*6
cond.R,
*sequential_126_lstm_379_while_cond_1699419*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_126/lstm_379/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_126/lstm_379/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_126/lstm_379/while:output:3Qsequential_126/lstm_379/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_126/lstm_379/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_126/lstm_379/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_379/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_379/strided_slice_3StridedSliceCsequential_126/lstm_379/TensorArrayV2Stack/TensorListStack:tensor:06sequential_126/lstm_379/strided_slice_3/stack:output:08sequential_126/lstm_379/strided_slice_3/stack_1:output:08sequential_126/lstm_379/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_126/lstm_379/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_126/lstm_379/transpose_1	TransposeCsequential_126/lstm_379/TensorArrayV2Stack/TensorListStack:tensor:01sequential_126/lstm_379/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_126/lstm_379/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_126/lstm_380/ShapeShape'sequential_126/lstm_379/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_126/lstm_380/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_126/lstm_380/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_126/lstm_380/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_126/lstm_380/strided_sliceStridedSlice&sequential_126/lstm_380/Shape:output:04sequential_126/lstm_380/strided_slice/stack:output:06sequential_126/lstm_380/strided_slice/stack_1:output:06sequential_126/lstm_380/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_126/lstm_380/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_126/lstm_380/zeros/packedPack.sequential_126/lstm_380/strided_slice:output:0/sequential_126/lstm_380/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_126/lstm_380/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_126/lstm_380/zerosFill-sequential_126/lstm_380/zeros/packed:output:0,sequential_126/lstm_380/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_126/lstm_380/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_126/lstm_380/zeros_1/packedPack.sequential_126/lstm_380/strided_slice:output:01sequential_126/lstm_380/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_126/lstm_380/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_126/lstm_380/zeros_1Fill/sequential_126/lstm_380/zeros_1/packed:output:0.sequential_126/lstm_380/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_126/lstm_380/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_126/lstm_380/transpose	Transpose'sequential_126/lstm_379/transpose_1:y:0/sequential_126/lstm_380/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_126/lstm_380/Shape_1Shape%sequential_126/lstm_380/transpose:y:0*
T0*
_output_shapes
:w
-sequential_126/lstm_380/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_380/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_126/lstm_380/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_380/strided_slice_1StridedSlice(sequential_126/lstm_380/Shape_1:output:06sequential_126/lstm_380/strided_slice_1/stack:output:08sequential_126/lstm_380/strided_slice_1/stack_1:output:08sequential_126/lstm_380/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_126/lstm_380/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_126/lstm_380/TensorArrayV2TensorListReserve<sequential_126/lstm_380/TensorArrayV2/element_shape:output:00sequential_126/lstm_380/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_126/lstm_380/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_126/lstm_380/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_126/lstm_380/transpose:y:0Vsequential_126/lstm_380/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_126/lstm_380/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_380/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_126/lstm_380/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_380/strided_slice_2StridedSlice%sequential_126/lstm_380/transpose:y:06sequential_126/lstm_380/strided_slice_2/stack:output:08sequential_126/lstm_380/strided_slice_2/stack_1:output:08sequential_126/lstm_380/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_126/lstm_380/lstm_cell_281/MatMul/ReadVariableOpReadVariableOpDsequential_126_lstm_380_lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_126/lstm_380/lstm_cell_281/MatMulMatMul0sequential_126/lstm_380/strided_slice_2:output:0Csequential_126/lstm_380/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_126/lstm_380/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOpFsequential_126_lstm_380_lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_126/lstm_380/lstm_cell_281/MatMul_1MatMul&sequential_126/lstm_380/zeros:output:0Esequential_126/lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_126/lstm_380/lstm_cell_281/addAddV26sequential_126/lstm_380/lstm_cell_281/MatMul:product:08sequential_126/lstm_380/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_126/lstm_380/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOpEsequential_126_lstm_380_lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_126/lstm_380/lstm_cell_281/BiasAddBiasAdd-sequential_126/lstm_380/lstm_cell_281/add:z:0Dsequential_126/lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_126/lstm_380/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_126/lstm_380/lstm_cell_281/splitSplit>sequential_126/lstm_380/lstm_cell_281/split/split_dim:output:06sequential_126/lstm_380/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_126/lstm_380/lstm_cell_281/SigmoidSigmoid4sequential_126/lstm_380/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_126/lstm_380/lstm_cell_281/Sigmoid_1Sigmoid4sequential_126/lstm_380/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_126/lstm_380/lstm_cell_281/mulMul3sequential_126/lstm_380/lstm_cell_281/Sigmoid_1:y:0(sequential_126/lstm_380/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_126/lstm_380/lstm_cell_281/ReluRelu4sequential_126/lstm_380/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_126/lstm_380/lstm_cell_281/mul_1Mul1sequential_126/lstm_380/lstm_cell_281/Sigmoid:y:08sequential_126/lstm_380/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_126/lstm_380/lstm_cell_281/add_1AddV2-sequential_126/lstm_380/lstm_cell_281/mul:z:0/sequential_126/lstm_380/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_126/lstm_380/lstm_cell_281/Sigmoid_2Sigmoid4sequential_126/lstm_380/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_126/lstm_380/lstm_cell_281/Relu_1Relu/sequential_126/lstm_380/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_126/lstm_380/lstm_cell_281/mul_2Mul3sequential_126/lstm_380/lstm_cell_281/Sigmoid_2:y:0:sequential_126/lstm_380/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_126/lstm_380/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_126/lstm_380/TensorArrayV2_1TensorListReserve>sequential_126/lstm_380/TensorArrayV2_1/element_shape:output:00sequential_126/lstm_380/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_126/lstm_380/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_126/lstm_380/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_126/lstm_380/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_126/lstm_380/whileWhile3sequential_126/lstm_380/while/loop_counter:output:09sequential_126/lstm_380/while/maximum_iterations:output:0%sequential_126/lstm_380/time:output:00sequential_126/lstm_380/TensorArrayV2_1:handle:0&sequential_126/lstm_380/zeros:output:0(sequential_126/lstm_380/zeros_1:output:00sequential_126/lstm_380/strided_slice_1:output:0Osequential_126/lstm_380/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_126_lstm_380_lstm_cell_281_matmul_readvariableop_resourceFsequential_126_lstm_380_lstm_cell_281_matmul_1_readvariableop_resourceEsequential_126_lstm_380_lstm_cell_281_biasadd_readvariableop_resource*
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
*sequential_126_lstm_380_while_body_1699559*6
cond.R,
*sequential_126_lstm_380_while_cond_1699558*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_126/lstm_380/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_126/lstm_380/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_126/lstm_380/while:output:3Qsequential_126/lstm_380/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_126/lstm_380/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_126/lstm_380/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_126/lstm_380/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_126/lstm_380/strided_slice_3StridedSliceCsequential_126/lstm_380/TensorArrayV2Stack/TensorListStack:tensor:06sequential_126/lstm_380/strided_slice_3/stack:output:08sequential_126/lstm_380/strided_slice_3/stack_1:output:08sequential_126/lstm_380/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_126/lstm_380/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_126/lstm_380/transpose_1	TransposeCsequential_126/lstm_380/TensorArrayV2Stack/TensorListStack:tensor:01sequential_126/lstm_380/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_126/lstm_380/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_126/dense_126/MatMul/ReadVariableOpReadVariableOp7sequential_126_dense_126_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_126/dense_126/MatMulMatMul0sequential_126/lstm_380/strided_slice_3:output:06sequential_126/dense_126/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_126/dense_126/BiasAdd/ReadVariableOpReadVariableOp8sequential_126_dense_126_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_126/dense_126/BiasAddBiasAdd)sequential_126/dense_126/MatMul:product:07sequential_126/dense_126/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_126/dense_126/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_126/dense_126/BiasAdd/ReadVariableOp/^sequential_126/dense_126/MatMul/ReadVariableOp=^sequential_126/lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp<^sequential_126/lstm_378/lstm_cell_279/MatMul/ReadVariableOp>^sequential_126/lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp^sequential_126/lstm_378/while=^sequential_126/lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp<^sequential_126/lstm_379/lstm_cell_280/MatMul/ReadVariableOp>^sequential_126/lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp^sequential_126/lstm_379/while=^sequential_126/lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp<^sequential_126/lstm_380/lstm_cell_281/MatMul/ReadVariableOp>^sequential_126/lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp^sequential_126/lstm_380/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_126/dense_126/BiasAdd/ReadVariableOp/sequential_126/dense_126/BiasAdd/ReadVariableOp2`
.sequential_126/dense_126/MatMul/ReadVariableOp.sequential_126/dense_126/MatMul/ReadVariableOp2|
<sequential_126/lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp<sequential_126/lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp2z
;sequential_126/lstm_378/lstm_cell_279/MatMul/ReadVariableOp;sequential_126/lstm_378/lstm_cell_279/MatMul/ReadVariableOp2~
=sequential_126/lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp=sequential_126/lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp2>
sequential_126/lstm_378/whilesequential_126/lstm_378/while2|
<sequential_126/lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp<sequential_126/lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp2z
;sequential_126/lstm_379/lstm_cell_280/MatMul/ReadVariableOp;sequential_126/lstm_379/lstm_cell_280/MatMul/ReadVariableOp2~
=sequential_126/lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp=sequential_126/lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp2>
sequential_126/lstm_379/whilesequential_126/lstm_379/while2|
<sequential_126/lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp<sequential_126/lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp2z
;sequential_126/lstm_380/lstm_cell_281/MatMul/ReadVariableOp;sequential_126/lstm_380/lstm_cell_281/MatMul/ReadVariableOp2~
=sequential_126/lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp=sequential_126/lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp2>
sequential_126/lstm_380/whilesequential_126/lstm_380/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_378_input
?
?
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699716

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
while_cond_1704151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1704151___redundant_placeholder05
1while_while_cond_1704151___redundant_placeholder15
1while_while_cond_1704151___redundant_placeholder25
1while_while_cond_1704151___redundant_placeholder3
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1700690

inputs'
lstm_cell_281_1700608:2('
lstm_cell_281_1700610:
(#
lstm_cell_281_1700612:(
identity??%lstm_cell_281/StatefulPartitionedCall?while;
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
%lstm_cell_281/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_281_1700608lstm_cell_281_1700610lstm_cell_281_1700612*
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700562n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_281_1700608lstm_cell_281_1700610lstm_cell_281_1700612*
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
while_body_1700621*
condR
while_cond_1700620*K
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
NoOpNoOp&^lstm_cell_281/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_281/StatefulPartitionedCall%lstm_cell_281/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701173

inputs#
lstm_378_1700849:	?#
lstm_378_1700851:	d?
lstm_378_1700853:	?#
lstm_379_1700999:	d?#
lstm_379_1701001:	2?
lstm_379_1701003:	?"
lstm_380_1701149:2("
lstm_380_1701151:
(
lstm_380_1701153:(#
dense_126_1701167:

dense_126_1701169:
identity??!dense_126/StatefulPartitionedCall? lstm_378/StatefulPartitionedCall? lstm_379/StatefulPartitionedCall? lstm_380/StatefulPartitionedCall?
 lstm_378/StatefulPartitionedCallStatefulPartitionedCallinputslstm_378_1700849lstm_378_1700851lstm_378_1700853*
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1700848?
 lstm_379/StatefulPartitionedCallStatefulPartitionedCall)lstm_378/StatefulPartitionedCall:output:0lstm_379_1700999lstm_379_1701001lstm_379_1701003*
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700998?
 lstm_380/StatefulPartitionedCallStatefulPartitionedCall)lstm_379/StatefulPartitionedCall:output:0lstm_380_1701149lstm_380_1701151lstm_380_1701153*
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701148?
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_380/StatefulPartitionedCall:output:0dense_126_1701167dense_126_1701169*
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
F__inference_dense_126_layer_call_and_return_conditional_losses_1701166y
IdentityIdentity*dense_126/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_126/StatefulPartitionedCall!^lstm_378/StatefulPartitionedCall!^lstm_379/StatefulPartitionedCall!^lstm_380/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2D
 lstm_378/StatefulPartitionedCall lstm_378/StatefulPartitionedCall2D
 lstm_379/StatefulPartitionedCall lstm_379/StatefulPartitionedCall2D
 lstm_380/StatefulPartitionedCall lstm_380/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1699729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1699729___redundant_placeholder05
1while_while_cond_1699729___redundant_placeholder15
1while_while_cond_1699729___redundant_placeholder25
1while_while_cond_1699729___redundant_placeholder3
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
while_cond_1704580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1704580___redundant_placeholder05
1while_while_cond_1704580___redundant_placeholder15
1while_while_cond_1704580___redundant_placeholder25
1while_while_cond_1704580___redundant_placeholder3
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
while_cond_1701444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1701444___redundant_placeholder05
1while_while_cond_1701444___redundant_placeholder15
1while_while_cond_1701444___redundant_placeholder25
1while_while_cond_1701444___redundant_placeholder3
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
while_body_1699921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_279_1699945_0:	?0
while_lstm_cell_279_1699947_0:	d?,
while_lstm_cell_279_1699949_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_279_1699945:	?.
while_lstm_cell_279_1699947:	d?*
while_lstm_cell_279_1699949:	???+while/lstm_cell_279/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_279/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_279_1699945_0while_lstm_cell_279_1699947_0while_lstm_cell_279_1699949_0*
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699862?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_279/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_279/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_279/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_279/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_279_1699945while_lstm_cell_279_1699945_0"<
while_lstm_cell_279_1699947while_lstm_cell_279_1699947_0"<
while_lstm_cell_279_1699949while_lstm_cell_279_1699949_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_279/StatefulPartitionedCall+while/lstm_cell_279/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_379_layer_call_fn_1703444
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700149|
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
?
?
*__inference_lstm_380_layer_call_fn_1704082

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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701148o
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
while_body_1700764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_279_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_279_matmul_readvariableop_resource:	?G
4while_lstm_cell_279_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_279_biasadd_readvariableop_resource:	???*while/lstm_cell_279/BiasAdd/ReadVariableOp?)while/lstm_cell_279/MatMul/ReadVariableOp?+while/lstm_cell_279/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_279/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_279/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_279/addAddV2$while/lstm_cell_279/MatMul:product:0&while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_279/BiasAddBiasAddwhile/lstm_cell_279/add:z:02while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_279/splitSplit,while/lstm_cell_279/split/split_dim:output:0$while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_279/SigmoidSigmoid"while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_1Sigmoid"while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mulMul!while/lstm_cell_279/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_279/ReluRelu"while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_1Mulwhile/lstm_cell_279/Sigmoid:y:0&while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/add_1AddV2while/lstm_cell_279/mul:z:0while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_2Sigmoid"while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_279/Relu_1Reluwhile/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_2Mul!while/lstm_cell_279/Sigmoid_2:y:0(while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_279/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_279/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_279/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_279/BiasAdd/ReadVariableOp*^while/lstm_cell_279/MatMul/ReadVariableOp,^while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_279_biasadd_readvariableop_resource5while_lstm_cell_279_biasadd_readvariableop_resource_0"n
4while_lstm_cell_279_matmul_1_readvariableop_resource6while_lstm_cell_279_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_279_matmul_readvariableop_resource4while_lstm_cell_279_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_279/BiasAdd/ReadVariableOp*while/lstm_cell_279/BiasAdd/ReadVariableOp2V
)while/lstm_cell_279/MatMul/ReadVariableOp)while/lstm_cell_279/MatMul/ReadVariableOp2Z
+while/lstm_cell_279/MatMul_1/ReadVariableOp+while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_379_while_body_1702588.
*lstm_379_while_lstm_379_while_loop_counter4
0lstm_379_while_lstm_379_while_maximum_iterations
lstm_379_while_placeholder 
lstm_379_while_placeholder_1 
lstm_379_while_placeholder_2 
lstm_379_while_placeholder_3-
)lstm_379_while_lstm_379_strided_slice_1_0i
elstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0:	d?R
?lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?M
>lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
lstm_379_while_identity
lstm_379_while_identity_1
lstm_379_while_identity_2
lstm_379_while_identity_3
lstm_379_while_identity_4
lstm_379_while_identity_5+
'lstm_379_while_lstm_379_strided_slice_1g
clstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensorN
;lstm_379_while_lstm_cell_280_matmul_readvariableop_resource:	d?P
=lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource:	2?K
<lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource:	???3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp?2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp?4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp?
@lstm_379/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_379/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensor_0lstm_379_while_placeholderIlstm_379/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp=lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_379/while/lstm_cell_280/MatMulMatMul9lstm_379/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp?lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_379/while/lstm_cell_280/MatMul_1MatMullstm_379_while_placeholder_2<lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_379/while/lstm_cell_280/addAddV2-lstm_379/while/lstm_cell_280/MatMul:product:0/lstm_379/while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp>lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_379/while/lstm_cell_280/BiasAddBiasAdd$lstm_379/while/lstm_cell_280/add:z:0;lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_379/while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_379/while/lstm_cell_280/splitSplit5lstm_379/while/lstm_cell_280/split/split_dim:output:0-lstm_379/while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_379/while/lstm_cell_280/SigmoidSigmoid+lstm_379/while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_379/while/lstm_cell_280/Sigmoid_1Sigmoid+lstm_379/while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_379/while/lstm_cell_280/mulMul*lstm_379/while/lstm_cell_280/Sigmoid_1:y:0lstm_379_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_379/while/lstm_cell_280/ReluRelu+lstm_379/while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_379/while/lstm_cell_280/mul_1Mul(lstm_379/while/lstm_cell_280/Sigmoid:y:0/lstm_379/while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_379/while/lstm_cell_280/add_1AddV2$lstm_379/while/lstm_cell_280/mul:z:0&lstm_379/while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_379/while/lstm_cell_280/Sigmoid_2Sigmoid+lstm_379/while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_379/while/lstm_cell_280/Relu_1Relu&lstm_379/while/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_379/while/lstm_cell_280/mul_2Mul*lstm_379/while/lstm_cell_280/Sigmoid_2:y:01lstm_379/while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_379/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_379_while_placeholder_1lstm_379_while_placeholder&lstm_379/while/lstm_cell_280/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_379/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_379/while/addAddV2lstm_379_while_placeholderlstm_379/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_379/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_379/while/add_1AddV2*lstm_379_while_lstm_379_while_loop_counterlstm_379/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_379/while/IdentityIdentitylstm_379/while/add_1:z:0^lstm_379/while/NoOp*
T0*
_output_shapes
: ?
lstm_379/while/Identity_1Identity0lstm_379_while_lstm_379_while_maximum_iterations^lstm_379/while/NoOp*
T0*
_output_shapes
: t
lstm_379/while/Identity_2Identitylstm_379/while/add:z:0^lstm_379/while/NoOp*
T0*
_output_shapes
: ?
lstm_379/while/Identity_3IdentityClstm_379/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_379/while/NoOp*
T0*
_output_shapes
: ?
lstm_379/while/Identity_4Identity&lstm_379/while/lstm_cell_280/mul_2:z:0^lstm_379/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_379/while/Identity_5Identity&lstm_379/while/lstm_cell_280/add_1:z:0^lstm_379/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_379/while/NoOpNoOp4^lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp3^lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp5^lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_379_while_identity lstm_379/while/Identity:output:0"?
lstm_379_while_identity_1"lstm_379/while/Identity_1:output:0"?
lstm_379_while_identity_2"lstm_379/while/Identity_2:output:0"?
lstm_379_while_identity_3"lstm_379/while/Identity_3:output:0"?
lstm_379_while_identity_4"lstm_379/while/Identity_4:output:0"?
lstm_379_while_identity_5"lstm_379/while/Identity_5:output:0"T
'lstm_379_while_lstm_379_strided_slice_1)lstm_379_while_lstm_379_strided_slice_1_0"~
<lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource>lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0"?
=lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource?lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0"|
;lstm_379_while_lstm_cell_280_matmul_readvariableop_resource=lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0"?
clstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensorelstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp2h
2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp2l
4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1704750

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
/__inference_lstm_cell_281_layer_call_fn_1704897

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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700416o
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
?

?
lstm_379_while_cond_1702160.
*lstm_379_while_lstm_379_while_loop_counter4
0lstm_379_while_lstm_379_while_maximum_iterations
lstm_379_while_placeholder 
lstm_379_while_placeholder_1 
lstm_379_while_placeholder_2 
lstm_379_while_placeholder_30
,lstm_379_while_less_lstm_379_strided_slice_1G
Clstm_379_while_lstm_379_while_cond_1702160___redundant_placeholder0G
Clstm_379_while_lstm_379_while_cond_1702160___redundant_placeholder1G
Clstm_379_while_lstm_379_while_cond_1702160___redundant_placeholder2G
Clstm_379_while_lstm_379_while_cond_1702160___redundant_placeholder3
lstm_379_while_identity
?
lstm_379/while/LessLesslstm_379_while_placeholder,lstm_379_while_less_lstm_379_strided_slice_1*
T0*
_output_shapes
: ]
lstm_379/while/IdentityIdentitylstm_379/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_379_while_identity lstm_379/while/Identity:output:0*(
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
while_cond_1703348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1703348___redundant_placeholder05
1while_while_cond_1703348___redundant_placeholder15
1while_while_cond_1703348___redundant_placeholder25
1while_while_cond_1703348___redundant_placeholder3
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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701874
lstm_378_input#
lstm_378_1701847:	?#
lstm_378_1701849:	d?
lstm_378_1701851:	?#
lstm_379_1701854:	d?#
lstm_379_1701856:	2?
lstm_379_1701858:	?"
lstm_380_1701861:2("
lstm_380_1701863:
(
lstm_380_1701865:(#
dense_126_1701868:

dense_126_1701870:
identity??!dense_126/StatefulPartitionedCall? lstm_378/StatefulPartitionedCall? lstm_379/StatefulPartitionedCall? lstm_380/StatefulPartitionedCall?
 lstm_378/StatefulPartitionedCallStatefulPartitionedCalllstm_378_inputlstm_378_1701847lstm_378_1701849lstm_378_1701851*
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1701694?
 lstm_379/StatefulPartitionedCallStatefulPartitionedCall)lstm_378/StatefulPartitionedCall:output:0lstm_379_1701854lstm_379_1701856lstm_379_1701858*
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1701529?
 lstm_380/StatefulPartitionedCallStatefulPartitionedCall)lstm_379/StatefulPartitionedCall:output:0lstm_380_1701861lstm_380_1701863lstm_380_1701865*
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701364?
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_380/StatefulPartitionedCall:output:0dense_126_1701868dense_126_1701870*
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
F__inference_dense_126_layer_call_and_return_conditional_losses_1701166y
IdentityIdentity*dense_126/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_126/StatefulPartitionedCall!^lstm_378/StatefulPartitionedCall!^lstm_379/StatefulPartitionedCall!^lstm_380/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2D
 lstm_378/StatefulPartitionedCall lstm_378/StatefulPartitionedCall2D
 lstm_379/StatefulPartitionedCall lstm_379/StatefulPartitionedCall2D
 lstm_380/StatefulPartitionedCall lstm_380/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_378_input
?
?
*__inference_lstm_379_layer_call_fn_1703477

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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1701529s
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700562

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
?T
?
*sequential_126_lstm_380_while_body_1699559L
Hsequential_126_lstm_380_while_sequential_126_lstm_380_while_loop_counterR
Nsequential_126_lstm_380_while_sequential_126_lstm_380_while_maximum_iterations-
)sequential_126_lstm_380_while_placeholder/
+sequential_126_lstm_380_while_placeholder_1/
+sequential_126_lstm_380_while_placeholder_2/
+sequential_126_lstm_380_while_placeholder_3K
Gsequential_126_lstm_380_while_sequential_126_lstm_380_strided_slice_1_0?
?sequential_126_lstm_380_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_380_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_126_lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0:2(`
Nsequential_126_lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0:
([
Msequential_126_lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0:(*
&sequential_126_lstm_380_while_identity,
(sequential_126_lstm_380_while_identity_1,
(sequential_126_lstm_380_while_identity_2,
(sequential_126_lstm_380_while_identity_3,
(sequential_126_lstm_380_while_identity_4,
(sequential_126_lstm_380_while_identity_5I
Esequential_126_lstm_380_while_sequential_126_lstm_380_strided_slice_1?
?sequential_126_lstm_380_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_380_tensorarrayunstack_tensorlistfromtensor\
Jsequential_126_lstm_380_while_lstm_cell_281_matmul_readvariableop_resource:2(^
Lsequential_126_lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource:
(Y
Ksequential_126_lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource:(??Bsequential_126/lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp?Asequential_126/lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp?Csequential_126/lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp?
Osequential_126/lstm_380/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_126/lstm_380/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_126_lstm_380_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_380_tensorarrayunstack_tensorlistfromtensor_0)sequential_126_lstm_380_while_placeholderXsequential_126/lstm_380/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_126/lstm_380/while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOpLsequential_126_lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_126/lstm_380/while/lstm_cell_281/MatMulMatMulHsequential_126/lstm_380/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_126/lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_126/lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOpNsequential_126_lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_126/lstm_380/while/lstm_cell_281/MatMul_1MatMul+sequential_126_lstm_380_while_placeholder_2Ksequential_126/lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_126/lstm_380/while/lstm_cell_281/addAddV2<sequential_126/lstm_380/while/lstm_cell_281/MatMul:product:0>sequential_126/lstm_380/while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_126/lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOpMsequential_126_lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_126/lstm_380/while/lstm_cell_281/BiasAddBiasAdd3sequential_126/lstm_380/while/lstm_cell_281/add:z:0Jsequential_126/lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_126/lstm_380/while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_126/lstm_380/while/lstm_cell_281/splitSplitDsequential_126/lstm_380/while/lstm_cell_281/split/split_dim:output:0<sequential_126/lstm_380/while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_126/lstm_380/while/lstm_cell_281/SigmoidSigmoid:sequential_126/lstm_380/while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_126/lstm_380/while/lstm_cell_281/Sigmoid_1Sigmoid:sequential_126/lstm_380/while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_126/lstm_380/while/lstm_cell_281/mulMul9sequential_126/lstm_380/while/lstm_cell_281/Sigmoid_1:y:0+sequential_126_lstm_380_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_126/lstm_380/while/lstm_cell_281/ReluRelu:sequential_126/lstm_380/while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_126/lstm_380/while/lstm_cell_281/mul_1Mul7sequential_126/lstm_380/while/lstm_cell_281/Sigmoid:y:0>sequential_126/lstm_380/while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_126/lstm_380/while/lstm_cell_281/add_1AddV23sequential_126/lstm_380/while/lstm_cell_281/mul:z:05sequential_126/lstm_380/while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_126/lstm_380/while/lstm_cell_281/Sigmoid_2Sigmoid:sequential_126/lstm_380/while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_126/lstm_380/while/lstm_cell_281/Relu_1Relu5sequential_126/lstm_380/while/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_126/lstm_380/while/lstm_cell_281/mul_2Mul9sequential_126/lstm_380/while/lstm_cell_281/Sigmoid_2:y:0@sequential_126/lstm_380/while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_126/lstm_380/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_126_lstm_380_while_placeholder_1)sequential_126_lstm_380_while_placeholder5sequential_126/lstm_380/while/lstm_cell_281/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_126/lstm_380/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_126/lstm_380/while/addAddV2)sequential_126_lstm_380_while_placeholder,sequential_126/lstm_380/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_126/lstm_380/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_126/lstm_380/while/add_1AddV2Hsequential_126_lstm_380_while_sequential_126_lstm_380_while_loop_counter.sequential_126/lstm_380/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_126/lstm_380/while/IdentityIdentity'sequential_126/lstm_380/while/add_1:z:0#^sequential_126/lstm_380/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_380/while/Identity_1IdentityNsequential_126_lstm_380_while_sequential_126_lstm_380_while_maximum_iterations#^sequential_126/lstm_380/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_380/while/Identity_2Identity%sequential_126/lstm_380/while/add:z:0#^sequential_126/lstm_380/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_380/while/Identity_3IdentityRsequential_126/lstm_380/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_126/lstm_380/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_380/while/Identity_4Identity5sequential_126/lstm_380/while/lstm_cell_281/mul_2:z:0#^sequential_126/lstm_380/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_126/lstm_380/while/Identity_5Identity5sequential_126/lstm_380/while/lstm_cell_281/add_1:z:0#^sequential_126/lstm_380/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_126/lstm_380/while/NoOpNoOpC^sequential_126/lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOpB^sequential_126/lstm_380/while/lstm_cell_281/MatMul/ReadVariableOpD^sequential_126/lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_126_lstm_380_while_identity/sequential_126/lstm_380/while/Identity:output:0"]
(sequential_126_lstm_380_while_identity_11sequential_126/lstm_380/while/Identity_1:output:0"]
(sequential_126_lstm_380_while_identity_21sequential_126/lstm_380/while/Identity_2:output:0"]
(sequential_126_lstm_380_while_identity_31sequential_126/lstm_380/while/Identity_3:output:0"]
(sequential_126_lstm_380_while_identity_41sequential_126/lstm_380/while/Identity_4:output:0"]
(sequential_126_lstm_380_while_identity_51sequential_126/lstm_380/while/Identity_5:output:0"?
Ksequential_126_lstm_380_while_lstm_cell_281_biasadd_readvariableop_resourceMsequential_126_lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0"?
Lsequential_126_lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resourceNsequential_126_lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0"?
Jsequential_126_lstm_380_while_lstm_cell_281_matmul_readvariableop_resourceLsequential_126_lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0"?
Esequential_126_lstm_380_while_sequential_126_lstm_380_strided_slice_1Gsequential_126_lstm_380_while_sequential_126_lstm_380_strided_slice_1_0"?
?sequential_126_lstm_380_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_380_tensorarrayunstack_tensorlistfromtensor?sequential_126_lstm_380_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_380_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_126/lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOpBsequential_126/lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp2?
Asequential_126/lstm_380/while/lstm_cell_281/MatMul/ReadVariableOpAsequential_126/lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp2?
Csequential_126/lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOpCsequential_126/lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1703678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1703678___redundant_placeholder05
1while_while_cond_1703678___redundant_placeholder15
1while_while_cond_1703678___redundant_placeholder25
1while_while_cond_1703678___redundant_placeholder3
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
while_body_1703822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_280_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_280_matmul_readvariableop_resource:	d?G
4while_lstm_cell_280_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_280_biasadd_readvariableop_resource:	???*while/lstm_cell_280/BiasAdd/ReadVariableOp?)while/lstm_cell_280/MatMul/ReadVariableOp?+while/lstm_cell_280/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_280/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_280/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_280/addAddV2$while/lstm_cell_280/MatMul:product:0&while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_280/BiasAddBiasAddwhile/lstm_cell_280/add:z:02while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_280/splitSplit,while/lstm_cell_280/split/split_dim:output:0$while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_280/SigmoidSigmoid"while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_1Sigmoid"while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mulMul!while/lstm_cell_280/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_280/ReluRelu"while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_1Mulwhile/lstm_cell_280/Sigmoid:y:0&while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/add_1AddV2while/lstm_cell_280/mul:z:0while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_2Sigmoid"while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_280/Relu_1Reluwhile/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_2Mul!while/lstm_cell_280/Sigmoid_2:y:0(while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_280/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_280/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_280/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_280/BiasAdd/ReadVariableOp*^while/lstm_cell_280/MatMul/ReadVariableOp,^while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_280_biasadd_readvariableop_resource5while_lstm_cell_280_biasadd_readvariableop_resource_0"n
4while_lstm_cell_280_matmul_1_readvariableop_resource6while_lstm_cell_280_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_280_matmul_readvariableop_resource4while_lstm_cell_280_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_280/BiasAdd/ReadVariableOp*while/lstm_cell_280/BiasAdd/ReadVariableOp2V
)while/lstm_cell_280/MatMul/ReadVariableOp)while/lstm_cell_280/MatMul/ReadVariableOp2Z
+while/lstm_cell_280/MatMul_1/ReadVariableOp+while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704522

inputs>
,lstm_cell_281_matmul_readvariableop_resource:2(@
.lstm_cell_281_matmul_1_readvariableop_resource:
(;
-lstm_cell_281_biasadd_readvariableop_resource:(
identity??$lstm_cell_281/BiasAdd/ReadVariableOp?#lstm_cell_281/MatMul/ReadVariableOp?%lstm_cell_281/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_281/MatMul/ReadVariableOpReadVariableOp,lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_281/MatMulMatMulstrided_slice_2:output:0+lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_281/MatMul_1MatMulzeros:output:0-lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_281/addAddV2lstm_cell_281/MatMul:product:0 lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_281/BiasAddBiasAddlstm_cell_281/add:z:0,lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_281/splitSplit&lstm_cell_281/split/split_dim:output:0lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_281/SigmoidSigmoidlstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_1Sigmoidlstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_281/mulMullstm_cell_281/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_281/ReluRelulstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_1Mullstm_cell_281/Sigmoid:y:0 lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_281/add_1AddV2lstm_cell_281/mul:z:0lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_2Sigmoidlstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_281/Relu_1Relulstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_2Mullstm_cell_281/Sigmoid_2:y:0"lstm_cell_281/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_281_matmul_readvariableop_resource.lstm_cell_281_matmul_1_readvariableop_resource-lstm_cell_281_biasadd_readvariableop_resource*
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
while_body_1704438*
condR
while_cond_1704437*K
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
NoOpNoOp%^lstm_cell_281/BiasAdd/ReadVariableOp$^lstm_cell_281/MatMul/ReadVariableOp&^lstm_cell_281/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_281/BiasAdd/ReadVariableOp$lstm_cell_281/BiasAdd/ReadVariableOp2J
#lstm_cell_281/MatMul/ReadVariableOp#lstm_cell_281/MatMul/ReadVariableOp2N
%lstm_cell_281/MatMul_1/ReadVariableOp%lstm_cell_281/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1703965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_280_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_280_matmul_readvariableop_resource:	d?G
4while_lstm_cell_280_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_280_biasadd_readvariableop_resource:	???*while/lstm_cell_280/BiasAdd/ReadVariableOp?)while/lstm_cell_280/MatMul/ReadVariableOp?+while/lstm_cell_280/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_280/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_280/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_280/addAddV2$while/lstm_cell_280/MatMul:product:0&while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_280/BiasAddBiasAddwhile/lstm_cell_280/add:z:02while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_280/splitSplit,while/lstm_cell_280/split/split_dim:output:0$while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_280/SigmoidSigmoid"while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_1Sigmoid"while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mulMul!while/lstm_cell_280/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_280/ReluRelu"while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_1Mulwhile/lstm_cell_280/Sigmoid:y:0&while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/add_1AddV2while/lstm_cell_280/mul:z:0while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_2Sigmoid"while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_280/Relu_1Reluwhile/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_2Mul!while/lstm_cell_280/Sigmoid_2:y:0(while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_280/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_280/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_280/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_280/BiasAdd/ReadVariableOp*^while/lstm_cell_280/MatMul/ReadVariableOp,^while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_280_biasadd_readvariableop_resource5while_lstm_cell_280_biasadd_readvariableop_resource_0"n
4while_lstm_cell_280_matmul_1_readvariableop_resource6while_lstm_cell_280_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_280_matmul_readvariableop_resource4while_lstm_cell_280_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_280/BiasAdd/ReadVariableOp*while/lstm_cell_280/BiasAdd/ReadVariableOp2V
)while/lstm_cell_280/MatMul/ReadVariableOp)while/lstm_cell_280/MatMul/ReadVariableOp2Z
+while/lstm_cell_280/MatMul_1/ReadVariableOp+while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_126_lstm_379_while_body_1699420L
Hsequential_126_lstm_379_while_sequential_126_lstm_379_while_loop_counterR
Nsequential_126_lstm_379_while_sequential_126_lstm_379_while_maximum_iterations-
)sequential_126_lstm_379_while_placeholder/
+sequential_126_lstm_379_while_placeholder_1/
+sequential_126_lstm_379_while_placeholder_2/
+sequential_126_lstm_379_while_placeholder_3K
Gsequential_126_lstm_379_while_sequential_126_lstm_379_strided_slice_1_0?
?sequential_126_lstm_379_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_379_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_126_lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0:	d?a
Nsequential_126_lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?\
Msequential_126_lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0:	?*
&sequential_126_lstm_379_while_identity,
(sequential_126_lstm_379_while_identity_1,
(sequential_126_lstm_379_while_identity_2,
(sequential_126_lstm_379_while_identity_3,
(sequential_126_lstm_379_while_identity_4,
(sequential_126_lstm_379_while_identity_5I
Esequential_126_lstm_379_while_sequential_126_lstm_379_strided_slice_1?
?sequential_126_lstm_379_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_379_tensorarrayunstack_tensorlistfromtensor]
Jsequential_126_lstm_379_while_lstm_cell_280_matmul_readvariableop_resource:	d?_
Lsequential_126_lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource:	2?Z
Ksequential_126_lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource:	???Bsequential_126/lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp?Asequential_126/lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp?Csequential_126/lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp?
Osequential_126/lstm_379/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_126/lstm_379/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_126_lstm_379_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_379_tensorarrayunstack_tensorlistfromtensor_0)sequential_126_lstm_379_while_placeholderXsequential_126/lstm_379/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_126/lstm_379/while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOpLsequential_126_lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_126/lstm_379/while/lstm_cell_280/MatMulMatMulHsequential_126/lstm_379/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_126/lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_126/lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOpNsequential_126_lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_126/lstm_379/while/lstm_cell_280/MatMul_1MatMul+sequential_126_lstm_379_while_placeholder_2Ksequential_126/lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_126/lstm_379/while/lstm_cell_280/addAddV2<sequential_126/lstm_379/while/lstm_cell_280/MatMul:product:0>sequential_126/lstm_379/while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_126/lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOpMsequential_126_lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_126/lstm_379/while/lstm_cell_280/BiasAddBiasAdd3sequential_126/lstm_379/while/lstm_cell_280/add:z:0Jsequential_126/lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_126/lstm_379/while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_126/lstm_379/while/lstm_cell_280/splitSplitDsequential_126/lstm_379/while/lstm_cell_280/split/split_dim:output:0<sequential_126/lstm_379/while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_126/lstm_379/while/lstm_cell_280/SigmoidSigmoid:sequential_126/lstm_379/while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_126/lstm_379/while/lstm_cell_280/Sigmoid_1Sigmoid:sequential_126/lstm_379/while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_126/lstm_379/while/lstm_cell_280/mulMul9sequential_126/lstm_379/while/lstm_cell_280/Sigmoid_1:y:0+sequential_126_lstm_379_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_126/lstm_379/while/lstm_cell_280/ReluRelu:sequential_126/lstm_379/while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_126/lstm_379/while/lstm_cell_280/mul_1Mul7sequential_126/lstm_379/while/lstm_cell_280/Sigmoid:y:0>sequential_126/lstm_379/while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_126/lstm_379/while/lstm_cell_280/add_1AddV23sequential_126/lstm_379/while/lstm_cell_280/mul:z:05sequential_126/lstm_379/while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_126/lstm_379/while/lstm_cell_280/Sigmoid_2Sigmoid:sequential_126/lstm_379/while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_126/lstm_379/while/lstm_cell_280/Relu_1Relu5sequential_126/lstm_379/while/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_126/lstm_379/while/lstm_cell_280/mul_2Mul9sequential_126/lstm_379/while/lstm_cell_280/Sigmoid_2:y:0@sequential_126/lstm_379/while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_126/lstm_379/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_126_lstm_379_while_placeholder_1)sequential_126_lstm_379_while_placeholder5sequential_126/lstm_379/while/lstm_cell_280/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_126/lstm_379/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_126/lstm_379/while/addAddV2)sequential_126_lstm_379_while_placeholder,sequential_126/lstm_379/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_126/lstm_379/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_126/lstm_379/while/add_1AddV2Hsequential_126_lstm_379_while_sequential_126_lstm_379_while_loop_counter.sequential_126/lstm_379/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_126/lstm_379/while/IdentityIdentity'sequential_126/lstm_379/while/add_1:z:0#^sequential_126/lstm_379/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_379/while/Identity_1IdentityNsequential_126_lstm_379_while_sequential_126_lstm_379_while_maximum_iterations#^sequential_126/lstm_379/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_379/while/Identity_2Identity%sequential_126/lstm_379/while/add:z:0#^sequential_126/lstm_379/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_379/while/Identity_3IdentityRsequential_126/lstm_379/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_126/lstm_379/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_379/while/Identity_4Identity5sequential_126/lstm_379/while/lstm_cell_280/mul_2:z:0#^sequential_126/lstm_379/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_126/lstm_379/while/Identity_5Identity5sequential_126/lstm_379/while/lstm_cell_280/add_1:z:0#^sequential_126/lstm_379/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_126/lstm_379/while/NoOpNoOpC^sequential_126/lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOpB^sequential_126/lstm_379/while/lstm_cell_280/MatMul/ReadVariableOpD^sequential_126/lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_126_lstm_379_while_identity/sequential_126/lstm_379/while/Identity:output:0"]
(sequential_126_lstm_379_while_identity_11sequential_126/lstm_379/while/Identity_1:output:0"]
(sequential_126_lstm_379_while_identity_21sequential_126/lstm_379/while/Identity_2:output:0"]
(sequential_126_lstm_379_while_identity_31sequential_126/lstm_379/while/Identity_3:output:0"]
(sequential_126_lstm_379_while_identity_41sequential_126/lstm_379/while/Identity_4:output:0"]
(sequential_126_lstm_379_while_identity_51sequential_126/lstm_379/while/Identity_5:output:0"?
Ksequential_126_lstm_379_while_lstm_cell_280_biasadd_readvariableop_resourceMsequential_126_lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0"?
Lsequential_126_lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resourceNsequential_126_lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0"?
Jsequential_126_lstm_379_while_lstm_cell_280_matmul_readvariableop_resourceLsequential_126_lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0"?
Esequential_126_lstm_379_while_sequential_126_lstm_379_strided_slice_1Gsequential_126_lstm_379_while_sequential_126_lstm_379_strided_slice_1_0"?
?sequential_126_lstm_379_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_379_tensorarrayunstack_tensorlistfromtensor?sequential_126_lstm_379_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_379_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_126/lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOpBsequential_126/lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp2?
Asequential_126/lstm_379/while/lstm_cell_280/MatMul/ReadVariableOpAsequential_126/lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp2?
Csequential_126/lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOpCsequential_126/lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701148

inputs>
,lstm_cell_281_matmul_readvariableop_resource:2(@
.lstm_cell_281_matmul_1_readvariableop_resource:
(;
-lstm_cell_281_biasadd_readvariableop_resource:(
identity??$lstm_cell_281/BiasAdd/ReadVariableOp?#lstm_cell_281/MatMul/ReadVariableOp?%lstm_cell_281/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_281/MatMul/ReadVariableOpReadVariableOp,lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_281/MatMulMatMulstrided_slice_2:output:0+lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_281/MatMul_1MatMulzeros:output:0-lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_281/addAddV2lstm_cell_281/MatMul:product:0 lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_281/BiasAddBiasAddlstm_cell_281/add:z:0,lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_281/splitSplit&lstm_cell_281/split/split_dim:output:0lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_281/SigmoidSigmoidlstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_1Sigmoidlstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_281/mulMullstm_cell_281/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_281/ReluRelulstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_1Mullstm_cell_281/Sigmoid:y:0 lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_281/add_1AddV2lstm_cell_281/mul:z:0lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_2Sigmoidlstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_281/Relu_1Relulstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_2Mullstm_cell_281/Sigmoid_2:y:0"lstm_cell_281/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_281_matmul_readvariableop_resource.lstm_cell_281_matmul_1_readvariableop_resource-lstm_cell_281_biasadd_readvariableop_resource*
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
while_body_1701064*
condR
while_cond_1701063*K
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
NoOpNoOp%^lstm_cell_281/BiasAdd/ReadVariableOp$^lstm_cell_281/MatMul/ReadVariableOp&^lstm_cell_281/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_281/BiasAdd/ReadVariableOp$lstm_cell_281/BiasAdd/ReadVariableOp2J
#lstm_cell_281/MatMul/ReadVariableOp#lstm_cell_281/MatMul/ReadVariableOp2N
%lstm_cell_281/MatMul_1/ReadVariableOp%lstm_cell_281/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703433

inputs?
,lstm_cell_279_matmul_readvariableop_resource:	?A
.lstm_cell_279_matmul_1_readvariableop_resource:	d?<
-lstm_cell_279_biasadd_readvariableop_resource:	?
identity??$lstm_cell_279/BiasAdd/ReadVariableOp?#lstm_cell_279/MatMul/ReadVariableOp?%lstm_cell_279/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_279/MatMul/ReadVariableOpReadVariableOp,lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_279/MatMulMatMulstrided_slice_2:output:0+lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_279/MatMul_1MatMulzeros:output:0-lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_279/addAddV2lstm_cell_279/MatMul:product:0 lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_279/BiasAddBiasAddlstm_cell_279/add:z:0,lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_279/splitSplit&lstm_cell_279/split/split_dim:output:0lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_279/SigmoidSigmoidlstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_1Sigmoidlstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_279/mulMullstm_cell_279/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_279/ReluRelulstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_1Mullstm_cell_279/Sigmoid:y:0 lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_279/add_1AddV2lstm_cell_279/mul:z:0lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_2Sigmoidlstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_279/Relu_1Relulstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_2Mullstm_cell_279/Sigmoid_2:y:0"lstm_cell_279/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_279_matmul_readvariableop_resource.lstm_cell_279_matmul_1_readvariableop_resource-lstm_cell_279_biasadd_readvariableop_resource*
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
while_body_1703349*
condR
while_cond_1703348*K
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
NoOpNoOp%^lstm_cell_279/BiasAdd/ReadVariableOp$^lstm_cell_279/MatMul/ReadVariableOp&^lstm_cell_279/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_279/BiasAdd/ReadVariableOp$lstm_cell_279/BiasAdd/ReadVariableOp2J
#lstm_cell_279/MatMul/ReadVariableOp#lstm_cell_279/MatMul/ReadVariableOp2N
%lstm_cell_279/MatMul_1/ReadVariableOp%lstm_cell_279/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1703349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_279_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_279_matmul_readvariableop_resource:	?G
4while_lstm_cell_279_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_279_biasadd_readvariableop_resource:	???*while/lstm_cell_279/BiasAdd/ReadVariableOp?)while/lstm_cell_279/MatMul/ReadVariableOp?+while/lstm_cell_279/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_279/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_279/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_279/addAddV2$while/lstm_cell_279/MatMul:product:0&while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_279/BiasAddBiasAddwhile/lstm_cell_279/add:z:02while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_279/splitSplit,while/lstm_cell_279/split/split_dim:output:0$while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_279/SigmoidSigmoid"while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_1Sigmoid"while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mulMul!while/lstm_cell_279/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_279/ReluRelu"while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_1Mulwhile/lstm_cell_279/Sigmoid:y:0&while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/add_1AddV2while/lstm_cell_279/mul:z:0while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_2Sigmoid"while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_279/Relu_1Reluwhile/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_2Mul!while/lstm_cell_279/Sigmoid_2:y:0(while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_279/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_279/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_279/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_279/BiasAdd/ReadVariableOp*^while/lstm_cell_279/MatMul/ReadVariableOp,^while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_279_biasadd_readvariableop_resource5while_lstm_cell_279_biasadd_readvariableop_resource_0"n
4while_lstm_cell_279_matmul_1_readvariableop_resource6while_lstm_cell_279_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_279_matmul_readvariableop_resource4while_lstm_cell_279_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_279/BiasAdd/ReadVariableOp*while/lstm_cell_279/BiasAdd/ReadVariableOp2V
)while/lstm_cell_279/MatMul/ReadVariableOp)while/lstm_cell_279/MatMul/ReadVariableOp2Z
+while/lstm_cell_279/MatMul_1/ReadVariableOp+while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1704581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_281_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_281_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_281_matmul_readvariableop_resource:2(F
4while_lstm_cell_281_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_281_biasadd_readvariableop_resource:(??*while/lstm_cell_281/BiasAdd/ReadVariableOp?)while/lstm_cell_281/MatMul/ReadVariableOp?+while/lstm_cell_281/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_281/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_281/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_281/addAddV2$while/lstm_cell_281/MatMul:product:0&while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_281/BiasAddBiasAddwhile/lstm_cell_281/add:z:02while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_281/splitSplit,while/lstm_cell_281/split/split_dim:output:0$while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_281/SigmoidSigmoid"while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_1Sigmoid"while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mulMul!while/lstm_cell_281/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_281/ReluRelu"while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_1Mulwhile/lstm_cell_281/Sigmoid:y:0&while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/add_1AddV2while/lstm_cell_281/mul:z:0while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_2Sigmoid"while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_281/Relu_1Reluwhile/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_2Mul!while/lstm_cell_281/Sigmoid_2:y:0(while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_281/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_281/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_281/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_281/BiasAdd/ReadVariableOp*^while/lstm_cell_281/MatMul/ReadVariableOp,^while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_281_biasadd_readvariableop_resource5while_lstm_cell_281_biasadd_readvariableop_resource_0"n
4while_lstm_cell_281_matmul_1_readvariableop_resource6while_lstm_cell_281_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_281_matmul_readvariableop_resource4while_lstm_cell_281_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_281/BiasAdd/ReadVariableOp*while/lstm_cell_281/BiasAdd/ReadVariableOp2V
)while/lstm_cell_281/MatMul/ReadVariableOp)while/lstm_cell_281/MatMul/ReadVariableOp2Z
+while/lstm_cell_281/MatMul_1/ReadVariableOp+while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_126_layer_call_fn_1701814
lstm_378_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_378_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701762o
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
_user_specified_namelstm_378_input
?#
?
while_body_1700430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_281_1700454_0:2(/
while_lstm_cell_281_1700456_0:
(+
while_lstm_cell_281_1700458_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_281_1700454:2(-
while_lstm_cell_281_1700456:
()
while_lstm_cell_281_1700458:(??+while/lstm_cell_281/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_281/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_281_1700454_0while_lstm_cell_281_1700456_0while_lstm_cell_281_1700458_0*
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700416?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_281/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_281/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_281/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_281/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_281_1700454while_lstm_cell_281_1700454_0"<
while_lstm_cell_281_1700456while_lstm_cell_281_1700456_0"<
while_lstm_cell_281_1700458while_lstm_cell_281_1700458_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_281/StatefulPartitionedCall+while/lstm_cell_281/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700212

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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1702390

inputsH
5lstm_378_lstm_cell_279_matmul_readvariableop_resource:	?J
7lstm_378_lstm_cell_279_matmul_1_readvariableop_resource:	d?E
6lstm_378_lstm_cell_279_biasadd_readvariableop_resource:	?H
5lstm_379_lstm_cell_280_matmul_readvariableop_resource:	d?J
7lstm_379_lstm_cell_280_matmul_1_readvariableop_resource:	2?E
6lstm_379_lstm_cell_280_biasadd_readvariableop_resource:	?G
5lstm_380_lstm_cell_281_matmul_readvariableop_resource:2(I
7lstm_380_lstm_cell_281_matmul_1_readvariableop_resource:
(D
6lstm_380_lstm_cell_281_biasadd_readvariableop_resource:(:
(dense_126_matmul_readvariableop_resource:
7
)dense_126_biasadd_readvariableop_resource:
identity?? dense_126/BiasAdd/ReadVariableOp?dense_126/MatMul/ReadVariableOp?-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp?,lstm_378/lstm_cell_279/MatMul/ReadVariableOp?.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp?lstm_378/while?-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp?,lstm_379/lstm_cell_280/MatMul/ReadVariableOp?.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp?lstm_379/while?-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp?,lstm_380/lstm_cell_281/MatMul/ReadVariableOp?.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp?lstm_380/whileD
lstm_378/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_378/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_378/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_378/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_sliceStridedSlicelstm_378/Shape:output:0%lstm_378/strided_slice/stack:output:0'lstm_378/strided_slice/stack_1:output:0'lstm_378/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_378/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_378/zeros/packedPacklstm_378/strided_slice:output:0 lstm_378/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_378/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_378/zerosFilllstm_378/zeros/packed:output:0lstm_378/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_378/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_378/zeros_1/packedPacklstm_378/strided_slice:output:0"lstm_378/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_378/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_378/zeros_1Fill lstm_378/zeros_1/packed:output:0lstm_378/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_378/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_378/transpose	Transposeinputs lstm_378/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_378/Shape_1Shapelstm_378/transpose:y:0*
T0*
_output_shapes
:h
lstm_378/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_378/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_378/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_slice_1StridedSlicelstm_378/Shape_1:output:0'lstm_378/strided_slice_1/stack:output:0)lstm_378/strided_slice_1/stack_1:output:0)lstm_378/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_378/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_378/TensorArrayV2TensorListReserve-lstm_378/TensorArrayV2/element_shape:output:0!lstm_378/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_378/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_378/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_378/transpose:y:0Glstm_378/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_378/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_378/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_378/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_slice_2StridedSlicelstm_378/transpose:y:0'lstm_378/strided_slice_2/stack:output:0)lstm_378/strided_slice_2/stack_1:output:0)lstm_378/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_378/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp5lstm_378_lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_378/lstm_cell_279/MatMulMatMul!lstm_378/strided_slice_2:output:04lstm_378/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp7lstm_378_lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_378/lstm_cell_279/MatMul_1MatMullstm_378/zeros:output:06lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_378/lstm_cell_279/addAddV2'lstm_378/lstm_cell_279/MatMul:product:0)lstm_378/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp6lstm_378_lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_378/lstm_cell_279/BiasAddBiasAddlstm_378/lstm_cell_279/add:z:05lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_378/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_378/lstm_cell_279/splitSplit/lstm_378/lstm_cell_279/split/split_dim:output:0'lstm_378/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_378/lstm_cell_279/SigmoidSigmoid%lstm_378/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_378/lstm_cell_279/Sigmoid_1Sigmoid%lstm_378/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/mulMul$lstm_378/lstm_cell_279/Sigmoid_1:y:0lstm_378/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_378/lstm_cell_279/ReluRelu%lstm_378/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/mul_1Mul"lstm_378/lstm_cell_279/Sigmoid:y:0)lstm_378/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/add_1AddV2lstm_378/lstm_cell_279/mul:z:0 lstm_378/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_378/lstm_cell_279/Sigmoid_2Sigmoid%lstm_378/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_378/lstm_cell_279/Relu_1Relu lstm_378/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_378/lstm_cell_279/mul_2Mul$lstm_378/lstm_cell_279/Sigmoid_2:y:0+lstm_378/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_378/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_378/TensorArrayV2_1TensorListReserve/lstm_378/TensorArrayV2_1/element_shape:output:0!lstm_378/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_378/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_378/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_378/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_378/whileWhile$lstm_378/while/loop_counter:output:0*lstm_378/while/maximum_iterations:output:0lstm_378/time:output:0!lstm_378/TensorArrayV2_1:handle:0lstm_378/zeros:output:0lstm_378/zeros_1:output:0!lstm_378/strided_slice_1:output:0@lstm_378/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_378_lstm_cell_279_matmul_readvariableop_resource7lstm_378_lstm_cell_279_matmul_1_readvariableop_resource6lstm_378_lstm_cell_279_biasadd_readvariableop_resource*
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
lstm_378_while_body_1702022*'
condR
lstm_378_while_cond_1702021*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_378/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_378/TensorArrayV2Stack/TensorListStackTensorListStacklstm_378/while:output:3Blstm_378/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_378/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_378/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_378/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_378/strided_slice_3StridedSlice4lstm_378/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_378/strided_slice_3/stack:output:0)lstm_378/strided_slice_3/stack_1:output:0)lstm_378/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_378/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_378/transpose_1	Transpose4lstm_378/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_378/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_378/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_379/ShapeShapelstm_378/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_379/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_379/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_379/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_sliceStridedSlicelstm_379/Shape:output:0%lstm_379/strided_slice/stack:output:0'lstm_379/strided_slice/stack_1:output:0'lstm_379/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_379/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_379/zeros/packedPacklstm_379/strided_slice:output:0 lstm_379/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_379/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_379/zerosFilllstm_379/zeros/packed:output:0lstm_379/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_379/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_379/zeros_1/packedPacklstm_379/strided_slice:output:0"lstm_379/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_379/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_379/zeros_1Fill lstm_379/zeros_1/packed:output:0lstm_379/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_379/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_379/transpose	Transposelstm_378/transpose_1:y:0 lstm_379/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_379/Shape_1Shapelstm_379/transpose:y:0*
T0*
_output_shapes
:h
lstm_379/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_379/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_379/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_slice_1StridedSlicelstm_379/Shape_1:output:0'lstm_379/strided_slice_1/stack:output:0)lstm_379/strided_slice_1/stack_1:output:0)lstm_379/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_379/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_379/TensorArrayV2TensorListReserve-lstm_379/TensorArrayV2/element_shape:output:0!lstm_379/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_379/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_379/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_379/transpose:y:0Glstm_379/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_379/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_379/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_379/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_slice_2StridedSlicelstm_379/transpose:y:0'lstm_379/strided_slice_2/stack:output:0)lstm_379/strided_slice_2/stack_1:output:0)lstm_379/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_379/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp5lstm_379_lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_379/lstm_cell_280/MatMulMatMul!lstm_379/strided_slice_2:output:04lstm_379/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp7lstm_379_lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_379/lstm_cell_280/MatMul_1MatMullstm_379/zeros:output:06lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_379/lstm_cell_280/addAddV2'lstm_379/lstm_cell_280/MatMul:product:0)lstm_379/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp6lstm_379_lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_379/lstm_cell_280/BiasAddBiasAddlstm_379/lstm_cell_280/add:z:05lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_379/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_379/lstm_cell_280/splitSplit/lstm_379/lstm_cell_280/split/split_dim:output:0'lstm_379/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_379/lstm_cell_280/SigmoidSigmoid%lstm_379/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_379/lstm_cell_280/Sigmoid_1Sigmoid%lstm_379/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/mulMul$lstm_379/lstm_cell_280/Sigmoid_1:y:0lstm_379/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_379/lstm_cell_280/ReluRelu%lstm_379/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/mul_1Mul"lstm_379/lstm_cell_280/Sigmoid:y:0)lstm_379/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/add_1AddV2lstm_379/lstm_cell_280/mul:z:0 lstm_379/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_379/lstm_cell_280/Sigmoid_2Sigmoid%lstm_379/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_379/lstm_cell_280/Relu_1Relu lstm_379/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_379/lstm_cell_280/mul_2Mul$lstm_379/lstm_cell_280/Sigmoid_2:y:0+lstm_379/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_379/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_379/TensorArrayV2_1TensorListReserve/lstm_379/TensorArrayV2_1/element_shape:output:0!lstm_379/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_379/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_379/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_379/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_379/whileWhile$lstm_379/while/loop_counter:output:0*lstm_379/while/maximum_iterations:output:0lstm_379/time:output:0!lstm_379/TensorArrayV2_1:handle:0lstm_379/zeros:output:0lstm_379/zeros_1:output:0!lstm_379/strided_slice_1:output:0@lstm_379/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_379_lstm_cell_280_matmul_readvariableop_resource7lstm_379_lstm_cell_280_matmul_1_readvariableop_resource6lstm_379_lstm_cell_280_biasadd_readvariableop_resource*
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
lstm_379_while_body_1702161*'
condR
lstm_379_while_cond_1702160*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_379/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_379/TensorArrayV2Stack/TensorListStackTensorListStacklstm_379/while:output:3Blstm_379/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_379/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_379/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_379/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_379/strided_slice_3StridedSlice4lstm_379/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_379/strided_slice_3/stack:output:0)lstm_379/strided_slice_3/stack_1:output:0)lstm_379/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_379/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_379/transpose_1	Transpose4lstm_379/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_379/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_379/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_380/ShapeShapelstm_379/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_380/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_380/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_380/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_sliceStridedSlicelstm_380/Shape:output:0%lstm_380/strided_slice/stack:output:0'lstm_380/strided_slice/stack_1:output:0'lstm_380/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_380/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_380/zeros/packedPacklstm_380/strided_slice:output:0 lstm_380/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_380/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_380/zerosFilllstm_380/zeros/packed:output:0lstm_380/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_380/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_380/zeros_1/packedPacklstm_380/strided_slice:output:0"lstm_380/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_380/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_380/zeros_1Fill lstm_380/zeros_1/packed:output:0lstm_380/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_380/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_380/transpose	Transposelstm_379/transpose_1:y:0 lstm_380/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_380/Shape_1Shapelstm_380/transpose:y:0*
T0*
_output_shapes
:h
lstm_380/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_380/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_380/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_slice_1StridedSlicelstm_380/Shape_1:output:0'lstm_380/strided_slice_1/stack:output:0)lstm_380/strided_slice_1/stack_1:output:0)lstm_380/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_380/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_380/TensorArrayV2TensorListReserve-lstm_380/TensorArrayV2/element_shape:output:0!lstm_380/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_380/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_380/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_380/transpose:y:0Glstm_380/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_380/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_380/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_380/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_slice_2StridedSlicelstm_380/transpose:y:0'lstm_380/strided_slice_2/stack:output:0)lstm_380/strided_slice_2/stack_1:output:0)lstm_380/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_380/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp5lstm_380_lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_380/lstm_cell_281/MatMulMatMul!lstm_380/strided_slice_2:output:04lstm_380/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp7lstm_380_lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_380/lstm_cell_281/MatMul_1MatMullstm_380/zeros:output:06lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_380/lstm_cell_281/addAddV2'lstm_380/lstm_cell_281/MatMul:product:0)lstm_380/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp6lstm_380_lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_380/lstm_cell_281/BiasAddBiasAddlstm_380/lstm_cell_281/add:z:05lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_380/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_380/lstm_cell_281/splitSplit/lstm_380/lstm_cell_281/split/split_dim:output:0'lstm_380/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_380/lstm_cell_281/SigmoidSigmoid%lstm_380/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_380/lstm_cell_281/Sigmoid_1Sigmoid%lstm_380/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/mulMul$lstm_380/lstm_cell_281/Sigmoid_1:y:0lstm_380/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_380/lstm_cell_281/ReluRelu%lstm_380/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/mul_1Mul"lstm_380/lstm_cell_281/Sigmoid:y:0)lstm_380/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/add_1AddV2lstm_380/lstm_cell_281/mul:z:0 lstm_380/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_380/lstm_cell_281/Sigmoid_2Sigmoid%lstm_380/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_380/lstm_cell_281/Relu_1Relu lstm_380/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_380/lstm_cell_281/mul_2Mul$lstm_380/lstm_cell_281/Sigmoid_2:y:0+lstm_380/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_380/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_380/TensorArrayV2_1TensorListReserve/lstm_380/TensorArrayV2_1/element_shape:output:0!lstm_380/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_380/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_380/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_380/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_380/whileWhile$lstm_380/while/loop_counter:output:0*lstm_380/while/maximum_iterations:output:0lstm_380/time:output:0!lstm_380/TensorArrayV2_1:handle:0lstm_380/zeros:output:0lstm_380/zeros_1:output:0!lstm_380/strided_slice_1:output:0@lstm_380/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_380_lstm_cell_281_matmul_readvariableop_resource7lstm_380_lstm_cell_281_matmul_1_readvariableop_resource6lstm_380_lstm_cell_281_biasadd_readvariableop_resource*
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
lstm_380_while_body_1702300*'
condR
lstm_380_while_cond_1702299*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_380/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_380/TensorArrayV2Stack/TensorListStackTensorListStacklstm_380/while:output:3Blstm_380/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_380/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_380/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_380/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_380/strided_slice_3StridedSlice4lstm_380/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_380/strided_slice_3/stack:output:0)lstm_380/strided_slice_3/stack_1:output:0)lstm_380/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_380/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_380/transpose_1	Transpose4lstm_380/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_380/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_380/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_126/MatMul/ReadVariableOpReadVariableOp(dense_126_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_126/MatMulMatMul!lstm_380/strided_slice_3:output:0'dense_126/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_126/BiasAdd/ReadVariableOpReadVariableOp)dense_126_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_126/BiasAddBiasAdddense_126/MatMul:product:0(dense_126/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_126/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_126/BiasAdd/ReadVariableOp ^dense_126/MatMul/ReadVariableOp.^lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp-^lstm_378/lstm_cell_279/MatMul/ReadVariableOp/^lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp^lstm_378/while.^lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp-^lstm_379/lstm_cell_280/MatMul/ReadVariableOp/^lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp^lstm_379/while.^lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp-^lstm_380/lstm_cell_281/MatMul/ReadVariableOp/^lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp^lstm_380/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_126/BiasAdd/ReadVariableOp dense_126/BiasAdd/ReadVariableOp2B
dense_126/MatMul/ReadVariableOpdense_126/MatMul/ReadVariableOp2^
-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp-lstm_378/lstm_cell_279/BiasAdd/ReadVariableOp2\
,lstm_378/lstm_cell_279/MatMul/ReadVariableOp,lstm_378/lstm_cell_279/MatMul/ReadVariableOp2`
.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp.lstm_378/lstm_cell_279/MatMul_1/ReadVariableOp2 
lstm_378/whilelstm_378/while2^
-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp-lstm_379/lstm_cell_280/BiasAdd/ReadVariableOp2\
,lstm_379/lstm_cell_280/MatMul/ReadVariableOp,lstm_379/lstm_cell_280/MatMul/ReadVariableOp2`
.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp.lstm_379/lstm_cell_280/MatMul_1/ReadVariableOp2 
lstm_379/whilelstm_379/while2^
-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp-lstm_380/lstm_cell_281/BiasAdd/ReadVariableOp2\
,lstm_380/lstm_cell_281/MatMul/ReadVariableOp,lstm_380/lstm_cell_281/MatMul/ReadVariableOp2`
.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp.lstm_380/lstm_cell_281/MatMul_1/ReadVariableOp2 
lstm_380/whilelstm_380/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_378_while_body_1702022.
*lstm_378_while_lstm_378_while_loop_counter4
0lstm_378_while_lstm_378_while_maximum_iterations
lstm_378_while_placeholder 
lstm_378_while_placeholder_1 
lstm_378_while_placeholder_2 
lstm_378_while_placeholder_3-
)lstm_378_while_lstm_378_strided_slice_1_0i
elstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0:	?R
?lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?M
>lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
lstm_378_while_identity
lstm_378_while_identity_1
lstm_378_while_identity_2
lstm_378_while_identity_3
lstm_378_while_identity_4
lstm_378_while_identity_5+
'lstm_378_while_lstm_378_strided_slice_1g
clstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensorN
;lstm_378_while_lstm_cell_279_matmul_readvariableop_resource:	?P
=lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource:	d?K
<lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource:	???3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp?2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp?4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp?
@lstm_378/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_378/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensor_0lstm_378_while_placeholderIlstm_378/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp=lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_378/while/lstm_cell_279/MatMulMatMul9lstm_378/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp?lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_378/while/lstm_cell_279/MatMul_1MatMullstm_378_while_placeholder_2<lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_378/while/lstm_cell_279/addAddV2-lstm_378/while/lstm_cell_279/MatMul:product:0/lstm_378/while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp>lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_378/while/lstm_cell_279/BiasAddBiasAdd$lstm_378/while/lstm_cell_279/add:z:0;lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_378/while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_378/while/lstm_cell_279/splitSplit5lstm_378/while/lstm_cell_279/split/split_dim:output:0-lstm_378/while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_378/while/lstm_cell_279/SigmoidSigmoid+lstm_378/while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_378/while/lstm_cell_279/Sigmoid_1Sigmoid+lstm_378/while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_378/while/lstm_cell_279/mulMul*lstm_378/while/lstm_cell_279/Sigmoid_1:y:0lstm_378_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_378/while/lstm_cell_279/ReluRelu+lstm_378/while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_378/while/lstm_cell_279/mul_1Mul(lstm_378/while/lstm_cell_279/Sigmoid:y:0/lstm_378/while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_378/while/lstm_cell_279/add_1AddV2$lstm_378/while/lstm_cell_279/mul:z:0&lstm_378/while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_378/while/lstm_cell_279/Sigmoid_2Sigmoid+lstm_378/while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_378/while/lstm_cell_279/Relu_1Relu&lstm_378/while/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_378/while/lstm_cell_279/mul_2Mul*lstm_378/while/lstm_cell_279/Sigmoid_2:y:01lstm_378/while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_378/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_378_while_placeholder_1lstm_378_while_placeholder&lstm_378/while/lstm_cell_279/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_378/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_378/while/addAddV2lstm_378_while_placeholderlstm_378/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_378/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_378/while/add_1AddV2*lstm_378_while_lstm_378_while_loop_counterlstm_378/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_378/while/IdentityIdentitylstm_378/while/add_1:z:0^lstm_378/while/NoOp*
T0*
_output_shapes
: ?
lstm_378/while/Identity_1Identity0lstm_378_while_lstm_378_while_maximum_iterations^lstm_378/while/NoOp*
T0*
_output_shapes
: t
lstm_378/while/Identity_2Identitylstm_378/while/add:z:0^lstm_378/while/NoOp*
T0*
_output_shapes
: ?
lstm_378/while/Identity_3IdentityClstm_378/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_378/while/NoOp*
T0*
_output_shapes
: ?
lstm_378/while/Identity_4Identity&lstm_378/while/lstm_cell_279/mul_2:z:0^lstm_378/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_378/while/Identity_5Identity&lstm_378/while/lstm_cell_279/add_1:z:0^lstm_378/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_378/while/NoOpNoOp4^lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp3^lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp5^lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_378_while_identity lstm_378/while/Identity:output:0"?
lstm_378_while_identity_1"lstm_378/while/Identity_1:output:0"?
lstm_378_while_identity_2"lstm_378/while/Identity_2:output:0"?
lstm_378_while_identity_3"lstm_378/while/Identity_3:output:0"?
lstm_378_while_identity_4"lstm_378/while/Identity_4:output:0"?
lstm_378_while_identity_5"lstm_378/while/Identity_5:output:0"T
'lstm_378_while_lstm_378_strided_slice_1)lstm_378_while_lstm_378_strided_slice_1_0"~
<lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource>lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0"?
=lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource?lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0"|
;lstm_378_while_lstm_cell_279_matmul_readvariableop_resource=lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0"?
clstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensorelstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp2h
2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp2l
4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1704978

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

lstm_378_while_body_1702449.
*lstm_378_while_lstm_378_while_loop_counter4
0lstm_378_while_lstm_378_while_maximum_iterations
lstm_378_while_placeholder 
lstm_378_while_placeholder_1 
lstm_378_while_placeholder_2 
lstm_378_while_placeholder_3-
)lstm_378_while_lstm_378_strided_slice_1_0i
elstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0:	?R
?lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?M
>lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
lstm_378_while_identity
lstm_378_while_identity_1
lstm_378_while_identity_2
lstm_378_while_identity_3
lstm_378_while_identity_4
lstm_378_while_identity_5+
'lstm_378_while_lstm_378_strided_slice_1g
clstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensorN
;lstm_378_while_lstm_cell_279_matmul_readvariableop_resource:	?P
=lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource:	d?K
<lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource:	???3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp?2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp?4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp?
@lstm_378/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_378/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensor_0lstm_378_while_placeholderIlstm_378/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp=lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_378/while/lstm_cell_279/MatMulMatMul9lstm_378/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp?lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_378/while/lstm_cell_279/MatMul_1MatMullstm_378_while_placeholder_2<lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_378/while/lstm_cell_279/addAddV2-lstm_378/while/lstm_cell_279/MatMul:product:0/lstm_378/while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp>lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_378/while/lstm_cell_279/BiasAddBiasAdd$lstm_378/while/lstm_cell_279/add:z:0;lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_378/while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_378/while/lstm_cell_279/splitSplit5lstm_378/while/lstm_cell_279/split/split_dim:output:0-lstm_378/while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_378/while/lstm_cell_279/SigmoidSigmoid+lstm_378/while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_378/while/lstm_cell_279/Sigmoid_1Sigmoid+lstm_378/while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_378/while/lstm_cell_279/mulMul*lstm_378/while/lstm_cell_279/Sigmoid_1:y:0lstm_378_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_378/while/lstm_cell_279/ReluRelu+lstm_378/while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_378/while/lstm_cell_279/mul_1Mul(lstm_378/while/lstm_cell_279/Sigmoid:y:0/lstm_378/while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_378/while/lstm_cell_279/add_1AddV2$lstm_378/while/lstm_cell_279/mul:z:0&lstm_378/while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_378/while/lstm_cell_279/Sigmoid_2Sigmoid+lstm_378/while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_378/while/lstm_cell_279/Relu_1Relu&lstm_378/while/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_378/while/lstm_cell_279/mul_2Mul*lstm_378/while/lstm_cell_279/Sigmoid_2:y:01lstm_378/while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_378/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_378_while_placeholder_1lstm_378_while_placeholder&lstm_378/while/lstm_cell_279/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_378/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_378/while/addAddV2lstm_378_while_placeholderlstm_378/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_378/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_378/while/add_1AddV2*lstm_378_while_lstm_378_while_loop_counterlstm_378/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_378/while/IdentityIdentitylstm_378/while/add_1:z:0^lstm_378/while/NoOp*
T0*
_output_shapes
: ?
lstm_378/while/Identity_1Identity0lstm_378_while_lstm_378_while_maximum_iterations^lstm_378/while/NoOp*
T0*
_output_shapes
: t
lstm_378/while/Identity_2Identitylstm_378/while/add:z:0^lstm_378/while/NoOp*
T0*
_output_shapes
: ?
lstm_378/while/Identity_3IdentityClstm_378/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_378/while/NoOp*
T0*
_output_shapes
: ?
lstm_378/while/Identity_4Identity&lstm_378/while/lstm_cell_279/mul_2:z:0^lstm_378/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_378/while/Identity_5Identity&lstm_378/while/lstm_cell_279/add_1:z:0^lstm_378/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_378/while/NoOpNoOp4^lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp3^lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp5^lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_378_while_identity lstm_378/while/Identity:output:0"?
lstm_378_while_identity_1"lstm_378/while/Identity_1:output:0"?
lstm_378_while_identity_2"lstm_378/while/Identity_2:output:0"?
lstm_378_while_identity_3"lstm_378/while/Identity_3:output:0"?
lstm_378_while_identity_4"lstm_378/while/Identity_4:output:0"?
lstm_378_while_identity_5"lstm_378/while/Identity_5:output:0"T
'lstm_378_while_lstm_378_strided_slice_1)lstm_378_while_lstm_378_strided_slice_1_0"~
<lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource>lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0"?
=lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource?lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0"|
;lstm_378_while_lstm_cell_279_matmul_readvariableop_resource=lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0"?
clstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensorelstm_378_while_tensorarrayv2read_tensorlistgetitem_lstm_378_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp3lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp2h
2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp2lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp2l
4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp4lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_378_while_cond_1702021.
*lstm_378_while_lstm_378_while_loop_counter4
0lstm_378_while_lstm_378_while_maximum_iterations
lstm_378_while_placeholder 
lstm_378_while_placeholder_1 
lstm_378_while_placeholder_2 
lstm_378_while_placeholder_30
,lstm_378_while_less_lstm_378_strided_slice_1G
Clstm_378_while_lstm_378_while_cond_1702021___redundant_placeholder0G
Clstm_378_while_lstm_378_while_cond_1702021___redundant_placeholder1G
Clstm_378_while_lstm_378_while_cond_1702021___redundant_placeholder2G
Clstm_378_while_lstm_378_while_cond_1702021___redundant_placeholder3
lstm_378_while_identity
?
lstm_378/while/LessLesslstm_378_while_placeholder,lstm_378_while_less_lstm_378_strided_slice_1*
T0*
_output_shapes
: ]
lstm_378/while/IdentityIdentitylstm_378/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_378_while_identity lstm_378/while/Identity:output:0*(
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
*sequential_126_lstm_378_while_body_1699281L
Hsequential_126_lstm_378_while_sequential_126_lstm_378_while_loop_counterR
Nsequential_126_lstm_378_while_sequential_126_lstm_378_while_maximum_iterations-
)sequential_126_lstm_378_while_placeholder/
+sequential_126_lstm_378_while_placeholder_1/
+sequential_126_lstm_378_while_placeholder_2/
+sequential_126_lstm_378_while_placeholder_3K
Gsequential_126_lstm_378_while_sequential_126_lstm_378_strided_slice_1_0?
?sequential_126_lstm_378_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_378_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_126_lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0:	?a
Nsequential_126_lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?\
Msequential_126_lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0:	?*
&sequential_126_lstm_378_while_identity,
(sequential_126_lstm_378_while_identity_1,
(sequential_126_lstm_378_while_identity_2,
(sequential_126_lstm_378_while_identity_3,
(sequential_126_lstm_378_while_identity_4,
(sequential_126_lstm_378_while_identity_5I
Esequential_126_lstm_378_while_sequential_126_lstm_378_strided_slice_1?
?sequential_126_lstm_378_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_378_tensorarrayunstack_tensorlistfromtensor]
Jsequential_126_lstm_378_while_lstm_cell_279_matmul_readvariableop_resource:	?_
Lsequential_126_lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource:	d?Z
Ksequential_126_lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource:	???Bsequential_126/lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp?Asequential_126/lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp?Csequential_126/lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp?
Osequential_126/lstm_378/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_126/lstm_378/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_126_lstm_378_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_378_tensorarrayunstack_tensorlistfromtensor_0)sequential_126_lstm_378_while_placeholderXsequential_126/lstm_378/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_126/lstm_378/while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOpLsequential_126_lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_126/lstm_378/while/lstm_cell_279/MatMulMatMulHsequential_126/lstm_378/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_126/lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_126/lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOpNsequential_126_lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_126/lstm_378/while/lstm_cell_279/MatMul_1MatMul+sequential_126_lstm_378_while_placeholder_2Ksequential_126/lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_126/lstm_378/while/lstm_cell_279/addAddV2<sequential_126/lstm_378/while/lstm_cell_279/MatMul:product:0>sequential_126/lstm_378/while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_126/lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOpMsequential_126_lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_126/lstm_378/while/lstm_cell_279/BiasAddBiasAdd3sequential_126/lstm_378/while/lstm_cell_279/add:z:0Jsequential_126/lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_126/lstm_378/while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_126/lstm_378/while/lstm_cell_279/splitSplitDsequential_126/lstm_378/while/lstm_cell_279/split/split_dim:output:0<sequential_126/lstm_378/while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_126/lstm_378/while/lstm_cell_279/SigmoidSigmoid:sequential_126/lstm_378/while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_126/lstm_378/while/lstm_cell_279/Sigmoid_1Sigmoid:sequential_126/lstm_378/while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_126/lstm_378/while/lstm_cell_279/mulMul9sequential_126/lstm_378/while/lstm_cell_279/Sigmoid_1:y:0+sequential_126_lstm_378_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_126/lstm_378/while/lstm_cell_279/ReluRelu:sequential_126/lstm_378/while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_126/lstm_378/while/lstm_cell_279/mul_1Mul7sequential_126/lstm_378/while/lstm_cell_279/Sigmoid:y:0>sequential_126/lstm_378/while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_126/lstm_378/while/lstm_cell_279/add_1AddV23sequential_126/lstm_378/while/lstm_cell_279/mul:z:05sequential_126/lstm_378/while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_126/lstm_378/while/lstm_cell_279/Sigmoid_2Sigmoid:sequential_126/lstm_378/while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_126/lstm_378/while/lstm_cell_279/Relu_1Relu5sequential_126/lstm_378/while/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_126/lstm_378/while/lstm_cell_279/mul_2Mul9sequential_126/lstm_378/while/lstm_cell_279/Sigmoid_2:y:0@sequential_126/lstm_378/while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_126/lstm_378/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_126_lstm_378_while_placeholder_1)sequential_126_lstm_378_while_placeholder5sequential_126/lstm_378/while/lstm_cell_279/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_126/lstm_378/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_126/lstm_378/while/addAddV2)sequential_126_lstm_378_while_placeholder,sequential_126/lstm_378/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_126/lstm_378/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_126/lstm_378/while/add_1AddV2Hsequential_126_lstm_378_while_sequential_126_lstm_378_while_loop_counter.sequential_126/lstm_378/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_126/lstm_378/while/IdentityIdentity'sequential_126/lstm_378/while/add_1:z:0#^sequential_126/lstm_378/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_378/while/Identity_1IdentityNsequential_126_lstm_378_while_sequential_126_lstm_378_while_maximum_iterations#^sequential_126/lstm_378/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_378/while/Identity_2Identity%sequential_126/lstm_378/while/add:z:0#^sequential_126/lstm_378/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_378/while/Identity_3IdentityRsequential_126/lstm_378/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_126/lstm_378/while/NoOp*
T0*
_output_shapes
: ?
(sequential_126/lstm_378/while/Identity_4Identity5sequential_126/lstm_378/while/lstm_cell_279/mul_2:z:0#^sequential_126/lstm_378/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_126/lstm_378/while/Identity_5Identity5sequential_126/lstm_378/while/lstm_cell_279/add_1:z:0#^sequential_126/lstm_378/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_126/lstm_378/while/NoOpNoOpC^sequential_126/lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOpB^sequential_126/lstm_378/while/lstm_cell_279/MatMul/ReadVariableOpD^sequential_126/lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_126_lstm_378_while_identity/sequential_126/lstm_378/while/Identity:output:0"]
(sequential_126_lstm_378_while_identity_11sequential_126/lstm_378/while/Identity_1:output:0"]
(sequential_126_lstm_378_while_identity_21sequential_126/lstm_378/while/Identity_2:output:0"]
(sequential_126_lstm_378_while_identity_31sequential_126/lstm_378/while/Identity_3:output:0"]
(sequential_126_lstm_378_while_identity_41sequential_126/lstm_378/while/Identity_4:output:0"]
(sequential_126_lstm_378_while_identity_51sequential_126/lstm_378/while/Identity_5:output:0"?
Ksequential_126_lstm_378_while_lstm_cell_279_biasadd_readvariableop_resourceMsequential_126_lstm_378_while_lstm_cell_279_biasadd_readvariableop_resource_0"?
Lsequential_126_lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resourceNsequential_126_lstm_378_while_lstm_cell_279_matmul_1_readvariableop_resource_0"?
Jsequential_126_lstm_378_while_lstm_cell_279_matmul_readvariableop_resourceLsequential_126_lstm_378_while_lstm_cell_279_matmul_readvariableop_resource_0"?
Esequential_126_lstm_378_while_sequential_126_lstm_378_strided_slice_1Gsequential_126_lstm_378_while_sequential_126_lstm_378_strided_slice_1_0"?
?sequential_126_lstm_378_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_378_tensorarrayunstack_tensorlistfromtensor?sequential_126_lstm_378_while_tensorarrayv2read_tensorlistgetitem_sequential_126_lstm_378_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_126/lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOpBsequential_126/lstm_378/while/lstm_cell_279/BiasAdd/ReadVariableOp2?
Asequential_126/lstm_378/while/lstm_cell_279/MatMul/ReadVariableOpAsequential_126/lstm_378/while/lstm_cell_279/MatMul/ReadVariableOp2?
Csequential_126/lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOpCsequential_126/lstm_378/while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1701280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_281_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_281_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_281_matmul_readvariableop_resource:2(F
4while_lstm_cell_281_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_281_biasadd_readvariableop_resource:(??*while/lstm_cell_281/BiasAdd/ReadVariableOp?)while/lstm_cell_281/MatMul/ReadVariableOp?+while/lstm_cell_281/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_281/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_281/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_281/addAddV2$while/lstm_cell_281/MatMul:product:0&while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_281/BiasAddBiasAddwhile/lstm_cell_281/add:z:02while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_281/splitSplit,while/lstm_cell_281/split/split_dim:output:0$while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_281/SigmoidSigmoid"while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_1Sigmoid"while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mulMul!while/lstm_cell_281/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_281/ReluRelu"while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_1Mulwhile/lstm_cell_281/Sigmoid:y:0&while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/add_1AddV2while/lstm_cell_281/mul:z:0while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_2Sigmoid"while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_281/Relu_1Reluwhile/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_2Mul!while/lstm_cell_281/Sigmoid_2:y:0(while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_281/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_281/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_281/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_281/BiasAdd/ReadVariableOp*^while/lstm_cell_281/MatMul/ReadVariableOp,^while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_281_biasadd_readvariableop_resource5while_lstm_cell_281_biasadd_readvariableop_resource_0"n
4while_lstm_cell_281_matmul_1_readvariableop_resource6while_lstm_cell_281_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_281_matmul_readvariableop_resource4while_lstm_cell_281_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_281/BiasAdd/ReadVariableOp*while/lstm_cell_281/BiasAdd/ReadVariableOp2V
)while/lstm_cell_281/MatMul/ReadVariableOp)while/lstm_cell_281/MatMul/ReadVariableOp2Z
+while/lstm_cell_281/MatMul_1/ReadVariableOp+while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_126_lstm_380_while_cond_1699558L
Hsequential_126_lstm_380_while_sequential_126_lstm_380_while_loop_counterR
Nsequential_126_lstm_380_while_sequential_126_lstm_380_while_maximum_iterations-
)sequential_126_lstm_380_while_placeholder/
+sequential_126_lstm_380_while_placeholder_1/
+sequential_126_lstm_380_while_placeholder_2/
+sequential_126_lstm_380_while_placeholder_3N
Jsequential_126_lstm_380_while_less_sequential_126_lstm_380_strided_slice_1e
asequential_126_lstm_380_while_sequential_126_lstm_380_while_cond_1699558___redundant_placeholder0e
asequential_126_lstm_380_while_sequential_126_lstm_380_while_cond_1699558___redundant_placeholder1e
asequential_126_lstm_380_while_sequential_126_lstm_380_while_cond_1699558___redundant_placeholder2e
asequential_126_lstm_380_while_sequential_126_lstm_380_while_cond_1699558___redundant_placeholder3*
&sequential_126_lstm_380_while_identity
?
"sequential_126/lstm_380/while/LessLess)sequential_126_lstm_380_while_placeholderJsequential_126_lstm_380_while_less_sequential_126_lstm_380_strided_slice_1*
T0*
_output_shapes
: {
&sequential_126/lstm_380/while/IdentityIdentity&sequential_126/lstm_380/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_126_lstm_380_while_identity/sequential_126/lstm_380/while/Identity:output:0*(
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
lstm_380_while_cond_1702299.
*lstm_380_while_lstm_380_while_loop_counter4
0lstm_380_while_lstm_380_while_maximum_iterations
lstm_380_while_placeholder 
lstm_380_while_placeholder_1 
lstm_380_while_placeholder_2 
lstm_380_while_placeholder_30
,lstm_380_while_less_lstm_380_strided_slice_1G
Clstm_380_while_lstm_380_while_cond_1702299___redundant_placeholder0G
Clstm_380_while_lstm_380_while_cond_1702299___redundant_placeholder1G
Clstm_380_while_lstm_380_while_cond_1702299___redundant_placeholder2G
Clstm_380_while_lstm_380_while_cond_1702299___redundant_placeholder3
lstm_380_while_identity
?
lstm_380/while/LessLesslstm_380_while_placeholder,lstm_380_while_less_lstm_380_strided_slice_1*
T0*
_output_shapes
: ]
lstm_380/while/IdentityIdentitylstm_380/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_380_while_identity lstm_380/while/Identity:output:0*(
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
while_body_1704152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_281_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_281_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_281_matmul_readvariableop_resource:2(F
4while_lstm_cell_281_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_281_biasadd_readvariableop_resource:(??*while/lstm_cell_281/BiasAdd/ReadVariableOp?)while/lstm_cell_281/MatMul/ReadVariableOp?+while/lstm_cell_281/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_281/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_281/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_281/addAddV2$while/lstm_cell_281/MatMul:product:0&while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_281/BiasAddBiasAddwhile/lstm_cell_281/add:z:02while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_281/splitSplit,while/lstm_cell_281/split/split_dim:output:0$while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_281/SigmoidSigmoid"while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_1Sigmoid"while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mulMul!while/lstm_cell_281/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_281/ReluRelu"while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_1Mulwhile/lstm_cell_281/Sigmoid:y:0&while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/add_1AddV2while/lstm_cell_281/mul:z:0while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_2Sigmoid"while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_281/Relu_1Reluwhile/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_2Mul!while/lstm_cell_281/Sigmoid_2:y:0(while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_281/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_281/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_281/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_281/BiasAdd/ReadVariableOp*^while/lstm_cell_281/MatMul/ReadVariableOp,^while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_281_biasadd_readvariableop_resource5while_lstm_cell_281_biasadd_readvariableop_resource_0"n
4while_lstm_cell_281_matmul_1_readvariableop_resource6while_lstm_cell_281_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_281_matmul_readvariableop_resource4while_lstm_cell_281_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_281/BiasAdd/ReadVariableOp*while/lstm_cell_281/BiasAdd/ReadVariableOp2V
)while/lstm_cell_281/MatMul/ReadVariableOp)while/lstm_cell_281/MatMul/ReadVariableOp2Z
+while/lstm_cell_281/MatMul_1/ReadVariableOp+while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1703536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_280_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_280_matmul_readvariableop_resource:	d?G
4while_lstm_cell_280_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_280_biasadd_readvariableop_resource:	???*while/lstm_cell_280/BiasAdd/ReadVariableOp?)while/lstm_cell_280/MatMul/ReadVariableOp?+while/lstm_cell_280/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_280/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_280/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_280/addAddV2$while/lstm_cell_280/MatMul:product:0&while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_280/BiasAddBiasAddwhile/lstm_cell_280/add:z:02while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_280/splitSplit,while/lstm_cell_280/split/split_dim:output:0$while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_280/SigmoidSigmoid"while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_1Sigmoid"while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mulMul!while/lstm_cell_280/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_280/ReluRelu"while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_1Mulwhile/lstm_cell_280/Sigmoid:y:0&while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/add_1AddV2while/lstm_cell_280/mul:z:0while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_2Sigmoid"while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_280/Relu_1Reluwhile/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_2Mul!while/lstm_cell_280/Sigmoid_2:y:0(while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_280/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_280/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_280/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_280/BiasAdd/ReadVariableOp*^while/lstm_cell_280/MatMul/ReadVariableOp,^while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_280_biasadd_readvariableop_resource5while_lstm_cell_280_biasadd_readvariableop_resource_0"n
4while_lstm_cell_280_matmul_1_readvariableop_resource6while_lstm_cell_280_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_280_matmul_readvariableop_resource4while_lstm_cell_280_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_280/BiasAdd/ReadVariableOp*while/lstm_cell_280/BiasAdd/ReadVariableOp2V
)while/lstm_cell_280/MatMul/ReadVariableOp)while/lstm_cell_280/MatMul/ReadVariableOp2Z
+while/lstm_cell_280/MatMul_1/ReadVariableOp+while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_380_layer_call_fn_1704071
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1700690o
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
while_cond_1703205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1703205___redundant_placeholder05
1while_while_cond_1703205___redundant_placeholder15
1while_while_cond_1703205___redundant_placeholder25
1while_while_cond_1703205___redundant_placeholder3
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
*__inference_lstm_380_layer_call_fn_1704093

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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701364o
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
while_body_1700080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_280_1700104_0:	d?0
while_lstm_cell_280_1700106_0:	2?,
while_lstm_cell_280_1700108_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_280_1700104:	d?.
while_lstm_cell_280_1700106:	2?*
while_lstm_cell_280_1700108:	???+while/lstm_cell_280/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_280/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_280_1700104_0while_lstm_cell_280_1700106_0while_lstm_cell_280_1700108_0*
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700066?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_280/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_280/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_280/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_280/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_280_1700104while_lstm_cell_280_1700104_0"<
while_lstm_cell_280_1700106while_lstm_cell_280_1700106_0"<
while_lstm_cell_280_1700108while_lstm_cell_280_1700108_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_280/StatefulPartitionedCall+while/lstm_cell_280/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_280_layer_call_fn_1704816

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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700212o
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1701694

inputs?
,lstm_cell_279_matmul_readvariableop_resource:	?A
.lstm_cell_279_matmul_1_readvariableop_resource:	d?<
-lstm_cell_279_biasadd_readvariableop_resource:	?
identity??$lstm_cell_279/BiasAdd/ReadVariableOp?#lstm_cell_279/MatMul/ReadVariableOp?%lstm_cell_279/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_279/MatMul/ReadVariableOpReadVariableOp,lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_279/MatMulMatMulstrided_slice_2:output:0+lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_279/MatMul_1MatMulzeros:output:0-lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_279/addAddV2lstm_cell_279/MatMul:product:0 lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_279/BiasAddBiasAddlstm_cell_279/add:z:0,lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_279/splitSplit&lstm_cell_279/split/split_dim:output:0lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_279/SigmoidSigmoidlstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_1Sigmoidlstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_279/mulMullstm_cell_279/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_279/ReluRelulstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_1Mullstm_cell_279/Sigmoid:y:0 lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_279/add_1AddV2lstm_cell_279/mul:z:0lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_2Sigmoidlstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_279/Relu_1Relulstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_2Mullstm_cell_279/Sigmoid_2:y:0"lstm_cell_279/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_279_matmul_readvariableop_resource.lstm_cell_279_matmul_1_readvariableop_resource-lstm_cell_279_biasadd_readvariableop_resource*
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
while_body_1701610*
condR
while_cond_1701609*K
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
NoOpNoOp%^lstm_cell_279/BiasAdd/ReadVariableOp$^lstm_cell_279/MatMul/ReadVariableOp&^lstm_cell_279/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_279/BiasAdd/ReadVariableOp$lstm_cell_279/BiasAdd/ReadVariableOp2J
#lstm_cell_279/MatMul/ReadVariableOp#lstm_cell_279/MatMul/ReadVariableOp2N
%lstm_cell_279/MatMul_1/ReadVariableOp%lstm_cell_279/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_378_layer_call_and_return_conditional_losses_1700848

inputs?
,lstm_cell_279_matmul_readvariableop_resource:	?A
.lstm_cell_279_matmul_1_readvariableop_resource:	d?<
-lstm_cell_279_biasadd_readvariableop_resource:	?
identity??$lstm_cell_279/BiasAdd/ReadVariableOp?#lstm_cell_279/MatMul/ReadVariableOp?%lstm_cell_279/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_279/MatMul/ReadVariableOpReadVariableOp,lstm_cell_279_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_279/MatMulMatMulstrided_slice_2:output:0+lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_279_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_279/MatMul_1MatMulzeros:output:0-lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_279/addAddV2lstm_cell_279/MatMul:product:0 lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_279_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_279/BiasAddBiasAddlstm_cell_279/add:z:0,lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_279/splitSplit&lstm_cell_279/split/split_dim:output:0lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_279/SigmoidSigmoidlstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_1Sigmoidlstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_279/mulMullstm_cell_279/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_279/ReluRelulstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_1Mullstm_cell_279/Sigmoid:y:0 lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_279/add_1AddV2lstm_cell_279/mul:z:0lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_279/Sigmoid_2Sigmoidlstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_279/Relu_1Relulstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_279/mul_2Mullstm_cell_279/Sigmoid_2:y:0"lstm_cell_279/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_279_matmul_readvariableop_resource.lstm_cell_279_matmul_1_readvariableop_resource-lstm_cell_279_biasadd_readvariableop_resource*
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
while_body_1700764*
condR
while_cond_1700763*K
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
NoOpNoOp%^lstm_cell_279/BiasAdd/ReadVariableOp$^lstm_cell_279/MatMul/ReadVariableOp&^lstm_cell_279/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_279/BiasAdd/ReadVariableOp$lstm_cell_279/BiasAdd/ReadVariableOp2J
#lstm_cell_279/MatMul/ReadVariableOp#lstm_cell_279/MatMul/ReadVariableOp2N
%lstm_cell_279/MatMul_1/ReadVariableOp%lstm_cell_279/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_380_layer_call_fn_1704060
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1700499o
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
while_cond_1701609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1701609___redundant_placeholder05
1while_while_cond_1701609___redundant_placeholder15
1while_while_cond_1701609___redundant_placeholder25
1while_while_cond_1701609___redundant_placeholder3
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
*__inference_lstm_378_layer_call_fn_1702861

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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1701694s
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
while_body_1703679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_280_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_280_matmul_readvariableop_resource:	d?G
4while_lstm_cell_280_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_280_biasadd_readvariableop_resource:	???*while/lstm_cell_280/BiasAdd/ReadVariableOp?)while/lstm_cell_280/MatMul/ReadVariableOp?+while/lstm_cell_280/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_280/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_280/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_280/addAddV2$while/lstm_cell_280/MatMul:product:0&while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_280/BiasAddBiasAddwhile/lstm_cell_280/add:z:02while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_280/splitSplit,while/lstm_cell_280/split/split_dim:output:0$while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_280/SigmoidSigmoid"while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_1Sigmoid"while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mulMul!while/lstm_cell_280/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_280/ReluRelu"while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_1Mulwhile/lstm_cell_280/Sigmoid:y:0&while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/add_1AddV2while/lstm_cell_280/mul:z:0while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_2Sigmoid"while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_280/Relu_1Reluwhile/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_2Mul!while/lstm_cell_280/Sigmoid_2:y:0(while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_280/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_280/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_280/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_280/BiasAdd/ReadVariableOp*^while/lstm_cell_280/MatMul/ReadVariableOp,^while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_280_biasadd_readvariableop_resource5while_lstm_cell_280_biasadd_readvariableop_resource_0"n
4while_lstm_cell_280_matmul_1_readvariableop_resource6while_lstm_cell_280_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_280_matmul_readvariableop_resource4while_lstm_cell_280_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_280/BiasAdd/ReadVariableOp*while/lstm_cell_280/BiasAdd/ReadVariableOp2V
)while/lstm_cell_280/MatMul/ReadVariableOp)while/lstm_cell_280/MatMul/ReadVariableOp2Z
+while/lstm_cell_280/MatMul_1/ReadVariableOp+while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1700429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1700429___redundant_placeholder05
1while_while_cond_1700429___redundant_placeholder15
1while_while_cond_1700429___redundant_placeholder25
1while_while_cond_1700429___redundant_placeholder3
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703620
inputs_0?
,lstm_cell_280_matmul_readvariableop_resource:	d?A
.lstm_cell_280_matmul_1_readvariableop_resource:	2?<
-lstm_cell_280_biasadd_readvariableop_resource:	?
identity??$lstm_cell_280/BiasAdd/ReadVariableOp?#lstm_cell_280/MatMul/ReadVariableOp?%lstm_cell_280/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_280/MatMul/ReadVariableOpReadVariableOp,lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_280/MatMulMatMulstrided_slice_2:output:0+lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_280/MatMul_1MatMulzeros:output:0-lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_280/addAddV2lstm_cell_280/MatMul:product:0 lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_280/BiasAddBiasAddlstm_cell_280/add:z:0,lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_280/splitSplit&lstm_cell_280/split/split_dim:output:0lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_280/SigmoidSigmoidlstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_1Sigmoidlstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_280/mulMullstm_cell_280/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_280/ReluRelulstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_1Mullstm_cell_280/Sigmoid:y:0 lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_280/add_1AddV2lstm_cell_280/mul:z:0lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_2Sigmoidlstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_280/Relu_1Relulstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_2Mullstm_cell_280/Sigmoid_2:y:0"lstm_cell_280/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_280_matmul_readvariableop_resource.lstm_cell_280_matmul_1_readvariableop_resource-lstm_cell_280_biasadd_readvariableop_resource*
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
while_body_1703536*
condR
while_cond_1703535*K
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
NoOpNoOp%^lstm_cell_280/BiasAdd/ReadVariableOp$^lstm_cell_280/MatMul/ReadVariableOp&^lstm_cell_280/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_280/BiasAdd/ReadVariableOp$lstm_cell_280/BiasAdd/ReadVariableOp2J
#lstm_cell_280/MatMul/ReadVariableOp#lstm_cell_280/MatMul/ReadVariableOp2N
%lstm_cell_280/MatMul_1/ReadVariableOp%lstm_cell_280/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_379_layer_call_fn_1703466

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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700998s
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
while_cond_1703821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1703821___redundant_placeholder05
1while_while_cond_1703821___redundant_placeholder15
1while_while_cond_1703821___redundant_placeholder25
1while_while_cond_1703821___redundant_placeholder3
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1704782

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
lstm_379_while_cond_1702587.
*lstm_379_while_lstm_379_while_loop_counter4
0lstm_379_while_lstm_379_while_maximum_iterations
lstm_379_while_placeholder 
lstm_379_while_placeholder_1 
lstm_379_while_placeholder_2 
lstm_379_while_placeholder_30
,lstm_379_while_less_lstm_379_strided_slice_1G
Clstm_379_while_lstm_379_while_cond_1702587___redundant_placeholder0G
Clstm_379_while_lstm_379_while_cond_1702587___redundant_placeholder1G
Clstm_379_while_lstm_379_while_cond_1702587___redundant_placeholder2G
Clstm_379_while_lstm_379_while_cond_1702587___redundant_placeholder3
lstm_379_while_identity
?
lstm_379/while/LessLesslstm_379_while_placeholder,lstm_379_while_less_lstm_379_strided_slice_1*
T0*
_output_shapes
: ]
lstm_379/while/IdentityIdentitylstm_379/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_379_while_identity lstm_379/while/Identity:output:0*(
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
while_body_1701445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_280_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_280_matmul_readvariableop_resource:	d?G
4while_lstm_cell_280_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_280_biasadd_readvariableop_resource:	???*while/lstm_cell_280/BiasAdd/ReadVariableOp?)while/lstm_cell_280/MatMul/ReadVariableOp?+while/lstm_cell_280/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_280/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_280/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_280/addAddV2$while/lstm_cell_280/MatMul:product:0&while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_280/BiasAddBiasAddwhile/lstm_cell_280/add:z:02while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_280/splitSplit,while/lstm_cell_280/split/split_dim:output:0$while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_280/SigmoidSigmoid"while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_1Sigmoid"while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mulMul!while/lstm_cell_280/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_280/ReluRelu"while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_1Mulwhile/lstm_cell_280/Sigmoid:y:0&while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/add_1AddV2while/lstm_cell_280/mul:z:0while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_2Sigmoid"while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_280/Relu_1Reluwhile/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_2Mul!while/lstm_cell_280/Sigmoid_2:y:0(while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_280/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_280/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_280/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_280/BiasAdd/ReadVariableOp*^while/lstm_cell_280/MatMul/ReadVariableOp,^while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_280_biasadd_readvariableop_resource5while_lstm_cell_280_biasadd_readvariableop_resource_0"n
4while_lstm_cell_280_matmul_1_readvariableop_resource6while_lstm_cell_280_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_280_matmul_readvariableop_resource4while_lstm_cell_280_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_280/BiasAdd/ReadVariableOp*while/lstm_cell_280/BiasAdd/ReadVariableOp2V
)while/lstm_cell_280/MatMul/ReadVariableOp)while/lstm_cell_280/MatMul/ReadVariableOp2Z
+while/lstm_cell_280/MatMul_1/ReadVariableOp+while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701844
lstm_378_input#
lstm_378_1701817:	?#
lstm_378_1701819:	d?
lstm_378_1701821:	?#
lstm_379_1701824:	d?#
lstm_379_1701826:	2?
lstm_379_1701828:	?"
lstm_380_1701831:2("
lstm_380_1701833:
(
lstm_380_1701835:(#
dense_126_1701838:

dense_126_1701840:
identity??!dense_126/StatefulPartitionedCall? lstm_378/StatefulPartitionedCall? lstm_379/StatefulPartitionedCall? lstm_380/StatefulPartitionedCall?
 lstm_378/StatefulPartitionedCallStatefulPartitionedCalllstm_378_inputlstm_378_1701817lstm_378_1701819lstm_378_1701821*
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1700848?
 lstm_379/StatefulPartitionedCallStatefulPartitionedCall)lstm_378/StatefulPartitionedCall:output:0lstm_379_1701824lstm_379_1701826lstm_379_1701828*
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700998?
 lstm_380/StatefulPartitionedCallStatefulPartitionedCall)lstm_379/StatefulPartitionedCall:output:0lstm_380_1701831lstm_380_1701833lstm_380_1701835*
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701148?
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_380/StatefulPartitionedCall:output:0dense_126_1701838dense_126_1701840*
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
F__inference_dense_126_layer_call_and_return_conditional_losses_1701166y
IdentityIdentity*dense_126/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_126/StatefulPartitionedCall!^lstm_378/StatefulPartitionedCall!^lstm_379/StatefulPartitionedCall!^lstm_380/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2D
 lstm_378/StatefulPartitionedCall lstm_378/StatefulPartitionedCall2D
 lstm_379/StatefulPartitionedCall lstm_379/StatefulPartitionedCall2D
 lstm_380/StatefulPartitionedCall lstm_380/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_378_input
?
?
/__inference_lstm_cell_279_layer_call_fn_1704701

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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699716o
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699862

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
while_cond_1700079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1700079___redundant_placeholder05
1while_while_cond_1700079___redundant_placeholder15
1while_while_cond_1700079___redundant_placeholder25
1while_while_cond_1700079___redundant_placeholder3
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701364

inputs>
,lstm_cell_281_matmul_readvariableop_resource:2(@
.lstm_cell_281_matmul_1_readvariableop_resource:
(;
-lstm_cell_281_biasadd_readvariableop_resource:(
identity??$lstm_cell_281/BiasAdd/ReadVariableOp?#lstm_cell_281/MatMul/ReadVariableOp?%lstm_cell_281/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_281/MatMul/ReadVariableOpReadVariableOp,lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_281/MatMulMatMulstrided_slice_2:output:0+lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_281/MatMul_1MatMulzeros:output:0-lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_281/addAddV2lstm_cell_281/MatMul:product:0 lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_281/BiasAddBiasAddlstm_cell_281/add:z:0,lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_281/splitSplit&lstm_cell_281/split/split_dim:output:0lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_281/SigmoidSigmoidlstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_1Sigmoidlstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_281/mulMullstm_cell_281/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_281/ReluRelulstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_1Mullstm_cell_281/Sigmoid:y:0 lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_281/add_1AddV2lstm_cell_281/mul:z:0lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_2Sigmoidlstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_281/Relu_1Relulstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_2Mullstm_cell_281/Sigmoid_2:y:0"lstm_cell_281/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_281_matmul_readvariableop_resource.lstm_cell_281_matmul_1_readvariableop_resource-lstm_cell_281_biasadd_readvariableop_resource*
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
while_body_1701280*
condR
while_cond_1701279*K
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
NoOpNoOp%^lstm_cell_281/BiasAdd/ReadVariableOp$^lstm_cell_281/MatMul/ReadVariableOp&^lstm_cell_281/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_281/BiasAdd/ReadVariableOp$lstm_cell_281/BiasAdd/ReadVariableOp2J
#lstm_cell_281/MatMul/ReadVariableOp#lstm_cell_281/MatMul/ReadVariableOp2N
%lstm_cell_281/MatMul_1/ReadVariableOp%lstm_cell_281/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_378_layer_call_fn_1702850

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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1700848s
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
?
*sequential_126_lstm_378_while_cond_1699280L
Hsequential_126_lstm_378_while_sequential_126_lstm_378_while_loop_counterR
Nsequential_126_lstm_378_while_sequential_126_lstm_378_while_maximum_iterations-
)sequential_126_lstm_378_while_placeholder/
+sequential_126_lstm_378_while_placeholder_1/
+sequential_126_lstm_378_while_placeholder_2/
+sequential_126_lstm_378_while_placeholder_3N
Jsequential_126_lstm_378_while_less_sequential_126_lstm_378_strided_slice_1e
asequential_126_lstm_378_while_sequential_126_lstm_378_while_cond_1699280___redundant_placeholder0e
asequential_126_lstm_378_while_sequential_126_lstm_378_while_cond_1699280___redundant_placeholder1e
asequential_126_lstm_378_while_sequential_126_lstm_378_while_cond_1699280___redundant_placeholder2e
asequential_126_lstm_378_while_sequential_126_lstm_378_while_cond_1699280___redundant_placeholder3*
&sequential_126_lstm_378_while_identity
?
"sequential_126/lstm_378/while/LessLess)sequential_126_lstm_378_while_placeholderJsequential_126_lstm_378_while_less_sequential_126_lstm_378_strided_slice_1*
T0*
_output_shapes
: {
&sequential_126/lstm_378/while/IdentityIdentity&sequential_126/lstm_378/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_126_lstm_378_while_identity/sequential_126/lstm_378/while/Identity:output:0*(
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
while_body_1701064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_281_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_281_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_281_matmul_readvariableop_resource:2(F
4while_lstm_cell_281_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_281_biasadd_readvariableop_resource:(??*while/lstm_cell_281/BiasAdd/ReadVariableOp?)while/lstm_cell_281/MatMul/ReadVariableOp?+while/lstm_cell_281/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_281/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_281/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_281/addAddV2$while/lstm_cell_281/MatMul:product:0&while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_281/BiasAddBiasAddwhile/lstm_cell_281/add:z:02while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_281/splitSplit,while/lstm_cell_281/split/split_dim:output:0$while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_281/SigmoidSigmoid"while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_1Sigmoid"while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mulMul!while/lstm_cell_281/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_281/ReluRelu"while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_1Mulwhile/lstm_cell_281/Sigmoid:y:0&while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/add_1AddV2while/lstm_cell_281/mul:z:0while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_2Sigmoid"while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_281/Relu_1Reluwhile/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_2Mul!while/lstm_cell_281/Sigmoid_2:y:0(while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_281/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_281/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_281/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_281/BiasAdd/ReadVariableOp*^while/lstm_cell_281/MatMul/ReadVariableOp,^while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_281_biasadd_readvariableop_resource5while_lstm_cell_281_biasadd_readvariableop_resource_0"n
4while_lstm_cell_281_matmul_1_readvariableop_resource6while_lstm_cell_281_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_281_matmul_readvariableop_resource4while_lstm_cell_281_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_281/BiasAdd/ReadVariableOp*while/lstm_cell_281/BiasAdd/ReadVariableOp2V
)while/lstm_cell_281/MatMul/ReadVariableOp)while/lstm_cell_281/MatMul/ReadVariableOp2Z
+while/lstm_cell_281/MatMul_1/ReadVariableOp+while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_380_while_body_1702727.
*lstm_380_while_lstm_380_while_loop_counter4
0lstm_380_while_lstm_380_while_maximum_iterations
lstm_380_while_placeholder 
lstm_380_while_placeholder_1 
lstm_380_while_placeholder_2 
lstm_380_while_placeholder_3-
)lstm_380_while_lstm_380_strided_slice_1_0i
elstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0:2(Q
?lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(L
>lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0:(
lstm_380_while_identity
lstm_380_while_identity_1
lstm_380_while_identity_2
lstm_380_while_identity_3
lstm_380_while_identity_4
lstm_380_while_identity_5+
'lstm_380_while_lstm_380_strided_slice_1g
clstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensorM
;lstm_380_while_lstm_cell_281_matmul_readvariableop_resource:2(O
=lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource:
(J
<lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource:(??3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp?2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp?4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp?
@lstm_380/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_380/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensor_0lstm_380_while_placeholderIlstm_380/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp=lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_380/while/lstm_cell_281/MatMulMatMul9lstm_380/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp?lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_380/while/lstm_cell_281/MatMul_1MatMullstm_380_while_placeholder_2<lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_380/while/lstm_cell_281/addAddV2-lstm_380/while/lstm_cell_281/MatMul:product:0/lstm_380/while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp>lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_380/while/lstm_cell_281/BiasAddBiasAdd$lstm_380/while/lstm_cell_281/add:z:0;lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_380/while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_380/while/lstm_cell_281/splitSplit5lstm_380/while/lstm_cell_281/split/split_dim:output:0-lstm_380/while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_380/while/lstm_cell_281/SigmoidSigmoid+lstm_380/while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_380/while/lstm_cell_281/Sigmoid_1Sigmoid+lstm_380/while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_380/while/lstm_cell_281/mulMul*lstm_380/while/lstm_cell_281/Sigmoid_1:y:0lstm_380_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_380/while/lstm_cell_281/ReluRelu+lstm_380/while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_380/while/lstm_cell_281/mul_1Mul(lstm_380/while/lstm_cell_281/Sigmoid:y:0/lstm_380/while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_380/while/lstm_cell_281/add_1AddV2$lstm_380/while/lstm_cell_281/mul:z:0&lstm_380/while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_380/while/lstm_cell_281/Sigmoid_2Sigmoid+lstm_380/while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_380/while/lstm_cell_281/Relu_1Relu&lstm_380/while/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_380/while/lstm_cell_281/mul_2Mul*lstm_380/while/lstm_cell_281/Sigmoid_2:y:01lstm_380/while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_380/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_380_while_placeholder_1lstm_380_while_placeholder&lstm_380/while/lstm_cell_281/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_380/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_380/while/addAddV2lstm_380_while_placeholderlstm_380/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_380/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_380/while/add_1AddV2*lstm_380_while_lstm_380_while_loop_counterlstm_380/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_380/while/IdentityIdentitylstm_380/while/add_1:z:0^lstm_380/while/NoOp*
T0*
_output_shapes
: ?
lstm_380/while/Identity_1Identity0lstm_380_while_lstm_380_while_maximum_iterations^lstm_380/while/NoOp*
T0*
_output_shapes
: t
lstm_380/while/Identity_2Identitylstm_380/while/add:z:0^lstm_380/while/NoOp*
T0*
_output_shapes
: ?
lstm_380/while/Identity_3IdentityClstm_380/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_380/while/NoOp*
T0*
_output_shapes
: ?
lstm_380/while/Identity_4Identity&lstm_380/while/lstm_cell_281/mul_2:z:0^lstm_380/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_380/while/Identity_5Identity&lstm_380/while/lstm_cell_281/add_1:z:0^lstm_380/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_380/while/NoOpNoOp4^lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp3^lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp5^lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_380_while_identity lstm_380/while/Identity:output:0"?
lstm_380_while_identity_1"lstm_380/while/Identity_1:output:0"?
lstm_380_while_identity_2"lstm_380/while/Identity_2:output:0"?
lstm_380_while_identity_3"lstm_380/while/Identity_3:output:0"?
lstm_380_while_identity_4"lstm_380/while/Identity_4:output:0"?
lstm_380_while_identity_5"lstm_380/while/Identity_5:output:0"T
'lstm_380_while_lstm_380_strided_slice_1)lstm_380_while_lstm_380_strided_slice_1_0"~
<lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource>lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0"?
=lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource?lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0"|
;lstm_380_while_lstm_cell_281_matmul_readvariableop_resource=lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0"?
clstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensorelstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp2h
2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp2l
4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1704880

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
while_body_1700914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_280_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_280_matmul_readvariableop_resource:	d?G
4while_lstm_cell_280_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_280_biasadd_readvariableop_resource:	???*while/lstm_cell_280/BiasAdd/ReadVariableOp?)while/lstm_cell_280/MatMul/ReadVariableOp?+while/lstm_cell_280/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_280/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_280/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_280/addAddV2$while/lstm_cell_280/MatMul:product:0&while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_280/BiasAddBiasAddwhile/lstm_cell_280/add:z:02while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_280/splitSplit,while/lstm_cell_280/split/split_dim:output:0$while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_280/SigmoidSigmoid"while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_1Sigmoid"while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mulMul!while/lstm_cell_280/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_280/ReluRelu"while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_1Mulwhile/lstm_cell_280/Sigmoid:y:0&while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/add_1AddV2while/lstm_cell_280/mul:z:0while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_280/Sigmoid_2Sigmoid"while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_280/Relu_1Reluwhile/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_280/mul_2Mul!while/lstm_cell_280/Sigmoid_2:y:0(while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_280/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_280/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_280/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_280/BiasAdd/ReadVariableOp*^while/lstm_cell_280/MatMul/ReadVariableOp,^while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_280_biasadd_readvariableop_resource5while_lstm_cell_280_biasadd_readvariableop_resource_0"n
4while_lstm_cell_280_matmul_1_readvariableop_resource6while_lstm_cell_280_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_280_matmul_readvariableop_resource4while_lstm_cell_280_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_280/BiasAdd/ReadVariableOp*while/lstm_cell_280/BiasAdd/ReadVariableOp2V
)while/lstm_cell_280/MatMul/ReadVariableOp)while/lstm_cell_280/MatMul/ReadVariableOp2Z
+while/lstm_cell_280/MatMul_1/ReadVariableOp+while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1700620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1700620___redundant_placeholder05
1while_while_cond_1700620___redundant_placeholder15
1while_while_cond_1700620___redundant_placeholder25
1while_while_cond_1700620___redundant_placeholder3
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
while_cond_1704294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1704294___redundant_placeholder05
1while_while_cond_1704294___redundant_placeholder15
1while_while_cond_1704294___redundant_placeholder25
1while_while_cond_1704294___redundant_placeholder3
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1700499

inputs'
lstm_cell_281_1700417:2('
lstm_cell_281_1700419:
(#
lstm_cell_281_1700421:(
identity??%lstm_cell_281/StatefulPartitionedCall?while;
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
%lstm_cell_281/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_281_1700417lstm_cell_281_1700419lstm_cell_281_1700421*
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700416n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_281_1700417lstm_cell_281_1700419lstm_cell_281_1700421*
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
while_body_1700430*
condR
while_cond_1700429*K
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
NoOpNoOp&^lstm_cell_281/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_281/StatefulPartitionedCall%lstm_cell_281/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1704946

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
?8
?
E__inference_lstm_379_layer_call_and_return_conditional_losses_1700340

inputs(
lstm_cell_280_1700258:	d?(
lstm_cell_280_1700260:	2?$
lstm_cell_280_1700262:	?
identity??%lstm_cell_280/StatefulPartitionedCall?while;
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
%lstm_cell_280/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_280_1700258lstm_cell_280_1700260lstm_cell_280_1700262*
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1700212n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_280_1700258lstm_cell_280_1700260lstm_cell_280_1700262*
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
while_body_1700271*
condR
while_cond_1700270*K
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
NoOpNoOp&^lstm_cell_280/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_280/StatefulPartitionedCall%lstm_cell_280/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1703206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_279_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_279_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_279_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_279_matmul_readvariableop_resource:	?G
4while_lstm_cell_279_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_279_biasadd_readvariableop_resource:	???*while/lstm_cell_279/BiasAdd/ReadVariableOp?)while/lstm_cell_279/MatMul/ReadVariableOp?+while/lstm_cell_279/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_279/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_279_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_279/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_279/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_279/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_279_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_279/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_279/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_279/addAddV2$while/lstm_cell_279/MatMul:product:0&while/lstm_cell_279/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_279/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_279_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_279/BiasAddBiasAddwhile/lstm_cell_279/add:z:02while/lstm_cell_279/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_279/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_279/splitSplit,while/lstm_cell_279/split/split_dim:output:0$while/lstm_cell_279/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_279/SigmoidSigmoid"while/lstm_cell_279/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_1Sigmoid"while/lstm_cell_279/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mulMul!while/lstm_cell_279/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_279/ReluRelu"while/lstm_cell_279/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_1Mulwhile/lstm_cell_279/Sigmoid:y:0&while/lstm_cell_279/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/add_1AddV2while/lstm_cell_279/mul:z:0while/lstm_cell_279/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_279/Sigmoid_2Sigmoid"while/lstm_cell_279/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_279/Relu_1Reluwhile/lstm_cell_279/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_279/mul_2Mul!while/lstm_cell_279/Sigmoid_2:y:0(while/lstm_cell_279/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_279/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_279/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_279/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_279/BiasAdd/ReadVariableOp*^while/lstm_cell_279/MatMul/ReadVariableOp,^while/lstm_cell_279/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_279_biasadd_readvariableop_resource5while_lstm_cell_279_biasadd_readvariableop_resource_0"n
4while_lstm_cell_279_matmul_1_readvariableop_resource6while_lstm_cell_279_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_279_matmul_readvariableop_resource4while_lstm_cell_279_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_279/BiasAdd/ReadVariableOp*while/lstm_cell_279/BiasAdd/ReadVariableOp2V
)while/lstm_cell_279/MatMul/ReadVariableOp)while/lstm_cell_279/MatMul/ReadVariableOp2Z
+while/lstm_cell_279/MatMul_1/ReadVariableOp+while/lstm_cell_279/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1703535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1703535___redundant_placeholder05
1while_while_cond_1703535___redundant_placeholder15
1while_while_cond_1703535___redundant_placeholder25
1while_while_cond_1703535___redundant_placeholder3
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
while_body_1699730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_279_1699754_0:	?0
while_lstm_cell_279_1699756_0:	d?,
while_lstm_cell_279_1699758_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_279_1699754:	?.
while_lstm_cell_279_1699756:	d?*
while_lstm_cell_279_1699758:	???+while/lstm_cell_279/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_279/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_279_1699754_0while_lstm_cell_279_1699756_0while_lstm_cell_279_1699758_0*
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699716?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_279/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_279/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_279/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_279/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_279_1699754while_lstm_cell_279_1699754_0"<
while_lstm_cell_279_1699756while_lstm_cell_279_1699756_0"<
while_lstm_cell_279_1699758while_lstm_cell_279_1699758_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_279/StatefulPartitionedCall+while/lstm_cell_279/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1704438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_281_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_281_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_281_matmul_readvariableop_resource:2(F
4while_lstm_cell_281_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_281_biasadd_readvariableop_resource:(??*while/lstm_cell_281/BiasAdd/ReadVariableOp?)while/lstm_cell_281/MatMul/ReadVariableOp?+while/lstm_cell_281/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_281/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_281/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_281/addAddV2$while/lstm_cell_281/MatMul:product:0&while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_281/BiasAddBiasAddwhile/lstm_cell_281/add:z:02while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_281/splitSplit,while/lstm_cell_281/split/split_dim:output:0$while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_281/SigmoidSigmoid"while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_1Sigmoid"while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mulMul!while/lstm_cell_281/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_281/ReluRelu"while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_1Mulwhile/lstm_cell_281/Sigmoid:y:0&while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/add_1AddV2while/lstm_cell_281/mul:z:0while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_2Sigmoid"while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_281/Relu_1Reluwhile/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_2Mul!while/lstm_cell_281/Sigmoid_2:y:0(while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_281/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_281/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_281/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_281/BiasAdd/ReadVariableOp*^while/lstm_cell_281/MatMul/ReadVariableOp,^while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_281_biasadd_readvariableop_resource5while_lstm_cell_281_biasadd_readvariableop_resource_0"n
4while_lstm_cell_281_matmul_1_readvariableop_resource6while_lstm_cell_281_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_281_matmul_readvariableop_resource4while_lstm_cell_281_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_281/BiasAdd/ReadVariableOp*while/lstm_cell_281/BiasAdd/ReadVariableOp2V
)while/lstm_cell_281/MatMul/ReadVariableOp)while/lstm_cell_281/MatMul/ReadVariableOp2Z
+while/lstm_cell_281/MatMul_1/ReadVariableOp+while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_126_lstm_379_while_cond_1699419L
Hsequential_126_lstm_379_while_sequential_126_lstm_379_while_loop_counterR
Nsequential_126_lstm_379_while_sequential_126_lstm_379_while_maximum_iterations-
)sequential_126_lstm_379_while_placeholder/
+sequential_126_lstm_379_while_placeholder_1/
+sequential_126_lstm_379_while_placeholder_2/
+sequential_126_lstm_379_while_placeholder_3N
Jsequential_126_lstm_379_while_less_sequential_126_lstm_379_strided_slice_1e
asequential_126_lstm_379_while_sequential_126_lstm_379_while_cond_1699419___redundant_placeholder0e
asequential_126_lstm_379_while_sequential_126_lstm_379_while_cond_1699419___redundant_placeholder1e
asequential_126_lstm_379_while_sequential_126_lstm_379_while_cond_1699419___redundant_placeholder2e
asequential_126_lstm_379_while_sequential_126_lstm_379_while_cond_1699419___redundant_placeholder3*
&sequential_126_lstm_379_while_identity
?
"sequential_126/lstm_379/while/LessLess)sequential_126_lstm_379_while_placeholderJsequential_126_lstm_379_while_less_sequential_126_lstm_379_strided_slice_1*
T0*
_output_shapes
: {
&sequential_126/lstm_379/while/IdentityIdentity&sequential_126/lstm_379/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_126_lstm_379_while_identity/sequential_126/lstm_379/while/Identity:output:0*(
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

lstm_380_while_body_1702300.
*lstm_380_while_lstm_380_while_loop_counter4
0lstm_380_while_lstm_380_while_maximum_iterations
lstm_380_while_placeholder 
lstm_380_while_placeholder_1 
lstm_380_while_placeholder_2 
lstm_380_while_placeholder_3-
)lstm_380_while_lstm_380_strided_slice_1_0i
elstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0:2(Q
?lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(L
>lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0:(
lstm_380_while_identity
lstm_380_while_identity_1
lstm_380_while_identity_2
lstm_380_while_identity_3
lstm_380_while_identity_4
lstm_380_while_identity_5+
'lstm_380_while_lstm_380_strided_slice_1g
clstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensorM
;lstm_380_while_lstm_cell_281_matmul_readvariableop_resource:2(O
=lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource:
(J
<lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource:(??3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp?2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp?4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp?
@lstm_380/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_380/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensor_0lstm_380_while_placeholderIlstm_380/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp=lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_380/while/lstm_cell_281/MatMulMatMul9lstm_380/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp?lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_380/while/lstm_cell_281/MatMul_1MatMullstm_380_while_placeholder_2<lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_380/while/lstm_cell_281/addAddV2-lstm_380/while/lstm_cell_281/MatMul:product:0/lstm_380/while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp>lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_380/while/lstm_cell_281/BiasAddBiasAdd$lstm_380/while/lstm_cell_281/add:z:0;lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_380/while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_380/while/lstm_cell_281/splitSplit5lstm_380/while/lstm_cell_281/split/split_dim:output:0-lstm_380/while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_380/while/lstm_cell_281/SigmoidSigmoid+lstm_380/while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_380/while/lstm_cell_281/Sigmoid_1Sigmoid+lstm_380/while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_380/while/lstm_cell_281/mulMul*lstm_380/while/lstm_cell_281/Sigmoid_1:y:0lstm_380_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_380/while/lstm_cell_281/ReluRelu+lstm_380/while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_380/while/lstm_cell_281/mul_1Mul(lstm_380/while/lstm_cell_281/Sigmoid:y:0/lstm_380/while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_380/while/lstm_cell_281/add_1AddV2$lstm_380/while/lstm_cell_281/mul:z:0&lstm_380/while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_380/while/lstm_cell_281/Sigmoid_2Sigmoid+lstm_380/while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_380/while/lstm_cell_281/Relu_1Relu&lstm_380/while/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_380/while/lstm_cell_281/mul_2Mul*lstm_380/while/lstm_cell_281/Sigmoid_2:y:01lstm_380/while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_380/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_380_while_placeholder_1lstm_380_while_placeholder&lstm_380/while/lstm_cell_281/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_380/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_380/while/addAddV2lstm_380_while_placeholderlstm_380/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_380/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_380/while/add_1AddV2*lstm_380_while_lstm_380_while_loop_counterlstm_380/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_380/while/IdentityIdentitylstm_380/while/add_1:z:0^lstm_380/while/NoOp*
T0*
_output_shapes
: ?
lstm_380/while/Identity_1Identity0lstm_380_while_lstm_380_while_maximum_iterations^lstm_380/while/NoOp*
T0*
_output_shapes
: t
lstm_380/while/Identity_2Identitylstm_380/while/add:z:0^lstm_380/while/NoOp*
T0*
_output_shapes
: ?
lstm_380/while/Identity_3IdentityClstm_380/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_380/while/NoOp*
T0*
_output_shapes
: ?
lstm_380/while/Identity_4Identity&lstm_380/while/lstm_cell_281/mul_2:z:0^lstm_380/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_380/while/Identity_5Identity&lstm_380/while/lstm_cell_281/add_1:z:0^lstm_380/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_380/while/NoOpNoOp4^lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp3^lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp5^lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_380_while_identity lstm_380/while/Identity:output:0"?
lstm_380_while_identity_1"lstm_380/while/Identity_1:output:0"?
lstm_380_while_identity_2"lstm_380/while/Identity_2:output:0"?
lstm_380_while_identity_3"lstm_380/while/Identity_3:output:0"?
lstm_380_while_identity_4"lstm_380/while/Identity_4:output:0"?
lstm_380_while_identity_5"lstm_380/while/Identity_5:output:0"T
'lstm_380_while_lstm_380_strided_slice_1)lstm_380_while_lstm_380_strided_slice_1_0"~
<lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource>lstm_380_while_lstm_cell_281_biasadd_readvariableop_resource_0"?
=lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource?lstm_380_while_lstm_cell_281_matmul_1_readvariableop_resource_0"|
;lstm_380_while_lstm_cell_281_matmul_readvariableop_resource=lstm_380_while_lstm_cell_281_matmul_readvariableop_resource_0"?
clstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensorelstm_380_while_tensorarrayv2read_tensorlistgetitem_lstm_380_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp3lstm_380/while/lstm_cell_281/BiasAdd/ReadVariableOp2h
2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp2lstm_380/while/lstm_cell_281/MatMul/ReadVariableOp2l
4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp4lstm_380/while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1700913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1700913___redundant_placeholder05
1while_while_cond_1700913___redundant_placeholder15
1while_while_cond_1700913___redundant_placeholder25
1while_while_cond_1700913___redundant_placeholder3
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
+__inference_dense_126_layer_call_fn_1704674

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
F__inference_dense_126_layer_call_and_return_conditional_losses_1701166o
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
?

?
lstm_380_while_cond_1702726.
*lstm_380_while_lstm_380_while_loop_counter4
0lstm_380_while_lstm_380_while_maximum_iterations
lstm_380_while_placeholder 
lstm_380_while_placeholder_1 
lstm_380_while_placeholder_2 
lstm_380_while_placeholder_30
,lstm_380_while_less_lstm_380_strided_slice_1G
Clstm_380_while_lstm_380_while_cond_1702726___redundant_placeholder0G
Clstm_380_while_lstm_380_while_cond_1702726___redundant_placeholder1G
Clstm_380_while_lstm_380_while_cond_1702726___redundant_placeholder2G
Clstm_380_while_lstm_380_while_cond_1702726___redundant_placeholder3
lstm_380_while_identity
?
lstm_380/while/LessLesslstm_380_while_placeholder,lstm_380_while_less_lstm_380_strided_slice_1*
T0*
_output_shapes
: ]
lstm_380/while/IdentityIdentitylstm_380/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_380_while_identity lstm_380/while/Identity:output:0*(
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
while_cond_1700270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1700270___redundant_placeholder05
1while_while_cond_1700270___redundant_placeholder15
1while_while_cond_1700270___redundant_placeholder25
1while_while_cond_1700270___redundant_placeholder3
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
%__inference_signature_wrapper_1701909
lstm_378_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_378_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1699649o
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
_user_specified_namelstm_378_input
?
?
while_cond_1701063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1701063___redundant_placeholder05
1while_while_cond_1701063___redundant_placeholder15
1while_while_cond_1701063___redundant_placeholder25
1while_while_cond_1701063___redundant_placeholder3
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
*__inference_lstm_378_layer_call_fn_1702828
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1699799|
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

lstm_379_while_body_1702161.
*lstm_379_while_lstm_379_while_loop_counter4
0lstm_379_while_lstm_379_while_maximum_iterations
lstm_379_while_placeholder 
lstm_379_while_placeholder_1 
lstm_379_while_placeholder_2 
lstm_379_while_placeholder_3-
)lstm_379_while_lstm_379_strided_slice_1_0i
elstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0:	d?R
?lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0:	2?M
>lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0:	?
lstm_379_while_identity
lstm_379_while_identity_1
lstm_379_while_identity_2
lstm_379_while_identity_3
lstm_379_while_identity_4
lstm_379_while_identity_5+
'lstm_379_while_lstm_379_strided_slice_1g
clstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensorN
;lstm_379_while_lstm_cell_280_matmul_readvariableop_resource:	d?P
=lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource:	2?K
<lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource:	???3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp?2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp?4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp?
@lstm_379/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_379/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensor_0lstm_379_while_placeholderIlstm_379/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOpReadVariableOp=lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_379/while/lstm_cell_280/MatMulMatMul9lstm_379/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp?lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_379/while/lstm_cell_280/MatMul_1MatMullstm_379_while_placeholder_2<lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_379/while/lstm_cell_280/addAddV2-lstm_379/while/lstm_cell_280/MatMul:product:0/lstm_379/while/lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp>lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_379/while/lstm_cell_280/BiasAddBiasAdd$lstm_379/while/lstm_cell_280/add:z:0;lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_379/while/lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_379/while/lstm_cell_280/splitSplit5lstm_379/while/lstm_cell_280/split/split_dim:output:0-lstm_379/while/lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_379/while/lstm_cell_280/SigmoidSigmoid+lstm_379/while/lstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_379/while/lstm_cell_280/Sigmoid_1Sigmoid+lstm_379/while/lstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_379/while/lstm_cell_280/mulMul*lstm_379/while/lstm_cell_280/Sigmoid_1:y:0lstm_379_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_379/while/lstm_cell_280/ReluRelu+lstm_379/while/lstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_379/while/lstm_cell_280/mul_1Mul(lstm_379/while/lstm_cell_280/Sigmoid:y:0/lstm_379/while/lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_379/while/lstm_cell_280/add_1AddV2$lstm_379/while/lstm_cell_280/mul:z:0&lstm_379/while/lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_379/while/lstm_cell_280/Sigmoid_2Sigmoid+lstm_379/while/lstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_379/while/lstm_cell_280/Relu_1Relu&lstm_379/while/lstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_379/while/lstm_cell_280/mul_2Mul*lstm_379/while/lstm_cell_280/Sigmoid_2:y:01lstm_379/while/lstm_cell_280/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_379/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_379_while_placeholder_1lstm_379_while_placeholder&lstm_379/while/lstm_cell_280/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_379/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_379/while/addAddV2lstm_379_while_placeholderlstm_379/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_379/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_379/while/add_1AddV2*lstm_379_while_lstm_379_while_loop_counterlstm_379/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_379/while/IdentityIdentitylstm_379/while/add_1:z:0^lstm_379/while/NoOp*
T0*
_output_shapes
: ?
lstm_379/while/Identity_1Identity0lstm_379_while_lstm_379_while_maximum_iterations^lstm_379/while/NoOp*
T0*
_output_shapes
: t
lstm_379/while/Identity_2Identitylstm_379/while/add:z:0^lstm_379/while/NoOp*
T0*
_output_shapes
: ?
lstm_379/while/Identity_3IdentityClstm_379/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_379/while/NoOp*
T0*
_output_shapes
: ?
lstm_379/while/Identity_4Identity&lstm_379/while/lstm_cell_280/mul_2:z:0^lstm_379/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_379/while/Identity_5Identity&lstm_379/while/lstm_cell_280/add_1:z:0^lstm_379/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_379/while/NoOpNoOp4^lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp3^lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp5^lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_379_while_identity lstm_379/while/Identity:output:0"?
lstm_379_while_identity_1"lstm_379/while/Identity_1:output:0"?
lstm_379_while_identity_2"lstm_379/while/Identity_2:output:0"?
lstm_379_while_identity_3"lstm_379/while/Identity_3:output:0"?
lstm_379_while_identity_4"lstm_379/while/Identity_4:output:0"?
lstm_379_while_identity_5"lstm_379/while/Identity_5:output:0"T
'lstm_379_while_lstm_379_strided_slice_1)lstm_379_while_lstm_379_strided_slice_1_0"~
<lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource>lstm_379_while_lstm_cell_280_biasadd_readvariableop_resource_0"?
=lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource?lstm_379_while_lstm_cell_280_matmul_1_readvariableop_resource_0"|
;lstm_379_while_lstm_cell_280_matmul_readvariableop_resource=lstm_379_while_lstm_cell_280_matmul_readvariableop_resource_0"?
clstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensorelstm_379_while_tensorarrayv2read_tensorlistgetitem_lstm_379_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp3lstm_379/while/lstm_cell_280/BiasAdd/ReadVariableOp2h
2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp2lstm_379/while/lstm_cell_280/MatMul/ReadVariableOp2l
4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp4lstm_379/while/lstm_cell_280/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701762

inputs#
lstm_378_1701735:	?#
lstm_378_1701737:	d?
lstm_378_1701739:	?#
lstm_379_1701742:	d?#
lstm_379_1701744:	2?
lstm_379_1701746:	?"
lstm_380_1701749:2("
lstm_380_1701751:
(
lstm_380_1701753:(#
dense_126_1701756:

dense_126_1701758:
identity??!dense_126/StatefulPartitionedCall? lstm_378/StatefulPartitionedCall? lstm_379/StatefulPartitionedCall? lstm_380/StatefulPartitionedCall?
 lstm_378/StatefulPartitionedCallStatefulPartitionedCallinputslstm_378_1701735lstm_378_1701737lstm_378_1701739*
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1701694?
 lstm_379/StatefulPartitionedCallStatefulPartitionedCall)lstm_378/StatefulPartitionedCall:output:0lstm_379_1701742lstm_379_1701744lstm_379_1701746*
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1701529?
 lstm_380/StatefulPartitionedCallStatefulPartitionedCall)lstm_379/StatefulPartitionedCall:output:0lstm_380_1701749lstm_380_1701751lstm_380_1701753*
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1701364?
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_380/StatefulPartitionedCall:output:0dense_126_1701756dense_126_1701758*
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
F__inference_dense_126_layer_call_and_return_conditional_losses_1701166y
IdentityIdentity*dense_126/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_126/StatefulPartitionedCall!^lstm_378/StatefulPartitionedCall!^lstm_379/StatefulPartitionedCall!^lstm_380/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2D
 lstm_378/StatefulPartitionedCall lstm_378/StatefulPartitionedCall2D
 lstm_379/StatefulPartitionedCall lstm_379/StatefulPartitionedCall2D
 lstm_380/StatefulPartitionedCall lstm_380/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704236
inputs_0>
,lstm_cell_281_matmul_readvariableop_resource:2(@
.lstm_cell_281_matmul_1_readvariableop_resource:
(;
-lstm_cell_281_biasadd_readvariableop_resource:(
identity??$lstm_cell_281/BiasAdd/ReadVariableOp?#lstm_cell_281/MatMul/ReadVariableOp?%lstm_cell_281/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_281/MatMul/ReadVariableOpReadVariableOp,lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_281/MatMulMatMulstrided_slice_2:output:0+lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_281/MatMul_1MatMulzeros:output:0-lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_281/addAddV2lstm_cell_281/MatMul:product:0 lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_281/BiasAddBiasAddlstm_cell_281/add:z:0,lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_281/splitSplit&lstm_cell_281/split/split_dim:output:0lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_281/SigmoidSigmoidlstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_1Sigmoidlstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_281/mulMullstm_cell_281/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_281/ReluRelulstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_1Mullstm_cell_281/Sigmoid:y:0 lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_281/add_1AddV2lstm_cell_281/mul:z:0lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_2Sigmoidlstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_281/Relu_1Relulstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_2Mullstm_cell_281/Sigmoid_2:y:0"lstm_cell_281/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_281_matmul_readvariableop_resource.lstm_cell_281_matmul_1_readvariableop_resource-lstm_cell_281_biasadd_readvariableop_resource*
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
while_body_1704152*
condR
while_cond_1704151*K
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
NoOpNoOp%^lstm_cell_281/BiasAdd/ReadVariableOp$^lstm_cell_281/MatMul/ReadVariableOp&^lstm_cell_281/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_281/BiasAdd/ReadVariableOp$lstm_cell_281/BiasAdd/ReadVariableOp2J
#lstm_cell_281/MatMul/ReadVariableOp#lstm_cell_281/MatMul/ReadVariableOp2N
%lstm_cell_281/MatMul_1/ReadVariableOp%lstm_cell_281/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_378_layer_call_and_return_conditional_losses_1699990

inputs(
lstm_cell_279_1699908:	?(
lstm_cell_279_1699910:	d?$
lstm_cell_279_1699912:	?
identity??%lstm_cell_279/StatefulPartitionedCall?while;
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
%lstm_cell_279/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_279_1699908lstm_cell_279_1699910lstm_cell_279_1699912*
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699862n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_279_1699908lstm_cell_279_1699910lstm_cell_279_1699912*
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
while_body_1699921*
condR
while_cond_1699920*K
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
NoOpNoOp&^lstm_cell_279/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_279/StatefulPartitionedCall%lstm_cell_279/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_1700621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_281_1700645_0:2(/
while_lstm_cell_281_1700647_0:
(+
while_lstm_cell_281_1700649_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_281_1700645:2(-
while_lstm_cell_281_1700647:
()
while_lstm_cell_281_1700649:(??+while/lstm_cell_281/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_281/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_281_1700645_0while_lstm_cell_281_1700647_0while_lstm_cell_281_1700649_0*
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1700562?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_281/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_281/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_281/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_281/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_281_1700645while_lstm_cell_281_1700645_0"<
while_lstm_cell_281_1700647while_lstm_cell_281_1700647_0"<
while_lstm_cell_281_1700649while_lstm_cell_281_1700649_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_281/StatefulPartitionedCall+while/lstm_cell_281/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1704848

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
?K
?
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703763
inputs_0?
,lstm_cell_280_matmul_readvariableop_resource:	d?A
.lstm_cell_280_matmul_1_readvariableop_resource:	2?<
-lstm_cell_280_biasadd_readvariableop_resource:	?
identity??$lstm_cell_280/BiasAdd/ReadVariableOp?#lstm_cell_280/MatMul/ReadVariableOp?%lstm_cell_280/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_280/MatMul/ReadVariableOpReadVariableOp,lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_280/MatMulMatMulstrided_slice_2:output:0+lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_280/MatMul_1MatMulzeros:output:0-lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_280/addAddV2lstm_cell_280/MatMul:product:0 lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_280/BiasAddBiasAddlstm_cell_280/add:z:0,lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_280/splitSplit&lstm_cell_280/split/split_dim:output:0lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_280/SigmoidSigmoidlstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_1Sigmoidlstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_280/mulMullstm_cell_280/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_280/ReluRelulstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_1Mullstm_cell_280/Sigmoid:y:0 lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_280/add_1AddV2lstm_cell_280/mul:z:0lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_2Sigmoidlstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_280/Relu_1Relulstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_2Mullstm_cell_280/Sigmoid_2:y:0"lstm_cell_280/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_280_matmul_readvariableop_resource.lstm_cell_280_matmul_1_readvariableop_resource-lstm_cell_280_biasadd_readvariableop_resource*
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
while_body_1703679*
condR
while_cond_1703678*K
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
NoOpNoOp%^lstm_cell_280/BiasAdd/ReadVariableOp$^lstm_cell_280/MatMul/ReadVariableOp&^lstm_cell_280/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_280/BiasAdd/ReadVariableOp$lstm_cell_280/BiasAdd/ReadVariableOp2J
#lstm_cell_280/MatMul/ReadVariableOp#lstm_cell_280/MatMul/ReadVariableOp2N
%lstm_cell_280/MatMul_1/ReadVariableOp%lstm_cell_280/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1704295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_281_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_281_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_281_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_281_matmul_readvariableop_resource:2(F
4while_lstm_cell_281_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_281_biasadd_readvariableop_resource:(??*while/lstm_cell_281/BiasAdd/ReadVariableOp?)while/lstm_cell_281/MatMul/ReadVariableOp?+while/lstm_cell_281/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_281/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_281_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_281/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_281_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_281/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_281/addAddV2$while/lstm_cell_281/MatMul:product:0&while/lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_281_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_281/BiasAddBiasAddwhile/lstm_cell_281/add:z:02while/lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_281/splitSplit,while/lstm_cell_281/split/split_dim:output:0$while/lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_281/SigmoidSigmoid"while/lstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_1Sigmoid"while/lstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mulMul!while/lstm_cell_281/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_281/ReluRelu"while/lstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_1Mulwhile/lstm_cell_281/Sigmoid:y:0&while/lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/add_1AddV2while/lstm_cell_281/mul:z:0while/lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_281/Sigmoid_2Sigmoid"while/lstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_281/Relu_1Reluwhile/lstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_281/mul_2Mul!while/lstm_cell_281/Sigmoid_2:y:0(while/lstm_cell_281/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_281/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_281/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_281/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_281/BiasAdd/ReadVariableOp*^while/lstm_cell_281/MatMul/ReadVariableOp,^while/lstm_cell_281/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_281_biasadd_readvariableop_resource5while_lstm_cell_281_biasadd_readvariableop_resource_0"n
4while_lstm_cell_281_matmul_1_readvariableop_resource6while_lstm_cell_281_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_281_matmul_readvariableop_resource4while_lstm_cell_281_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_281/BiasAdd/ReadVariableOp*while/lstm_cell_281/BiasAdd/ReadVariableOp2V
)while/lstm_cell_281/MatMul/ReadVariableOp)while/lstm_cell_281/MatMul/ReadVariableOp2Z
+while/lstm_cell_281/MatMul_1/ReadVariableOp+while/lstm_cell_281/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1699799

inputs(
lstm_cell_279_1699717:	?(
lstm_cell_279_1699719:	d?$
lstm_cell_279_1699721:	?
identity??%lstm_cell_279/StatefulPartitionedCall?while;
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
%lstm_cell_279/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_279_1699717lstm_cell_279_1699719lstm_cell_279_1699721*
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1699716n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_279_1699717lstm_cell_279_1699719lstm_cell_279_1699721*
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
while_body_1699730*
condR
while_cond_1699729*K
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
NoOpNoOp&^lstm_cell_279/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_279/StatefulPartitionedCall%lstm_cell_279/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704379
inputs_0>
,lstm_cell_281_matmul_readvariableop_resource:2(@
.lstm_cell_281_matmul_1_readvariableop_resource:
(;
-lstm_cell_281_biasadd_readvariableop_resource:(
identity??$lstm_cell_281/BiasAdd/ReadVariableOp?#lstm_cell_281/MatMul/ReadVariableOp?%lstm_cell_281/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_281/MatMul/ReadVariableOpReadVariableOp,lstm_cell_281_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_281/MatMulMatMulstrided_slice_2:output:0+lstm_cell_281/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_281/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_281_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_281/MatMul_1MatMulzeros:output:0-lstm_cell_281/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_281/addAddV2lstm_cell_281/MatMul:product:0 lstm_cell_281/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_281/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_281_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_281/BiasAddBiasAddlstm_cell_281/add:z:0,lstm_cell_281/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_281/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_281/splitSplit&lstm_cell_281/split/split_dim:output:0lstm_cell_281/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_281/SigmoidSigmoidlstm_cell_281/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_1Sigmoidlstm_cell_281/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_281/mulMullstm_cell_281/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_281/ReluRelulstm_cell_281/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_1Mullstm_cell_281/Sigmoid:y:0 lstm_cell_281/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_281/add_1AddV2lstm_cell_281/mul:z:0lstm_cell_281/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_281/Sigmoid_2Sigmoidlstm_cell_281/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_281/Relu_1Relulstm_cell_281/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_281/mul_2Mullstm_cell_281/Sigmoid_2:y:0"lstm_cell_281/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_281_matmul_readvariableop_resource.lstm_cell_281_matmul_1_readvariableop_resource-lstm_cell_281_biasadd_readvariableop_resource*
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
while_body_1704295*
condR
while_cond_1704294*K
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
NoOpNoOp%^lstm_cell_281/BiasAdd/ReadVariableOp$^lstm_cell_281/MatMul/ReadVariableOp&^lstm_cell_281/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_281/BiasAdd/ReadVariableOp$lstm_cell_281/BiasAdd/ReadVariableOp2J
#lstm_cell_281/MatMul/ReadVariableOp#lstm_cell_281/MatMul/ReadVariableOp2N
%lstm_cell_281/MatMul_1/ReadVariableOp%lstm_cell_281/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_379_layer_call_and_return_conditional_losses_1704049

inputs?
,lstm_cell_280_matmul_readvariableop_resource:	d?A
.lstm_cell_280_matmul_1_readvariableop_resource:	2?<
-lstm_cell_280_biasadd_readvariableop_resource:	?
identity??$lstm_cell_280/BiasAdd/ReadVariableOp?#lstm_cell_280/MatMul/ReadVariableOp?%lstm_cell_280/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_280/MatMul/ReadVariableOpReadVariableOp,lstm_cell_280_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_280/MatMulMatMulstrided_slice_2:output:0+lstm_cell_280/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_280/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_280_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_280/MatMul_1MatMulzeros:output:0-lstm_cell_280/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_280/addAddV2lstm_cell_280/MatMul:product:0 lstm_cell_280/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_280/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_280_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_280/BiasAddBiasAddlstm_cell_280/add:z:0,lstm_cell_280/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_280/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_280/splitSplit&lstm_cell_280/split/split_dim:output:0lstm_cell_280/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_280/SigmoidSigmoidlstm_cell_280/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_1Sigmoidlstm_cell_280/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_280/mulMullstm_cell_280/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_280/ReluRelulstm_cell_280/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_1Mullstm_cell_280/Sigmoid:y:0 lstm_cell_280/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_280/add_1AddV2lstm_cell_280/mul:z:0lstm_cell_280/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_280/Sigmoid_2Sigmoidlstm_cell_280/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_280/Relu_1Relulstm_cell_280/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_280/mul_2Mullstm_cell_280/Sigmoid_2:y:0"lstm_cell_280/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_280_matmul_readvariableop_resource.lstm_cell_280_matmul_1_readvariableop_resource-lstm_cell_280_biasadd_readvariableop_resource*
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
while_body_1703965*
condR
while_cond_1703964*K
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
NoOpNoOp%^lstm_cell_280/BiasAdd/ReadVariableOp$^lstm_cell_280/MatMul/ReadVariableOp&^lstm_cell_280/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_280/BiasAdd/ReadVariableOp$lstm_cell_280/BiasAdd/ReadVariableOp2J
#lstm_cell_280/MatMul/ReadVariableOp#lstm_cell_280/MatMul/ReadVariableOp2N
%lstm_cell_280/MatMul_1/ReadVariableOp%lstm_cell_280/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
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
lstm_378_input;
 serving_default_lstm_378_input:0?????????=
	dense_1260
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
2dense_126/kernel
:2dense_126/bias
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
0:.	?2lstm_378/lstm_cell_378/kernel
::8	d?2'lstm_378/lstm_cell_378/recurrent_kernel
*:(?2lstm_378/lstm_cell_378/bias
0:.	d?2lstm_379/lstm_cell_379/kernel
::8	2?2'lstm_379/lstm_cell_379/recurrent_kernel
*:(?2lstm_379/lstm_cell_379/bias
/:-2(2lstm_380/lstm_cell_380/kernel
9:7
(2'lstm_380/lstm_cell_380/recurrent_kernel
):'(2lstm_380/lstm_cell_380/bias
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
2Adam/dense_126/kernel/m
!:2Adam/dense_126/bias/m
5:3	?2$Adam/lstm_378/lstm_cell_378/kernel/m
?:=	d?2.Adam/lstm_378/lstm_cell_378/recurrent_kernel/m
/:-?2"Adam/lstm_378/lstm_cell_378/bias/m
5:3	d?2$Adam/lstm_379/lstm_cell_379/kernel/m
?:=	2?2.Adam/lstm_379/lstm_cell_379/recurrent_kernel/m
/:-?2"Adam/lstm_379/lstm_cell_379/bias/m
4:22(2$Adam/lstm_380/lstm_cell_380/kernel/m
>:<
(2.Adam/lstm_380/lstm_cell_380/recurrent_kernel/m
.:,(2"Adam/lstm_380/lstm_cell_380/bias/m
':%
2Adam/dense_126/kernel/v
!:2Adam/dense_126/bias/v
5:3	?2$Adam/lstm_378/lstm_cell_378/kernel/v
?:=	d?2.Adam/lstm_378/lstm_cell_378/recurrent_kernel/v
/:-?2"Adam/lstm_378/lstm_cell_378/bias/v
5:3	d?2$Adam/lstm_379/lstm_cell_379/kernel/v
?:=	2?2.Adam/lstm_379/lstm_cell_379/recurrent_kernel/v
/:-?2"Adam/lstm_379/lstm_cell_379/bias/v
4:22(2$Adam/lstm_380/lstm_cell_380/kernel/v
>:<
(2.Adam/lstm_380/lstm_cell_380/recurrent_kernel/v
.:,(2"Adam/lstm_380/lstm_cell_380/bias/v
?2?
0__inference_sequential_126_layer_call_fn_1701198
0__inference_sequential_126_layer_call_fn_1701936
0__inference_sequential_126_layer_call_fn_1701963
0__inference_sequential_126_layer_call_fn_1701814?
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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1702390
K__inference_sequential_126_layer_call_and_return_conditional_losses_1702817
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701844
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701874?
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
"__inference__wrapped_model_1699649lstm_378_input"?
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
*__inference_lstm_378_layer_call_fn_1702828
*__inference_lstm_378_layer_call_fn_1702839
*__inference_lstm_378_layer_call_fn_1702850
*__inference_lstm_378_layer_call_fn_1702861?
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703004
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703147
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703290
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703433?
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
*__inference_lstm_379_layer_call_fn_1703444
*__inference_lstm_379_layer_call_fn_1703455
*__inference_lstm_379_layer_call_fn_1703466
*__inference_lstm_379_layer_call_fn_1703477?
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703620
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703763
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703906
E__inference_lstm_379_layer_call_and_return_conditional_losses_1704049?
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
*__inference_lstm_380_layer_call_fn_1704060
*__inference_lstm_380_layer_call_fn_1704071
*__inference_lstm_380_layer_call_fn_1704082
*__inference_lstm_380_layer_call_fn_1704093?
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704236
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704379
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704522
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704665?
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
+__inference_dense_126_layer_call_fn_1704674?
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
F__inference_dense_126_layer_call_and_return_conditional_losses_1704684?
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
%__inference_signature_wrapper_1701909lstm_378_input"?
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
/__inference_lstm_cell_279_layer_call_fn_1704701
/__inference_lstm_cell_279_layer_call_fn_1704718?
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1704750
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1704782?
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
/__inference_lstm_cell_280_layer_call_fn_1704799
/__inference_lstm_cell_280_layer_call_fn_1704816?
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1704848
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1704880?
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
/__inference_lstm_cell_281_layer_call_fn_1704897
/__inference_lstm_cell_281_layer_call_fn_1704914?
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1704946
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1704978?
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
"__inference__wrapped_model_1699649?-./012345!";?8
1?.
,?)
lstm_378_input?????????
? "5?2
0
	dense_126#? 
	dense_126??????????
F__inference_dense_126_layer_call_and_return_conditional_losses_1704684\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_126_layer_call_fn_1704674O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703004?-./O?L
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703147?-./O?L
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703290q-./??<
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
E__inference_lstm_378_layer_call_and_return_conditional_losses_1703433q-./??<
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
*__inference_lstm_378_layer_call_fn_1702828}-./O?L
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
*__inference_lstm_378_layer_call_fn_1702839}-./O?L
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
*__inference_lstm_378_layer_call_fn_1702850d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_378_layer_call_fn_1702861d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703620?012O?L
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703763?012O?L
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1703906q012??<
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
E__inference_lstm_379_layer_call_and_return_conditional_losses_1704049q012??<
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
*__inference_lstm_379_layer_call_fn_1703444}012O?L
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
*__inference_lstm_379_layer_call_fn_1703455}012O?L
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
*__inference_lstm_379_layer_call_fn_1703466d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_379_layer_call_fn_1703477d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704236}345O?L
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704379}345O?L
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704522m345??<
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
E__inference_lstm_380_layer_call_and_return_conditional_losses_1704665m345??<
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
*__inference_lstm_380_layer_call_fn_1704060p345O?L
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
*__inference_lstm_380_layer_call_fn_1704071p345O?L
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
*__inference_lstm_380_layer_call_fn_1704082`345??<
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
*__inference_lstm_380_layer_call_fn_1704093`345??<
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1704750?-./??}
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
J__inference_lstm_cell_279_layer_call_and_return_conditional_losses_1704782?-./??}
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
/__inference_lstm_cell_279_layer_call_fn_1704701?-./??}
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
/__inference_lstm_cell_279_layer_call_fn_1704718?-./??}
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1704848?012??}
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
J__inference_lstm_cell_280_layer_call_and_return_conditional_losses_1704880?012??}
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
/__inference_lstm_cell_280_layer_call_fn_1704799?012??}
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
/__inference_lstm_cell_280_layer_call_fn_1704816?012??}
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1704946?345??}
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
J__inference_lstm_cell_281_layer_call_and_return_conditional_losses_1704978?345??}
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
/__inference_lstm_cell_281_layer_call_fn_1704897?345??}
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
/__inference_lstm_cell_281_layer_call_fn_1704914?345??}
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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701844y-./012345!"C?@
9?6
,?)
lstm_378_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_126_layer_call_and_return_conditional_losses_1701874y-./012345!"C?@
9?6
,?)
lstm_378_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_126_layer_call_and_return_conditional_losses_1702390q-./012345!";?8
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
K__inference_sequential_126_layer_call_and_return_conditional_losses_1702817q-./012345!";?8
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
0__inference_sequential_126_layer_call_fn_1701198l-./012345!"C?@
9?6
,?)
lstm_378_input?????????
p 

 
? "???????????
0__inference_sequential_126_layer_call_fn_1701814l-./012345!"C?@
9?6
,?)
lstm_378_input?????????
p

 
? "???????????
0__inference_sequential_126_layer_call_fn_1701936d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_126_layer_call_fn_1701963d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1701909?-./012345!"M?J
? 
C?@
>
lstm_378_input,?)
lstm_378_input?????????"5?2
0
	dense_126#? 
	dense_126?????????