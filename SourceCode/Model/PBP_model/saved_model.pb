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
dense_155/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_155/kernel
u
$dense_155/kernel/Read/ReadVariableOpReadVariableOpdense_155/kernel*
_output_shapes

:
*
dtype0
t
dense_155/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_155/bias
m
"dense_155/bias/Read/ReadVariableOpReadVariableOpdense_155/bias*
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
lstm_465/lstm_cell_465/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_465/lstm_cell_465/kernel
?
1lstm_465/lstm_cell_465/kernel/Read/ReadVariableOpReadVariableOplstm_465/lstm_cell_465/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_465/lstm_cell_465/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_465/lstm_cell_465/recurrent_kernel
?
;lstm_465/lstm_cell_465/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_465/lstm_cell_465/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_465/lstm_cell_465/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_465/lstm_cell_465/bias
?
/lstm_465/lstm_cell_465/bias/Read/ReadVariableOpReadVariableOplstm_465/lstm_cell_465/bias*
_output_shapes	
:?*
dtype0
?
lstm_466/lstm_cell_466/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_466/lstm_cell_466/kernel
?
1lstm_466/lstm_cell_466/kernel/Read/ReadVariableOpReadVariableOplstm_466/lstm_cell_466/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_466/lstm_cell_466/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_466/lstm_cell_466/recurrent_kernel
?
;lstm_466/lstm_cell_466/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_466/lstm_cell_466/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_466/lstm_cell_466/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_466/lstm_cell_466/bias
?
/lstm_466/lstm_cell_466/bias/Read/ReadVariableOpReadVariableOplstm_466/lstm_cell_466/bias*
_output_shapes	
:?*
dtype0
?
lstm_467/lstm_cell_467/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_467/lstm_cell_467/kernel
?
1lstm_467/lstm_cell_467/kernel/Read/ReadVariableOpReadVariableOplstm_467/lstm_cell_467/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_467/lstm_cell_467/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_467/lstm_cell_467/recurrent_kernel
?
;lstm_467/lstm_cell_467/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_467/lstm_cell_467/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_467/lstm_cell_467/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_467/lstm_cell_467/bias
?
/lstm_467/lstm_cell_467/bias/Read/ReadVariableOpReadVariableOplstm_467/lstm_cell_467/bias*
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
Adam/dense_155/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_155/kernel/m
?
+Adam/dense_155/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_155/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_155/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_155/bias/m
{
)Adam/dense_155/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_155/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_465/lstm_cell_465/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_465/lstm_cell_465/kernel/m
?
8Adam/lstm_465/lstm_cell_465/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_465/lstm_cell_465/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_465/lstm_cell_465/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_465/lstm_cell_465/recurrent_kernel/m
?
BAdam/lstm_465/lstm_cell_465/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_465/lstm_cell_465/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_465/lstm_cell_465/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_465/lstm_cell_465/bias/m
?
6Adam/lstm_465/lstm_cell_465/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_465/lstm_cell_465/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_466/lstm_cell_466/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_466/lstm_cell_466/kernel/m
?
8Adam/lstm_466/lstm_cell_466/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_466/lstm_cell_466/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_466/lstm_cell_466/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_466/lstm_cell_466/recurrent_kernel/m
?
BAdam/lstm_466/lstm_cell_466/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_466/lstm_cell_466/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_466/lstm_cell_466/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_466/lstm_cell_466/bias/m
?
6Adam/lstm_466/lstm_cell_466/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_466/lstm_cell_466/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_467/lstm_cell_467/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_467/lstm_cell_467/kernel/m
?
8Adam/lstm_467/lstm_cell_467/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_467/lstm_cell_467/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_467/lstm_cell_467/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_467/lstm_cell_467/recurrent_kernel/m
?
BAdam/lstm_467/lstm_cell_467/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_467/lstm_cell_467/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_467/lstm_cell_467/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_467/lstm_cell_467/bias/m
?
6Adam/lstm_467/lstm_cell_467/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_467/lstm_cell_467/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_155/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_155/kernel/v
?
+Adam/dense_155/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_155/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_155/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_155/bias/v
{
)Adam/dense_155/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_155/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_465/lstm_cell_465/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_465/lstm_cell_465/kernel/v
?
8Adam/lstm_465/lstm_cell_465/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_465/lstm_cell_465/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_465/lstm_cell_465/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_465/lstm_cell_465/recurrent_kernel/v
?
BAdam/lstm_465/lstm_cell_465/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_465/lstm_cell_465/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_465/lstm_cell_465/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_465/lstm_cell_465/bias/v
?
6Adam/lstm_465/lstm_cell_465/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_465/lstm_cell_465/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_466/lstm_cell_466/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_466/lstm_cell_466/kernel/v
?
8Adam/lstm_466/lstm_cell_466/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_466/lstm_cell_466/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_466/lstm_cell_466/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_466/lstm_cell_466/recurrent_kernel/v
?
BAdam/lstm_466/lstm_cell_466/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_466/lstm_cell_466/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_466/lstm_cell_466/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_466/lstm_cell_466/bias/v
?
6Adam/lstm_466/lstm_cell_466/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_466/lstm_cell_466/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_467/lstm_cell_467/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_467/lstm_cell_467/kernel/v
?
8Adam/lstm_467/lstm_cell_467/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_467/lstm_cell_467/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_467/lstm_cell_467/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_467/lstm_cell_467/recurrent_kernel/v
?
BAdam/lstm_467/lstm_cell_467/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_467/lstm_cell_467/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_467/lstm_cell_467/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_467/lstm_cell_467/bias/v
?
6Adam/lstm_467/lstm_cell_467/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_467/lstm_cell_467/bias/v*
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
VARIABLE_VALUEdense_155/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_155/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_465/lstm_cell_465/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_465/lstm_cell_465/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_465/lstm_cell_465/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_466/lstm_cell_466/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_466/lstm_cell_466/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_466/lstm_cell_466/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_467/lstm_cell_467/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_467/lstm_cell_467/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_467/lstm_cell_467/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_155/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_155/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_465/lstm_cell_465/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_465/lstm_cell_465/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_465/lstm_cell_465/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_466/lstm_cell_466/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_466/lstm_cell_466/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_466/lstm_cell_466/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_467/lstm_cell_467/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_467/lstm_cell_467/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_467/lstm_cell_467/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_155/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_155/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_465/lstm_cell_465/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_465/lstm_cell_465/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_465/lstm_cell_465/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_466/lstm_cell_466/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_466/lstm_cell_466/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_466/lstm_cell_466/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_467/lstm_cell_467/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_467/lstm_cell_467/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_467/lstm_cell_467/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_465_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_465_inputlstm_465/lstm_cell_465/kernel'lstm_465/lstm_cell_465/recurrent_kernellstm_465/lstm_cell_465/biaslstm_466/lstm_cell_466/kernel'lstm_466/lstm_cell_466/recurrent_kernellstm_466/lstm_cell_466/biaslstm_467/lstm_cell_467/kernel'lstm_467/lstm_cell_467/recurrent_kernellstm_467/lstm_cell_467/biasdense_155/kerneldense_155/bias*
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
%__inference_signature_wrapper_1774940
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_155/kernel/Read/ReadVariableOp"dense_155/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_465/lstm_cell_465/kernel/Read/ReadVariableOp;lstm_465/lstm_cell_465/recurrent_kernel/Read/ReadVariableOp/lstm_465/lstm_cell_465/bias/Read/ReadVariableOp1lstm_466/lstm_cell_466/kernel/Read/ReadVariableOp;lstm_466/lstm_cell_466/recurrent_kernel/Read/ReadVariableOp/lstm_466/lstm_cell_466/bias/Read/ReadVariableOp1lstm_467/lstm_cell_467/kernel/Read/ReadVariableOp;lstm_467/lstm_cell_467/recurrent_kernel/Read/ReadVariableOp/lstm_467/lstm_cell_467/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_155/kernel/m/Read/ReadVariableOp)Adam/dense_155/bias/m/Read/ReadVariableOp8Adam/lstm_465/lstm_cell_465/kernel/m/Read/ReadVariableOpBAdam/lstm_465/lstm_cell_465/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_465/lstm_cell_465/bias/m/Read/ReadVariableOp8Adam/lstm_466/lstm_cell_466/kernel/m/Read/ReadVariableOpBAdam/lstm_466/lstm_cell_466/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_466/lstm_cell_466/bias/m/Read/ReadVariableOp8Adam/lstm_467/lstm_cell_467/kernel/m/Read/ReadVariableOpBAdam/lstm_467/lstm_cell_467/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_467/lstm_cell_467/bias/m/Read/ReadVariableOp+Adam/dense_155/kernel/v/Read/ReadVariableOp)Adam/dense_155/bias/v/Read/ReadVariableOp8Adam/lstm_465/lstm_cell_465/kernel/v/Read/ReadVariableOpBAdam/lstm_465/lstm_cell_465/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_465/lstm_cell_465/bias/v/Read/ReadVariableOp8Adam/lstm_466/lstm_cell_466/kernel/v/Read/ReadVariableOpBAdam/lstm_466/lstm_cell_466/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_466/lstm_cell_466/bias/v/Read/ReadVariableOp8Adam/lstm_467/lstm_cell_467/kernel/v/Read/ReadVariableOpBAdam/lstm_467/lstm_cell_467/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_467/lstm_cell_467/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1778152
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_155/kerneldense_155/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_465/lstm_cell_465/kernel'lstm_465/lstm_cell_465/recurrent_kernellstm_465/lstm_cell_465/biaslstm_466/lstm_cell_466/kernel'lstm_466/lstm_cell_466/recurrent_kernellstm_466/lstm_cell_466/biaslstm_467/lstm_cell_467/kernel'lstm_467/lstm_cell_467/recurrent_kernellstm_467/lstm_cell_467/biastotalcountAdam/dense_155/kernel/mAdam/dense_155/bias/m$Adam/lstm_465/lstm_cell_465/kernel/m.Adam/lstm_465/lstm_cell_465/recurrent_kernel/m"Adam/lstm_465/lstm_cell_465/bias/m$Adam/lstm_466/lstm_cell_466/kernel/m.Adam/lstm_466/lstm_cell_466/recurrent_kernel/m"Adam/lstm_466/lstm_cell_466/bias/m$Adam/lstm_467/lstm_cell_467/kernel/m.Adam/lstm_467/lstm_cell_467/recurrent_kernel/m"Adam/lstm_467/lstm_cell_467/bias/mAdam/dense_155/kernel/vAdam/dense_155/bias/v$Adam/lstm_465/lstm_cell_465/kernel/v.Adam/lstm_465/lstm_cell_465/recurrent_kernel/v"Adam/lstm_465/lstm_cell_465/bias/v$Adam/lstm_466/lstm_cell_466/kernel/v.Adam/lstm_466/lstm_cell_466/recurrent_kernel/v"Adam/lstm_466/lstm_cell_466/bias/v$Adam/lstm_467/lstm_cell_467/kernel/v.Adam/lstm_467/lstm_cell_467/recurrent_kernel/v"Adam/lstm_467/lstm_cell_467/bias/v*4
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
#__inference__traced_restore_1778282??+
?
?
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772747

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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774793

inputs#
lstm_465_1774766:	?#
lstm_465_1774768:	d?
lstm_465_1774770:	?#
lstm_466_1774773:	d?#
lstm_466_1774775:	2?
lstm_466_1774777:	?"
lstm_467_1774780:2("
lstm_467_1774782:
(
lstm_467_1774784:(#
dense_155_1774787:

dense_155_1774789:
identity??!dense_155/StatefulPartitionedCall? lstm_465/StatefulPartitionedCall? lstm_466/StatefulPartitionedCall? lstm_467/StatefulPartitionedCall?
 lstm_465/StatefulPartitionedCallStatefulPartitionedCallinputslstm_465_1774766lstm_465_1774768lstm_465_1774770*
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1774725?
 lstm_466/StatefulPartitionedCallStatefulPartitionedCall)lstm_465/StatefulPartitionedCall:output:0lstm_466_1774773lstm_466_1774775lstm_466_1774777*
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774560?
 lstm_467/StatefulPartitionedCallStatefulPartitionedCall)lstm_466/StatefulPartitionedCall:output:0lstm_467_1774780lstm_467_1774782lstm_467_1774784*
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774395?
!dense_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_467/StatefulPartitionedCall:output:0dense_155_1774787dense_155_1774789*
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
F__inference_dense_155_layer_call_and_return_conditional_losses_1774197y
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_155/StatefulPartitionedCall!^lstm_465/StatefulPartitionedCall!^lstm_466/StatefulPartitionedCall!^lstm_467/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall2D
 lstm_465/StatefulPartitionedCall lstm_465/StatefulPartitionedCall2D
 lstm_466/StatefulPartitionedCall lstm_466/StatefulPartitionedCall2D
 lstm_467/StatefulPartitionedCall lstm_467/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774905
lstm_465_input#
lstm_465_1774878:	?#
lstm_465_1774880:	d?
lstm_465_1774882:	?#
lstm_466_1774885:	d?#
lstm_466_1774887:	2?
lstm_466_1774889:	?"
lstm_467_1774892:2("
lstm_467_1774894:
(
lstm_467_1774896:(#
dense_155_1774899:

dense_155_1774901:
identity??!dense_155/StatefulPartitionedCall? lstm_465/StatefulPartitionedCall? lstm_466/StatefulPartitionedCall? lstm_467/StatefulPartitionedCall?
 lstm_465/StatefulPartitionedCallStatefulPartitionedCalllstm_465_inputlstm_465_1774878lstm_465_1774880lstm_465_1774882*
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1774725?
 lstm_466/StatefulPartitionedCallStatefulPartitionedCall)lstm_465/StatefulPartitionedCall:output:0lstm_466_1774885lstm_466_1774887lstm_466_1774889*
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774560?
 lstm_467/StatefulPartitionedCallStatefulPartitionedCall)lstm_466/StatefulPartitionedCall:output:0lstm_467_1774892lstm_467_1774894lstm_467_1774896*
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774395?
!dense_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_467/StatefulPartitionedCall:output:0dense_155_1774899dense_155_1774901*
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
F__inference_dense_155_layer_call_and_return_conditional_losses_1774197y
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_155/StatefulPartitionedCall!^lstm_465/StatefulPartitionedCall!^lstm_466/StatefulPartitionedCall!^lstm_467/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall2D
 lstm_465/StatefulPartitionedCall lstm_465/StatefulPartitionedCall2D
 lstm_466/StatefulPartitionedCall lstm_466/StatefulPartitionedCall2D
 lstm_467/StatefulPartitionedCall lstm_467/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_465_input
?
?
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1777977

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
?
?
+__inference_dense_155_layer_call_fn_1777705

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
F__inference_dense_155_layer_call_and_return_conditional_losses_1774197o
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
?
while_cond_1773651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1773651___redundant_placeholder05
1while_while_cond_1773651___redundant_placeholder15
1while_while_cond_1773651___redundant_placeholder25
1while_while_cond_1773651___redundant_placeholder3
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
??
?
"__inference__wrapped_model_1772680
lstm_465_inputW
Dsequential_155_lstm_465_lstm_cell_291_matmul_readvariableop_resource:	?Y
Fsequential_155_lstm_465_lstm_cell_291_matmul_1_readvariableop_resource:	d?T
Esequential_155_lstm_465_lstm_cell_291_biasadd_readvariableop_resource:	?W
Dsequential_155_lstm_466_lstm_cell_292_matmul_readvariableop_resource:	d?Y
Fsequential_155_lstm_466_lstm_cell_292_matmul_1_readvariableop_resource:	2?T
Esequential_155_lstm_466_lstm_cell_292_biasadd_readvariableop_resource:	?V
Dsequential_155_lstm_467_lstm_cell_293_matmul_readvariableop_resource:2(X
Fsequential_155_lstm_467_lstm_cell_293_matmul_1_readvariableop_resource:
(S
Esequential_155_lstm_467_lstm_cell_293_biasadd_readvariableop_resource:(I
7sequential_155_dense_155_matmul_readvariableop_resource:
F
8sequential_155_dense_155_biasadd_readvariableop_resource:
identity??/sequential_155/dense_155/BiasAdd/ReadVariableOp?.sequential_155/dense_155/MatMul/ReadVariableOp?<sequential_155/lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp?;sequential_155/lstm_465/lstm_cell_291/MatMul/ReadVariableOp?=sequential_155/lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp?sequential_155/lstm_465/while?<sequential_155/lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp?;sequential_155/lstm_466/lstm_cell_292/MatMul/ReadVariableOp?=sequential_155/lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp?sequential_155/lstm_466/while?<sequential_155/lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp?;sequential_155/lstm_467/lstm_cell_293/MatMul/ReadVariableOp?=sequential_155/lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp?sequential_155/lstm_467/while[
sequential_155/lstm_465/ShapeShapelstm_465_input*
T0*
_output_shapes
:u
+sequential_155/lstm_465/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_155/lstm_465/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_155/lstm_465/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_155/lstm_465/strided_sliceStridedSlice&sequential_155/lstm_465/Shape:output:04sequential_155/lstm_465/strided_slice/stack:output:06sequential_155/lstm_465/strided_slice/stack_1:output:06sequential_155/lstm_465/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_155/lstm_465/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_155/lstm_465/zeros/packedPack.sequential_155/lstm_465/strided_slice:output:0/sequential_155/lstm_465/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_155/lstm_465/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_155/lstm_465/zerosFill-sequential_155/lstm_465/zeros/packed:output:0,sequential_155/lstm_465/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_155/lstm_465/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_155/lstm_465/zeros_1/packedPack.sequential_155/lstm_465/strided_slice:output:01sequential_155/lstm_465/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_155/lstm_465/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_155/lstm_465/zeros_1Fill/sequential_155/lstm_465/zeros_1/packed:output:0.sequential_155/lstm_465/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_155/lstm_465/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_155/lstm_465/transpose	Transposelstm_465_input/sequential_155/lstm_465/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_155/lstm_465/Shape_1Shape%sequential_155/lstm_465/transpose:y:0*
T0*
_output_shapes
:w
-sequential_155/lstm_465/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_465/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_155/lstm_465/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_465/strided_slice_1StridedSlice(sequential_155/lstm_465/Shape_1:output:06sequential_155/lstm_465/strided_slice_1/stack:output:08sequential_155/lstm_465/strided_slice_1/stack_1:output:08sequential_155/lstm_465/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_155/lstm_465/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_155/lstm_465/TensorArrayV2TensorListReserve<sequential_155/lstm_465/TensorArrayV2/element_shape:output:00sequential_155/lstm_465/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_155/lstm_465/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_155/lstm_465/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_155/lstm_465/transpose:y:0Vsequential_155/lstm_465/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_155/lstm_465/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_465/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_155/lstm_465/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_465/strided_slice_2StridedSlice%sequential_155/lstm_465/transpose:y:06sequential_155/lstm_465/strided_slice_2/stack:output:08sequential_155/lstm_465/strided_slice_2/stack_1:output:08sequential_155/lstm_465/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_155/lstm_465/lstm_cell_291/MatMul/ReadVariableOpReadVariableOpDsequential_155_lstm_465_lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_155/lstm_465/lstm_cell_291/MatMulMatMul0sequential_155/lstm_465/strided_slice_2:output:0Csequential_155/lstm_465/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_155/lstm_465/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOpFsequential_155_lstm_465_lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_155/lstm_465/lstm_cell_291/MatMul_1MatMul&sequential_155/lstm_465/zeros:output:0Esequential_155/lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_155/lstm_465/lstm_cell_291/addAddV26sequential_155/lstm_465/lstm_cell_291/MatMul:product:08sequential_155/lstm_465/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_155/lstm_465/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOpEsequential_155_lstm_465_lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_155/lstm_465/lstm_cell_291/BiasAddBiasAdd-sequential_155/lstm_465/lstm_cell_291/add:z:0Dsequential_155/lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_155/lstm_465/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_155/lstm_465/lstm_cell_291/splitSplit>sequential_155/lstm_465/lstm_cell_291/split/split_dim:output:06sequential_155/lstm_465/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_155/lstm_465/lstm_cell_291/SigmoidSigmoid4sequential_155/lstm_465/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_155/lstm_465/lstm_cell_291/Sigmoid_1Sigmoid4sequential_155/lstm_465/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_155/lstm_465/lstm_cell_291/mulMul3sequential_155/lstm_465/lstm_cell_291/Sigmoid_1:y:0(sequential_155/lstm_465/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_155/lstm_465/lstm_cell_291/ReluRelu4sequential_155/lstm_465/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_155/lstm_465/lstm_cell_291/mul_1Mul1sequential_155/lstm_465/lstm_cell_291/Sigmoid:y:08sequential_155/lstm_465/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_155/lstm_465/lstm_cell_291/add_1AddV2-sequential_155/lstm_465/lstm_cell_291/mul:z:0/sequential_155/lstm_465/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_155/lstm_465/lstm_cell_291/Sigmoid_2Sigmoid4sequential_155/lstm_465/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_155/lstm_465/lstm_cell_291/Relu_1Relu/sequential_155/lstm_465/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_155/lstm_465/lstm_cell_291/mul_2Mul3sequential_155/lstm_465/lstm_cell_291/Sigmoid_2:y:0:sequential_155/lstm_465/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_155/lstm_465/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_155/lstm_465/TensorArrayV2_1TensorListReserve>sequential_155/lstm_465/TensorArrayV2_1/element_shape:output:00sequential_155/lstm_465/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_155/lstm_465/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_155/lstm_465/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_155/lstm_465/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_155/lstm_465/whileWhile3sequential_155/lstm_465/while/loop_counter:output:09sequential_155/lstm_465/while/maximum_iterations:output:0%sequential_155/lstm_465/time:output:00sequential_155/lstm_465/TensorArrayV2_1:handle:0&sequential_155/lstm_465/zeros:output:0(sequential_155/lstm_465/zeros_1:output:00sequential_155/lstm_465/strided_slice_1:output:0Osequential_155/lstm_465/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_155_lstm_465_lstm_cell_291_matmul_readvariableop_resourceFsequential_155_lstm_465_lstm_cell_291_matmul_1_readvariableop_resourceEsequential_155_lstm_465_lstm_cell_291_biasadd_readvariableop_resource*
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
*sequential_155_lstm_465_while_body_1772312*6
cond.R,
*sequential_155_lstm_465_while_cond_1772311*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_155/lstm_465/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_155/lstm_465/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_155/lstm_465/while:output:3Qsequential_155/lstm_465/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_155/lstm_465/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_155/lstm_465/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_465/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_465/strided_slice_3StridedSliceCsequential_155/lstm_465/TensorArrayV2Stack/TensorListStack:tensor:06sequential_155/lstm_465/strided_slice_3/stack:output:08sequential_155/lstm_465/strided_slice_3/stack_1:output:08sequential_155/lstm_465/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_155/lstm_465/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_155/lstm_465/transpose_1	TransposeCsequential_155/lstm_465/TensorArrayV2Stack/TensorListStack:tensor:01sequential_155/lstm_465/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_155/lstm_465/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_155/lstm_466/ShapeShape'sequential_155/lstm_465/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_155/lstm_466/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_155/lstm_466/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_155/lstm_466/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_155/lstm_466/strided_sliceStridedSlice&sequential_155/lstm_466/Shape:output:04sequential_155/lstm_466/strided_slice/stack:output:06sequential_155/lstm_466/strided_slice/stack_1:output:06sequential_155/lstm_466/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_155/lstm_466/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_155/lstm_466/zeros/packedPack.sequential_155/lstm_466/strided_slice:output:0/sequential_155/lstm_466/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_155/lstm_466/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_155/lstm_466/zerosFill-sequential_155/lstm_466/zeros/packed:output:0,sequential_155/lstm_466/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_155/lstm_466/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_155/lstm_466/zeros_1/packedPack.sequential_155/lstm_466/strided_slice:output:01sequential_155/lstm_466/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_155/lstm_466/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_155/lstm_466/zeros_1Fill/sequential_155/lstm_466/zeros_1/packed:output:0.sequential_155/lstm_466/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_155/lstm_466/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_155/lstm_466/transpose	Transpose'sequential_155/lstm_465/transpose_1:y:0/sequential_155/lstm_466/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_155/lstm_466/Shape_1Shape%sequential_155/lstm_466/transpose:y:0*
T0*
_output_shapes
:w
-sequential_155/lstm_466/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_466/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_155/lstm_466/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_466/strided_slice_1StridedSlice(sequential_155/lstm_466/Shape_1:output:06sequential_155/lstm_466/strided_slice_1/stack:output:08sequential_155/lstm_466/strided_slice_1/stack_1:output:08sequential_155/lstm_466/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_155/lstm_466/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_155/lstm_466/TensorArrayV2TensorListReserve<sequential_155/lstm_466/TensorArrayV2/element_shape:output:00sequential_155/lstm_466/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_155/lstm_466/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_155/lstm_466/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_155/lstm_466/transpose:y:0Vsequential_155/lstm_466/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_155/lstm_466/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_466/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_155/lstm_466/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_466/strided_slice_2StridedSlice%sequential_155/lstm_466/transpose:y:06sequential_155/lstm_466/strided_slice_2/stack:output:08sequential_155/lstm_466/strided_slice_2/stack_1:output:08sequential_155/lstm_466/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_155/lstm_466/lstm_cell_292/MatMul/ReadVariableOpReadVariableOpDsequential_155_lstm_466_lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_155/lstm_466/lstm_cell_292/MatMulMatMul0sequential_155/lstm_466/strided_slice_2:output:0Csequential_155/lstm_466/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_155/lstm_466/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOpFsequential_155_lstm_466_lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_155/lstm_466/lstm_cell_292/MatMul_1MatMul&sequential_155/lstm_466/zeros:output:0Esequential_155/lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_155/lstm_466/lstm_cell_292/addAddV26sequential_155/lstm_466/lstm_cell_292/MatMul:product:08sequential_155/lstm_466/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_155/lstm_466/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOpEsequential_155_lstm_466_lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_155/lstm_466/lstm_cell_292/BiasAddBiasAdd-sequential_155/lstm_466/lstm_cell_292/add:z:0Dsequential_155/lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_155/lstm_466/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_155/lstm_466/lstm_cell_292/splitSplit>sequential_155/lstm_466/lstm_cell_292/split/split_dim:output:06sequential_155/lstm_466/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_155/lstm_466/lstm_cell_292/SigmoidSigmoid4sequential_155/lstm_466/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_155/lstm_466/lstm_cell_292/Sigmoid_1Sigmoid4sequential_155/lstm_466/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_155/lstm_466/lstm_cell_292/mulMul3sequential_155/lstm_466/lstm_cell_292/Sigmoid_1:y:0(sequential_155/lstm_466/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_155/lstm_466/lstm_cell_292/ReluRelu4sequential_155/lstm_466/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_155/lstm_466/lstm_cell_292/mul_1Mul1sequential_155/lstm_466/lstm_cell_292/Sigmoid:y:08sequential_155/lstm_466/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_155/lstm_466/lstm_cell_292/add_1AddV2-sequential_155/lstm_466/lstm_cell_292/mul:z:0/sequential_155/lstm_466/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_155/lstm_466/lstm_cell_292/Sigmoid_2Sigmoid4sequential_155/lstm_466/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_155/lstm_466/lstm_cell_292/Relu_1Relu/sequential_155/lstm_466/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_155/lstm_466/lstm_cell_292/mul_2Mul3sequential_155/lstm_466/lstm_cell_292/Sigmoid_2:y:0:sequential_155/lstm_466/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_155/lstm_466/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_155/lstm_466/TensorArrayV2_1TensorListReserve>sequential_155/lstm_466/TensorArrayV2_1/element_shape:output:00sequential_155/lstm_466/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_155/lstm_466/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_155/lstm_466/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_155/lstm_466/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_155/lstm_466/whileWhile3sequential_155/lstm_466/while/loop_counter:output:09sequential_155/lstm_466/while/maximum_iterations:output:0%sequential_155/lstm_466/time:output:00sequential_155/lstm_466/TensorArrayV2_1:handle:0&sequential_155/lstm_466/zeros:output:0(sequential_155/lstm_466/zeros_1:output:00sequential_155/lstm_466/strided_slice_1:output:0Osequential_155/lstm_466/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_155_lstm_466_lstm_cell_292_matmul_readvariableop_resourceFsequential_155_lstm_466_lstm_cell_292_matmul_1_readvariableop_resourceEsequential_155_lstm_466_lstm_cell_292_biasadd_readvariableop_resource*
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
*sequential_155_lstm_466_while_body_1772451*6
cond.R,
*sequential_155_lstm_466_while_cond_1772450*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_155/lstm_466/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_155/lstm_466/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_155/lstm_466/while:output:3Qsequential_155/lstm_466/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_155/lstm_466/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_155/lstm_466/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_466/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_466/strided_slice_3StridedSliceCsequential_155/lstm_466/TensorArrayV2Stack/TensorListStack:tensor:06sequential_155/lstm_466/strided_slice_3/stack:output:08sequential_155/lstm_466/strided_slice_3/stack_1:output:08sequential_155/lstm_466/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_155/lstm_466/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_155/lstm_466/transpose_1	TransposeCsequential_155/lstm_466/TensorArrayV2Stack/TensorListStack:tensor:01sequential_155/lstm_466/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_155/lstm_466/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_155/lstm_467/ShapeShape'sequential_155/lstm_466/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_155/lstm_467/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_155/lstm_467/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_155/lstm_467/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_155/lstm_467/strided_sliceStridedSlice&sequential_155/lstm_467/Shape:output:04sequential_155/lstm_467/strided_slice/stack:output:06sequential_155/lstm_467/strided_slice/stack_1:output:06sequential_155/lstm_467/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_155/lstm_467/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_155/lstm_467/zeros/packedPack.sequential_155/lstm_467/strided_slice:output:0/sequential_155/lstm_467/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_155/lstm_467/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_155/lstm_467/zerosFill-sequential_155/lstm_467/zeros/packed:output:0,sequential_155/lstm_467/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_155/lstm_467/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_155/lstm_467/zeros_1/packedPack.sequential_155/lstm_467/strided_slice:output:01sequential_155/lstm_467/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_155/lstm_467/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_155/lstm_467/zeros_1Fill/sequential_155/lstm_467/zeros_1/packed:output:0.sequential_155/lstm_467/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_155/lstm_467/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_155/lstm_467/transpose	Transpose'sequential_155/lstm_466/transpose_1:y:0/sequential_155/lstm_467/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_155/lstm_467/Shape_1Shape%sequential_155/lstm_467/transpose:y:0*
T0*
_output_shapes
:w
-sequential_155/lstm_467/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_467/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_155/lstm_467/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_467/strided_slice_1StridedSlice(sequential_155/lstm_467/Shape_1:output:06sequential_155/lstm_467/strided_slice_1/stack:output:08sequential_155/lstm_467/strided_slice_1/stack_1:output:08sequential_155/lstm_467/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_155/lstm_467/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_155/lstm_467/TensorArrayV2TensorListReserve<sequential_155/lstm_467/TensorArrayV2/element_shape:output:00sequential_155/lstm_467/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_155/lstm_467/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_155/lstm_467/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_155/lstm_467/transpose:y:0Vsequential_155/lstm_467/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_155/lstm_467/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_467/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_155/lstm_467/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_467/strided_slice_2StridedSlice%sequential_155/lstm_467/transpose:y:06sequential_155/lstm_467/strided_slice_2/stack:output:08sequential_155/lstm_467/strided_slice_2/stack_1:output:08sequential_155/lstm_467/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_155/lstm_467/lstm_cell_293/MatMul/ReadVariableOpReadVariableOpDsequential_155_lstm_467_lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_155/lstm_467/lstm_cell_293/MatMulMatMul0sequential_155/lstm_467/strided_slice_2:output:0Csequential_155/lstm_467/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_155/lstm_467/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOpFsequential_155_lstm_467_lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_155/lstm_467/lstm_cell_293/MatMul_1MatMul&sequential_155/lstm_467/zeros:output:0Esequential_155/lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_155/lstm_467/lstm_cell_293/addAddV26sequential_155/lstm_467/lstm_cell_293/MatMul:product:08sequential_155/lstm_467/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_155/lstm_467/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOpEsequential_155_lstm_467_lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_155/lstm_467/lstm_cell_293/BiasAddBiasAdd-sequential_155/lstm_467/lstm_cell_293/add:z:0Dsequential_155/lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_155/lstm_467/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_155/lstm_467/lstm_cell_293/splitSplit>sequential_155/lstm_467/lstm_cell_293/split/split_dim:output:06sequential_155/lstm_467/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_155/lstm_467/lstm_cell_293/SigmoidSigmoid4sequential_155/lstm_467/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_155/lstm_467/lstm_cell_293/Sigmoid_1Sigmoid4sequential_155/lstm_467/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_155/lstm_467/lstm_cell_293/mulMul3sequential_155/lstm_467/lstm_cell_293/Sigmoid_1:y:0(sequential_155/lstm_467/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_155/lstm_467/lstm_cell_293/ReluRelu4sequential_155/lstm_467/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_155/lstm_467/lstm_cell_293/mul_1Mul1sequential_155/lstm_467/lstm_cell_293/Sigmoid:y:08sequential_155/lstm_467/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_155/lstm_467/lstm_cell_293/add_1AddV2-sequential_155/lstm_467/lstm_cell_293/mul:z:0/sequential_155/lstm_467/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_155/lstm_467/lstm_cell_293/Sigmoid_2Sigmoid4sequential_155/lstm_467/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_155/lstm_467/lstm_cell_293/Relu_1Relu/sequential_155/lstm_467/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_155/lstm_467/lstm_cell_293/mul_2Mul3sequential_155/lstm_467/lstm_cell_293/Sigmoid_2:y:0:sequential_155/lstm_467/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_155/lstm_467/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_155/lstm_467/TensorArrayV2_1TensorListReserve>sequential_155/lstm_467/TensorArrayV2_1/element_shape:output:00sequential_155/lstm_467/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_155/lstm_467/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_155/lstm_467/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_155/lstm_467/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_155/lstm_467/whileWhile3sequential_155/lstm_467/while/loop_counter:output:09sequential_155/lstm_467/while/maximum_iterations:output:0%sequential_155/lstm_467/time:output:00sequential_155/lstm_467/TensorArrayV2_1:handle:0&sequential_155/lstm_467/zeros:output:0(sequential_155/lstm_467/zeros_1:output:00sequential_155/lstm_467/strided_slice_1:output:0Osequential_155/lstm_467/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_155_lstm_467_lstm_cell_293_matmul_readvariableop_resourceFsequential_155_lstm_467_lstm_cell_293_matmul_1_readvariableop_resourceEsequential_155_lstm_467_lstm_cell_293_biasadd_readvariableop_resource*
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
*sequential_155_lstm_467_while_body_1772590*6
cond.R,
*sequential_155_lstm_467_while_cond_1772589*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_155/lstm_467/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_155/lstm_467/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_155/lstm_467/while:output:3Qsequential_155/lstm_467/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_155/lstm_467/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_155/lstm_467/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_155/lstm_467/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_155/lstm_467/strided_slice_3StridedSliceCsequential_155/lstm_467/TensorArrayV2Stack/TensorListStack:tensor:06sequential_155/lstm_467/strided_slice_3/stack:output:08sequential_155/lstm_467/strided_slice_3/stack_1:output:08sequential_155/lstm_467/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_155/lstm_467/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_155/lstm_467/transpose_1	TransposeCsequential_155/lstm_467/TensorArrayV2Stack/TensorListStack:tensor:01sequential_155/lstm_467/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_155/lstm_467/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_155/dense_155/MatMul/ReadVariableOpReadVariableOp7sequential_155_dense_155_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_155/dense_155/MatMulMatMul0sequential_155/lstm_467/strided_slice_3:output:06sequential_155/dense_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_155/dense_155/BiasAdd/ReadVariableOpReadVariableOp8sequential_155_dense_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_155/dense_155/BiasAddBiasAdd)sequential_155/dense_155/MatMul:product:07sequential_155/dense_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_155/dense_155/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_155/dense_155/BiasAdd/ReadVariableOp/^sequential_155/dense_155/MatMul/ReadVariableOp=^sequential_155/lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp<^sequential_155/lstm_465/lstm_cell_291/MatMul/ReadVariableOp>^sequential_155/lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp^sequential_155/lstm_465/while=^sequential_155/lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp<^sequential_155/lstm_466/lstm_cell_292/MatMul/ReadVariableOp>^sequential_155/lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp^sequential_155/lstm_466/while=^sequential_155/lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp<^sequential_155/lstm_467/lstm_cell_293/MatMul/ReadVariableOp>^sequential_155/lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp^sequential_155/lstm_467/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_155/dense_155/BiasAdd/ReadVariableOp/sequential_155/dense_155/BiasAdd/ReadVariableOp2`
.sequential_155/dense_155/MatMul/ReadVariableOp.sequential_155/dense_155/MatMul/ReadVariableOp2|
<sequential_155/lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp<sequential_155/lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp2z
;sequential_155/lstm_465/lstm_cell_291/MatMul/ReadVariableOp;sequential_155/lstm_465/lstm_cell_291/MatMul/ReadVariableOp2~
=sequential_155/lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp=sequential_155/lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp2>
sequential_155/lstm_465/whilesequential_155/lstm_465/while2|
<sequential_155/lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp<sequential_155/lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp2z
;sequential_155/lstm_466/lstm_cell_292/MatMul/ReadVariableOp;sequential_155/lstm_466/lstm_cell_292/MatMul/ReadVariableOp2~
=sequential_155/lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp=sequential_155/lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp2>
sequential_155/lstm_466/whilesequential_155/lstm_466/while2|
<sequential_155/lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp<sequential_155/lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp2z
;sequential_155/lstm_467/lstm_cell_293/MatMul/ReadVariableOp;sequential_155/lstm_467/lstm_cell_293/MatMul/ReadVariableOp2~
=sequential_155/lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp=sequential_155/lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp2>
sequential_155/lstm_467/whilesequential_155/lstm_467/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_465_input
?#
?
while_body_1772952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_291_1772976_0:	?0
while_lstm_cell_291_1772978_0:	d?,
while_lstm_cell_291_1772980_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_291_1772976:	?.
while_lstm_cell_291_1772978:	d?*
while_lstm_cell_291_1772980:	???+while/lstm_cell_291/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_291/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_291_1772976_0while_lstm_cell_291_1772978_0while_lstm_cell_291_1772980_0*
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772893?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_291/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_291/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_291/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_291/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_291_1772976while_lstm_cell_291_1772976_0"<
while_lstm_cell_291_1772978while_lstm_cell_291_1772978_0"<
while_lstm_cell_291_1772980while_lstm_cell_291_1772980_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_291/StatefulPartitionedCall+while/lstm_cell_291/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1775421

inputsH
5lstm_465_lstm_cell_291_matmul_readvariableop_resource:	?J
7lstm_465_lstm_cell_291_matmul_1_readvariableop_resource:	d?E
6lstm_465_lstm_cell_291_biasadd_readvariableop_resource:	?H
5lstm_466_lstm_cell_292_matmul_readvariableop_resource:	d?J
7lstm_466_lstm_cell_292_matmul_1_readvariableop_resource:	2?E
6lstm_466_lstm_cell_292_biasadd_readvariableop_resource:	?G
5lstm_467_lstm_cell_293_matmul_readvariableop_resource:2(I
7lstm_467_lstm_cell_293_matmul_1_readvariableop_resource:
(D
6lstm_467_lstm_cell_293_biasadd_readvariableop_resource:(:
(dense_155_matmul_readvariableop_resource:
7
)dense_155_biasadd_readvariableop_resource:
identity?? dense_155/BiasAdd/ReadVariableOp?dense_155/MatMul/ReadVariableOp?-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp?,lstm_465/lstm_cell_291/MatMul/ReadVariableOp?.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp?lstm_465/while?-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp?,lstm_466/lstm_cell_292/MatMul/ReadVariableOp?.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp?lstm_466/while?-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp?,lstm_467/lstm_cell_293/MatMul/ReadVariableOp?.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp?lstm_467/whileD
lstm_465/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_465/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_465/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_465/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_sliceStridedSlicelstm_465/Shape:output:0%lstm_465/strided_slice/stack:output:0'lstm_465/strided_slice/stack_1:output:0'lstm_465/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_465/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_465/zeros/packedPacklstm_465/strided_slice:output:0 lstm_465/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_465/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_465/zerosFilllstm_465/zeros/packed:output:0lstm_465/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_465/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_465/zeros_1/packedPacklstm_465/strided_slice:output:0"lstm_465/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_465/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_465/zeros_1Fill lstm_465/zeros_1/packed:output:0lstm_465/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_465/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_465/transpose	Transposeinputs lstm_465/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_465/Shape_1Shapelstm_465/transpose:y:0*
T0*
_output_shapes
:h
lstm_465/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_465/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_465/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_slice_1StridedSlicelstm_465/Shape_1:output:0'lstm_465/strided_slice_1/stack:output:0)lstm_465/strided_slice_1/stack_1:output:0)lstm_465/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_465/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_465/TensorArrayV2TensorListReserve-lstm_465/TensorArrayV2/element_shape:output:0!lstm_465/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_465/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_465/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_465/transpose:y:0Glstm_465/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_465/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_465/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_465/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_slice_2StridedSlicelstm_465/transpose:y:0'lstm_465/strided_slice_2/stack:output:0)lstm_465/strided_slice_2/stack_1:output:0)lstm_465/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_465/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp5lstm_465_lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_465/lstm_cell_291/MatMulMatMul!lstm_465/strided_slice_2:output:04lstm_465/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp7lstm_465_lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_465/lstm_cell_291/MatMul_1MatMullstm_465/zeros:output:06lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_465/lstm_cell_291/addAddV2'lstm_465/lstm_cell_291/MatMul:product:0)lstm_465/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp6lstm_465_lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_465/lstm_cell_291/BiasAddBiasAddlstm_465/lstm_cell_291/add:z:05lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_465/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_465/lstm_cell_291/splitSplit/lstm_465/lstm_cell_291/split/split_dim:output:0'lstm_465/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_465/lstm_cell_291/SigmoidSigmoid%lstm_465/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_465/lstm_cell_291/Sigmoid_1Sigmoid%lstm_465/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/mulMul$lstm_465/lstm_cell_291/Sigmoid_1:y:0lstm_465/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_465/lstm_cell_291/ReluRelu%lstm_465/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/mul_1Mul"lstm_465/lstm_cell_291/Sigmoid:y:0)lstm_465/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/add_1AddV2lstm_465/lstm_cell_291/mul:z:0 lstm_465/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_465/lstm_cell_291/Sigmoid_2Sigmoid%lstm_465/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_465/lstm_cell_291/Relu_1Relu lstm_465/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/mul_2Mul$lstm_465/lstm_cell_291/Sigmoid_2:y:0+lstm_465/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_465/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_465/TensorArrayV2_1TensorListReserve/lstm_465/TensorArrayV2_1/element_shape:output:0!lstm_465/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_465/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_465/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_465/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_465/whileWhile$lstm_465/while/loop_counter:output:0*lstm_465/while/maximum_iterations:output:0lstm_465/time:output:0!lstm_465/TensorArrayV2_1:handle:0lstm_465/zeros:output:0lstm_465/zeros_1:output:0!lstm_465/strided_slice_1:output:0@lstm_465/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_465_lstm_cell_291_matmul_readvariableop_resource7lstm_465_lstm_cell_291_matmul_1_readvariableop_resource6lstm_465_lstm_cell_291_biasadd_readvariableop_resource*
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
lstm_465_while_body_1775053*'
condR
lstm_465_while_cond_1775052*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_465/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_465/TensorArrayV2Stack/TensorListStackTensorListStacklstm_465/while:output:3Blstm_465/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_465/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_465/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_465/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_slice_3StridedSlice4lstm_465/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_465/strided_slice_3/stack:output:0)lstm_465/strided_slice_3/stack_1:output:0)lstm_465/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_465/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_465/transpose_1	Transpose4lstm_465/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_465/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_465/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_466/ShapeShapelstm_465/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_466/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_466/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_466/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_sliceStridedSlicelstm_466/Shape:output:0%lstm_466/strided_slice/stack:output:0'lstm_466/strided_slice/stack_1:output:0'lstm_466/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_466/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_466/zeros/packedPacklstm_466/strided_slice:output:0 lstm_466/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_466/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_466/zerosFilllstm_466/zeros/packed:output:0lstm_466/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_466/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_466/zeros_1/packedPacklstm_466/strided_slice:output:0"lstm_466/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_466/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_466/zeros_1Fill lstm_466/zeros_1/packed:output:0lstm_466/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_466/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_466/transpose	Transposelstm_465/transpose_1:y:0 lstm_466/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_466/Shape_1Shapelstm_466/transpose:y:0*
T0*
_output_shapes
:h
lstm_466/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_466/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_466/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_slice_1StridedSlicelstm_466/Shape_1:output:0'lstm_466/strided_slice_1/stack:output:0)lstm_466/strided_slice_1/stack_1:output:0)lstm_466/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_466/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_466/TensorArrayV2TensorListReserve-lstm_466/TensorArrayV2/element_shape:output:0!lstm_466/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_466/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_466/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_466/transpose:y:0Glstm_466/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_466/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_466/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_466/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_slice_2StridedSlicelstm_466/transpose:y:0'lstm_466/strided_slice_2/stack:output:0)lstm_466/strided_slice_2/stack_1:output:0)lstm_466/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_466/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp5lstm_466_lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_466/lstm_cell_292/MatMulMatMul!lstm_466/strided_slice_2:output:04lstm_466/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp7lstm_466_lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_466/lstm_cell_292/MatMul_1MatMullstm_466/zeros:output:06lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_466/lstm_cell_292/addAddV2'lstm_466/lstm_cell_292/MatMul:product:0)lstm_466/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp6lstm_466_lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_466/lstm_cell_292/BiasAddBiasAddlstm_466/lstm_cell_292/add:z:05lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_466/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_466/lstm_cell_292/splitSplit/lstm_466/lstm_cell_292/split/split_dim:output:0'lstm_466/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_466/lstm_cell_292/SigmoidSigmoid%lstm_466/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_466/lstm_cell_292/Sigmoid_1Sigmoid%lstm_466/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/mulMul$lstm_466/lstm_cell_292/Sigmoid_1:y:0lstm_466/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_466/lstm_cell_292/ReluRelu%lstm_466/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/mul_1Mul"lstm_466/lstm_cell_292/Sigmoid:y:0)lstm_466/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/add_1AddV2lstm_466/lstm_cell_292/mul:z:0 lstm_466/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_466/lstm_cell_292/Sigmoid_2Sigmoid%lstm_466/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_466/lstm_cell_292/Relu_1Relu lstm_466/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/mul_2Mul$lstm_466/lstm_cell_292/Sigmoid_2:y:0+lstm_466/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_466/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_466/TensorArrayV2_1TensorListReserve/lstm_466/TensorArrayV2_1/element_shape:output:0!lstm_466/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_466/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_466/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_466/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_466/whileWhile$lstm_466/while/loop_counter:output:0*lstm_466/while/maximum_iterations:output:0lstm_466/time:output:0!lstm_466/TensorArrayV2_1:handle:0lstm_466/zeros:output:0lstm_466/zeros_1:output:0!lstm_466/strided_slice_1:output:0@lstm_466/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_466_lstm_cell_292_matmul_readvariableop_resource7lstm_466_lstm_cell_292_matmul_1_readvariableop_resource6lstm_466_lstm_cell_292_biasadd_readvariableop_resource*
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
lstm_466_while_body_1775192*'
condR
lstm_466_while_cond_1775191*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_466/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_466/TensorArrayV2Stack/TensorListStackTensorListStacklstm_466/while:output:3Blstm_466/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_466/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_466/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_466/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_slice_3StridedSlice4lstm_466/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_466/strided_slice_3/stack:output:0)lstm_466/strided_slice_3/stack_1:output:0)lstm_466/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_466/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_466/transpose_1	Transpose4lstm_466/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_466/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_466/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_467/ShapeShapelstm_466/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_467/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_467/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_467/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_sliceStridedSlicelstm_467/Shape:output:0%lstm_467/strided_slice/stack:output:0'lstm_467/strided_slice/stack_1:output:0'lstm_467/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_467/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_467/zeros/packedPacklstm_467/strided_slice:output:0 lstm_467/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_467/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_467/zerosFilllstm_467/zeros/packed:output:0lstm_467/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_467/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_467/zeros_1/packedPacklstm_467/strided_slice:output:0"lstm_467/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_467/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_467/zeros_1Fill lstm_467/zeros_1/packed:output:0lstm_467/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_467/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_467/transpose	Transposelstm_466/transpose_1:y:0 lstm_467/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_467/Shape_1Shapelstm_467/transpose:y:0*
T0*
_output_shapes
:h
lstm_467/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_467/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_467/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_slice_1StridedSlicelstm_467/Shape_1:output:0'lstm_467/strided_slice_1/stack:output:0)lstm_467/strided_slice_1/stack_1:output:0)lstm_467/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_467/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_467/TensorArrayV2TensorListReserve-lstm_467/TensorArrayV2/element_shape:output:0!lstm_467/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_467/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_467/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_467/transpose:y:0Glstm_467/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_467/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_467/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_467/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_slice_2StridedSlicelstm_467/transpose:y:0'lstm_467/strided_slice_2/stack:output:0)lstm_467/strided_slice_2/stack_1:output:0)lstm_467/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_467/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp5lstm_467_lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_467/lstm_cell_293/MatMulMatMul!lstm_467/strided_slice_2:output:04lstm_467/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp7lstm_467_lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_467/lstm_cell_293/MatMul_1MatMullstm_467/zeros:output:06lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_467/lstm_cell_293/addAddV2'lstm_467/lstm_cell_293/MatMul:product:0)lstm_467/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp6lstm_467_lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_467/lstm_cell_293/BiasAddBiasAddlstm_467/lstm_cell_293/add:z:05lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_467/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_467/lstm_cell_293/splitSplit/lstm_467/lstm_cell_293/split/split_dim:output:0'lstm_467/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_467/lstm_cell_293/SigmoidSigmoid%lstm_467/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_467/lstm_cell_293/Sigmoid_1Sigmoid%lstm_467/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/mulMul$lstm_467/lstm_cell_293/Sigmoid_1:y:0lstm_467/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_467/lstm_cell_293/ReluRelu%lstm_467/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/mul_1Mul"lstm_467/lstm_cell_293/Sigmoid:y:0)lstm_467/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/add_1AddV2lstm_467/lstm_cell_293/mul:z:0 lstm_467/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_467/lstm_cell_293/Sigmoid_2Sigmoid%lstm_467/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_467/lstm_cell_293/Relu_1Relu lstm_467/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/mul_2Mul$lstm_467/lstm_cell_293/Sigmoid_2:y:0+lstm_467/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_467/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_467/TensorArrayV2_1TensorListReserve/lstm_467/TensorArrayV2_1/element_shape:output:0!lstm_467/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_467/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_467/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_467/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_467/whileWhile$lstm_467/while/loop_counter:output:0*lstm_467/while/maximum_iterations:output:0lstm_467/time:output:0!lstm_467/TensorArrayV2_1:handle:0lstm_467/zeros:output:0lstm_467/zeros_1:output:0!lstm_467/strided_slice_1:output:0@lstm_467/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_467_lstm_cell_293_matmul_readvariableop_resource7lstm_467_lstm_cell_293_matmul_1_readvariableop_resource6lstm_467_lstm_cell_293_biasadd_readvariableop_resource*
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
lstm_467_while_body_1775331*'
condR
lstm_467_while_cond_1775330*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_467/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_467/TensorArrayV2Stack/TensorListStackTensorListStacklstm_467/while:output:3Blstm_467/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_467/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_467/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_467/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_slice_3StridedSlice4lstm_467/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_467/strided_slice_3/stack:output:0)lstm_467/strided_slice_3/stack_1:output:0)lstm_467/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_467/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_467/transpose_1	Transpose4lstm_467/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_467/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_467/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_155/MatMul/ReadVariableOpReadVariableOp(dense_155_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_155/MatMulMatMul!lstm_467/strided_slice_3:output:0'dense_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_155/BiasAdd/ReadVariableOpReadVariableOp)dense_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_155/BiasAddBiasAdddense_155/MatMul:product:0(dense_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_155/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_155/BiasAdd/ReadVariableOp ^dense_155/MatMul/ReadVariableOp.^lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp-^lstm_465/lstm_cell_291/MatMul/ReadVariableOp/^lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp^lstm_465/while.^lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp-^lstm_466/lstm_cell_292/MatMul/ReadVariableOp/^lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp^lstm_466/while.^lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp-^lstm_467/lstm_cell_293/MatMul/ReadVariableOp/^lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp^lstm_467/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_155/BiasAdd/ReadVariableOp dense_155/BiasAdd/ReadVariableOp2B
dense_155/MatMul/ReadVariableOpdense_155/MatMul/ReadVariableOp2^
-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp2\
,lstm_465/lstm_cell_291/MatMul/ReadVariableOp,lstm_465/lstm_cell_291/MatMul/ReadVariableOp2`
.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp2 
lstm_465/whilelstm_465/while2^
-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp2\
,lstm_466/lstm_cell_292/MatMul/ReadVariableOp,lstm_466/lstm_cell_292/MatMul/ReadVariableOp2`
.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp2 
lstm_466/whilelstm_466/while2^
-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp2\
,lstm_467/lstm_cell_293/MatMul/ReadVariableOp,lstm_467/lstm_cell_293/MatMul/ReadVariableOp2`
.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp2 
lstm_467/whilelstm_467/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_465_layer_call_and_return_conditional_losses_1772830

inputs(
lstm_cell_291_1772748:	?(
lstm_cell_291_1772750:	d?$
lstm_cell_291_1772752:	?
identity??%lstm_cell_291/StatefulPartitionedCall?while;
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
%lstm_cell_291/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_291_1772748lstm_cell_291_1772750lstm_cell_291_1772752*
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772747n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_291_1772748lstm_cell_291_1772750lstm_cell_291_1772752*
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
while_body_1772761*
condR
while_cond_1772760*K
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
NoOpNoOp&^lstm_cell_291/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_291/StatefulPartitionedCall%lstm_cell_291/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_465_layer_call_and_return_conditional_losses_1774725

inputs?
,lstm_cell_291_matmul_readvariableop_resource:	?A
.lstm_cell_291_matmul_1_readvariableop_resource:	d?<
-lstm_cell_291_biasadd_readvariableop_resource:	?
identity??$lstm_cell_291/BiasAdd/ReadVariableOp?#lstm_cell_291/MatMul/ReadVariableOp?%lstm_cell_291/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_291/MatMul/ReadVariableOpReadVariableOp,lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_291/MatMulMatMulstrided_slice_2:output:0+lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_291/MatMul_1MatMulzeros:output:0-lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_291/addAddV2lstm_cell_291/MatMul:product:0 lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_291/BiasAddBiasAddlstm_cell_291/add:z:0,lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_291/splitSplit&lstm_cell_291/split/split_dim:output:0lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_291/SigmoidSigmoidlstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_1Sigmoidlstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_291/mulMullstm_cell_291/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_291/ReluRelulstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_1Mullstm_cell_291/Sigmoid:y:0 lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_291/add_1AddV2lstm_cell_291/mul:z:0lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_2Sigmoidlstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_291/Relu_1Relulstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_2Mullstm_cell_291/Sigmoid_2:y:0"lstm_cell_291/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_291_matmul_readvariableop_resource.lstm_cell_291_matmul_1_readvariableop_resource-lstm_cell_291_biasadd_readvariableop_resource*
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
while_body_1774641*
condR
while_cond_1774640*K
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
NoOpNoOp%^lstm_cell_291/BiasAdd/ReadVariableOp$^lstm_cell_291/MatMul/ReadVariableOp&^lstm_cell_291/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_291/BiasAdd/ReadVariableOp$lstm_cell_291/BiasAdd/ReadVariableOp2J
#lstm_cell_291/MatMul/ReadVariableOp#lstm_cell_291/MatMul/ReadVariableOp2N
%lstm_cell_291/MatMul_1/ReadVariableOp%lstm_cell_291/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1773301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1773301___redundant_placeholder05
1while_while_cond_1773301___redundant_placeholder15
1while_while_cond_1773301___redundant_placeholder25
1while_while_cond_1773301___redundant_placeholder3
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1773721

inputs'
lstm_cell_293_1773639:2('
lstm_cell_293_1773641:
(#
lstm_cell_293_1773643:(
identity??%lstm_cell_293/StatefulPartitionedCall?while;
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
%lstm_cell_293/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_293_1773639lstm_cell_293_1773641lstm_cell_293_1773643*
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773593n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_293_1773639lstm_cell_293_1773641lstm_cell_293_1773643*
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
while_body_1773652*
condR
while_cond_1773651*K
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
NoOpNoOp&^lstm_cell_293/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_293/StatefulPartitionedCall%lstm_cell_293/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1774475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1774475___redundant_placeholder05
1while_while_cond_1774475___redundant_placeholder15
1while_while_cond_1774475___redundant_placeholder25
1while_while_cond_1774475___redundant_placeholder3
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776035
inputs_0?
,lstm_cell_291_matmul_readvariableop_resource:	?A
.lstm_cell_291_matmul_1_readvariableop_resource:	d?<
-lstm_cell_291_biasadd_readvariableop_resource:	?
identity??$lstm_cell_291/BiasAdd/ReadVariableOp?#lstm_cell_291/MatMul/ReadVariableOp?%lstm_cell_291/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_291/MatMul/ReadVariableOpReadVariableOp,lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_291/MatMulMatMulstrided_slice_2:output:0+lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_291/MatMul_1MatMulzeros:output:0-lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_291/addAddV2lstm_cell_291/MatMul:product:0 lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_291/BiasAddBiasAddlstm_cell_291/add:z:0,lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_291/splitSplit&lstm_cell_291/split/split_dim:output:0lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_291/SigmoidSigmoidlstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_1Sigmoidlstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_291/mulMullstm_cell_291/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_291/ReluRelulstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_1Mullstm_cell_291/Sigmoid:y:0 lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_291/add_1AddV2lstm_cell_291/mul:z:0lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_2Sigmoidlstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_291/Relu_1Relulstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_2Mullstm_cell_291/Sigmoid_2:y:0"lstm_cell_291/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_291_matmul_readvariableop_resource.lstm_cell_291_matmul_1_readvariableop_resource-lstm_cell_291_biasadd_readvariableop_resource*
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
while_body_1775951*
condR
while_cond_1775950*K
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
NoOpNoOp%^lstm_cell_291/BiasAdd/ReadVariableOp$^lstm_cell_291/MatMul/ReadVariableOp&^lstm_cell_291/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_291/BiasAdd/ReadVariableOp$lstm_cell_291/BiasAdd/ReadVariableOp2J
#lstm_cell_291/MatMul/ReadVariableOp#lstm_cell_291/MatMul/ReadVariableOp2N
%lstm_cell_291/MatMul_1/ReadVariableOp%lstm_cell_291/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_466_while_cond_1775618.
*lstm_466_while_lstm_466_while_loop_counter4
0lstm_466_while_lstm_466_while_maximum_iterations
lstm_466_while_placeholder 
lstm_466_while_placeholder_1 
lstm_466_while_placeholder_2 
lstm_466_while_placeholder_30
,lstm_466_while_less_lstm_466_strided_slice_1G
Clstm_466_while_lstm_466_while_cond_1775618___redundant_placeholder0G
Clstm_466_while_lstm_466_while_cond_1775618___redundant_placeholder1G
Clstm_466_while_lstm_466_while_cond_1775618___redundant_placeholder2G
Clstm_466_while_lstm_466_while_cond_1775618___redundant_placeholder3
lstm_466_while_identity
?
lstm_466/while/LessLesslstm_466_while_placeholder,lstm_466_while_less_lstm_466_strided_slice_1*
T0*
_output_shapes
: ]
lstm_466/while/IdentityIdentitylstm_466/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_466_while_identity lstm_466/while/Identity:output:0*(
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777267
inputs_0>
,lstm_cell_293_matmul_readvariableop_resource:2(@
.lstm_cell_293_matmul_1_readvariableop_resource:
(;
-lstm_cell_293_biasadd_readvariableop_resource:(
identity??$lstm_cell_293/BiasAdd/ReadVariableOp?#lstm_cell_293/MatMul/ReadVariableOp?%lstm_cell_293/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_293/MatMul/ReadVariableOpReadVariableOp,lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_293/MatMulMatMulstrided_slice_2:output:0+lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_293/MatMul_1MatMulzeros:output:0-lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_293/addAddV2lstm_cell_293/MatMul:product:0 lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_293/BiasAddBiasAddlstm_cell_293/add:z:0,lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_293/splitSplit&lstm_cell_293/split/split_dim:output:0lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_293/SigmoidSigmoidlstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_1Sigmoidlstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_293/mulMullstm_cell_293/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_293/ReluRelulstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_1Mullstm_cell_293/Sigmoid:y:0 lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_293/add_1AddV2lstm_cell_293/mul:z:0lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_2Sigmoidlstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_293/Relu_1Relulstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_2Mullstm_cell_293/Sigmoid_2:y:0"lstm_cell_293/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_293_matmul_readvariableop_resource.lstm_cell_293_matmul_1_readvariableop_resource-lstm_cell_293_biasadd_readvariableop_resource*
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
while_body_1777183*
condR
while_cond_1777182*K
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
NoOpNoOp%^lstm_cell_293/BiasAdd/ReadVariableOp$^lstm_cell_293/MatMul/ReadVariableOp&^lstm_cell_293/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_293/BiasAdd/ReadVariableOp$lstm_cell_293/BiasAdd/ReadVariableOp2J
#lstm_cell_293/MatMul/ReadVariableOp#lstm_cell_293/MatMul/ReadVariableOp2N
%lstm_cell_293/MatMul_1/ReadVariableOp%lstm_cell_293/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1777326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_293_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_293_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_293_matmul_readvariableop_resource:2(F
4while_lstm_cell_293_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_293_biasadd_readvariableop_resource:(??*while/lstm_cell_293/BiasAdd/ReadVariableOp?)while/lstm_cell_293/MatMul/ReadVariableOp?+while/lstm_cell_293/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_293/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_293/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_293/addAddV2$while/lstm_cell_293/MatMul:product:0&while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_293/BiasAddBiasAddwhile/lstm_cell_293/add:z:02while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_293/splitSplit,while/lstm_cell_293/split/split_dim:output:0$while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_293/SigmoidSigmoid"while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_1Sigmoid"while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mulMul!while/lstm_cell_293/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_293/ReluRelu"while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_1Mulwhile/lstm_cell_293/Sigmoid:y:0&while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/add_1AddV2while/lstm_cell_293/mul:z:0while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_2Sigmoid"while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_293/Relu_1Reluwhile/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_2Mul!while/lstm_cell_293/Sigmoid_2:y:0(while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_293/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_293/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_293/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_293/BiasAdd/ReadVariableOp*^while/lstm_cell_293/MatMul/ReadVariableOp,^while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_293_biasadd_readvariableop_resource5while_lstm_cell_293_biasadd_readvariableop_resource_0"n
4while_lstm_cell_293_matmul_1_readvariableop_resource6while_lstm_cell_293_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_293_matmul_readvariableop_resource4while_lstm_cell_293_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_293/BiasAdd/ReadVariableOp*while/lstm_cell_293/BiasAdd/ReadVariableOp2V
)while/lstm_cell_293/MatMul/ReadVariableOp)while/lstm_cell_293/MatMul/ReadVariableOp2Z
+while/lstm_cell_293/MatMul_1/ReadVariableOp+while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1773110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1773110___redundant_placeholder05
1while_while_cond_1773110___redundant_placeholder15
1while_while_cond_1773110___redundant_placeholder25
1while_while_cond_1773110___redundant_placeholder3
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
while_cond_1772951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1772951___redundant_placeholder05
1while_while_cond_1772951___redundant_placeholder15
1while_while_cond_1772951___redundant_placeholder25
1while_while_cond_1772951___redundant_placeholder3
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
/__inference_lstm_cell_292_layer_call_fn_1777830

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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773097o
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
?
while_body_1775951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_291_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_291_matmul_readvariableop_resource:	?G
4while_lstm_cell_291_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_291_biasadd_readvariableop_resource:	???*while/lstm_cell_291/BiasAdd/ReadVariableOp?)while/lstm_cell_291/MatMul/ReadVariableOp?+while/lstm_cell_291/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_291/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_291/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_291/addAddV2$while/lstm_cell_291/MatMul:product:0&while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_291/BiasAddBiasAddwhile/lstm_cell_291/add:z:02while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_291/splitSplit,while/lstm_cell_291/split/split_dim:output:0$while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_291/SigmoidSigmoid"while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_1Sigmoid"while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mulMul!while/lstm_cell_291/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_291/ReluRelu"while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_1Mulwhile/lstm_cell_291/Sigmoid:y:0&while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/add_1AddV2while/lstm_cell_291/mul:z:0while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_2Sigmoid"while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_291/Relu_1Reluwhile/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_2Mul!while/lstm_cell_291/Sigmoid_2:y:0(while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_291/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_291/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_291/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_291/BiasAdd/ReadVariableOp*^while/lstm_cell_291/MatMul/ReadVariableOp,^while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_291_biasadd_readvariableop_resource5while_lstm_cell_291_biasadd_readvariableop_resource_0"n
4while_lstm_cell_291_matmul_1_readvariableop_resource6while_lstm_cell_291_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_291_matmul_readvariableop_resource4while_lstm_cell_291_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_291/BiasAdd/ReadVariableOp*while/lstm_cell_291/BiasAdd/ReadVariableOp2V
)while/lstm_cell_291/MatMul/ReadVariableOp)while/lstm_cell_291/MatMul/ReadVariableOp2Z
+while/lstm_cell_291/MatMul_1/ReadVariableOp+while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1774641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_291_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_291_matmul_readvariableop_resource:	?G
4while_lstm_cell_291_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_291_biasadd_readvariableop_resource:	???*while/lstm_cell_291/BiasAdd/ReadVariableOp?)while/lstm_cell_291/MatMul/ReadVariableOp?+while/lstm_cell_291/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_291/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_291/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_291/addAddV2$while/lstm_cell_291/MatMul:product:0&while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_291/BiasAddBiasAddwhile/lstm_cell_291/add:z:02while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_291/splitSplit,while/lstm_cell_291/split/split_dim:output:0$while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_291/SigmoidSigmoid"while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_1Sigmoid"while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mulMul!while/lstm_cell_291/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_291/ReluRelu"while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_1Mulwhile/lstm_cell_291/Sigmoid:y:0&while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/add_1AddV2while/lstm_cell_291/mul:z:0while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_2Sigmoid"while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_291/Relu_1Reluwhile/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_2Mul!while/lstm_cell_291/Sigmoid_2:y:0(while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_291/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_291/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_291/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_291/BiasAdd/ReadVariableOp*^while/lstm_cell_291/MatMul/ReadVariableOp,^while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_291_biasadd_readvariableop_resource5while_lstm_cell_291_biasadd_readvariableop_resource_0"n
4while_lstm_cell_291_matmul_1_readvariableop_resource6while_lstm_cell_291_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_291_matmul_readvariableop_resource4while_lstm_cell_291_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_291/BiasAdd/ReadVariableOp*while/lstm_cell_291/BiasAdd/ReadVariableOp2V
)while/lstm_cell_291/MatMul/ReadVariableOp)while/lstm_cell_291/MatMul/ReadVariableOp2Z
+while/lstm_cell_291/MatMul_1/ReadVariableOp+while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_466_layer_call_fn_1776497

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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774029s
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
?J
?
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776464

inputs?
,lstm_cell_291_matmul_readvariableop_resource:	?A
.lstm_cell_291_matmul_1_readvariableop_resource:	d?<
-lstm_cell_291_biasadd_readvariableop_resource:	?
identity??$lstm_cell_291/BiasAdd/ReadVariableOp?#lstm_cell_291/MatMul/ReadVariableOp?%lstm_cell_291/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_291/MatMul/ReadVariableOpReadVariableOp,lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_291/MatMulMatMulstrided_slice_2:output:0+lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_291/MatMul_1MatMulzeros:output:0-lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_291/addAddV2lstm_cell_291/MatMul:product:0 lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_291/BiasAddBiasAddlstm_cell_291/add:z:0,lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_291/splitSplit&lstm_cell_291/split/split_dim:output:0lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_291/SigmoidSigmoidlstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_1Sigmoidlstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_291/mulMullstm_cell_291/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_291/ReluRelulstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_1Mullstm_cell_291/Sigmoid:y:0 lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_291/add_1AddV2lstm_cell_291/mul:z:0lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_2Sigmoidlstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_291/Relu_1Relulstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_2Mullstm_cell_291/Sigmoid_2:y:0"lstm_cell_291/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_291_matmul_readvariableop_resource.lstm_cell_291_matmul_1_readvariableop_resource-lstm_cell_291_biasadd_readvariableop_resource*
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
while_body_1776380*
condR
while_cond_1776379*K
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
NoOpNoOp%^lstm_cell_291/BiasAdd/ReadVariableOp$^lstm_cell_291/MatMul/ReadVariableOp&^lstm_cell_291/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_291/BiasAdd/ReadVariableOp$lstm_cell_291/BiasAdd/ReadVariableOp2J
#lstm_cell_291/MatMul/ReadVariableOp#lstm_cell_291/MatMul/ReadVariableOp2N
%lstm_cell_291/MatMul_1/ReadVariableOp%lstm_cell_291/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_155_layer_call_fn_1774994

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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774793o
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
*sequential_155_lstm_465_while_cond_1772311L
Hsequential_155_lstm_465_while_sequential_155_lstm_465_while_loop_counterR
Nsequential_155_lstm_465_while_sequential_155_lstm_465_while_maximum_iterations-
)sequential_155_lstm_465_while_placeholder/
+sequential_155_lstm_465_while_placeholder_1/
+sequential_155_lstm_465_while_placeholder_2/
+sequential_155_lstm_465_while_placeholder_3N
Jsequential_155_lstm_465_while_less_sequential_155_lstm_465_strided_slice_1e
asequential_155_lstm_465_while_sequential_155_lstm_465_while_cond_1772311___redundant_placeholder0e
asequential_155_lstm_465_while_sequential_155_lstm_465_while_cond_1772311___redundant_placeholder1e
asequential_155_lstm_465_while_sequential_155_lstm_465_while_cond_1772311___redundant_placeholder2e
asequential_155_lstm_465_while_sequential_155_lstm_465_while_cond_1772311___redundant_placeholder3*
&sequential_155_lstm_465_while_identity
?
"sequential_155/lstm_465/while/LessLess)sequential_155_lstm_465_while_placeholderJsequential_155_lstm_465_while_less_sequential_155_lstm_465_strided_slice_1*
T0*
_output_shapes
: {
&sequential_155/lstm_465/while/IdentityIdentity&sequential_155/lstm_465/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_155_lstm_465_while_identity/sequential_155/lstm_465/while/Identity:output:0*(
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
*__inference_lstm_466_layer_call_fn_1776508

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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774560s
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
?J
?
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776937

inputs?
,lstm_cell_292_matmul_readvariableop_resource:	d?A
.lstm_cell_292_matmul_1_readvariableop_resource:	2?<
-lstm_cell_292_biasadd_readvariableop_resource:	?
identity??$lstm_cell_292/BiasAdd/ReadVariableOp?#lstm_cell_292/MatMul/ReadVariableOp?%lstm_cell_292/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_292/MatMul/ReadVariableOpReadVariableOp,lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_292/MatMulMatMulstrided_slice_2:output:0+lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_292/MatMul_1MatMulzeros:output:0-lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_292/addAddV2lstm_cell_292/MatMul:product:0 lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_292/BiasAddBiasAddlstm_cell_292/add:z:0,lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_292/splitSplit&lstm_cell_292/split/split_dim:output:0lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_292/SigmoidSigmoidlstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_1Sigmoidlstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_292/mulMullstm_cell_292/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_292/ReluRelulstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_1Mullstm_cell_292/Sigmoid:y:0 lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_292/add_1AddV2lstm_cell_292/mul:z:0lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_2Sigmoidlstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_292/Relu_1Relulstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_2Mullstm_cell_292/Sigmoid_2:y:0"lstm_cell_292/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_292_matmul_readvariableop_resource.lstm_cell_292_matmul_1_readvariableop_resource-lstm_cell_292_biasadd_readvariableop_resource*
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
while_body_1776853*
condR
while_cond_1776852*K
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
NoOpNoOp%^lstm_cell_292/BiasAdd/ReadVariableOp$^lstm_cell_292/MatMul/ReadVariableOp&^lstm_cell_292/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_292/BiasAdd/ReadVariableOp$lstm_cell_292/BiasAdd/ReadVariableOp2J
#lstm_cell_292/MatMul/ReadVariableOp#lstm_cell_292/MatMul/ReadVariableOp2N
%lstm_cell_292/MatMul_1/ReadVariableOp%lstm_cell_292/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_155_lstm_467_while_cond_1772589L
Hsequential_155_lstm_467_while_sequential_155_lstm_467_while_loop_counterR
Nsequential_155_lstm_467_while_sequential_155_lstm_467_while_maximum_iterations-
)sequential_155_lstm_467_while_placeholder/
+sequential_155_lstm_467_while_placeholder_1/
+sequential_155_lstm_467_while_placeholder_2/
+sequential_155_lstm_467_while_placeholder_3N
Jsequential_155_lstm_467_while_less_sequential_155_lstm_467_strided_slice_1e
asequential_155_lstm_467_while_sequential_155_lstm_467_while_cond_1772589___redundant_placeholder0e
asequential_155_lstm_467_while_sequential_155_lstm_467_while_cond_1772589___redundant_placeholder1e
asequential_155_lstm_467_while_sequential_155_lstm_467_while_cond_1772589___redundant_placeholder2e
asequential_155_lstm_467_while_sequential_155_lstm_467_while_cond_1772589___redundant_placeholder3*
&sequential_155_lstm_467_while_identity
?
"sequential_155/lstm_467/while/LessLess)sequential_155_lstm_467_while_placeholderJsequential_155_lstm_467_while_less_sequential_155_lstm_467_strided_slice_1*
T0*
_output_shapes
: {
&sequential_155/lstm_467/while/IdentityIdentity&sequential_155/lstm_467/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_155_lstm_467_while_identity/sequential_155/lstm_467/while/Identity:output:0*(
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
*__inference_lstm_467_layer_call_fn_1777124

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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774395o
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
?
F__inference_dense_155_layer_call_and_return_conditional_losses_1774197

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
?
?
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1777911

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

lstm_465_while_body_1775480.
*lstm_465_while_lstm_465_while_loop_counter4
0lstm_465_while_lstm_465_while_maximum_iterations
lstm_465_while_placeholder 
lstm_465_while_placeholder_1 
lstm_465_while_placeholder_2 
lstm_465_while_placeholder_3-
)lstm_465_while_lstm_465_strided_slice_1_0i
elstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0:	?R
?lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?M
>lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
lstm_465_while_identity
lstm_465_while_identity_1
lstm_465_while_identity_2
lstm_465_while_identity_3
lstm_465_while_identity_4
lstm_465_while_identity_5+
'lstm_465_while_lstm_465_strided_slice_1g
clstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensorN
;lstm_465_while_lstm_cell_291_matmul_readvariableop_resource:	?P
=lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource:	d?K
<lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource:	???3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp?2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp?4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp?
@lstm_465/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_465/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensor_0lstm_465_while_placeholderIlstm_465/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp=lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_465/while/lstm_cell_291/MatMulMatMul9lstm_465/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp?lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_465/while/lstm_cell_291/MatMul_1MatMullstm_465_while_placeholder_2<lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_465/while/lstm_cell_291/addAddV2-lstm_465/while/lstm_cell_291/MatMul:product:0/lstm_465/while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp>lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_465/while/lstm_cell_291/BiasAddBiasAdd$lstm_465/while/lstm_cell_291/add:z:0;lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_465/while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_465/while/lstm_cell_291/splitSplit5lstm_465/while/lstm_cell_291/split/split_dim:output:0-lstm_465/while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_465/while/lstm_cell_291/SigmoidSigmoid+lstm_465/while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_465/while/lstm_cell_291/Sigmoid_1Sigmoid+lstm_465/while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_465/while/lstm_cell_291/mulMul*lstm_465/while/lstm_cell_291/Sigmoid_1:y:0lstm_465_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_465/while/lstm_cell_291/ReluRelu+lstm_465/while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_465/while/lstm_cell_291/mul_1Mul(lstm_465/while/lstm_cell_291/Sigmoid:y:0/lstm_465/while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_465/while/lstm_cell_291/add_1AddV2$lstm_465/while/lstm_cell_291/mul:z:0&lstm_465/while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_465/while/lstm_cell_291/Sigmoid_2Sigmoid+lstm_465/while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_465/while/lstm_cell_291/Relu_1Relu&lstm_465/while/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_465/while/lstm_cell_291/mul_2Mul*lstm_465/while/lstm_cell_291/Sigmoid_2:y:01lstm_465/while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_465/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_465_while_placeholder_1lstm_465_while_placeholder&lstm_465/while/lstm_cell_291/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_465/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_465/while/addAddV2lstm_465_while_placeholderlstm_465/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_465/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_465/while/add_1AddV2*lstm_465_while_lstm_465_while_loop_counterlstm_465/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_465/while/IdentityIdentitylstm_465/while/add_1:z:0^lstm_465/while/NoOp*
T0*
_output_shapes
: ?
lstm_465/while/Identity_1Identity0lstm_465_while_lstm_465_while_maximum_iterations^lstm_465/while/NoOp*
T0*
_output_shapes
: t
lstm_465/while/Identity_2Identitylstm_465/while/add:z:0^lstm_465/while/NoOp*
T0*
_output_shapes
: ?
lstm_465/while/Identity_3IdentityClstm_465/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_465/while/NoOp*
T0*
_output_shapes
: ?
lstm_465/while/Identity_4Identity&lstm_465/while/lstm_cell_291/mul_2:z:0^lstm_465/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_465/while/Identity_5Identity&lstm_465/while/lstm_cell_291/add_1:z:0^lstm_465/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_465/while/NoOpNoOp4^lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp3^lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp5^lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_465_while_identity lstm_465/while/Identity:output:0"?
lstm_465_while_identity_1"lstm_465/while/Identity_1:output:0"?
lstm_465_while_identity_2"lstm_465/while/Identity_2:output:0"?
lstm_465_while_identity_3"lstm_465/while/Identity_3:output:0"?
lstm_465_while_identity_4"lstm_465/while/Identity_4:output:0"?
lstm_465_while_identity_5"lstm_465/while/Identity_5:output:0"T
'lstm_465_while_lstm_465_strided_slice_1)lstm_465_while_lstm_465_strided_slice_1_0"~
<lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource>lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0"?
=lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource?lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0"|
;lstm_465_while_lstm_cell_291_matmul_readvariableop_resource=lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0"?
clstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensorelstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp2h
2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp2l
4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1777612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_293_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_293_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_293_matmul_readvariableop_resource:2(F
4while_lstm_cell_293_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_293_biasadd_readvariableop_resource:(??*while/lstm_cell_293/BiasAdd/ReadVariableOp?)while/lstm_cell_293/MatMul/ReadVariableOp?+while/lstm_cell_293/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_293/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_293/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_293/addAddV2$while/lstm_cell_293/MatMul:product:0&while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_293/BiasAddBiasAddwhile/lstm_cell_293/add:z:02while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_293/splitSplit,while/lstm_cell_293/split/split_dim:output:0$while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_293/SigmoidSigmoid"while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_1Sigmoid"while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mulMul!while/lstm_cell_293/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_293/ReluRelu"while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_1Mulwhile/lstm_cell_293/Sigmoid:y:0&while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/add_1AddV2while/lstm_cell_293/mul:z:0while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_2Sigmoid"while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_293/Relu_1Reluwhile/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_2Mul!while/lstm_cell_293/Sigmoid_2:y:0(while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_293/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_293/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_293/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_293/BiasAdd/ReadVariableOp*^while/lstm_cell_293/MatMul/ReadVariableOp,^while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_293_biasadd_readvariableop_resource5while_lstm_cell_293_biasadd_readvariableop_resource_0"n
4while_lstm_cell_293_matmul_1_readvariableop_resource6while_lstm_cell_293_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_293_matmul_readvariableop_resource4while_lstm_cell_293_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_293/BiasAdd/ReadVariableOp*while/lstm_cell_293/BiasAdd/ReadVariableOp2V
)while/lstm_cell_293/MatMul/ReadVariableOp)while/lstm_cell_293/MatMul/ReadVariableOp2Z
+while/lstm_cell_293/MatMul_1/ReadVariableOp+while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_467_while_cond_1775757.
*lstm_467_while_lstm_467_while_loop_counter4
0lstm_467_while_lstm_467_while_maximum_iterations
lstm_467_while_placeholder 
lstm_467_while_placeholder_1 
lstm_467_while_placeholder_2 
lstm_467_while_placeholder_30
,lstm_467_while_less_lstm_467_strided_slice_1G
Clstm_467_while_lstm_467_while_cond_1775757___redundant_placeholder0G
Clstm_467_while_lstm_467_while_cond_1775757___redundant_placeholder1G
Clstm_467_while_lstm_467_while_cond_1775757___redundant_placeholder2G
Clstm_467_while_lstm_467_while_cond_1775757___redundant_placeholder3
lstm_467_while_identity
?
lstm_467/while/LessLesslstm_467_while_placeholder,lstm_467_while_less_lstm_467_strided_slice_1*
T0*
_output_shapes
: ]
lstm_467/while/IdentityIdentitylstm_467/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_467_while_identity lstm_467/while/Identity:output:0*(
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
F__inference_dense_155_layer_call_and_return_conditional_losses_1777715

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
while_body_1773795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_291_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_291_matmul_readvariableop_resource:	?G
4while_lstm_cell_291_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_291_biasadd_readvariableop_resource:	???*while/lstm_cell_291/BiasAdd/ReadVariableOp?)while/lstm_cell_291/MatMul/ReadVariableOp?+while/lstm_cell_291/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_291/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_291/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_291/addAddV2$while/lstm_cell_291/MatMul:product:0&while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_291/BiasAddBiasAddwhile/lstm_cell_291/add:z:02while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_291/splitSplit,while/lstm_cell_291/split/split_dim:output:0$while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_291/SigmoidSigmoid"while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_1Sigmoid"while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mulMul!while/lstm_cell_291/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_291/ReluRelu"while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_1Mulwhile/lstm_cell_291/Sigmoid:y:0&while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/add_1AddV2while/lstm_cell_291/mul:z:0while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_2Sigmoid"while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_291/Relu_1Reluwhile/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_2Mul!while/lstm_cell_291/Sigmoid_2:y:0(while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_291/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_291/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_291/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_291/BiasAdd/ReadVariableOp*^while/lstm_cell_291/MatMul/ReadVariableOp,^while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_291_biasadd_readvariableop_resource5while_lstm_cell_291_biasadd_readvariableop_resource_0"n
4while_lstm_cell_291_matmul_1_readvariableop_resource6while_lstm_cell_291_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_291_matmul_readvariableop_resource4while_lstm_cell_291_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_291/BiasAdd/ReadVariableOp*while/lstm_cell_291/BiasAdd/ReadVariableOp2V
)while/lstm_cell_291/MatMul/ReadVariableOp)while/lstm_cell_291/MatMul/ReadVariableOp2Z
+while/lstm_cell_291/MatMul_1/ReadVariableOp+while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_293_layer_call_fn_1777945

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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773593o
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
?
/__inference_lstm_cell_291_layer_call_fn_1777732

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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772747o
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774029

inputs?
,lstm_cell_292_matmul_readvariableop_resource:	d?A
.lstm_cell_292_matmul_1_readvariableop_resource:	2?<
-lstm_cell_292_biasadd_readvariableop_resource:	?
identity??$lstm_cell_292/BiasAdd/ReadVariableOp?#lstm_cell_292/MatMul/ReadVariableOp?%lstm_cell_292/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_292/MatMul/ReadVariableOpReadVariableOp,lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_292/MatMulMatMulstrided_slice_2:output:0+lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_292/MatMul_1MatMulzeros:output:0-lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_292/addAddV2lstm_cell_292/MatMul:product:0 lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_292/BiasAddBiasAddlstm_cell_292/add:z:0,lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_292/splitSplit&lstm_cell_292/split/split_dim:output:0lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_292/SigmoidSigmoidlstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_1Sigmoidlstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_292/mulMullstm_cell_292/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_292/ReluRelulstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_1Mullstm_cell_292/Sigmoid:y:0 lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_292/add_1AddV2lstm_cell_292/mul:z:0lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_2Sigmoidlstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_292/Relu_1Relulstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_2Mullstm_cell_292/Sigmoid_2:y:0"lstm_cell_292/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_292_matmul_readvariableop_resource.lstm_cell_292_matmul_1_readvariableop_resource-lstm_cell_292_biasadd_readvariableop_resource*
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
while_body_1773945*
condR
while_cond_1773944*K
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
NoOpNoOp%^lstm_cell_292/BiasAdd/ReadVariableOp$^lstm_cell_292/MatMul/ReadVariableOp&^lstm_cell_292/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_292/BiasAdd/ReadVariableOp$lstm_cell_292/BiasAdd/ReadVariableOp2J
#lstm_cell_292/MatMul/ReadVariableOp#lstm_cell_292/MatMul/ReadVariableOp2N
%lstm_cell_292/MatMul_1/ReadVariableOp%lstm_cell_292/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_467_while_cond_1775330.
*lstm_467_while_lstm_467_while_loop_counter4
0lstm_467_while_lstm_467_while_maximum_iterations
lstm_467_while_placeholder 
lstm_467_while_placeholder_1 
lstm_467_while_placeholder_2 
lstm_467_while_placeholder_30
,lstm_467_while_less_lstm_467_strided_slice_1G
Clstm_467_while_lstm_467_while_cond_1775330___redundant_placeholder0G
Clstm_467_while_lstm_467_while_cond_1775330___redundant_placeholder1G
Clstm_467_while_lstm_467_while_cond_1775330___redundant_placeholder2G
Clstm_467_while_lstm_467_while_cond_1775330___redundant_placeholder3
lstm_467_while_identity
?
lstm_467/while/LessLesslstm_467_while_placeholder,lstm_467_while_less_lstm_467_strided_slice_1*
T0*
_output_shapes
: ]
lstm_467/while/IdentityIdentitylstm_467/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_467_while_identity lstm_467/while/Identity:output:0*(
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777553

inputs>
,lstm_cell_293_matmul_readvariableop_resource:2(@
.lstm_cell_293_matmul_1_readvariableop_resource:
(;
-lstm_cell_293_biasadd_readvariableop_resource:(
identity??$lstm_cell_293/BiasAdd/ReadVariableOp?#lstm_cell_293/MatMul/ReadVariableOp?%lstm_cell_293/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_293/MatMul/ReadVariableOpReadVariableOp,lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_293/MatMulMatMulstrided_slice_2:output:0+lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_293/MatMul_1MatMulzeros:output:0-lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_293/addAddV2lstm_cell_293/MatMul:product:0 lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_293/BiasAddBiasAddlstm_cell_293/add:z:0,lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_293/splitSplit&lstm_cell_293/split/split_dim:output:0lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_293/SigmoidSigmoidlstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_1Sigmoidlstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_293/mulMullstm_cell_293/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_293/ReluRelulstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_1Mullstm_cell_293/Sigmoid:y:0 lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_293/add_1AddV2lstm_cell_293/mul:z:0lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_2Sigmoidlstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_293/Relu_1Relulstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_2Mullstm_cell_293/Sigmoid_2:y:0"lstm_cell_293/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_293_matmul_readvariableop_resource.lstm_cell_293_matmul_1_readvariableop_resource-lstm_cell_293_biasadd_readvariableop_resource*
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
while_body_1777469*
condR
while_cond_1777468*K
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
NoOpNoOp%^lstm_cell_293/BiasAdd/ReadVariableOp$^lstm_cell_293/MatMul/ReadVariableOp&^lstm_cell_293/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_293/BiasAdd/ReadVariableOp$lstm_cell_293/BiasAdd/ReadVariableOp2J
#lstm_cell_293/MatMul/ReadVariableOp#lstm_cell_293/MatMul/ReadVariableOp2N
%lstm_cell_293/MatMul_1/ReadVariableOp%lstm_cell_293/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_466_layer_call_and_return_conditional_losses_1773180

inputs(
lstm_cell_292_1773098:	d?(
lstm_cell_292_1773100:	2?$
lstm_cell_292_1773102:	?
identity??%lstm_cell_292/StatefulPartitionedCall?while;
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
%lstm_cell_292/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_292_1773098lstm_cell_292_1773100lstm_cell_292_1773102*
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773097n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_292_1773098lstm_cell_292_1773100lstm_cell_292_1773102*
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
while_body_1773111*
condR
while_cond_1773110*K
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
NoOpNoOp&^lstm_cell_292/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_292/StatefulPartitionedCall%lstm_cell_292/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_465_layer_call_and_return_conditional_losses_1773021

inputs(
lstm_cell_291_1772939:	?(
lstm_cell_291_1772941:	d?$
lstm_cell_291_1772943:	?
identity??%lstm_cell_291/StatefulPartitionedCall?while;
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
%lstm_cell_291/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_291_1772939lstm_cell_291_1772941lstm_cell_291_1772943*
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772893n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_291_1772939lstm_cell_291_1772941lstm_cell_291_1772943*
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
while_body_1772952*
condR
while_cond_1772951*K
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
NoOpNoOp&^lstm_cell_291/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_291/StatefulPartitionedCall%lstm_cell_291/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1776995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1776995___redundant_placeholder05
1while_while_cond_1776995___redundant_placeholder15
1while_while_cond_1776995___redundant_placeholder25
1while_while_cond_1776995___redundant_placeholder3
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
*__inference_lstm_465_layer_call_fn_1775870
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1773021|
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
while_cond_1777611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1777611___redundant_placeholder05
1while_while_cond_1777611___redundant_placeholder15
1while_while_cond_1777611___redundant_placeholder25
1while_while_cond_1777611___redundant_placeholder3
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
while_cond_1773460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1773460___redundant_placeholder05
1while_while_cond_1773460___redundant_placeholder15
1while_while_cond_1773460___redundant_placeholder25
1while_while_cond_1773460___redundant_placeholder3
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
*__inference_lstm_467_layer_call_fn_1777113

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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774179o
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774179

inputs>
,lstm_cell_293_matmul_readvariableop_resource:2(@
.lstm_cell_293_matmul_1_readvariableop_resource:
(;
-lstm_cell_293_biasadd_readvariableop_resource:(
identity??$lstm_cell_293/BiasAdd/ReadVariableOp?#lstm_cell_293/MatMul/ReadVariableOp?%lstm_cell_293/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_293/MatMul/ReadVariableOpReadVariableOp,lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_293/MatMulMatMulstrided_slice_2:output:0+lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_293/MatMul_1MatMulzeros:output:0-lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_293/addAddV2lstm_cell_293/MatMul:product:0 lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_293/BiasAddBiasAddlstm_cell_293/add:z:0,lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_293/splitSplit&lstm_cell_293/split/split_dim:output:0lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_293/SigmoidSigmoidlstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_1Sigmoidlstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_293/mulMullstm_cell_293/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_293/ReluRelulstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_1Mullstm_cell_293/Sigmoid:y:0 lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_293/add_1AddV2lstm_cell_293/mul:z:0lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_2Sigmoidlstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_293/Relu_1Relulstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_2Mullstm_cell_293/Sigmoid_2:y:0"lstm_cell_293/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_293_matmul_readvariableop_resource.lstm_cell_293_matmul_1_readvariableop_resource-lstm_cell_293_biasadd_readvariableop_resource*
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
while_body_1774095*
condR
while_cond_1774094*K
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
NoOpNoOp%^lstm_cell_293/BiasAdd/ReadVariableOp$^lstm_cell_293/MatMul/ReadVariableOp&^lstm_cell_293/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_293/BiasAdd/ReadVariableOp$lstm_cell_293/BiasAdd/ReadVariableOp2J
#lstm_cell_293/MatMul/ReadVariableOp#lstm_cell_293/MatMul/ReadVariableOp2N
%lstm_cell_293/MatMul_1/ReadVariableOp%lstm_cell_293/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1777468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1777468___redundant_placeholder05
1while_while_cond_1777468___redundant_placeholder15
1while_while_cond_1777468___redundant_placeholder25
1while_while_cond_1777468___redundant_placeholder3
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
*sequential_155_lstm_466_while_body_1772451L
Hsequential_155_lstm_466_while_sequential_155_lstm_466_while_loop_counterR
Nsequential_155_lstm_466_while_sequential_155_lstm_466_while_maximum_iterations-
)sequential_155_lstm_466_while_placeholder/
+sequential_155_lstm_466_while_placeholder_1/
+sequential_155_lstm_466_while_placeholder_2/
+sequential_155_lstm_466_while_placeholder_3K
Gsequential_155_lstm_466_while_sequential_155_lstm_466_strided_slice_1_0?
?sequential_155_lstm_466_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_466_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_155_lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0:	d?a
Nsequential_155_lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?\
Msequential_155_lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0:	?*
&sequential_155_lstm_466_while_identity,
(sequential_155_lstm_466_while_identity_1,
(sequential_155_lstm_466_while_identity_2,
(sequential_155_lstm_466_while_identity_3,
(sequential_155_lstm_466_while_identity_4,
(sequential_155_lstm_466_while_identity_5I
Esequential_155_lstm_466_while_sequential_155_lstm_466_strided_slice_1?
?sequential_155_lstm_466_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_466_tensorarrayunstack_tensorlistfromtensor]
Jsequential_155_lstm_466_while_lstm_cell_292_matmul_readvariableop_resource:	d?_
Lsequential_155_lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource:	2?Z
Ksequential_155_lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource:	???Bsequential_155/lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp?Asequential_155/lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp?Csequential_155/lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp?
Osequential_155/lstm_466/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_155/lstm_466/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_155_lstm_466_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_466_tensorarrayunstack_tensorlistfromtensor_0)sequential_155_lstm_466_while_placeholderXsequential_155/lstm_466/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_155/lstm_466/while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOpLsequential_155_lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_155/lstm_466/while/lstm_cell_292/MatMulMatMulHsequential_155/lstm_466/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_155/lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_155/lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOpNsequential_155_lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_155/lstm_466/while/lstm_cell_292/MatMul_1MatMul+sequential_155_lstm_466_while_placeholder_2Ksequential_155/lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_155/lstm_466/while/lstm_cell_292/addAddV2<sequential_155/lstm_466/while/lstm_cell_292/MatMul:product:0>sequential_155/lstm_466/while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_155/lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOpMsequential_155_lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_155/lstm_466/while/lstm_cell_292/BiasAddBiasAdd3sequential_155/lstm_466/while/lstm_cell_292/add:z:0Jsequential_155/lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_155/lstm_466/while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_155/lstm_466/while/lstm_cell_292/splitSplitDsequential_155/lstm_466/while/lstm_cell_292/split/split_dim:output:0<sequential_155/lstm_466/while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_155/lstm_466/while/lstm_cell_292/SigmoidSigmoid:sequential_155/lstm_466/while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_155/lstm_466/while/lstm_cell_292/Sigmoid_1Sigmoid:sequential_155/lstm_466/while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_155/lstm_466/while/lstm_cell_292/mulMul9sequential_155/lstm_466/while/lstm_cell_292/Sigmoid_1:y:0+sequential_155_lstm_466_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_155/lstm_466/while/lstm_cell_292/ReluRelu:sequential_155/lstm_466/while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_155/lstm_466/while/lstm_cell_292/mul_1Mul7sequential_155/lstm_466/while/lstm_cell_292/Sigmoid:y:0>sequential_155/lstm_466/while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_155/lstm_466/while/lstm_cell_292/add_1AddV23sequential_155/lstm_466/while/lstm_cell_292/mul:z:05sequential_155/lstm_466/while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_155/lstm_466/while/lstm_cell_292/Sigmoid_2Sigmoid:sequential_155/lstm_466/while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_155/lstm_466/while/lstm_cell_292/Relu_1Relu5sequential_155/lstm_466/while/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_155/lstm_466/while/lstm_cell_292/mul_2Mul9sequential_155/lstm_466/while/lstm_cell_292/Sigmoid_2:y:0@sequential_155/lstm_466/while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_155/lstm_466/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_155_lstm_466_while_placeholder_1)sequential_155_lstm_466_while_placeholder5sequential_155/lstm_466/while/lstm_cell_292/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_155/lstm_466/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_155/lstm_466/while/addAddV2)sequential_155_lstm_466_while_placeholder,sequential_155/lstm_466/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_155/lstm_466/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_155/lstm_466/while/add_1AddV2Hsequential_155_lstm_466_while_sequential_155_lstm_466_while_loop_counter.sequential_155/lstm_466/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_155/lstm_466/while/IdentityIdentity'sequential_155/lstm_466/while/add_1:z:0#^sequential_155/lstm_466/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_466/while/Identity_1IdentityNsequential_155_lstm_466_while_sequential_155_lstm_466_while_maximum_iterations#^sequential_155/lstm_466/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_466/while/Identity_2Identity%sequential_155/lstm_466/while/add:z:0#^sequential_155/lstm_466/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_466/while/Identity_3IdentityRsequential_155/lstm_466/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_155/lstm_466/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_466/while/Identity_4Identity5sequential_155/lstm_466/while/lstm_cell_292/mul_2:z:0#^sequential_155/lstm_466/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_155/lstm_466/while/Identity_5Identity5sequential_155/lstm_466/while/lstm_cell_292/add_1:z:0#^sequential_155/lstm_466/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_155/lstm_466/while/NoOpNoOpC^sequential_155/lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOpB^sequential_155/lstm_466/while/lstm_cell_292/MatMul/ReadVariableOpD^sequential_155/lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_155_lstm_466_while_identity/sequential_155/lstm_466/while/Identity:output:0"]
(sequential_155_lstm_466_while_identity_11sequential_155/lstm_466/while/Identity_1:output:0"]
(sequential_155_lstm_466_while_identity_21sequential_155/lstm_466/while/Identity_2:output:0"]
(sequential_155_lstm_466_while_identity_31sequential_155/lstm_466/while/Identity_3:output:0"]
(sequential_155_lstm_466_while_identity_41sequential_155/lstm_466/while/Identity_4:output:0"]
(sequential_155_lstm_466_while_identity_51sequential_155/lstm_466/while/Identity_5:output:0"?
Ksequential_155_lstm_466_while_lstm_cell_292_biasadd_readvariableop_resourceMsequential_155_lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0"?
Lsequential_155_lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resourceNsequential_155_lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0"?
Jsequential_155_lstm_466_while_lstm_cell_292_matmul_readvariableop_resourceLsequential_155_lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0"?
Esequential_155_lstm_466_while_sequential_155_lstm_466_strided_slice_1Gsequential_155_lstm_466_while_sequential_155_lstm_466_strided_slice_1_0"?
?sequential_155_lstm_466_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_466_tensorarrayunstack_tensorlistfromtensor?sequential_155_lstm_466_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_466_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_155/lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOpBsequential_155/lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp2?
Asequential_155/lstm_466/while/lstm_cell_292/MatMul/ReadVariableOpAsequential_155/lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp2?
Csequential_155/lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOpCsequential_155/lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_465_while_cond_1775052.
*lstm_465_while_lstm_465_while_loop_counter4
0lstm_465_while_lstm_465_while_maximum_iterations
lstm_465_while_placeholder 
lstm_465_while_placeholder_1 
lstm_465_while_placeholder_2 
lstm_465_while_placeholder_30
,lstm_465_while_less_lstm_465_strided_slice_1G
Clstm_465_while_lstm_465_while_cond_1775052___redundant_placeholder0G
Clstm_465_while_lstm_465_while_cond_1775052___redundant_placeholder1G
Clstm_465_while_lstm_465_while_cond_1775052___redundant_placeholder2G
Clstm_465_while_lstm_465_while_cond_1775052___redundant_placeholder3
lstm_465_while_identity
?
lstm_465/while/LessLesslstm_465_while_placeholder,lstm_465_while_less_lstm_465_strided_slice_1*
T0*
_output_shapes
: ]
lstm_465/while/IdentityIdentitylstm_465/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_465_while_identity lstm_465/while/Identity:output:0*(
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
0__inference_sequential_155_layer_call_fn_1774229
lstm_465_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_465_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774204o
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
_user_specified_namelstm_465_input
?8
?
while_body_1773945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_292_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_292_matmul_readvariableop_resource:	d?G
4while_lstm_cell_292_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_292_biasadd_readvariableop_resource:	???*while/lstm_cell_292/BiasAdd/ReadVariableOp?)while/lstm_cell_292/MatMul/ReadVariableOp?+while/lstm_cell_292/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_292/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_292/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_292/addAddV2$while/lstm_cell_292/MatMul:product:0&while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_292/BiasAddBiasAddwhile/lstm_cell_292/add:z:02while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_292/splitSplit,while/lstm_cell_292/split/split_dim:output:0$while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_292/SigmoidSigmoid"while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_1Sigmoid"while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mulMul!while/lstm_cell_292/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_292/ReluRelu"while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_1Mulwhile/lstm_cell_292/Sigmoid:y:0&while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/add_1AddV2while/lstm_cell_292/mul:z:0while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_2Sigmoid"while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_292/Relu_1Reluwhile/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_2Mul!while/lstm_cell_292/Sigmoid_2:y:0(while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_292/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_292/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_292/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_292/BiasAdd/ReadVariableOp*^while/lstm_cell_292/MatMul/ReadVariableOp,^while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_292_biasadd_readvariableop_resource5while_lstm_cell_292_biasadd_readvariableop_resource_0"n
4while_lstm_cell_292_matmul_1_readvariableop_resource6while_lstm_cell_292_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_292_matmul_readvariableop_resource4while_lstm_cell_292_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_292/BiasAdd/ReadVariableOp*while/lstm_cell_292/BiasAdd/ReadVariableOp2V
)while/lstm_cell_292/MatMul/ReadVariableOp)while/lstm_cell_292/MatMul/ReadVariableOp2Z
+while/lstm_cell_292/MatMul_1/ReadVariableOp+while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1774940
lstm_465_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_465_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1772680o
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
_user_specified_namelstm_465_input
?

?
lstm_465_while_cond_1775479.
*lstm_465_while_lstm_465_while_loop_counter4
0lstm_465_while_lstm_465_while_maximum_iterations
lstm_465_while_placeholder 
lstm_465_while_placeholder_1 
lstm_465_while_placeholder_2 
lstm_465_while_placeholder_30
,lstm_465_while_less_lstm_465_strided_slice_1G
Clstm_465_while_lstm_465_while_cond_1775479___redundant_placeholder0G
Clstm_465_while_lstm_465_while_cond_1775479___redundant_placeholder1G
Clstm_465_while_lstm_465_while_cond_1775479___redundant_placeholder2G
Clstm_465_while_lstm_465_while_cond_1775479___redundant_placeholder3
lstm_465_while_identity
?
lstm_465/while/LessLesslstm_465_while_placeholder,lstm_465_while_less_lstm_465_strided_slice_1*
T0*
_output_shapes
: ]
lstm_465/while/IdentityIdentitylstm_465/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_465_while_identity lstm_465/while/Identity:output:0*(
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
while_body_1773461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_293_1773485_0:2(/
while_lstm_cell_293_1773487_0:
(+
while_lstm_cell_293_1773489_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_293_1773485:2(-
while_lstm_cell_293_1773487:
()
while_lstm_cell_293_1773489:(??+while/lstm_cell_293/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_293/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_293_1773485_0while_lstm_cell_293_1773487_0while_lstm_cell_293_1773489_0*
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773447?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_293/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_293/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_293/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_293_1773485while_lstm_cell_293_1773485_0"<
while_lstm_cell_293_1773487while_lstm_cell_293_1773487_0"<
while_lstm_cell_293_1773489while_lstm_cell_293_1773489_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_293/StatefulPartitionedCall+while/lstm_cell_293/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_465_layer_call_fn_1775881

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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1773879s
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774395

inputs>
,lstm_cell_293_matmul_readvariableop_resource:2(@
.lstm_cell_293_matmul_1_readvariableop_resource:
(;
-lstm_cell_293_biasadd_readvariableop_resource:(
identity??$lstm_cell_293/BiasAdd/ReadVariableOp?#lstm_cell_293/MatMul/ReadVariableOp?%lstm_cell_293/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_293/MatMul/ReadVariableOpReadVariableOp,lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_293/MatMulMatMulstrided_slice_2:output:0+lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_293/MatMul_1MatMulzeros:output:0-lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_293/addAddV2lstm_cell_293/MatMul:product:0 lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_293/BiasAddBiasAddlstm_cell_293/add:z:0,lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_293/splitSplit&lstm_cell_293/split/split_dim:output:0lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_293/SigmoidSigmoidlstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_1Sigmoidlstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_293/mulMullstm_cell_293/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_293/ReluRelulstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_1Mullstm_cell_293/Sigmoid:y:0 lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_293/add_1AddV2lstm_cell_293/mul:z:0lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_2Sigmoidlstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_293/Relu_1Relulstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_2Mullstm_cell_293/Sigmoid_2:y:0"lstm_cell_293/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_293_matmul_readvariableop_resource.lstm_cell_293_matmul_1_readvariableop_resource-lstm_cell_293_biasadd_readvariableop_resource*
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
while_body_1774311*
condR
while_cond_1774310*K
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
NoOpNoOp%^lstm_cell_293/BiasAdd/ReadVariableOp$^lstm_cell_293/MatMul/ReadVariableOp&^lstm_cell_293/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_293/BiasAdd/ReadVariableOp$lstm_cell_293/BiasAdd/ReadVariableOp2J
#lstm_cell_293/MatMul/ReadVariableOp#lstm_cell_293/MatMul/ReadVariableOp2N
%lstm_cell_293/MatMul_1/ReadVariableOp%lstm_cell_293/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_465_layer_call_fn_1775859
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1772830|
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
while_cond_1774310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1774310___redundant_placeholder05
1while_while_cond_1774310___redundant_placeholder15
1while_while_cond_1774310___redundant_placeholder25
1while_while_cond_1774310___redundant_placeholder3
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
*__inference_lstm_465_layer_call_fn_1775892

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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1774725s
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
?C
?

lstm_467_while_body_1775331.
*lstm_467_while_lstm_467_while_loop_counter4
0lstm_467_while_lstm_467_while_maximum_iterations
lstm_467_while_placeholder 
lstm_467_while_placeholder_1 
lstm_467_while_placeholder_2 
lstm_467_while_placeholder_3-
)lstm_467_while_lstm_467_strided_slice_1_0i
elstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0:2(Q
?lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(L
>lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0:(
lstm_467_while_identity
lstm_467_while_identity_1
lstm_467_while_identity_2
lstm_467_while_identity_3
lstm_467_while_identity_4
lstm_467_while_identity_5+
'lstm_467_while_lstm_467_strided_slice_1g
clstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensorM
;lstm_467_while_lstm_cell_293_matmul_readvariableop_resource:2(O
=lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource:
(J
<lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource:(??3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp?2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp?4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp?
@lstm_467/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_467/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensor_0lstm_467_while_placeholderIlstm_467/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp=lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_467/while/lstm_cell_293/MatMulMatMul9lstm_467/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp?lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_467/while/lstm_cell_293/MatMul_1MatMullstm_467_while_placeholder_2<lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_467/while/lstm_cell_293/addAddV2-lstm_467/while/lstm_cell_293/MatMul:product:0/lstm_467/while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp>lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_467/while/lstm_cell_293/BiasAddBiasAdd$lstm_467/while/lstm_cell_293/add:z:0;lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_467/while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_467/while/lstm_cell_293/splitSplit5lstm_467/while/lstm_cell_293/split/split_dim:output:0-lstm_467/while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_467/while/lstm_cell_293/SigmoidSigmoid+lstm_467/while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_467/while/lstm_cell_293/Sigmoid_1Sigmoid+lstm_467/while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_467/while/lstm_cell_293/mulMul*lstm_467/while/lstm_cell_293/Sigmoid_1:y:0lstm_467_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_467/while/lstm_cell_293/ReluRelu+lstm_467/while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_467/while/lstm_cell_293/mul_1Mul(lstm_467/while/lstm_cell_293/Sigmoid:y:0/lstm_467/while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_467/while/lstm_cell_293/add_1AddV2$lstm_467/while/lstm_cell_293/mul:z:0&lstm_467/while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_467/while/lstm_cell_293/Sigmoid_2Sigmoid+lstm_467/while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_467/while/lstm_cell_293/Relu_1Relu&lstm_467/while/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_467/while/lstm_cell_293/mul_2Mul*lstm_467/while/lstm_cell_293/Sigmoid_2:y:01lstm_467/while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_467/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_467_while_placeholder_1lstm_467_while_placeholder&lstm_467/while/lstm_cell_293/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_467/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_467/while/addAddV2lstm_467_while_placeholderlstm_467/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_467/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_467/while/add_1AddV2*lstm_467_while_lstm_467_while_loop_counterlstm_467/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_467/while/IdentityIdentitylstm_467/while/add_1:z:0^lstm_467/while/NoOp*
T0*
_output_shapes
: ?
lstm_467/while/Identity_1Identity0lstm_467_while_lstm_467_while_maximum_iterations^lstm_467/while/NoOp*
T0*
_output_shapes
: t
lstm_467/while/Identity_2Identitylstm_467/while/add:z:0^lstm_467/while/NoOp*
T0*
_output_shapes
: ?
lstm_467/while/Identity_3IdentityClstm_467/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_467/while/NoOp*
T0*
_output_shapes
: ?
lstm_467/while/Identity_4Identity&lstm_467/while/lstm_cell_293/mul_2:z:0^lstm_467/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_467/while/Identity_5Identity&lstm_467/while/lstm_cell_293/add_1:z:0^lstm_467/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_467/while/NoOpNoOp4^lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp3^lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp5^lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_467_while_identity lstm_467/while/Identity:output:0"?
lstm_467_while_identity_1"lstm_467/while/Identity_1:output:0"?
lstm_467_while_identity_2"lstm_467/while/Identity_2:output:0"?
lstm_467_while_identity_3"lstm_467/while/Identity_3:output:0"?
lstm_467_while_identity_4"lstm_467/while/Identity_4:output:0"?
lstm_467_while_identity_5"lstm_467/while/Identity_5:output:0"T
'lstm_467_while_lstm_467_strided_slice_1)lstm_467_while_lstm_467_strided_slice_1_0"~
<lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource>lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0"?
=lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource?lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0"|
;lstm_467_while_lstm_cell_293_matmul_readvariableop_resource=lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0"?
clstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensorelstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp2h
2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp2l
4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1777182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1777182___redundant_placeholder05
1while_while_cond_1777182___redundant_placeholder15
1while_while_cond_1777182___redundant_placeholder25
1while_while_cond_1777182___redundant_placeholder3
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776178
inputs_0?
,lstm_cell_291_matmul_readvariableop_resource:	?A
.lstm_cell_291_matmul_1_readvariableop_resource:	d?<
-lstm_cell_291_biasadd_readvariableop_resource:	?
identity??$lstm_cell_291/BiasAdd/ReadVariableOp?#lstm_cell_291/MatMul/ReadVariableOp?%lstm_cell_291/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_291/MatMul/ReadVariableOpReadVariableOp,lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_291/MatMulMatMulstrided_slice_2:output:0+lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_291/MatMul_1MatMulzeros:output:0-lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_291/addAddV2lstm_cell_291/MatMul:product:0 lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_291/BiasAddBiasAddlstm_cell_291/add:z:0,lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_291/splitSplit&lstm_cell_291/split/split_dim:output:0lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_291/SigmoidSigmoidlstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_1Sigmoidlstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_291/mulMullstm_cell_291/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_291/ReluRelulstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_1Mullstm_cell_291/Sigmoid:y:0 lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_291/add_1AddV2lstm_cell_291/mul:z:0lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_2Sigmoidlstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_291/Relu_1Relulstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_2Mullstm_cell_291/Sigmoid_2:y:0"lstm_cell_291/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_291_matmul_readvariableop_resource.lstm_cell_291_matmul_1_readvariableop_resource-lstm_cell_291_biasadd_readvariableop_resource*
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
while_body_1776094*
condR
while_cond_1776093*K
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
NoOpNoOp%^lstm_cell_291/BiasAdd/ReadVariableOp$^lstm_cell_291/MatMul/ReadVariableOp&^lstm_cell_291/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_291/BiasAdd/ReadVariableOp$lstm_cell_291/BiasAdd/ReadVariableOp2J
#lstm_cell_291/MatMul/ReadVariableOp#lstm_cell_291/MatMul/ReadVariableOp2N
%lstm_cell_291/MatMul_1/ReadVariableOp%lstm_cell_291/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1772760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1772760___redundant_placeholder05
1while_while_cond_1772760___redundant_placeholder15
1while_while_cond_1772760___redundant_placeholder25
1while_while_cond_1772760___redundant_placeholder3
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
while_body_1776710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_292_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_292_matmul_readvariableop_resource:	d?G
4while_lstm_cell_292_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_292_biasadd_readvariableop_resource:	???*while/lstm_cell_292/BiasAdd/ReadVariableOp?)while/lstm_cell_292/MatMul/ReadVariableOp?+while/lstm_cell_292/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_292/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_292/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_292/addAddV2$while/lstm_cell_292/MatMul:product:0&while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_292/BiasAddBiasAddwhile/lstm_cell_292/add:z:02while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_292/splitSplit,while/lstm_cell_292/split/split_dim:output:0$while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_292/SigmoidSigmoid"while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_1Sigmoid"while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mulMul!while/lstm_cell_292/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_292/ReluRelu"while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_1Mulwhile/lstm_cell_292/Sigmoid:y:0&while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/add_1AddV2while/lstm_cell_292/mul:z:0while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_2Sigmoid"while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_292/Relu_1Reluwhile/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_2Mul!while/lstm_cell_292/Sigmoid_2:y:0(while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_292/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_292/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_292/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_292/BiasAdd/ReadVariableOp*^while/lstm_cell_292/MatMul/ReadVariableOp,^while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_292_biasadd_readvariableop_resource5while_lstm_cell_292_biasadd_readvariableop_resource_0"n
4while_lstm_cell_292_matmul_1_readvariableop_resource6while_lstm_cell_292_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_292_matmul_readvariableop_resource4while_lstm_cell_292_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_292/BiasAdd/ReadVariableOp*while/lstm_cell_292/BiasAdd/ReadVariableOp2V
)while/lstm_cell_292/MatMul/ReadVariableOp)while/lstm_cell_292/MatMul/ReadVariableOp2Z
+while/lstm_cell_292/MatMul_1/ReadVariableOp+while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1776236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1776236___redundant_placeholder05
1while_while_cond_1776236___redundant_placeholder15
1while_while_cond_1776236___redundant_placeholder25
1while_while_cond_1776236___redundant_placeholder3
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

lstm_466_while_body_1775192.
*lstm_466_while_lstm_466_while_loop_counter4
0lstm_466_while_lstm_466_while_maximum_iterations
lstm_466_while_placeholder 
lstm_466_while_placeholder_1 
lstm_466_while_placeholder_2 
lstm_466_while_placeholder_3-
)lstm_466_while_lstm_466_strided_slice_1_0i
elstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0:	d?R
?lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?M
>lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
lstm_466_while_identity
lstm_466_while_identity_1
lstm_466_while_identity_2
lstm_466_while_identity_3
lstm_466_while_identity_4
lstm_466_while_identity_5+
'lstm_466_while_lstm_466_strided_slice_1g
clstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensorN
;lstm_466_while_lstm_cell_292_matmul_readvariableop_resource:	d?P
=lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource:	2?K
<lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource:	???3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp?2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp?4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp?
@lstm_466/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_466/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensor_0lstm_466_while_placeholderIlstm_466/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp=lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_466/while/lstm_cell_292/MatMulMatMul9lstm_466/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp?lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_466/while/lstm_cell_292/MatMul_1MatMullstm_466_while_placeholder_2<lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_466/while/lstm_cell_292/addAddV2-lstm_466/while/lstm_cell_292/MatMul:product:0/lstm_466/while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp>lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_466/while/lstm_cell_292/BiasAddBiasAdd$lstm_466/while/lstm_cell_292/add:z:0;lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_466/while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_466/while/lstm_cell_292/splitSplit5lstm_466/while/lstm_cell_292/split/split_dim:output:0-lstm_466/while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_466/while/lstm_cell_292/SigmoidSigmoid+lstm_466/while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_466/while/lstm_cell_292/Sigmoid_1Sigmoid+lstm_466/while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_466/while/lstm_cell_292/mulMul*lstm_466/while/lstm_cell_292/Sigmoid_1:y:0lstm_466_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_466/while/lstm_cell_292/ReluRelu+lstm_466/while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_466/while/lstm_cell_292/mul_1Mul(lstm_466/while/lstm_cell_292/Sigmoid:y:0/lstm_466/while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_466/while/lstm_cell_292/add_1AddV2$lstm_466/while/lstm_cell_292/mul:z:0&lstm_466/while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_466/while/lstm_cell_292/Sigmoid_2Sigmoid+lstm_466/while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_466/while/lstm_cell_292/Relu_1Relu&lstm_466/while/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_466/while/lstm_cell_292/mul_2Mul*lstm_466/while/lstm_cell_292/Sigmoid_2:y:01lstm_466/while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_466/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_466_while_placeholder_1lstm_466_while_placeholder&lstm_466/while/lstm_cell_292/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_466/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_466/while/addAddV2lstm_466_while_placeholderlstm_466/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_466/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_466/while/add_1AddV2*lstm_466_while_lstm_466_while_loop_counterlstm_466/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_466/while/IdentityIdentitylstm_466/while/add_1:z:0^lstm_466/while/NoOp*
T0*
_output_shapes
: ?
lstm_466/while/Identity_1Identity0lstm_466_while_lstm_466_while_maximum_iterations^lstm_466/while/NoOp*
T0*
_output_shapes
: t
lstm_466/while/Identity_2Identitylstm_466/while/add:z:0^lstm_466/while/NoOp*
T0*
_output_shapes
: ?
lstm_466/while/Identity_3IdentityClstm_466/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_466/while/NoOp*
T0*
_output_shapes
: ?
lstm_466/while/Identity_4Identity&lstm_466/while/lstm_cell_292/mul_2:z:0^lstm_466/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_466/while/Identity_5Identity&lstm_466/while/lstm_cell_292/add_1:z:0^lstm_466/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_466/while/NoOpNoOp4^lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp3^lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp5^lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_466_while_identity lstm_466/while/Identity:output:0"?
lstm_466_while_identity_1"lstm_466/while/Identity_1:output:0"?
lstm_466_while_identity_2"lstm_466/while/Identity_2:output:0"?
lstm_466_while_identity_3"lstm_466/while/Identity_3:output:0"?
lstm_466_while_identity_4"lstm_466/while/Identity_4:output:0"?
lstm_466_while_identity_5"lstm_466/while/Identity_5:output:0"T
'lstm_466_while_lstm_466_strided_slice_1)lstm_466_while_lstm_466_strided_slice_1_0"~
<lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource>lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0"?
=lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource?lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0"|
;lstm_466_while_lstm_cell_292_matmul_readvariableop_resource=lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0"?
clstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensorelstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp2h
2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp2l
4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1776380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_291_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_291_matmul_readvariableop_resource:	?G
4while_lstm_cell_291_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_291_biasadd_readvariableop_resource:	???*while/lstm_cell_291/BiasAdd/ReadVariableOp?)while/lstm_cell_291/MatMul/ReadVariableOp?+while/lstm_cell_291/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_291/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_291/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_291/addAddV2$while/lstm_cell_291/MatMul:product:0&while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_291/BiasAddBiasAddwhile/lstm_cell_291/add:z:02while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_291/splitSplit,while/lstm_cell_291/split/split_dim:output:0$while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_291/SigmoidSigmoid"while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_1Sigmoid"while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mulMul!while/lstm_cell_291/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_291/ReluRelu"while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_1Mulwhile/lstm_cell_291/Sigmoid:y:0&while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/add_1AddV2while/lstm_cell_291/mul:z:0while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_2Sigmoid"while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_291/Relu_1Reluwhile/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_2Mul!while/lstm_cell_291/Sigmoid_2:y:0(while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_291/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_291/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_291/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_291/BiasAdd/ReadVariableOp*^while/lstm_cell_291/MatMul/ReadVariableOp,^while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_291_biasadd_readvariableop_resource5while_lstm_cell_291_biasadd_readvariableop_resource_0"n
4while_lstm_cell_291_matmul_1_readvariableop_resource6while_lstm_cell_291_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_291_matmul_readvariableop_resource4while_lstm_cell_291_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_291/BiasAdd/ReadVariableOp*while/lstm_cell_291/BiasAdd/ReadVariableOp2V
)while/lstm_cell_291/MatMul/ReadVariableOp)while/lstm_cell_291/MatMul/ReadVariableOp2Z
+while/lstm_cell_291/MatMul_1/ReadVariableOp+while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1777325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1777325___redundant_placeholder05
1while_while_cond_1777325___redundant_placeholder15
1while_while_cond_1777325___redundant_placeholder25
1while_while_cond_1777325___redundant_placeholder3
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1777781

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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776321

inputs?
,lstm_cell_291_matmul_readvariableop_resource:	?A
.lstm_cell_291_matmul_1_readvariableop_resource:	d?<
-lstm_cell_291_biasadd_readvariableop_resource:	?
identity??$lstm_cell_291/BiasAdd/ReadVariableOp?#lstm_cell_291/MatMul/ReadVariableOp?%lstm_cell_291/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_291/MatMul/ReadVariableOpReadVariableOp,lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_291/MatMulMatMulstrided_slice_2:output:0+lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_291/MatMul_1MatMulzeros:output:0-lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_291/addAddV2lstm_cell_291/MatMul:product:0 lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_291/BiasAddBiasAddlstm_cell_291/add:z:0,lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_291/splitSplit&lstm_cell_291/split/split_dim:output:0lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_291/SigmoidSigmoidlstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_1Sigmoidlstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_291/mulMullstm_cell_291/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_291/ReluRelulstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_1Mullstm_cell_291/Sigmoid:y:0 lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_291/add_1AddV2lstm_cell_291/mul:z:0lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_2Sigmoidlstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_291/Relu_1Relulstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_2Mullstm_cell_291/Sigmoid_2:y:0"lstm_cell_291/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_291_matmul_readvariableop_resource.lstm_cell_291_matmul_1_readvariableop_resource-lstm_cell_291_biasadd_readvariableop_resource*
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
while_body_1776237*
condR
while_cond_1776236*K
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
NoOpNoOp%^lstm_cell_291/BiasAdd/ReadVariableOp$^lstm_cell_291/MatMul/ReadVariableOp&^lstm_cell_291/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_291/BiasAdd/ReadVariableOp$lstm_cell_291/BiasAdd/ReadVariableOp2J
#lstm_cell_291/MatMul/ReadVariableOp#lstm_cell_291/MatMul/ReadVariableOp2N
%lstm_cell_291/MatMul_1/ReadVariableOp%lstm_cell_291/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1776237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_291_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_291_matmul_readvariableop_resource:	?G
4while_lstm_cell_291_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_291_biasadd_readvariableop_resource:	???*while/lstm_cell_291/BiasAdd/ReadVariableOp?)while/lstm_cell_291/MatMul/ReadVariableOp?+while/lstm_cell_291/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_291/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_291/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_291/addAddV2$while/lstm_cell_291/MatMul:product:0&while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_291/BiasAddBiasAddwhile/lstm_cell_291/add:z:02while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_291/splitSplit,while/lstm_cell_291/split/split_dim:output:0$while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_291/SigmoidSigmoid"while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_1Sigmoid"while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mulMul!while/lstm_cell_291/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_291/ReluRelu"while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_1Mulwhile/lstm_cell_291/Sigmoid:y:0&while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/add_1AddV2while/lstm_cell_291/mul:z:0while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_2Sigmoid"while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_291/Relu_1Reluwhile/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_2Mul!while/lstm_cell_291/Sigmoid_2:y:0(while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_291/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_291/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_291/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_291/BiasAdd/ReadVariableOp*^while/lstm_cell_291/MatMul/ReadVariableOp,^while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_291_biasadd_readvariableop_resource5while_lstm_cell_291_biasadd_readvariableop_resource_0"n
4while_lstm_cell_291_matmul_1_readvariableop_resource6while_lstm_cell_291_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_291_matmul_readvariableop_resource4while_lstm_cell_291_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_291/BiasAdd/ReadVariableOp*while/lstm_cell_291/BiasAdd/ReadVariableOp2V
)while/lstm_cell_291/MatMul/ReadVariableOp)while/lstm_cell_291/MatMul/ReadVariableOp2Z
+while/lstm_cell_291/MatMul_1/ReadVariableOp+while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1778009

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
*__inference_lstm_466_layer_call_fn_1776486
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1773371|
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
while_cond_1773944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1773944___redundant_placeholder05
1while_while_cond_1773944___redundant_placeholder15
1while_while_cond_1773944___redundant_placeholder25
1while_while_cond_1773944___redundant_placeholder3
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
while_cond_1775950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1775950___redundant_placeholder05
1while_while_cond_1775950___redundant_placeholder15
1while_while_cond_1775950___redundant_placeholder25
1while_while_cond_1775950___redundant_placeholder3
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776651
inputs_0?
,lstm_cell_292_matmul_readvariableop_resource:	d?A
.lstm_cell_292_matmul_1_readvariableop_resource:	2?<
-lstm_cell_292_biasadd_readvariableop_resource:	?
identity??$lstm_cell_292/BiasAdd/ReadVariableOp?#lstm_cell_292/MatMul/ReadVariableOp?%lstm_cell_292/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_292/MatMul/ReadVariableOpReadVariableOp,lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_292/MatMulMatMulstrided_slice_2:output:0+lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_292/MatMul_1MatMulzeros:output:0-lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_292/addAddV2lstm_cell_292/MatMul:product:0 lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_292/BiasAddBiasAddlstm_cell_292/add:z:0,lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_292/splitSplit&lstm_cell_292/split/split_dim:output:0lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_292/SigmoidSigmoidlstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_1Sigmoidlstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_292/mulMullstm_cell_292/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_292/ReluRelulstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_1Mullstm_cell_292/Sigmoid:y:0 lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_292/add_1AddV2lstm_cell_292/mul:z:0lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_2Sigmoidlstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_292/Relu_1Relulstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_2Mullstm_cell_292/Sigmoid_2:y:0"lstm_cell_292/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_292_matmul_readvariableop_resource.lstm_cell_292_matmul_1_readvariableop_resource-lstm_cell_292_biasadd_readvariableop_resource*
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
while_body_1776567*
condR
while_cond_1776566*K
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
NoOpNoOp%^lstm_cell_292/BiasAdd/ReadVariableOp$^lstm_cell_292/MatMul/ReadVariableOp&^lstm_cell_292/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_292/BiasAdd/ReadVariableOp$lstm_cell_292/BiasAdd/ReadVariableOp2J
#lstm_cell_292/MatMul/ReadVariableOp#lstm_cell_292/MatMul/ReadVariableOp2N
%lstm_cell_292/MatMul_1/ReadVariableOp%lstm_cell_292/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_467_layer_call_fn_1777102
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1773721o
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
while_cond_1776709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1776709___redundant_placeholder05
1while_while_cond_1776709___redundant_placeholder15
1while_while_cond_1776709___redundant_placeholder25
1while_while_cond_1776709___redundant_placeholder3
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773593

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
while_body_1777183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_293_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_293_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_293_matmul_readvariableop_resource:2(F
4while_lstm_cell_293_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_293_biasadd_readvariableop_resource:(??*while/lstm_cell_293/BiasAdd/ReadVariableOp?)while/lstm_cell_293/MatMul/ReadVariableOp?+while/lstm_cell_293/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_293/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_293/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_293/addAddV2$while/lstm_cell_293/MatMul:product:0&while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_293/BiasAddBiasAddwhile/lstm_cell_293/add:z:02while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_293/splitSplit,while/lstm_cell_293/split/split_dim:output:0$while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_293/SigmoidSigmoid"while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_1Sigmoid"while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mulMul!while/lstm_cell_293/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_293/ReluRelu"while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_1Mulwhile/lstm_cell_293/Sigmoid:y:0&while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/add_1AddV2while/lstm_cell_293/mul:z:0while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_2Sigmoid"while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_293/Relu_1Reluwhile/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_2Mul!while/lstm_cell_293/Sigmoid_2:y:0(while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_293/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_293/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_293/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_293/BiasAdd/ReadVariableOp*^while/lstm_cell_293/MatMul/ReadVariableOp,^while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_293_biasadd_readvariableop_resource5while_lstm_cell_293_biasadd_readvariableop_resource_0"n
4while_lstm_cell_293_matmul_1_readvariableop_resource6while_lstm_cell_293_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_293_matmul_readvariableop_resource4while_lstm_cell_293_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_293/BiasAdd/ReadVariableOp*while/lstm_cell_293/BiasAdd/ReadVariableOp2V
)while/lstm_cell_293/MatMul/ReadVariableOp)while/lstm_cell_293/MatMul/ReadVariableOp2Z
+while/lstm_cell_293/MatMul_1/ReadVariableOp+while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1777080

inputs?
,lstm_cell_292_matmul_readvariableop_resource:	d?A
.lstm_cell_292_matmul_1_readvariableop_resource:	2?<
-lstm_cell_292_biasadd_readvariableop_resource:	?
identity??$lstm_cell_292/BiasAdd/ReadVariableOp?#lstm_cell_292/MatMul/ReadVariableOp?%lstm_cell_292/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_292/MatMul/ReadVariableOpReadVariableOp,lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_292/MatMulMatMulstrided_slice_2:output:0+lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_292/MatMul_1MatMulzeros:output:0-lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_292/addAddV2lstm_cell_292/MatMul:product:0 lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_292/BiasAddBiasAddlstm_cell_292/add:z:0,lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_292/splitSplit&lstm_cell_292/split/split_dim:output:0lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_292/SigmoidSigmoidlstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_1Sigmoidlstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_292/mulMullstm_cell_292/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_292/ReluRelulstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_1Mullstm_cell_292/Sigmoid:y:0 lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_292/add_1AddV2lstm_cell_292/mul:z:0lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_2Sigmoidlstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_292/Relu_1Relulstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_2Mullstm_cell_292/Sigmoid_2:y:0"lstm_cell_292/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_292_matmul_readvariableop_resource.lstm_cell_292_matmul_1_readvariableop_resource-lstm_cell_292_biasadd_readvariableop_resource*
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
while_body_1776996*
condR
while_cond_1776995*K
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
NoOpNoOp%^lstm_cell_292/BiasAdd/ReadVariableOp$^lstm_cell_292/MatMul/ReadVariableOp&^lstm_cell_292/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_292/BiasAdd/ReadVariableOp$lstm_cell_292/BiasAdd/ReadVariableOp2J
#lstm_cell_292/MatMul/ReadVariableOp#lstm_cell_292/MatMul/ReadVariableOp2N
%lstm_cell_292/MatMul_1/ReadVariableOp%lstm_cell_292/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_1778152
file_prefix/
+savev2_dense_155_kernel_read_readvariableop-
)savev2_dense_155_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_465_lstm_cell_465_kernel_read_readvariableopF
Bsavev2_lstm_465_lstm_cell_465_recurrent_kernel_read_readvariableop:
6savev2_lstm_465_lstm_cell_465_bias_read_readvariableop<
8savev2_lstm_466_lstm_cell_466_kernel_read_readvariableopF
Bsavev2_lstm_466_lstm_cell_466_recurrent_kernel_read_readvariableop:
6savev2_lstm_466_lstm_cell_466_bias_read_readvariableop<
8savev2_lstm_467_lstm_cell_467_kernel_read_readvariableopF
Bsavev2_lstm_467_lstm_cell_467_recurrent_kernel_read_readvariableop:
6savev2_lstm_467_lstm_cell_467_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_155_kernel_m_read_readvariableop4
0savev2_adam_dense_155_bias_m_read_readvariableopC
?savev2_adam_lstm_465_lstm_cell_465_kernel_m_read_readvariableopM
Isavev2_adam_lstm_465_lstm_cell_465_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_465_lstm_cell_465_bias_m_read_readvariableopC
?savev2_adam_lstm_466_lstm_cell_466_kernel_m_read_readvariableopM
Isavev2_adam_lstm_466_lstm_cell_466_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_466_lstm_cell_466_bias_m_read_readvariableopC
?savev2_adam_lstm_467_lstm_cell_467_kernel_m_read_readvariableopM
Isavev2_adam_lstm_467_lstm_cell_467_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_467_lstm_cell_467_bias_m_read_readvariableop6
2savev2_adam_dense_155_kernel_v_read_readvariableop4
0savev2_adam_dense_155_bias_v_read_readvariableopC
?savev2_adam_lstm_465_lstm_cell_465_kernel_v_read_readvariableopM
Isavev2_adam_lstm_465_lstm_cell_465_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_465_lstm_cell_465_bias_v_read_readvariableopC
?savev2_adam_lstm_466_lstm_cell_466_kernel_v_read_readvariableopM
Isavev2_adam_lstm_466_lstm_cell_466_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_466_lstm_cell_466_bias_v_read_readvariableopC
?savev2_adam_lstm_467_lstm_cell_467_kernel_v_read_readvariableopM
Isavev2_adam_lstm_467_lstm_cell_467_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_467_lstm_cell_467_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_155_kernel_read_readvariableop)savev2_dense_155_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_465_lstm_cell_465_kernel_read_readvariableopBsavev2_lstm_465_lstm_cell_465_recurrent_kernel_read_readvariableop6savev2_lstm_465_lstm_cell_465_bias_read_readvariableop8savev2_lstm_466_lstm_cell_466_kernel_read_readvariableopBsavev2_lstm_466_lstm_cell_466_recurrent_kernel_read_readvariableop6savev2_lstm_466_lstm_cell_466_bias_read_readvariableop8savev2_lstm_467_lstm_cell_467_kernel_read_readvariableopBsavev2_lstm_467_lstm_cell_467_recurrent_kernel_read_readvariableop6savev2_lstm_467_lstm_cell_467_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_155_kernel_m_read_readvariableop0savev2_adam_dense_155_bias_m_read_readvariableop?savev2_adam_lstm_465_lstm_cell_465_kernel_m_read_readvariableopIsavev2_adam_lstm_465_lstm_cell_465_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_465_lstm_cell_465_bias_m_read_readvariableop?savev2_adam_lstm_466_lstm_cell_466_kernel_m_read_readvariableopIsavev2_adam_lstm_466_lstm_cell_466_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_466_lstm_cell_466_bias_m_read_readvariableop?savev2_adam_lstm_467_lstm_cell_467_kernel_m_read_readvariableopIsavev2_adam_lstm_467_lstm_cell_467_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_467_lstm_cell_467_bias_m_read_readvariableop2savev2_adam_dense_155_kernel_v_read_readvariableop0savev2_adam_dense_155_bias_v_read_readvariableop?savev2_adam_lstm_465_lstm_cell_465_kernel_v_read_readvariableopIsavev2_adam_lstm_465_lstm_cell_465_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_465_lstm_cell_465_bias_v_read_readvariableop?savev2_adam_lstm_466_lstm_cell_466_kernel_v_read_readvariableopIsavev2_adam_lstm_466_lstm_cell_466_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_466_lstm_cell_466_bias_v_read_readvariableop?savev2_adam_lstm_467_lstm_cell_467_kernel_v_read_readvariableopIsavev2_adam_lstm_467_lstm_cell_467_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_467_lstm_cell_467_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?C
?

lstm_466_while_body_1775619.
*lstm_466_while_lstm_466_while_loop_counter4
0lstm_466_while_lstm_466_while_maximum_iterations
lstm_466_while_placeholder 
lstm_466_while_placeholder_1 
lstm_466_while_placeholder_2 
lstm_466_while_placeholder_3-
)lstm_466_while_lstm_466_strided_slice_1_0i
elstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0:	d?R
?lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?M
>lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
lstm_466_while_identity
lstm_466_while_identity_1
lstm_466_while_identity_2
lstm_466_while_identity_3
lstm_466_while_identity_4
lstm_466_while_identity_5+
'lstm_466_while_lstm_466_strided_slice_1g
clstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensorN
;lstm_466_while_lstm_cell_292_matmul_readvariableop_resource:	d?P
=lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource:	2?K
<lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource:	???3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp?2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp?4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp?
@lstm_466/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_466/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensor_0lstm_466_while_placeholderIlstm_466/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp=lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_466/while/lstm_cell_292/MatMulMatMul9lstm_466/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp?lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_466/while/lstm_cell_292/MatMul_1MatMullstm_466_while_placeholder_2<lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_466/while/lstm_cell_292/addAddV2-lstm_466/while/lstm_cell_292/MatMul:product:0/lstm_466/while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp>lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_466/while/lstm_cell_292/BiasAddBiasAdd$lstm_466/while/lstm_cell_292/add:z:0;lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_466/while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_466/while/lstm_cell_292/splitSplit5lstm_466/while/lstm_cell_292/split/split_dim:output:0-lstm_466/while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_466/while/lstm_cell_292/SigmoidSigmoid+lstm_466/while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_466/while/lstm_cell_292/Sigmoid_1Sigmoid+lstm_466/while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_466/while/lstm_cell_292/mulMul*lstm_466/while/lstm_cell_292/Sigmoid_1:y:0lstm_466_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_466/while/lstm_cell_292/ReluRelu+lstm_466/while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_466/while/lstm_cell_292/mul_1Mul(lstm_466/while/lstm_cell_292/Sigmoid:y:0/lstm_466/while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_466/while/lstm_cell_292/add_1AddV2$lstm_466/while/lstm_cell_292/mul:z:0&lstm_466/while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_466/while/lstm_cell_292/Sigmoid_2Sigmoid+lstm_466/while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_466/while/lstm_cell_292/Relu_1Relu&lstm_466/while/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_466/while/lstm_cell_292/mul_2Mul*lstm_466/while/lstm_cell_292/Sigmoid_2:y:01lstm_466/while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_466/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_466_while_placeholder_1lstm_466_while_placeholder&lstm_466/while/lstm_cell_292/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_466/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_466/while/addAddV2lstm_466_while_placeholderlstm_466/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_466/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_466/while/add_1AddV2*lstm_466_while_lstm_466_while_loop_counterlstm_466/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_466/while/IdentityIdentitylstm_466/while/add_1:z:0^lstm_466/while/NoOp*
T0*
_output_shapes
: ?
lstm_466/while/Identity_1Identity0lstm_466_while_lstm_466_while_maximum_iterations^lstm_466/while/NoOp*
T0*
_output_shapes
: t
lstm_466/while/Identity_2Identitylstm_466/while/add:z:0^lstm_466/while/NoOp*
T0*
_output_shapes
: ?
lstm_466/while/Identity_3IdentityClstm_466/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_466/while/NoOp*
T0*
_output_shapes
: ?
lstm_466/while/Identity_4Identity&lstm_466/while/lstm_cell_292/mul_2:z:0^lstm_466/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_466/while/Identity_5Identity&lstm_466/while/lstm_cell_292/add_1:z:0^lstm_466/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_466/while/NoOpNoOp4^lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp3^lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp5^lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_466_while_identity lstm_466/while/Identity:output:0"?
lstm_466_while_identity_1"lstm_466/while/Identity_1:output:0"?
lstm_466_while_identity_2"lstm_466/while/Identity_2:output:0"?
lstm_466_while_identity_3"lstm_466/while/Identity_3:output:0"?
lstm_466_while_identity_4"lstm_466/while/Identity_4:output:0"?
lstm_466_while_identity_5"lstm_466/while/Identity_5:output:0"T
'lstm_466_while_lstm_466_strided_slice_1)lstm_466_while_lstm_466_strided_slice_1_0"~
<lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource>lstm_466_while_lstm_cell_292_biasadd_readvariableop_resource_0"?
=lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource?lstm_466_while_lstm_cell_292_matmul_1_readvariableop_resource_0"|
;lstm_466_while_lstm_cell_292_matmul_readvariableop_resource=lstm_466_while_lstm_cell_292_matmul_readvariableop_resource_0"?
clstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensorelstm_466_while_tensorarrayv2read_tensorlistgetitem_lstm_466_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp3lstm_466/while/lstm_cell_292/BiasAdd/ReadVariableOp2h
2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp2lstm_466/while/lstm_cell_292/MatMul/ReadVariableOp2l
4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp4lstm_466/while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1774640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1774640___redundant_placeholder05
1while_while_cond_1774640___redundant_placeholder15
1while_while_cond_1774640___redundant_placeholder25
1while_while_cond_1774640___redundant_placeholder3
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
while_body_1772761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_291_1772785_0:	?0
while_lstm_cell_291_1772787_0:	d?,
while_lstm_cell_291_1772789_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_291_1772785:	?.
while_lstm_cell_291_1772787:	d?*
while_lstm_cell_291_1772789:	???+while/lstm_cell_291/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_291/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_291_1772785_0while_lstm_cell_291_1772787_0while_lstm_cell_291_1772789_0*
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772747?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_291/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_291/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_291/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_291/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_291_1772785while_lstm_cell_291_1772785_0"<
while_lstm_cell_291_1772787while_lstm_cell_291_1772787_0"<
while_lstm_cell_291_1772789while_lstm_cell_291_1772789_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_291/StatefulPartitionedCall+while/lstm_cell_291/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_466_while_cond_1775191.
*lstm_466_while_lstm_466_while_loop_counter4
0lstm_466_while_lstm_466_while_maximum_iterations
lstm_466_while_placeholder 
lstm_466_while_placeholder_1 
lstm_466_while_placeholder_2 
lstm_466_while_placeholder_30
,lstm_466_while_less_lstm_466_strided_slice_1G
Clstm_466_while_lstm_466_while_cond_1775191___redundant_placeholder0G
Clstm_466_while_lstm_466_while_cond_1775191___redundant_placeholder1G
Clstm_466_while_lstm_466_while_cond_1775191___redundant_placeholder2G
Clstm_466_while_lstm_466_while_cond_1775191___redundant_placeholder3
lstm_466_while_identity
?
lstm_466/while/LessLesslstm_466_while_placeholder,lstm_466_while_less_lstm_466_strided_slice_1*
T0*
_output_shapes
: ]
lstm_466/while/IdentityIdentitylstm_466/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_466_while_identity lstm_466/while/Identity:output:0*(
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
while_body_1776094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_291_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_291_matmul_readvariableop_resource:	?G
4while_lstm_cell_291_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_291_biasadd_readvariableop_resource:	???*while/lstm_cell_291/BiasAdd/ReadVariableOp?)while/lstm_cell_291/MatMul/ReadVariableOp?+while/lstm_cell_291/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_291/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_291/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_291/addAddV2$while/lstm_cell_291/MatMul:product:0&while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_291/BiasAddBiasAddwhile/lstm_cell_291/add:z:02while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_291/splitSplit,while/lstm_cell_291/split/split_dim:output:0$while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_291/SigmoidSigmoid"while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_1Sigmoid"while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mulMul!while/lstm_cell_291/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_291/ReluRelu"while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_1Mulwhile/lstm_cell_291/Sigmoid:y:0&while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/add_1AddV2while/lstm_cell_291/mul:z:0while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_291/Sigmoid_2Sigmoid"while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_291/Relu_1Reluwhile/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_291/mul_2Mul!while/lstm_cell_291/Sigmoid_2:y:0(while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_291/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_291/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_291/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_291/BiasAdd/ReadVariableOp*^while/lstm_cell_291/MatMul/ReadVariableOp,^while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_291_biasadd_readvariableop_resource5while_lstm_cell_291_biasadd_readvariableop_resource_0"n
4while_lstm_cell_291_matmul_1_readvariableop_resource6while_lstm_cell_291_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_291_matmul_readvariableop_resource4while_lstm_cell_291_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_291/BiasAdd/ReadVariableOp*while/lstm_cell_291/BiasAdd/ReadVariableOp2V
)while/lstm_cell_291/MatMul/ReadVariableOp)while/lstm_cell_291/MatMul/ReadVariableOp2Z
+while/lstm_cell_291/MatMul_1/ReadVariableOp+while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_291_layer_call_fn_1777749

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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772893o
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
/__inference_lstm_cell_293_layer_call_fn_1777928

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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773447o
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
?T
?
*sequential_155_lstm_465_while_body_1772312L
Hsequential_155_lstm_465_while_sequential_155_lstm_465_while_loop_counterR
Nsequential_155_lstm_465_while_sequential_155_lstm_465_while_maximum_iterations-
)sequential_155_lstm_465_while_placeholder/
+sequential_155_lstm_465_while_placeholder_1/
+sequential_155_lstm_465_while_placeholder_2/
+sequential_155_lstm_465_while_placeholder_3K
Gsequential_155_lstm_465_while_sequential_155_lstm_465_strided_slice_1_0?
?sequential_155_lstm_465_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_465_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_155_lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0:	?a
Nsequential_155_lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?\
Msequential_155_lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0:	?*
&sequential_155_lstm_465_while_identity,
(sequential_155_lstm_465_while_identity_1,
(sequential_155_lstm_465_while_identity_2,
(sequential_155_lstm_465_while_identity_3,
(sequential_155_lstm_465_while_identity_4,
(sequential_155_lstm_465_while_identity_5I
Esequential_155_lstm_465_while_sequential_155_lstm_465_strided_slice_1?
?sequential_155_lstm_465_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_465_tensorarrayunstack_tensorlistfromtensor]
Jsequential_155_lstm_465_while_lstm_cell_291_matmul_readvariableop_resource:	?_
Lsequential_155_lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource:	d?Z
Ksequential_155_lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource:	???Bsequential_155/lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp?Asequential_155/lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp?Csequential_155/lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp?
Osequential_155/lstm_465/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_155/lstm_465/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_155_lstm_465_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_465_tensorarrayunstack_tensorlistfromtensor_0)sequential_155_lstm_465_while_placeholderXsequential_155/lstm_465/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_155/lstm_465/while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOpLsequential_155_lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_155/lstm_465/while/lstm_cell_291/MatMulMatMulHsequential_155/lstm_465/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_155/lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_155/lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOpNsequential_155_lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_155/lstm_465/while/lstm_cell_291/MatMul_1MatMul+sequential_155_lstm_465_while_placeholder_2Ksequential_155/lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_155/lstm_465/while/lstm_cell_291/addAddV2<sequential_155/lstm_465/while/lstm_cell_291/MatMul:product:0>sequential_155/lstm_465/while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_155/lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOpMsequential_155_lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_155/lstm_465/while/lstm_cell_291/BiasAddBiasAdd3sequential_155/lstm_465/while/lstm_cell_291/add:z:0Jsequential_155/lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_155/lstm_465/while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_155/lstm_465/while/lstm_cell_291/splitSplitDsequential_155/lstm_465/while/lstm_cell_291/split/split_dim:output:0<sequential_155/lstm_465/while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_155/lstm_465/while/lstm_cell_291/SigmoidSigmoid:sequential_155/lstm_465/while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_155/lstm_465/while/lstm_cell_291/Sigmoid_1Sigmoid:sequential_155/lstm_465/while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_155/lstm_465/while/lstm_cell_291/mulMul9sequential_155/lstm_465/while/lstm_cell_291/Sigmoid_1:y:0+sequential_155_lstm_465_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_155/lstm_465/while/lstm_cell_291/ReluRelu:sequential_155/lstm_465/while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_155/lstm_465/while/lstm_cell_291/mul_1Mul7sequential_155/lstm_465/while/lstm_cell_291/Sigmoid:y:0>sequential_155/lstm_465/while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_155/lstm_465/while/lstm_cell_291/add_1AddV23sequential_155/lstm_465/while/lstm_cell_291/mul:z:05sequential_155/lstm_465/while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_155/lstm_465/while/lstm_cell_291/Sigmoid_2Sigmoid:sequential_155/lstm_465/while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_155/lstm_465/while/lstm_cell_291/Relu_1Relu5sequential_155/lstm_465/while/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_155/lstm_465/while/lstm_cell_291/mul_2Mul9sequential_155/lstm_465/while/lstm_cell_291/Sigmoid_2:y:0@sequential_155/lstm_465/while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_155/lstm_465/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_155_lstm_465_while_placeholder_1)sequential_155_lstm_465_while_placeholder5sequential_155/lstm_465/while/lstm_cell_291/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_155/lstm_465/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_155/lstm_465/while/addAddV2)sequential_155_lstm_465_while_placeholder,sequential_155/lstm_465/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_155/lstm_465/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_155/lstm_465/while/add_1AddV2Hsequential_155_lstm_465_while_sequential_155_lstm_465_while_loop_counter.sequential_155/lstm_465/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_155/lstm_465/while/IdentityIdentity'sequential_155/lstm_465/while/add_1:z:0#^sequential_155/lstm_465/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_465/while/Identity_1IdentityNsequential_155_lstm_465_while_sequential_155_lstm_465_while_maximum_iterations#^sequential_155/lstm_465/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_465/while/Identity_2Identity%sequential_155/lstm_465/while/add:z:0#^sequential_155/lstm_465/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_465/while/Identity_3IdentityRsequential_155/lstm_465/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_155/lstm_465/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_465/while/Identity_4Identity5sequential_155/lstm_465/while/lstm_cell_291/mul_2:z:0#^sequential_155/lstm_465/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_155/lstm_465/while/Identity_5Identity5sequential_155/lstm_465/while/lstm_cell_291/add_1:z:0#^sequential_155/lstm_465/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_155/lstm_465/while/NoOpNoOpC^sequential_155/lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOpB^sequential_155/lstm_465/while/lstm_cell_291/MatMul/ReadVariableOpD^sequential_155/lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_155_lstm_465_while_identity/sequential_155/lstm_465/while/Identity:output:0"]
(sequential_155_lstm_465_while_identity_11sequential_155/lstm_465/while/Identity_1:output:0"]
(sequential_155_lstm_465_while_identity_21sequential_155/lstm_465/while/Identity_2:output:0"]
(sequential_155_lstm_465_while_identity_31sequential_155/lstm_465/while/Identity_3:output:0"]
(sequential_155_lstm_465_while_identity_41sequential_155/lstm_465/while/Identity_4:output:0"]
(sequential_155_lstm_465_while_identity_51sequential_155/lstm_465/while/Identity_5:output:0"?
Ksequential_155_lstm_465_while_lstm_cell_291_biasadd_readvariableop_resourceMsequential_155_lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0"?
Lsequential_155_lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resourceNsequential_155_lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0"?
Jsequential_155_lstm_465_while_lstm_cell_291_matmul_readvariableop_resourceLsequential_155_lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0"?
Esequential_155_lstm_465_while_sequential_155_lstm_465_strided_slice_1Gsequential_155_lstm_465_while_sequential_155_lstm_465_strided_slice_1_0"?
?sequential_155_lstm_465_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_465_tensorarrayunstack_tensorlistfromtensor?sequential_155_lstm_465_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_465_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_155/lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOpBsequential_155/lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp2?
Asequential_155/lstm_465/while/lstm_cell_291/MatMul/ReadVariableOpAsequential_155/lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp2?
Csequential_155/lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOpCsequential_155/lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1776093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1776093___redundant_placeholder05
1while_while_cond_1776093___redundant_placeholder15
1while_while_cond_1776093___redundant_placeholder25
1while_while_cond_1776093___redundant_placeholder3
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1773371

inputs(
lstm_cell_292_1773289:	d?(
lstm_cell_292_1773291:	2?$
lstm_cell_292_1773293:	?
identity??%lstm_cell_292/StatefulPartitionedCall?while;
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
%lstm_cell_292/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_292_1773289lstm_cell_292_1773291lstm_cell_292_1773293*
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773243n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_292_1773289lstm_cell_292_1773291lstm_cell_292_1773293*
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
while_body_1773302*
condR
while_cond_1773301*K
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
NoOpNoOp&^lstm_cell_292/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_292/StatefulPartitionedCall%lstm_cell_292/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1778282
file_prefix3
!assignvariableop_dense_155_kernel:
/
!assignvariableop_1_dense_155_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_465_lstm_cell_465_kernel:	?M
:assignvariableop_8_lstm_465_lstm_cell_465_recurrent_kernel:	d?=
.assignvariableop_9_lstm_465_lstm_cell_465_bias:	?D
1assignvariableop_10_lstm_466_lstm_cell_466_kernel:	d?N
;assignvariableop_11_lstm_466_lstm_cell_466_recurrent_kernel:	2?>
/assignvariableop_12_lstm_466_lstm_cell_466_bias:	?C
1assignvariableop_13_lstm_467_lstm_cell_467_kernel:2(M
;assignvariableop_14_lstm_467_lstm_cell_467_recurrent_kernel:
(=
/assignvariableop_15_lstm_467_lstm_cell_467_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_155_kernel_m:
7
)assignvariableop_19_adam_dense_155_bias_m:K
8assignvariableop_20_adam_lstm_465_lstm_cell_465_kernel_m:	?U
Bassignvariableop_21_adam_lstm_465_lstm_cell_465_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_465_lstm_cell_465_bias_m:	?K
8assignvariableop_23_adam_lstm_466_lstm_cell_466_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_466_lstm_cell_466_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_466_lstm_cell_466_bias_m:	?J
8assignvariableop_26_adam_lstm_467_lstm_cell_467_kernel_m:2(T
Bassignvariableop_27_adam_lstm_467_lstm_cell_467_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_467_lstm_cell_467_bias_m:(=
+assignvariableop_29_adam_dense_155_kernel_v:
7
)assignvariableop_30_adam_dense_155_bias_v:K
8assignvariableop_31_adam_lstm_465_lstm_cell_465_kernel_v:	?U
Bassignvariableop_32_adam_lstm_465_lstm_cell_465_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_465_lstm_cell_465_bias_v:	?K
8assignvariableop_34_adam_lstm_466_lstm_cell_466_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_466_lstm_cell_466_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_466_lstm_cell_466_bias_v:	?J
8assignvariableop_37_adam_lstm_467_lstm_cell_467_kernel_v:2(T
Bassignvariableop_38_adam_lstm_467_lstm_cell_467_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_467_lstm_cell_467_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_155_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_155_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_465_lstm_cell_465_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_465_lstm_cell_465_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_465_lstm_cell_465_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_466_lstm_cell_466_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_466_lstm_cell_466_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_466_lstm_cell_466_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_467_lstm_cell_467_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_467_lstm_cell_467_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_467_lstm_cell_467_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_155_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_155_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_465_lstm_cell_465_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_465_lstm_cell_465_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_465_lstm_cell_465_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_466_lstm_cell_466_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_466_lstm_cell_466_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_466_lstm_cell_466_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_467_lstm_cell_467_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_467_lstm_cell_467_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_467_lstm_cell_467_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_155_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_155_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_465_lstm_cell_465_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_465_lstm_cell_465_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_465_lstm_cell_465_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_466_lstm_cell_466_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_466_lstm_cell_466_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_466_lstm_cell_466_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_467_lstm_cell_467_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_467_lstm_cell_467_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_467_lstm_cell_467_bias_vIdentity_39:output:0"/device:CPU:0*
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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1775848

inputsH
5lstm_465_lstm_cell_291_matmul_readvariableop_resource:	?J
7lstm_465_lstm_cell_291_matmul_1_readvariableop_resource:	d?E
6lstm_465_lstm_cell_291_biasadd_readvariableop_resource:	?H
5lstm_466_lstm_cell_292_matmul_readvariableop_resource:	d?J
7lstm_466_lstm_cell_292_matmul_1_readvariableop_resource:	2?E
6lstm_466_lstm_cell_292_biasadd_readvariableop_resource:	?G
5lstm_467_lstm_cell_293_matmul_readvariableop_resource:2(I
7lstm_467_lstm_cell_293_matmul_1_readvariableop_resource:
(D
6lstm_467_lstm_cell_293_biasadd_readvariableop_resource:(:
(dense_155_matmul_readvariableop_resource:
7
)dense_155_biasadd_readvariableop_resource:
identity?? dense_155/BiasAdd/ReadVariableOp?dense_155/MatMul/ReadVariableOp?-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp?,lstm_465/lstm_cell_291/MatMul/ReadVariableOp?.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp?lstm_465/while?-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp?,lstm_466/lstm_cell_292/MatMul/ReadVariableOp?.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp?lstm_466/while?-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp?,lstm_467/lstm_cell_293/MatMul/ReadVariableOp?.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp?lstm_467/whileD
lstm_465/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_465/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_465/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_465/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_sliceStridedSlicelstm_465/Shape:output:0%lstm_465/strided_slice/stack:output:0'lstm_465/strided_slice/stack_1:output:0'lstm_465/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_465/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_465/zeros/packedPacklstm_465/strided_slice:output:0 lstm_465/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_465/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_465/zerosFilllstm_465/zeros/packed:output:0lstm_465/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_465/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_465/zeros_1/packedPacklstm_465/strided_slice:output:0"lstm_465/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_465/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_465/zeros_1Fill lstm_465/zeros_1/packed:output:0lstm_465/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_465/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_465/transpose	Transposeinputs lstm_465/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_465/Shape_1Shapelstm_465/transpose:y:0*
T0*
_output_shapes
:h
lstm_465/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_465/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_465/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_slice_1StridedSlicelstm_465/Shape_1:output:0'lstm_465/strided_slice_1/stack:output:0)lstm_465/strided_slice_1/stack_1:output:0)lstm_465/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_465/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_465/TensorArrayV2TensorListReserve-lstm_465/TensorArrayV2/element_shape:output:0!lstm_465/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_465/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_465/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_465/transpose:y:0Glstm_465/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_465/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_465/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_465/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_slice_2StridedSlicelstm_465/transpose:y:0'lstm_465/strided_slice_2/stack:output:0)lstm_465/strided_slice_2/stack_1:output:0)lstm_465/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_465/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp5lstm_465_lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_465/lstm_cell_291/MatMulMatMul!lstm_465/strided_slice_2:output:04lstm_465/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp7lstm_465_lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_465/lstm_cell_291/MatMul_1MatMullstm_465/zeros:output:06lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_465/lstm_cell_291/addAddV2'lstm_465/lstm_cell_291/MatMul:product:0)lstm_465/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp6lstm_465_lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_465/lstm_cell_291/BiasAddBiasAddlstm_465/lstm_cell_291/add:z:05lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_465/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_465/lstm_cell_291/splitSplit/lstm_465/lstm_cell_291/split/split_dim:output:0'lstm_465/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_465/lstm_cell_291/SigmoidSigmoid%lstm_465/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_465/lstm_cell_291/Sigmoid_1Sigmoid%lstm_465/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/mulMul$lstm_465/lstm_cell_291/Sigmoid_1:y:0lstm_465/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_465/lstm_cell_291/ReluRelu%lstm_465/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/mul_1Mul"lstm_465/lstm_cell_291/Sigmoid:y:0)lstm_465/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/add_1AddV2lstm_465/lstm_cell_291/mul:z:0 lstm_465/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_465/lstm_cell_291/Sigmoid_2Sigmoid%lstm_465/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_465/lstm_cell_291/Relu_1Relu lstm_465/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_465/lstm_cell_291/mul_2Mul$lstm_465/lstm_cell_291/Sigmoid_2:y:0+lstm_465/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_465/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_465/TensorArrayV2_1TensorListReserve/lstm_465/TensorArrayV2_1/element_shape:output:0!lstm_465/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_465/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_465/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_465/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_465/whileWhile$lstm_465/while/loop_counter:output:0*lstm_465/while/maximum_iterations:output:0lstm_465/time:output:0!lstm_465/TensorArrayV2_1:handle:0lstm_465/zeros:output:0lstm_465/zeros_1:output:0!lstm_465/strided_slice_1:output:0@lstm_465/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_465_lstm_cell_291_matmul_readvariableop_resource7lstm_465_lstm_cell_291_matmul_1_readvariableop_resource6lstm_465_lstm_cell_291_biasadd_readvariableop_resource*
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
lstm_465_while_body_1775480*'
condR
lstm_465_while_cond_1775479*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_465/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_465/TensorArrayV2Stack/TensorListStackTensorListStacklstm_465/while:output:3Blstm_465/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_465/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_465/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_465/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_465/strided_slice_3StridedSlice4lstm_465/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_465/strided_slice_3/stack:output:0)lstm_465/strided_slice_3/stack_1:output:0)lstm_465/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_465/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_465/transpose_1	Transpose4lstm_465/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_465/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_465/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_466/ShapeShapelstm_465/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_466/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_466/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_466/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_sliceStridedSlicelstm_466/Shape:output:0%lstm_466/strided_slice/stack:output:0'lstm_466/strided_slice/stack_1:output:0'lstm_466/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_466/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_466/zeros/packedPacklstm_466/strided_slice:output:0 lstm_466/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_466/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_466/zerosFilllstm_466/zeros/packed:output:0lstm_466/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_466/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_466/zeros_1/packedPacklstm_466/strided_slice:output:0"lstm_466/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_466/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_466/zeros_1Fill lstm_466/zeros_1/packed:output:0lstm_466/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_466/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_466/transpose	Transposelstm_465/transpose_1:y:0 lstm_466/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_466/Shape_1Shapelstm_466/transpose:y:0*
T0*
_output_shapes
:h
lstm_466/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_466/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_466/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_slice_1StridedSlicelstm_466/Shape_1:output:0'lstm_466/strided_slice_1/stack:output:0)lstm_466/strided_slice_1/stack_1:output:0)lstm_466/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_466/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_466/TensorArrayV2TensorListReserve-lstm_466/TensorArrayV2/element_shape:output:0!lstm_466/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_466/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_466/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_466/transpose:y:0Glstm_466/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_466/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_466/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_466/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_slice_2StridedSlicelstm_466/transpose:y:0'lstm_466/strided_slice_2/stack:output:0)lstm_466/strided_slice_2/stack_1:output:0)lstm_466/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_466/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp5lstm_466_lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_466/lstm_cell_292/MatMulMatMul!lstm_466/strided_slice_2:output:04lstm_466/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp7lstm_466_lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_466/lstm_cell_292/MatMul_1MatMullstm_466/zeros:output:06lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_466/lstm_cell_292/addAddV2'lstm_466/lstm_cell_292/MatMul:product:0)lstm_466/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp6lstm_466_lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_466/lstm_cell_292/BiasAddBiasAddlstm_466/lstm_cell_292/add:z:05lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_466/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_466/lstm_cell_292/splitSplit/lstm_466/lstm_cell_292/split/split_dim:output:0'lstm_466/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_466/lstm_cell_292/SigmoidSigmoid%lstm_466/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_466/lstm_cell_292/Sigmoid_1Sigmoid%lstm_466/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/mulMul$lstm_466/lstm_cell_292/Sigmoid_1:y:0lstm_466/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_466/lstm_cell_292/ReluRelu%lstm_466/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/mul_1Mul"lstm_466/lstm_cell_292/Sigmoid:y:0)lstm_466/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/add_1AddV2lstm_466/lstm_cell_292/mul:z:0 lstm_466/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_466/lstm_cell_292/Sigmoid_2Sigmoid%lstm_466/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_466/lstm_cell_292/Relu_1Relu lstm_466/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_466/lstm_cell_292/mul_2Mul$lstm_466/lstm_cell_292/Sigmoid_2:y:0+lstm_466/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_466/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_466/TensorArrayV2_1TensorListReserve/lstm_466/TensorArrayV2_1/element_shape:output:0!lstm_466/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_466/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_466/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_466/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_466/whileWhile$lstm_466/while/loop_counter:output:0*lstm_466/while/maximum_iterations:output:0lstm_466/time:output:0!lstm_466/TensorArrayV2_1:handle:0lstm_466/zeros:output:0lstm_466/zeros_1:output:0!lstm_466/strided_slice_1:output:0@lstm_466/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_466_lstm_cell_292_matmul_readvariableop_resource7lstm_466_lstm_cell_292_matmul_1_readvariableop_resource6lstm_466_lstm_cell_292_biasadd_readvariableop_resource*
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
lstm_466_while_body_1775619*'
condR
lstm_466_while_cond_1775618*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_466/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_466/TensorArrayV2Stack/TensorListStackTensorListStacklstm_466/while:output:3Blstm_466/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_466/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_466/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_466/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_466/strided_slice_3StridedSlice4lstm_466/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_466/strided_slice_3/stack:output:0)lstm_466/strided_slice_3/stack_1:output:0)lstm_466/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_466/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_466/transpose_1	Transpose4lstm_466/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_466/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_466/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_467/ShapeShapelstm_466/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_467/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_467/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_467/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_sliceStridedSlicelstm_467/Shape:output:0%lstm_467/strided_slice/stack:output:0'lstm_467/strided_slice/stack_1:output:0'lstm_467/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_467/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_467/zeros/packedPacklstm_467/strided_slice:output:0 lstm_467/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_467/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_467/zerosFilllstm_467/zeros/packed:output:0lstm_467/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_467/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_467/zeros_1/packedPacklstm_467/strided_slice:output:0"lstm_467/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_467/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_467/zeros_1Fill lstm_467/zeros_1/packed:output:0lstm_467/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_467/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_467/transpose	Transposelstm_466/transpose_1:y:0 lstm_467/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_467/Shape_1Shapelstm_467/transpose:y:0*
T0*
_output_shapes
:h
lstm_467/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_467/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_467/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_slice_1StridedSlicelstm_467/Shape_1:output:0'lstm_467/strided_slice_1/stack:output:0)lstm_467/strided_slice_1/stack_1:output:0)lstm_467/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_467/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_467/TensorArrayV2TensorListReserve-lstm_467/TensorArrayV2/element_shape:output:0!lstm_467/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_467/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_467/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_467/transpose:y:0Glstm_467/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_467/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_467/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_467/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_slice_2StridedSlicelstm_467/transpose:y:0'lstm_467/strided_slice_2/stack:output:0)lstm_467/strided_slice_2/stack_1:output:0)lstm_467/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_467/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp5lstm_467_lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_467/lstm_cell_293/MatMulMatMul!lstm_467/strided_slice_2:output:04lstm_467/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp7lstm_467_lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_467/lstm_cell_293/MatMul_1MatMullstm_467/zeros:output:06lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_467/lstm_cell_293/addAddV2'lstm_467/lstm_cell_293/MatMul:product:0)lstm_467/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp6lstm_467_lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_467/lstm_cell_293/BiasAddBiasAddlstm_467/lstm_cell_293/add:z:05lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_467/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_467/lstm_cell_293/splitSplit/lstm_467/lstm_cell_293/split/split_dim:output:0'lstm_467/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_467/lstm_cell_293/SigmoidSigmoid%lstm_467/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_467/lstm_cell_293/Sigmoid_1Sigmoid%lstm_467/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/mulMul$lstm_467/lstm_cell_293/Sigmoid_1:y:0lstm_467/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_467/lstm_cell_293/ReluRelu%lstm_467/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/mul_1Mul"lstm_467/lstm_cell_293/Sigmoid:y:0)lstm_467/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/add_1AddV2lstm_467/lstm_cell_293/mul:z:0 lstm_467/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_467/lstm_cell_293/Sigmoid_2Sigmoid%lstm_467/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_467/lstm_cell_293/Relu_1Relu lstm_467/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_467/lstm_cell_293/mul_2Mul$lstm_467/lstm_cell_293/Sigmoid_2:y:0+lstm_467/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_467/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_467/TensorArrayV2_1TensorListReserve/lstm_467/TensorArrayV2_1/element_shape:output:0!lstm_467/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_467/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_467/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_467/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_467/whileWhile$lstm_467/while/loop_counter:output:0*lstm_467/while/maximum_iterations:output:0lstm_467/time:output:0!lstm_467/TensorArrayV2_1:handle:0lstm_467/zeros:output:0lstm_467/zeros_1:output:0!lstm_467/strided_slice_1:output:0@lstm_467/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_467_lstm_cell_293_matmul_readvariableop_resource7lstm_467_lstm_cell_293_matmul_1_readvariableop_resource6lstm_467_lstm_cell_293_biasadd_readvariableop_resource*
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
lstm_467_while_body_1775758*'
condR
lstm_467_while_cond_1775757*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_467/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_467/TensorArrayV2Stack/TensorListStackTensorListStacklstm_467/while:output:3Blstm_467/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_467/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_467/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_467/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_467/strided_slice_3StridedSlice4lstm_467/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_467/strided_slice_3/stack:output:0)lstm_467/strided_slice_3/stack_1:output:0)lstm_467/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_467/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_467/transpose_1	Transpose4lstm_467/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_467/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_467/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_155/MatMul/ReadVariableOpReadVariableOp(dense_155_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_155/MatMulMatMul!lstm_467/strided_slice_3:output:0'dense_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_155/BiasAdd/ReadVariableOpReadVariableOp)dense_155_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_155/BiasAddBiasAdddense_155/MatMul:product:0(dense_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_155/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_155/BiasAdd/ReadVariableOp ^dense_155/MatMul/ReadVariableOp.^lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp-^lstm_465/lstm_cell_291/MatMul/ReadVariableOp/^lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp^lstm_465/while.^lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp-^lstm_466/lstm_cell_292/MatMul/ReadVariableOp/^lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp^lstm_466/while.^lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp-^lstm_467/lstm_cell_293/MatMul/ReadVariableOp/^lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp^lstm_467/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_155/BiasAdd/ReadVariableOp dense_155/BiasAdd/ReadVariableOp2B
dense_155/MatMul/ReadVariableOpdense_155/MatMul/ReadVariableOp2^
-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp-lstm_465/lstm_cell_291/BiasAdd/ReadVariableOp2\
,lstm_465/lstm_cell_291/MatMul/ReadVariableOp,lstm_465/lstm_cell_291/MatMul/ReadVariableOp2`
.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp.lstm_465/lstm_cell_291/MatMul_1/ReadVariableOp2 
lstm_465/whilelstm_465/while2^
-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp-lstm_466/lstm_cell_292/BiasAdd/ReadVariableOp2\
,lstm_466/lstm_cell_292/MatMul/ReadVariableOp,lstm_466/lstm_cell_292/MatMul/ReadVariableOp2`
.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp.lstm_466/lstm_cell_292/MatMul_1/ReadVariableOp2 
lstm_466/whilelstm_466/while2^
-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp-lstm_467/lstm_cell_293/BiasAdd/ReadVariableOp2\
,lstm_467/lstm_cell_293/MatMul/ReadVariableOp,lstm_467/lstm_cell_293/MatMul/ReadVariableOp2`
.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp.lstm_467/lstm_cell_293/MatMul_1/ReadVariableOp2 
lstm_467/whilelstm_467/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774875
lstm_465_input#
lstm_465_1774848:	?#
lstm_465_1774850:	d?
lstm_465_1774852:	?#
lstm_466_1774855:	d?#
lstm_466_1774857:	2?
lstm_466_1774859:	?"
lstm_467_1774862:2("
lstm_467_1774864:
(
lstm_467_1774866:(#
dense_155_1774869:

dense_155_1774871:
identity??!dense_155/StatefulPartitionedCall? lstm_465/StatefulPartitionedCall? lstm_466/StatefulPartitionedCall? lstm_467/StatefulPartitionedCall?
 lstm_465/StatefulPartitionedCallStatefulPartitionedCalllstm_465_inputlstm_465_1774848lstm_465_1774850lstm_465_1774852*
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1773879?
 lstm_466/StatefulPartitionedCallStatefulPartitionedCall)lstm_465/StatefulPartitionedCall:output:0lstm_466_1774855lstm_466_1774857lstm_466_1774859*
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774029?
 lstm_467/StatefulPartitionedCallStatefulPartitionedCall)lstm_466/StatefulPartitionedCall:output:0lstm_467_1774862lstm_467_1774864lstm_467_1774866*
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774179?
!dense_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_467/StatefulPartitionedCall:output:0dense_155_1774869dense_155_1774871*
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
F__inference_dense_155_layer_call_and_return_conditional_losses_1774197y
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_155/StatefulPartitionedCall!^lstm_465/StatefulPartitionedCall!^lstm_466/StatefulPartitionedCall!^lstm_467/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall2D
 lstm_465/StatefulPartitionedCall lstm_465/StatefulPartitionedCall2D
 lstm_466/StatefulPartitionedCall lstm_466/StatefulPartitionedCall2D
 lstm_467/StatefulPartitionedCall lstm_467/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_465_input
?
?
while_cond_1773794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1773794___redundant_placeholder05
1while_while_cond_1773794___redundant_placeholder15
1while_while_cond_1773794___redundant_placeholder25
1while_while_cond_1773794___redundant_placeholder3
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
while_body_1774095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_293_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_293_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_293_matmul_readvariableop_resource:2(F
4while_lstm_cell_293_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_293_biasadd_readvariableop_resource:(??*while/lstm_cell_293/BiasAdd/ReadVariableOp?)while/lstm_cell_293/MatMul/ReadVariableOp?+while/lstm_cell_293/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_293/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_293/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_293/addAddV2$while/lstm_cell_293/MatMul:product:0&while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_293/BiasAddBiasAddwhile/lstm_cell_293/add:z:02while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_293/splitSplit,while/lstm_cell_293/split/split_dim:output:0$while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_293/SigmoidSigmoid"while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_1Sigmoid"while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mulMul!while/lstm_cell_293/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_293/ReluRelu"while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_1Mulwhile/lstm_cell_293/Sigmoid:y:0&while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/add_1AddV2while/lstm_cell_293/mul:z:0while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_2Sigmoid"while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_293/Relu_1Reluwhile/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_2Mul!while/lstm_cell_293/Sigmoid_2:y:0(while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_293/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_293/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_293/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_293/BiasAdd/ReadVariableOp*^while/lstm_cell_293/MatMul/ReadVariableOp,^while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_293_biasadd_readvariableop_resource5while_lstm_cell_293_biasadd_readvariableop_resource_0"n
4while_lstm_cell_293_matmul_1_readvariableop_resource6while_lstm_cell_293_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_293_matmul_readvariableop_resource4while_lstm_cell_293_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_293/BiasAdd/ReadVariableOp*while/lstm_cell_293/BiasAdd/ReadVariableOp2V
)while/lstm_cell_293/MatMul/ReadVariableOp)while/lstm_cell_293/MatMul/ReadVariableOp2Z
+while/lstm_cell_293/MatMul_1/ReadVariableOp+while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777696

inputs>
,lstm_cell_293_matmul_readvariableop_resource:2(@
.lstm_cell_293_matmul_1_readvariableop_resource:
(;
-lstm_cell_293_biasadd_readvariableop_resource:(
identity??$lstm_cell_293/BiasAdd/ReadVariableOp?#lstm_cell_293/MatMul/ReadVariableOp?%lstm_cell_293/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_293/MatMul/ReadVariableOpReadVariableOp,lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_293/MatMulMatMulstrided_slice_2:output:0+lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_293/MatMul_1MatMulzeros:output:0-lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_293/addAddV2lstm_cell_293/MatMul:product:0 lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_293/BiasAddBiasAddlstm_cell_293/add:z:0,lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_293/splitSplit&lstm_cell_293/split/split_dim:output:0lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_293/SigmoidSigmoidlstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_1Sigmoidlstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_293/mulMullstm_cell_293/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_293/ReluRelulstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_1Mullstm_cell_293/Sigmoid:y:0 lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_293/add_1AddV2lstm_cell_293/mul:z:0lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_2Sigmoidlstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_293/Relu_1Relulstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_2Mullstm_cell_293/Sigmoid_2:y:0"lstm_cell_293/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_293_matmul_readvariableop_resource.lstm_cell_293_matmul_1_readvariableop_resource-lstm_cell_293_biasadd_readvariableop_resource*
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
while_body_1777612*
condR
while_cond_1777611*K
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
NoOpNoOp%^lstm_cell_293/BiasAdd/ReadVariableOp$^lstm_cell_293/MatMul/ReadVariableOp&^lstm_cell_293/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_293/BiasAdd/ReadVariableOp$lstm_cell_293/BiasAdd/ReadVariableOp2J
#lstm_cell_293/MatMul/ReadVariableOp#lstm_cell_293/MatMul/ReadVariableOp2N
%lstm_cell_293/MatMul_1/ReadVariableOp%lstm_cell_293/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*sequential_155_lstm_466_while_cond_1772450L
Hsequential_155_lstm_466_while_sequential_155_lstm_466_while_loop_counterR
Nsequential_155_lstm_466_while_sequential_155_lstm_466_while_maximum_iterations-
)sequential_155_lstm_466_while_placeholder/
+sequential_155_lstm_466_while_placeholder_1/
+sequential_155_lstm_466_while_placeholder_2/
+sequential_155_lstm_466_while_placeholder_3N
Jsequential_155_lstm_466_while_less_sequential_155_lstm_466_strided_slice_1e
asequential_155_lstm_466_while_sequential_155_lstm_466_while_cond_1772450___redundant_placeholder0e
asequential_155_lstm_466_while_sequential_155_lstm_466_while_cond_1772450___redundant_placeholder1e
asequential_155_lstm_466_while_sequential_155_lstm_466_while_cond_1772450___redundant_placeholder2e
asequential_155_lstm_466_while_sequential_155_lstm_466_while_cond_1772450___redundant_placeholder3*
&sequential_155_lstm_466_while_identity
?
"sequential_155/lstm_466/while/LessLess)sequential_155_lstm_466_while_placeholderJsequential_155_lstm_466_while_less_sequential_155_lstm_466_strided_slice_1*
T0*
_output_shapes
: {
&sequential_155/lstm_466/while/IdentityIdentity&sequential_155/lstm_466/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_155_lstm_466_while_identity/sequential_155/lstm_466/while/Identity:output:0*(
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
while_cond_1776566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1776566___redundant_placeholder05
1while_while_cond_1776566___redundant_placeholder15
1while_while_cond_1776566___redundant_placeholder25
1while_while_cond_1776566___redundant_placeholder3
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774560

inputs?
,lstm_cell_292_matmul_readvariableop_resource:	d?A
.lstm_cell_292_matmul_1_readvariableop_resource:	2?<
-lstm_cell_292_biasadd_readvariableop_resource:	?
identity??$lstm_cell_292/BiasAdd/ReadVariableOp?#lstm_cell_292/MatMul/ReadVariableOp?%lstm_cell_292/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_292/MatMul/ReadVariableOpReadVariableOp,lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_292/MatMulMatMulstrided_slice_2:output:0+lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_292/MatMul_1MatMulzeros:output:0-lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_292/addAddV2lstm_cell_292/MatMul:product:0 lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_292/BiasAddBiasAddlstm_cell_292/add:z:0,lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_292/splitSplit&lstm_cell_292/split/split_dim:output:0lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_292/SigmoidSigmoidlstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_1Sigmoidlstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_292/mulMullstm_cell_292/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_292/ReluRelulstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_1Mullstm_cell_292/Sigmoid:y:0 lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_292/add_1AddV2lstm_cell_292/mul:z:0lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_2Sigmoidlstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_292/Relu_1Relulstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_2Mullstm_cell_292/Sigmoid_2:y:0"lstm_cell_292/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_292_matmul_readvariableop_resource.lstm_cell_292_matmul_1_readvariableop_resource-lstm_cell_292_biasadd_readvariableop_resource*
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
while_body_1774476*
condR
while_cond_1774475*K
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
NoOpNoOp%^lstm_cell_292/BiasAdd/ReadVariableOp$^lstm_cell_292/MatMul/ReadVariableOp&^lstm_cell_292/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_292/BiasAdd/ReadVariableOp$lstm_cell_292/BiasAdd/ReadVariableOp2J
#lstm_cell_292/MatMul/ReadVariableOp#lstm_cell_292/MatMul/ReadVariableOp2N
%lstm_cell_292/MatMul_1/ReadVariableOp%lstm_cell_292/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_292_layer_call_fn_1777847

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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773243o
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
?
?
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774204

inputs#
lstm_465_1773880:	?#
lstm_465_1773882:	d?
lstm_465_1773884:	?#
lstm_466_1774030:	d?#
lstm_466_1774032:	2?
lstm_466_1774034:	?"
lstm_467_1774180:2("
lstm_467_1774182:
(
lstm_467_1774184:(#
dense_155_1774198:

dense_155_1774200:
identity??!dense_155/StatefulPartitionedCall? lstm_465/StatefulPartitionedCall? lstm_466/StatefulPartitionedCall? lstm_467/StatefulPartitionedCall?
 lstm_465/StatefulPartitionedCallStatefulPartitionedCallinputslstm_465_1773880lstm_465_1773882lstm_465_1773884*
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1773879?
 lstm_466/StatefulPartitionedCallStatefulPartitionedCall)lstm_465/StatefulPartitionedCall:output:0lstm_466_1774030lstm_466_1774032lstm_466_1774034*
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1774029?
 lstm_467/StatefulPartitionedCallStatefulPartitionedCall)lstm_466/StatefulPartitionedCall:output:0lstm_467_1774180lstm_467_1774182lstm_467_1774184*
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1774179?
!dense_155/StatefulPartitionedCallStatefulPartitionedCall)lstm_467/StatefulPartitionedCall:output:0dense_155_1774198dense_155_1774200*
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
F__inference_dense_155_layer_call_and_return_conditional_losses_1774197y
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_155/StatefulPartitionedCall!^lstm_465/StatefulPartitionedCall!^lstm_466/StatefulPartitionedCall!^lstm_467/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall2D
 lstm_465/StatefulPartitionedCall lstm_465/StatefulPartitionedCall2D
 lstm_466/StatefulPartitionedCall lstm_466/StatefulPartitionedCall2D
 lstm_467/StatefulPartitionedCall lstm_467/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1776379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1776379___redundant_placeholder05
1while_while_cond_1776379___redundant_placeholder15
1while_while_cond_1776379___redundant_placeholder25
1while_while_cond_1776379___redundant_placeholder3
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777410
inputs_0>
,lstm_cell_293_matmul_readvariableop_resource:2(@
.lstm_cell_293_matmul_1_readvariableop_resource:
(;
-lstm_cell_293_biasadd_readvariableop_resource:(
identity??$lstm_cell_293/BiasAdd/ReadVariableOp?#lstm_cell_293/MatMul/ReadVariableOp?%lstm_cell_293/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_293/MatMul/ReadVariableOpReadVariableOp,lstm_cell_293_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_293/MatMulMatMulstrided_slice_2:output:0+lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_293_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_293/MatMul_1MatMulzeros:output:0-lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_293/addAddV2lstm_cell_293/MatMul:product:0 lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_293_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_293/BiasAddBiasAddlstm_cell_293/add:z:0,lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_293/splitSplit&lstm_cell_293/split/split_dim:output:0lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_293/SigmoidSigmoidlstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_1Sigmoidlstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_293/mulMullstm_cell_293/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_293/ReluRelulstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_1Mullstm_cell_293/Sigmoid:y:0 lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_293/add_1AddV2lstm_cell_293/mul:z:0lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_293/Sigmoid_2Sigmoidlstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_293/Relu_1Relulstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_293/mul_2Mullstm_cell_293/Sigmoid_2:y:0"lstm_cell_293/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_293_matmul_readvariableop_resource.lstm_cell_293_matmul_1_readvariableop_resource-lstm_cell_293_biasadd_readvariableop_resource*
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
while_body_1777326*
condR
while_cond_1777325*K
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
NoOpNoOp%^lstm_cell_293/BiasAdd/ReadVariableOp$^lstm_cell_293/MatMul/ReadVariableOp&^lstm_cell_293/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_293/BiasAdd/ReadVariableOp$lstm_cell_293/BiasAdd/ReadVariableOp2J
#lstm_cell_293/MatMul/ReadVariableOp#lstm_cell_293/MatMul/ReadVariableOp2N
%lstm_cell_293/MatMul_1/ReadVariableOp%lstm_cell_293/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_466_layer_call_fn_1776475
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1773180|
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
?
E__inference_lstm_467_layer_call_and_return_conditional_losses_1773530

inputs'
lstm_cell_293_1773448:2('
lstm_cell_293_1773450:
(#
lstm_cell_293_1773452:(
identity??%lstm_cell_293/StatefulPartitionedCall?while;
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
%lstm_cell_293/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_293_1773448lstm_cell_293_1773450lstm_cell_293_1773452*
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773447n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_293_1773448lstm_cell_293_1773450lstm_cell_293_1773452*
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
while_body_1773461*
condR
while_cond_1773460*K
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
NoOpNoOp&^lstm_cell_293/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_293/StatefulPartitionedCall%lstm_cell_293/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1776853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_292_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_292_matmul_readvariableop_resource:	d?G
4while_lstm_cell_292_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_292_biasadd_readvariableop_resource:	???*while/lstm_cell_292/BiasAdd/ReadVariableOp?)while/lstm_cell_292/MatMul/ReadVariableOp?+while/lstm_cell_292/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_292/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_292/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_292/addAddV2$while/lstm_cell_292/MatMul:product:0&while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_292/BiasAddBiasAddwhile/lstm_cell_292/add:z:02while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_292/splitSplit,while/lstm_cell_292/split/split_dim:output:0$while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_292/SigmoidSigmoid"while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_1Sigmoid"while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mulMul!while/lstm_cell_292/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_292/ReluRelu"while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_1Mulwhile/lstm_cell_292/Sigmoid:y:0&while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/add_1AddV2while/lstm_cell_292/mul:z:0while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_2Sigmoid"while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_292/Relu_1Reluwhile/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_2Mul!while/lstm_cell_292/Sigmoid_2:y:0(while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_292/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_292/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_292/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_292/BiasAdd/ReadVariableOp*^while/lstm_cell_292/MatMul/ReadVariableOp,^while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_292_biasadd_readvariableop_resource5while_lstm_cell_292_biasadd_readvariableop_resource_0"n
4while_lstm_cell_292_matmul_1_readvariableop_resource6while_lstm_cell_292_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_292_matmul_readvariableop_resource4while_lstm_cell_292_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_292/BiasAdd/ReadVariableOp*while/lstm_cell_292/BiasAdd/ReadVariableOp2V
)while/lstm_cell_292/MatMul/ReadVariableOp)while/lstm_cell_292/MatMul/ReadVariableOp2Z
+while/lstm_cell_292/MatMul_1/ReadVariableOp+while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_467_while_body_1775758.
*lstm_467_while_lstm_467_while_loop_counter4
0lstm_467_while_lstm_467_while_maximum_iterations
lstm_467_while_placeholder 
lstm_467_while_placeholder_1 
lstm_467_while_placeholder_2 
lstm_467_while_placeholder_3-
)lstm_467_while_lstm_467_strided_slice_1_0i
elstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0:2(Q
?lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(L
>lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0:(
lstm_467_while_identity
lstm_467_while_identity_1
lstm_467_while_identity_2
lstm_467_while_identity_3
lstm_467_while_identity_4
lstm_467_while_identity_5+
'lstm_467_while_lstm_467_strided_slice_1g
clstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensorM
;lstm_467_while_lstm_cell_293_matmul_readvariableop_resource:2(O
=lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource:
(J
<lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource:(??3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp?2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp?4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp?
@lstm_467/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_467/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensor_0lstm_467_while_placeholderIlstm_467/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp=lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_467/while/lstm_cell_293/MatMulMatMul9lstm_467/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp?lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_467/while/lstm_cell_293/MatMul_1MatMullstm_467_while_placeholder_2<lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_467/while/lstm_cell_293/addAddV2-lstm_467/while/lstm_cell_293/MatMul:product:0/lstm_467/while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp>lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_467/while/lstm_cell_293/BiasAddBiasAdd$lstm_467/while/lstm_cell_293/add:z:0;lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_467/while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_467/while/lstm_cell_293/splitSplit5lstm_467/while/lstm_cell_293/split/split_dim:output:0-lstm_467/while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_467/while/lstm_cell_293/SigmoidSigmoid+lstm_467/while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_467/while/lstm_cell_293/Sigmoid_1Sigmoid+lstm_467/while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_467/while/lstm_cell_293/mulMul*lstm_467/while/lstm_cell_293/Sigmoid_1:y:0lstm_467_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_467/while/lstm_cell_293/ReluRelu+lstm_467/while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_467/while/lstm_cell_293/mul_1Mul(lstm_467/while/lstm_cell_293/Sigmoid:y:0/lstm_467/while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_467/while/lstm_cell_293/add_1AddV2$lstm_467/while/lstm_cell_293/mul:z:0&lstm_467/while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_467/while/lstm_cell_293/Sigmoid_2Sigmoid+lstm_467/while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_467/while/lstm_cell_293/Relu_1Relu&lstm_467/while/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_467/while/lstm_cell_293/mul_2Mul*lstm_467/while/lstm_cell_293/Sigmoid_2:y:01lstm_467/while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_467/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_467_while_placeholder_1lstm_467_while_placeholder&lstm_467/while/lstm_cell_293/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_467/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_467/while/addAddV2lstm_467_while_placeholderlstm_467/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_467/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_467/while/add_1AddV2*lstm_467_while_lstm_467_while_loop_counterlstm_467/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_467/while/IdentityIdentitylstm_467/while/add_1:z:0^lstm_467/while/NoOp*
T0*
_output_shapes
: ?
lstm_467/while/Identity_1Identity0lstm_467_while_lstm_467_while_maximum_iterations^lstm_467/while/NoOp*
T0*
_output_shapes
: t
lstm_467/while/Identity_2Identitylstm_467/while/add:z:0^lstm_467/while/NoOp*
T0*
_output_shapes
: ?
lstm_467/while/Identity_3IdentityClstm_467/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_467/while/NoOp*
T0*
_output_shapes
: ?
lstm_467/while/Identity_4Identity&lstm_467/while/lstm_cell_293/mul_2:z:0^lstm_467/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_467/while/Identity_5Identity&lstm_467/while/lstm_cell_293/add_1:z:0^lstm_467/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_467/while/NoOpNoOp4^lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp3^lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp5^lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_467_while_identity lstm_467/while/Identity:output:0"?
lstm_467_while_identity_1"lstm_467/while/Identity_1:output:0"?
lstm_467_while_identity_2"lstm_467/while/Identity_2:output:0"?
lstm_467_while_identity_3"lstm_467/while/Identity_3:output:0"?
lstm_467_while_identity_4"lstm_467/while/Identity_4:output:0"?
lstm_467_while_identity_5"lstm_467/while/Identity_5:output:0"T
'lstm_467_while_lstm_467_strided_slice_1)lstm_467_while_lstm_467_strided_slice_1_0"~
<lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource>lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0"?
=lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource?lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0"|
;lstm_467_while_lstm_cell_293_matmul_readvariableop_resource=lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0"?
clstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensorelstm_467_while_tensorarrayv2read_tensorlistgetitem_lstm_467_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp3lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp2h
2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp2lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp2l
4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp4lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1777469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_293_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_293_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_293_matmul_readvariableop_resource:2(F
4while_lstm_cell_293_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_293_biasadd_readvariableop_resource:(??*while/lstm_cell_293/BiasAdd/ReadVariableOp?)while/lstm_cell_293/MatMul/ReadVariableOp?+while/lstm_cell_293/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_293/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_293/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_293/addAddV2$while/lstm_cell_293/MatMul:product:0&while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_293/BiasAddBiasAddwhile/lstm_cell_293/add:z:02while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_293/splitSplit,while/lstm_cell_293/split/split_dim:output:0$while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_293/SigmoidSigmoid"while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_1Sigmoid"while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mulMul!while/lstm_cell_293/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_293/ReluRelu"while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_1Mulwhile/lstm_cell_293/Sigmoid:y:0&while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/add_1AddV2while/lstm_cell_293/mul:z:0while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_2Sigmoid"while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_293/Relu_1Reluwhile/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_2Mul!while/lstm_cell_293/Sigmoid_2:y:0(while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_293/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_293/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_293/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_293/BiasAdd/ReadVariableOp*^while/lstm_cell_293/MatMul/ReadVariableOp,^while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_293_biasadd_readvariableop_resource5while_lstm_cell_293_biasadd_readvariableop_resource_0"n
4while_lstm_cell_293_matmul_1_readvariableop_resource6while_lstm_cell_293_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_293_matmul_readvariableop_resource4while_lstm_cell_293_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_293/BiasAdd/ReadVariableOp*while/lstm_cell_293/BiasAdd/ReadVariableOp2V
)while/lstm_cell_293/MatMul/ReadVariableOp)while/lstm_cell_293/MatMul/ReadVariableOp2Z
+while/lstm_cell_293/MatMul_1/ReadVariableOp+while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1774476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_292_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_292_matmul_readvariableop_resource:	d?G
4while_lstm_cell_292_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_292_biasadd_readvariableop_resource:	???*while/lstm_cell_292/BiasAdd/ReadVariableOp?)while/lstm_cell_292/MatMul/ReadVariableOp?+while/lstm_cell_292/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_292/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_292/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_292/addAddV2$while/lstm_cell_292/MatMul:product:0&while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_292/BiasAddBiasAddwhile/lstm_cell_292/add:z:02while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_292/splitSplit,while/lstm_cell_292/split/split_dim:output:0$while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_292/SigmoidSigmoid"while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_1Sigmoid"while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mulMul!while/lstm_cell_292/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_292/ReluRelu"while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_1Mulwhile/lstm_cell_292/Sigmoid:y:0&while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/add_1AddV2while/lstm_cell_292/mul:z:0while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_2Sigmoid"while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_292/Relu_1Reluwhile/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_2Mul!while/lstm_cell_292/Sigmoid_2:y:0(while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_292/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_292/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_292/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_292/BiasAdd/ReadVariableOp*^while/lstm_cell_292/MatMul/ReadVariableOp,^while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_292_biasadd_readvariableop_resource5while_lstm_cell_292_biasadd_readvariableop_resource_0"n
4while_lstm_cell_292_matmul_1_readvariableop_resource6while_lstm_cell_292_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_292_matmul_readvariableop_resource4while_lstm_cell_292_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_292/BiasAdd/ReadVariableOp*while/lstm_cell_292/BiasAdd/ReadVariableOp2V
)while/lstm_cell_292/MatMul/ReadVariableOp)while/lstm_cell_292/MatMul/ReadVariableOp2Z
+while/lstm_cell_292/MatMul_1/ReadVariableOp+while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1776996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_292_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_292_matmul_readvariableop_resource:	d?G
4while_lstm_cell_292_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_292_biasadd_readvariableop_resource:	???*while/lstm_cell_292/BiasAdd/ReadVariableOp?)while/lstm_cell_292/MatMul/ReadVariableOp?+while/lstm_cell_292/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_292/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_292/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_292/addAddV2$while/lstm_cell_292/MatMul:product:0&while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_292/BiasAddBiasAddwhile/lstm_cell_292/add:z:02while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_292/splitSplit,while/lstm_cell_292/split/split_dim:output:0$while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_292/SigmoidSigmoid"while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_1Sigmoid"while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mulMul!while/lstm_cell_292/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_292/ReluRelu"while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_1Mulwhile/lstm_cell_292/Sigmoid:y:0&while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/add_1AddV2while/lstm_cell_292/mul:z:0while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_2Sigmoid"while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_292/Relu_1Reluwhile/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_2Mul!while/lstm_cell_292/Sigmoid_2:y:0(while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_292/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_292/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_292/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_292/BiasAdd/ReadVariableOp*^while/lstm_cell_292/MatMul/ReadVariableOp,^while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_292_biasadd_readvariableop_resource5while_lstm_cell_292_biasadd_readvariableop_resource_0"n
4while_lstm_cell_292_matmul_1_readvariableop_resource6while_lstm_cell_292_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_292_matmul_readvariableop_resource4while_lstm_cell_292_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_292/BiasAdd/ReadVariableOp*while/lstm_cell_292/BiasAdd/ReadVariableOp2V
)while/lstm_cell_292/MatMul/ReadVariableOp)while/lstm_cell_292/MatMul/ReadVariableOp2Z
+while/lstm_cell_292/MatMul_1/ReadVariableOp+while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1772893

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
while_cond_1776852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1776852___redundant_placeholder05
1while_while_cond_1776852___redundant_placeholder15
1while_while_cond_1776852___redundant_placeholder25
1while_while_cond_1776852___redundant_placeholder3
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
0__inference_sequential_155_layer_call_fn_1774967

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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774204o
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1777813

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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776794
inputs_0?
,lstm_cell_292_matmul_readvariableop_resource:	d?A
.lstm_cell_292_matmul_1_readvariableop_resource:	2?<
-lstm_cell_292_biasadd_readvariableop_resource:	?
identity??$lstm_cell_292/BiasAdd/ReadVariableOp?#lstm_cell_292/MatMul/ReadVariableOp?%lstm_cell_292/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_292/MatMul/ReadVariableOpReadVariableOp,lstm_cell_292_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_292/MatMulMatMulstrided_slice_2:output:0+lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_292_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_292/MatMul_1MatMulzeros:output:0-lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_292/addAddV2lstm_cell_292/MatMul:product:0 lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_292_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_292/BiasAddBiasAddlstm_cell_292/add:z:0,lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_292/splitSplit&lstm_cell_292/split/split_dim:output:0lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_292/SigmoidSigmoidlstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_1Sigmoidlstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_292/mulMullstm_cell_292/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_292/ReluRelulstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_1Mullstm_cell_292/Sigmoid:y:0 lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_292/add_1AddV2lstm_cell_292/mul:z:0lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_292/Sigmoid_2Sigmoidlstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_292/Relu_1Relulstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_292/mul_2Mullstm_cell_292/Sigmoid_2:y:0"lstm_cell_292/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_292_matmul_readvariableop_resource.lstm_cell_292_matmul_1_readvariableop_resource-lstm_cell_292_biasadd_readvariableop_resource*
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
while_body_1776710*
condR
while_cond_1776709*K
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
NoOpNoOp%^lstm_cell_292/BiasAdd/ReadVariableOp$^lstm_cell_292/MatMul/ReadVariableOp&^lstm_cell_292/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_292/BiasAdd/ReadVariableOp$lstm_cell_292/BiasAdd/ReadVariableOp2J
#lstm_cell_292/MatMul/ReadVariableOp#lstm_cell_292/MatMul/ReadVariableOp2N
%lstm_cell_292/MatMul_1/ReadVariableOp%lstm_cell_292/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?#
?
while_body_1773652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_293_1773676_0:2(/
while_lstm_cell_293_1773678_0:
(+
while_lstm_cell_293_1773680_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_293_1773676:2(-
while_lstm_cell_293_1773678:
()
while_lstm_cell_293_1773680:(??+while/lstm_cell_293/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_293/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_293_1773676_0while_lstm_cell_293_1773678_0while_lstm_cell_293_1773680_0*
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773593?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_293/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_293/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_293/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_293_1773676while_lstm_cell_293_1773676_0"<
while_lstm_cell_293_1773678while_lstm_cell_293_1773678_0"<
while_lstm_cell_293_1773680while_lstm_cell_293_1773680_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_293/StatefulPartitionedCall+while/lstm_cell_293/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1774311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_293_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_293_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_293_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_293_matmul_readvariableop_resource:2(F
4while_lstm_cell_293_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_293_biasadd_readvariableop_resource:(??*while/lstm_cell_293/BiasAdd/ReadVariableOp?)while/lstm_cell_293/MatMul/ReadVariableOp?+while/lstm_cell_293/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_293/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_293/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_293/addAddV2$while/lstm_cell_293/MatMul:product:0&while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_293/BiasAddBiasAddwhile/lstm_cell_293/add:z:02while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_293/splitSplit,while/lstm_cell_293/split/split_dim:output:0$while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_293/SigmoidSigmoid"while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_1Sigmoid"while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mulMul!while/lstm_cell_293/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_293/ReluRelu"while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_1Mulwhile/lstm_cell_293/Sigmoid:y:0&while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/add_1AddV2while/lstm_cell_293/mul:z:0while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_293/Sigmoid_2Sigmoid"while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_293/Relu_1Reluwhile/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_293/mul_2Mul!while/lstm_cell_293/Sigmoid_2:y:0(while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_293/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_293/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_293/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_293/BiasAdd/ReadVariableOp*^while/lstm_cell_293/MatMul/ReadVariableOp,^while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_293_biasadd_readvariableop_resource5while_lstm_cell_293_biasadd_readvariableop_resource_0"n
4while_lstm_cell_293_matmul_1_readvariableop_resource6while_lstm_cell_293_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_293_matmul_readvariableop_resource4while_lstm_cell_293_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_293/BiasAdd/ReadVariableOp*while/lstm_cell_293/BiasAdd/ReadVariableOp2V
)while/lstm_cell_293/MatMul/ReadVariableOp)while/lstm_cell_293/MatMul/ReadVariableOp2Z
+while/lstm_cell_293/MatMul_1/ReadVariableOp+while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1777879

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
?#
?
while_body_1773302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_292_1773326_0:	d?0
while_lstm_cell_292_1773328_0:	2?,
while_lstm_cell_292_1773330_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_292_1773326:	d?.
while_lstm_cell_292_1773328:	2?*
while_lstm_cell_292_1773330:	???+while/lstm_cell_292/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_292/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_292_1773326_0while_lstm_cell_292_1773328_0while_lstm_cell_292_1773330_0*
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773243?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_292/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_292/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_292/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_292/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_292_1773326while_lstm_cell_292_1773326_0"<
while_lstm_cell_292_1773328while_lstm_cell_292_1773328_0"<
while_lstm_cell_292_1773330while_lstm_cell_292_1773330_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_292/StatefulPartitionedCall+while/lstm_cell_292/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1773447

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
0__inference_sequential_155_layer_call_fn_1774845
lstm_465_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_465_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774793o
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
_user_specified_namelstm_465_input
?
?
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773243

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
?T
?
*sequential_155_lstm_467_while_body_1772590L
Hsequential_155_lstm_467_while_sequential_155_lstm_467_while_loop_counterR
Nsequential_155_lstm_467_while_sequential_155_lstm_467_while_maximum_iterations-
)sequential_155_lstm_467_while_placeholder/
+sequential_155_lstm_467_while_placeholder_1/
+sequential_155_lstm_467_while_placeholder_2/
+sequential_155_lstm_467_while_placeholder_3K
Gsequential_155_lstm_467_while_sequential_155_lstm_467_strided_slice_1_0?
?sequential_155_lstm_467_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_467_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_155_lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0:2(`
Nsequential_155_lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0:
([
Msequential_155_lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0:(*
&sequential_155_lstm_467_while_identity,
(sequential_155_lstm_467_while_identity_1,
(sequential_155_lstm_467_while_identity_2,
(sequential_155_lstm_467_while_identity_3,
(sequential_155_lstm_467_while_identity_4,
(sequential_155_lstm_467_while_identity_5I
Esequential_155_lstm_467_while_sequential_155_lstm_467_strided_slice_1?
?sequential_155_lstm_467_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_467_tensorarrayunstack_tensorlistfromtensor\
Jsequential_155_lstm_467_while_lstm_cell_293_matmul_readvariableop_resource:2(^
Lsequential_155_lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource:
(Y
Ksequential_155_lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource:(??Bsequential_155/lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp?Asequential_155/lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp?Csequential_155/lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp?
Osequential_155/lstm_467/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_155/lstm_467/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_155_lstm_467_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_467_tensorarrayunstack_tensorlistfromtensor_0)sequential_155_lstm_467_while_placeholderXsequential_155/lstm_467/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_155/lstm_467/while/lstm_cell_293/MatMul/ReadVariableOpReadVariableOpLsequential_155_lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_155/lstm_467/while/lstm_cell_293/MatMulMatMulHsequential_155/lstm_467/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_155/lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_155/lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOpReadVariableOpNsequential_155_lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_155/lstm_467/while/lstm_cell_293/MatMul_1MatMul+sequential_155_lstm_467_while_placeholder_2Ksequential_155/lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_155/lstm_467/while/lstm_cell_293/addAddV2<sequential_155/lstm_467/while/lstm_cell_293/MatMul:product:0>sequential_155/lstm_467/while/lstm_cell_293/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_155/lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOpReadVariableOpMsequential_155_lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_155/lstm_467/while/lstm_cell_293/BiasAddBiasAdd3sequential_155/lstm_467/while/lstm_cell_293/add:z:0Jsequential_155/lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_155/lstm_467/while/lstm_cell_293/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_155/lstm_467/while/lstm_cell_293/splitSplitDsequential_155/lstm_467/while/lstm_cell_293/split/split_dim:output:0<sequential_155/lstm_467/while/lstm_cell_293/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_155/lstm_467/while/lstm_cell_293/SigmoidSigmoid:sequential_155/lstm_467/while/lstm_cell_293/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_155/lstm_467/while/lstm_cell_293/Sigmoid_1Sigmoid:sequential_155/lstm_467/while/lstm_cell_293/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_155/lstm_467/while/lstm_cell_293/mulMul9sequential_155/lstm_467/while/lstm_cell_293/Sigmoid_1:y:0+sequential_155_lstm_467_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_155/lstm_467/while/lstm_cell_293/ReluRelu:sequential_155/lstm_467/while/lstm_cell_293/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_155/lstm_467/while/lstm_cell_293/mul_1Mul7sequential_155/lstm_467/while/lstm_cell_293/Sigmoid:y:0>sequential_155/lstm_467/while/lstm_cell_293/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_155/lstm_467/while/lstm_cell_293/add_1AddV23sequential_155/lstm_467/while/lstm_cell_293/mul:z:05sequential_155/lstm_467/while/lstm_cell_293/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_155/lstm_467/while/lstm_cell_293/Sigmoid_2Sigmoid:sequential_155/lstm_467/while/lstm_cell_293/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_155/lstm_467/while/lstm_cell_293/Relu_1Relu5sequential_155/lstm_467/while/lstm_cell_293/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_155/lstm_467/while/lstm_cell_293/mul_2Mul9sequential_155/lstm_467/while/lstm_cell_293/Sigmoid_2:y:0@sequential_155/lstm_467/while/lstm_cell_293/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_155/lstm_467/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_155_lstm_467_while_placeholder_1)sequential_155_lstm_467_while_placeholder5sequential_155/lstm_467/while/lstm_cell_293/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_155/lstm_467/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_155/lstm_467/while/addAddV2)sequential_155_lstm_467_while_placeholder,sequential_155/lstm_467/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_155/lstm_467/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_155/lstm_467/while/add_1AddV2Hsequential_155_lstm_467_while_sequential_155_lstm_467_while_loop_counter.sequential_155/lstm_467/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_155/lstm_467/while/IdentityIdentity'sequential_155/lstm_467/while/add_1:z:0#^sequential_155/lstm_467/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_467/while/Identity_1IdentityNsequential_155_lstm_467_while_sequential_155_lstm_467_while_maximum_iterations#^sequential_155/lstm_467/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_467/while/Identity_2Identity%sequential_155/lstm_467/while/add:z:0#^sequential_155/lstm_467/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_467/while/Identity_3IdentityRsequential_155/lstm_467/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_155/lstm_467/while/NoOp*
T0*
_output_shapes
: ?
(sequential_155/lstm_467/while/Identity_4Identity5sequential_155/lstm_467/while/lstm_cell_293/mul_2:z:0#^sequential_155/lstm_467/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_155/lstm_467/while/Identity_5Identity5sequential_155/lstm_467/while/lstm_cell_293/add_1:z:0#^sequential_155/lstm_467/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_155/lstm_467/while/NoOpNoOpC^sequential_155/lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOpB^sequential_155/lstm_467/while/lstm_cell_293/MatMul/ReadVariableOpD^sequential_155/lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_155_lstm_467_while_identity/sequential_155/lstm_467/while/Identity:output:0"]
(sequential_155_lstm_467_while_identity_11sequential_155/lstm_467/while/Identity_1:output:0"]
(sequential_155_lstm_467_while_identity_21sequential_155/lstm_467/while/Identity_2:output:0"]
(sequential_155_lstm_467_while_identity_31sequential_155/lstm_467/while/Identity_3:output:0"]
(sequential_155_lstm_467_while_identity_41sequential_155/lstm_467/while/Identity_4:output:0"]
(sequential_155_lstm_467_while_identity_51sequential_155/lstm_467/while/Identity_5:output:0"?
Ksequential_155_lstm_467_while_lstm_cell_293_biasadd_readvariableop_resourceMsequential_155_lstm_467_while_lstm_cell_293_biasadd_readvariableop_resource_0"?
Lsequential_155_lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resourceNsequential_155_lstm_467_while_lstm_cell_293_matmul_1_readvariableop_resource_0"?
Jsequential_155_lstm_467_while_lstm_cell_293_matmul_readvariableop_resourceLsequential_155_lstm_467_while_lstm_cell_293_matmul_readvariableop_resource_0"?
Esequential_155_lstm_467_while_sequential_155_lstm_467_strided_slice_1Gsequential_155_lstm_467_while_sequential_155_lstm_467_strided_slice_1_0"?
?sequential_155_lstm_467_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_467_tensorarrayunstack_tensorlistfromtensor?sequential_155_lstm_467_while_tensorarrayv2read_tensorlistgetitem_sequential_155_lstm_467_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_155/lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOpBsequential_155/lstm_467/while/lstm_cell_293/BiasAdd/ReadVariableOp2?
Asequential_155/lstm_467/while/lstm_cell_293/MatMul/ReadVariableOpAsequential_155/lstm_467/while/lstm_cell_293/MatMul/ReadVariableOp2?
Csequential_155/lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOpCsequential_155/lstm_467/while/lstm_cell_293/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773097

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

lstm_465_while_body_1775053.
*lstm_465_while_lstm_465_while_loop_counter4
0lstm_465_while_lstm_465_while_maximum_iterations
lstm_465_while_placeholder 
lstm_465_while_placeholder_1 
lstm_465_while_placeholder_2 
lstm_465_while_placeholder_3-
)lstm_465_while_lstm_465_strided_slice_1_0i
elstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0:	?R
?lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0:	d?M
>lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0:	?
lstm_465_while_identity
lstm_465_while_identity_1
lstm_465_while_identity_2
lstm_465_while_identity_3
lstm_465_while_identity_4
lstm_465_while_identity_5+
'lstm_465_while_lstm_465_strided_slice_1g
clstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensorN
;lstm_465_while_lstm_cell_291_matmul_readvariableop_resource:	?P
=lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource:	d?K
<lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource:	???3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp?2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp?4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp?
@lstm_465/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_465/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensor_0lstm_465_while_placeholderIlstm_465/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOpReadVariableOp=lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_465/while/lstm_cell_291/MatMulMatMul9lstm_465/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp?lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_465/while/lstm_cell_291/MatMul_1MatMullstm_465_while_placeholder_2<lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_465/while/lstm_cell_291/addAddV2-lstm_465/while/lstm_cell_291/MatMul:product:0/lstm_465/while/lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp>lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_465/while/lstm_cell_291/BiasAddBiasAdd$lstm_465/while/lstm_cell_291/add:z:0;lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_465/while/lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_465/while/lstm_cell_291/splitSplit5lstm_465/while/lstm_cell_291/split/split_dim:output:0-lstm_465/while/lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_465/while/lstm_cell_291/SigmoidSigmoid+lstm_465/while/lstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_465/while/lstm_cell_291/Sigmoid_1Sigmoid+lstm_465/while/lstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_465/while/lstm_cell_291/mulMul*lstm_465/while/lstm_cell_291/Sigmoid_1:y:0lstm_465_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_465/while/lstm_cell_291/ReluRelu+lstm_465/while/lstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_465/while/lstm_cell_291/mul_1Mul(lstm_465/while/lstm_cell_291/Sigmoid:y:0/lstm_465/while/lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_465/while/lstm_cell_291/add_1AddV2$lstm_465/while/lstm_cell_291/mul:z:0&lstm_465/while/lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_465/while/lstm_cell_291/Sigmoid_2Sigmoid+lstm_465/while/lstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_465/while/lstm_cell_291/Relu_1Relu&lstm_465/while/lstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_465/while/lstm_cell_291/mul_2Mul*lstm_465/while/lstm_cell_291/Sigmoid_2:y:01lstm_465/while/lstm_cell_291/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_465/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_465_while_placeholder_1lstm_465_while_placeholder&lstm_465/while/lstm_cell_291/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_465/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_465/while/addAddV2lstm_465_while_placeholderlstm_465/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_465/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_465/while/add_1AddV2*lstm_465_while_lstm_465_while_loop_counterlstm_465/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_465/while/IdentityIdentitylstm_465/while/add_1:z:0^lstm_465/while/NoOp*
T0*
_output_shapes
: ?
lstm_465/while/Identity_1Identity0lstm_465_while_lstm_465_while_maximum_iterations^lstm_465/while/NoOp*
T0*
_output_shapes
: t
lstm_465/while/Identity_2Identitylstm_465/while/add:z:0^lstm_465/while/NoOp*
T0*
_output_shapes
: ?
lstm_465/while/Identity_3IdentityClstm_465/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_465/while/NoOp*
T0*
_output_shapes
: ?
lstm_465/while/Identity_4Identity&lstm_465/while/lstm_cell_291/mul_2:z:0^lstm_465/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_465/while/Identity_5Identity&lstm_465/while/lstm_cell_291/add_1:z:0^lstm_465/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_465/while/NoOpNoOp4^lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp3^lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp5^lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_465_while_identity lstm_465/while/Identity:output:0"?
lstm_465_while_identity_1"lstm_465/while/Identity_1:output:0"?
lstm_465_while_identity_2"lstm_465/while/Identity_2:output:0"?
lstm_465_while_identity_3"lstm_465/while/Identity_3:output:0"?
lstm_465_while_identity_4"lstm_465/while/Identity_4:output:0"?
lstm_465_while_identity_5"lstm_465/while/Identity_5:output:0"T
'lstm_465_while_lstm_465_strided_slice_1)lstm_465_while_lstm_465_strided_slice_1_0"~
<lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource>lstm_465_while_lstm_cell_291_biasadd_readvariableop_resource_0"?
=lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource?lstm_465_while_lstm_cell_291_matmul_1_readvariableop_resource_0"|
;lstm_465_while_lstm_cell_291_matmul_readvariableop_resource=lstm_465_while_lstm_cell_291_matmul_readvariableop_resource_0"?
clstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensorelstm_465_while_tensorarrayv2read_tensorlistgetitem_lstm_465_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp3lstm_465/while/lstm_cell_291/BiasAdd/ReadVariableOp2h
2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp2lstm_465/while/lstm_cell_291/MatMul/ReadVariableOp2l
4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp4lstm_465/while/lstm_cell_291/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1773111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_292_1773135_0:	d?0
while_lstm_cell_292_1773137_0:	2?,
while_lstm_cell_292_1773139_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_292_1773135:	d?.
while_lstm_cell_292_1773137:	2?*
while_lstm_cell_292_1773139:	???+while/lstm_cell_292/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_292/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_292_1773135_0while_lstm_cell_292_1773137_0while_lstm_cell_292_1773139_0*
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1773097?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_292/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_292/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_292/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_292/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_292_1773135while_lstm_cell_292_1773135_0"<
while_lstm_cell_292_1773137while_lstm_cell_292_1773137_0"<
while_lstm_cell_292_1773139while_lstm_cell_292_1773139_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_292/StatefulPartitionedCall+while/lstm_cell_292/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_467_layer_call_fn_1777091
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1773530o
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
while_body_1776567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_292_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_292_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_292_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_292_matmul_readvariableop_resource:	d?G
4while_lstm_cell_292_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_292_biasadd_readvariableop_resource:	???*while/lstm_cell_292/BiasAdd/ReadVariableOp?)while/lstm_cell_292/MatMul/ReadVariableOp?+while/lstm_cell_292/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_292/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_292_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_292/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_292/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_292/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_292_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_292/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_292/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_292/addAddV2$while/lstm_cell_292/MatMul:product:0&while/lstm_cell_292/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_292/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_292_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_292/BiasAddBiasAddwhile/lstm_cell_292/add:z:02while/lstm_cell_292/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_292/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_292/splitSplit,while/lstm_cell_292/split/split_dim:output:0$while/lstm_cell_292/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_292/SigmoidSigmoid"while/lstm_cell_292/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_1Sigmoid"while/lstm_cell_292/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mulMul!while/lstm_cell_292/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_292/ReluRelu"while/lstm_cell_292/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_1Mulwhile/lstm_cell_292/Sigmoid:y:0&while/lstm_cell_292/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/add_1AddV2while/lstm_cell_292/mul:z:0while/lstm_cell_292/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_292/Sigmoid_2Sigmoid"while/lstm_cell_292/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_292/Relu_1Reluwhile/lstm_cell_292/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_292/mul_2Mul!while/lstm_cell_292/Sigmoid_2:y:0(while/lstm_cell_292/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_292/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_292/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_292/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_292/BiasAdd/ReadVariableOp*^while/lstm_cell_292/MatMul/ReadVariableOp,^while/lstm_cell_292/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_292_biasadd_readvariableop_resource5while_lstm_cell_292_biasadd_readvariableop_resource_0"n
4while_lstm_cell_292_matmul_1_readvariableop_resource6while_lstm_cell_292_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_292_matmul_readvariableop_resource4while_lstm_cell_292_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_292/BiasAdd/ReadVariableOp*while/lstm_cell_292/BiasAdd/ReadVariableOp2V
)while/lstm_cell_292/MatMul/ReadVariableOp)while/lstm_cell_292/MatMul/ReadVariableOp2Z
+while/lstm_cell_292/MatMul_1/ReadVariableOp+while/lstm_cell_292/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1773879

inputs?
,lstm_cell_291_matmul_readvariableop_resource:	?A
.lstm_cell_291_matmul_1_readvariableop_resource:	d?<
-lstm_cell_291_biasadd_readvariableop_resource:	?
identity??$lstm_cell_291/BiasAdd/ReadVariableOp?#lstm_cell_291/MatMul/ReadVariableOp?%lstm_cell_291/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_291/MatMul/ReadVariableOpReadVariableOp,lstm_cell_291_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_291/MatMulMatMulstrided_slice_2:output:0+lstm_cell_291/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_291/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_291_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_291/MatMul_1MatMulzeros:output:0-lstm_cell_291/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_291/addAddV2lstm_cell_291/MatMul:product:0 lstm_cell_291/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_291/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_291_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_291/BiasAddBiasAddlstm_cell_291/add:z:0,lstm_cell_291/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_291/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_291/splitSplit&lstm_cell_291/split/split_dim:output:0lstm_cell_291/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_291/SigmoidSigmoidlstm_cell_291/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_1Sigmoidlstm_cell_291/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_291/mulMullstm_cell_291/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_291/ReluRelulstm_cell_291/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_1Mullstm_cell_291/Sigmoid:y:0 lstm_cell_291/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_291/add_1AddV2lstm_cell_291/mul:z:0lstm_cell_291/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_291/Sigmoid_2Sigmoidlstm_cell_291/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_291/Relu_1Relulstm_cell_291/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_291/mul_2Mullstm_cell_291/Sigmoid_2:y:0"lstm_cell_291/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_291_matmul_readvariableop_resource.lstm_cell_291_matmul_1_readvariableop_resource-lstm_cell_291_biasadd_readvariableop_resource*
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
while_body_1773795*
condR
while_cond_1773794*K
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
NoOpNoOp%^lstm_cell_291/BiasAdd/ReadVariableOp$^lstm_cell_291/MatMul/ReadVariableOp&^lstm_cell_291/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_291/BiasAdd/ReadVariableOp$lstm_cell_291/BiasAdd/ReadVariableOp2J
#lstm_cell_291/MatMul/ReadVariableOp#lstm_cell_291/MatMul/ReadVariableOp2N
%lstm_cell_291/MatMul_1/ReadVariableOp%lstm_cell_291/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1774094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1774094___redundant_placeholder05
1while_while_cond_1774094___redundant_placeholder15
1while_while_cond_1774094___redundant_placeholder25
1while_while_cond_1774094___redundant_placeholder3
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
lstm_465_input;
 serving_default_lstm_465_input:0?????????=
	dense_1550
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
2dense_155/kernel
:2dense_155/bias
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
0:.	?2lstm_465/lstm_cell_465/kernel
::8	d?2'lstm_465/lstm_cell_465/recurrent_kernel
*:(?2lstm_465/lstm_cell_465/bias
0:.	d?2lstm_466/lstm_cell_466/kernel
::8	2?2'lstm_466/lstm_cell_466/recurrent_kernel
*:(?2lstm_466/lstm_cell_466/bias
/:-2(2lstm_467/lstm_cell_467/kernel
9:7
(2'lstm_467/lstm_cell_467/recurrent_kernel
):'(2lstm_467/lstm_cell_467/bias
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
2Adam/dense_155/kernel/m
!:2Adam/dense_155/bias/m
5:3	?2$Adam/lstm_465/lstm_cell_465/kernel/m
?:=	d?2.Adam/lstm_465/lstm_cell_465/recurrent_kernel/m
/:-?2"Adam/lstm_465/lstm_cell_465/bias/m
5:3	d?2$Adam/lstm_466/lstm_cell_466/kernel/m
?:=	2?2.Adam/lstm_466/lstm_cell_466/recurrent_kernel/m
/:-?2"Adam/lstm_466/lstm_cell_466/bias/m
4:22(2$Adam/lstm_467/lstm_cell_467/kernel/m
>:<
(2.Adam/lstm_467/lstm_cell_467/recurrent_kernel/m
.:,(2"Adam/lstm_467/lstm_cell_467/bias/m
':%
2Adam/dense_155/kernel/v
!:2Adam/dense_155/bias/v
5:3	?2$Adam/lstm_465/lstm_cell_465/kernel/v
?:=	d?2.Adam/lstm_465/lstm_cell_465/recurrent_kernel/v
/:-?2"Adam/lstm_465/lstm_cell_465/bias/v
5:3	d?2$Adam/lstm_466/lstm_cell_466/kernel/v
?:=	2?2.Adam/lstm_466/lstm_cell_466/recurrent_kernel/v
/:-?2"Adam/lstm_466/lstm_cell_466/bias/v
4:22(2$Adam/lstm_467/lstm_cell_467/kernel/v
>:<
(2.Adam/lstm_467/lstm_cell_467/recurrent_kernel/v
.:,(2"Adam/lstm_467/lstm_cell_467/bias/v
?2?
0__inference_sequential_155_layer_call_fn_1774229
0__inference_sequential_155_layer_call_fn_1774967
0__inference_sequential_155_layer_call_fn_1774994
0__inference_sequential_155_layer_call_fn_1774845?
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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1775421
K__inference_sequential_155_layer_call_and_return_conditional_losses_1775848
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774875
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774905?
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
"__inference__wrapped_model_1772680lstm_465_input"?
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
*__inference_lstm_465_layer_call_fn_1775859
*__inference_lstm_465_layer_call_fn_1775870
*__inference_lstm_465_layer_call_fn_1775881
*__inference_lstm_465_layer_call_fn_1775892?
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776035
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776178
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776321
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776464?
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
*__inference_lstm_466_layer_call_fn_1776475
*__inference_lstm_466_layer_call_fn_1776486
*__inference_lstm_466_layer_call_fn_1776497
*__inference_lstm_466_layer_call_fn_1776508?
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776651
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776794
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776937
E__inference_lstm_466_layer_call_and_return_conditional_losses_1777080?
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
*__inference_lstm_467_layer_call_fn_1777091
*__inference_lstm_467_layer_call_fn_1777102
*__inference_lstm_467_layer_call_fn_1777113
*__inference_lstm_467_layer_call_fn_1777124?
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777267
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777410
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777553
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777696?
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
+__inference_dense_155_layer_call_fn_1777705?
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
F__inference_dense_155_layer_call_and_return_conditional_losses_1777715?
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
%__inference_signature_wrapper_1774940lstm_465_input"?
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
/__inference_lstm_cell_291_layer_call_fn_1777732
/__inference_lstm_cell_291_layer_call_fn_1777749?
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1777781
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1777813?
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
/__inference_lstm_cell_292_layer_call_fn_1777830
/__inference_lstm_cell_292_layer_call_fn_1777847?
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1777879
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1777911?
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
/__inference_lstm_cell_293_layer_call_fn_1777928
/__inference_lstm_cell_293_layer_call_fn_1777945?
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1777977
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1778009?
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
"__inference__wrapped_model_1772680?-./012345!";?8
1?.
,?)
lstm_465_input?????????
? "5?2
0
	dense_155#? 
	dense_155??????????
F__inference_dense_155_layer_call_and_return_conditional_losses_1777715\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_155_layer_call_fn_1777705O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776035?-./O?L
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776178?-./O?L
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776321q-./??<
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
E__inference_lstm_465_layer_call_and_return_conditional_losses_1776464q-./??<
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
*__inference_lstm_465_layer_call_fn_1775859}-./O?L
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
*__inference_lstm_465_layer_call_fn_1775870}-./O?L
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
*__inference_lstm_465_layer_call_fn_1775881d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_465_layer_call_fn_1775892d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776651?012O?L
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776794?012O?L
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1776937q012??<
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
E__inference_lstm_466_layer_call_and_return_conditional_losses_1777080q012??<
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
*__inference_lstm_466_layer_call_fn_1776475}012O?L
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
*__inference_lstm_466_layer_call_fn_1776486}012O?L
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
*__inference_lstm_466_layer_call_fn_1776497d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_466_layer_call_fn_1776508d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777267}345O?L
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777410}345O?L
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777553m345??<
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
E__inference_lstm_467_layer_call_and_return_conditional_losses_1777696m345??<
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
*__inference_lstm_467_layer_call_fn_1777091p345O?L
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
*__inference_lstm_467_layer_call_fn_1777102p345O?L
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
*__inference_lstm_467_layer_call_fn_1777113`345??<
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
*__inference_lstm_467_layer_call_fn_1777124`345??<
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1777781?-./??}
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
J__inference_lstm_cell_291_layer_call_and_return_conditional_losses_1777813?-./??}
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
/__inference_lstm_cell_291_layer_call_fn_1777732?-./??}
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
/__inference_lstm_cell_291_layer_call_fn_1777749?-./??}
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1777879?012??}
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
J__inference_lstm_cell_292_layer_call_and_return_conditional_losses_1777911?012??}
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
/__inference_lstm_cell_292_layer_call_fn_1777830?012??}
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
/__inference_lstm_cell_292_layer_call_fn_1777847?012??}
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1777977?345??}
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
J__inference_lstm_cell_293_layer_call_and_return_conditional_losses_1778009?345??}
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
/__inference_lstm_cell_293_layer_call_fn_1777928?345??}
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
/__inference_lstm_cell_293_layer_call_fn_1777945?345??}
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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774875y-./012345!"C?@
9?6
,?)
lstm_465_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_155_layer_call_and_return_conditional_losses_1774905y-./012345!"C?@
9?6
,?)
lstm_465_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_155_layer_call_and_return_conditional_losses_1775421q-./012345!";?8
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
K__inference_sequential_155_layer_call_and_return_conditional_losses_1775848q-./012345!";?8
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
0__inference_sequential_155_layer_call_fn_1774229l-./012345!"C?@
9?6
,?)
lstm_465_input?????????
p 

 
? "???????????
0__inference_sequential_155_layer_call_fn_1774845l-./012345!"C?@
9?6
,?)
lstm_465_input?????????
p

 
? "???????????
0__inference_sequential_155_layer_call_fn_1774967d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_155_layer_call_fn_1774994d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1774940?-./012345!"M?J
? 
C?@
>
lstm_465_input,?)
lstm_465_input?????????"5?2
0
	dense_155#? 
	dense_155?????????