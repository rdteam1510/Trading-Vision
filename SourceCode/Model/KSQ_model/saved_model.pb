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
dense_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_136/kernel
u
$dense_136/kernel/Read/ReadVariableOpReadVariableOpdense_136/kernel*
_output_shapes

:
*
dtype0
t
dense_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_136/bias
m
"dense_136/bias/Read/ReadVariableOpReadVariableOpdense_136/bias*
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
lstm_408/lstm_cell_408/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_408/lstm_cell_408/kernel
?
1lstm_408/lstm_cell_408/kernel/Read/ReadVariableOpReadVariableOplstm_408/lstm_cell_408/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_408/lstm_cell_408/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_408/lstm_cell_408/recurrent_kernel
?
;lstm_408/lstm_cell_408/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_408/lstm_cell_408/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_408/lstm_cell_408/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_408/lstm_cell_408/bias
?
/lstm_408/lstm_cell_408/bias/Read/ReadVariableOpReadVariableOplstm_408/lstm_cell_408/bias*
_output_shapes	
:?*
dtype0
?
lstm_409/lstm_cell_409/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_409/lstm_cell_409/kernel
?
1lstm_409/lstm_cell_409/kernel/Read/ReadVariableOpReadVariableOplstm_409/lstm_cell_409/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_409/lstm_cell_409/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_409/lstm_cell_409/recurrent_kernel
?
;lstm_409/lstm_cell_409/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_409/lstm_cell_409/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_409/lstm_cell_409/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_409/lstm_cell_409/bias
?
/lstm_409/lstm_cell_409/bias/Read/ReadVariableOpReadVariableOplstm_409/lstm_cell_409/bias*
_output_shapes	
:?*
dtype0
?
lstm_410/lstm_cell_410/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_410/lstm_cell_410/kernel
?
1lstm_410/lstm_cell_410/kernel/Read/ReadVariableOpReadVariableOplstm_410/lstm_cell_410/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_410/lstm_cell_410/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_410/lstm_cell_410/recurrent_kernel
?
;lstm_410/lstm_cell_410/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_410/lstm_cell_410/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_410/lstm_cell_410/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_410/lstm_cell_410/bias
?
/lstm_410/lstm_cell_410/bias/Read/ReadVariableOpReadVariableOplstm_410/lstm_cell_410/bias*
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
Adam/dense_136/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_136/kernel/m
?
+Adam/dense_136/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_136/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_136/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_136/bias/m
{
)Adam/dense_136/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_136/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_408/lstm_cell_408/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_408/lstm_cell_408/kernel/m
?
8Adam/lstm_408/lstm_cell_408/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_408/lstm_cell_408/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_408/lstm_cell_408/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m
?
BAdam/lstm_408/lstm_cell_408/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_408/lstm_cell_408/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_408/lstm_cell_408/bias/m
?
6Adam/lstm_408/lstm_cell_408/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_408/lstm_cell_408/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_409/lstm_cell_409/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_409/lstm_cell_409/kernel/m
?
8Adam/lstm_409/lstm_cell_409/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_409/lstm_cell_409/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_409/lstm_cell_409/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_409/lstm_cell_409/recurrent_kernel/m
?
BAdam/lstm_409/lstm_cell_409/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_409/lstm_cell_409/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_409/lstm_cell_409/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_409/lstm_cell_409/bias/m
?
6Adam/lstm_409/lstm_cell_409/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_409/lstm_cell_409/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_410/lstm_cell_410/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_410/lstm_cell_410/kernel/m
?
8Adam/lstm_410/lstm_cell_410/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_410/lstm_cell_410/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_410/lstm_cell_410/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_410/lstm_cell_410/recurrent_kernel/m
?
BAdam/lstm_410/lstm_cell_410/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_410/lstm_cell_410/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_410/lstm_cell_410/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_410/lstm_cell_410/bias/m
?
6Adam/lstm_410/lstm_cell_410/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_410/lstm_cell_410/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_136/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_136/kernel/v
?
+Adam/dense_136/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_136/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_136/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_136/bias/v
{
)Adam/dense_136/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_136/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_408/lstm_cell_408/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_408/lstm_cell_408/kernel/v
?
8Adam/lstm_408/lstm_cell_408/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_408/lstm_cell_408/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_408/lstm_cell_408/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v
?
BAdam/lstm_408/lstm_cell_408/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_408/lstm_cell_408/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_408/lstm_cell_408/bias/v
?
6Adam/lstm_408/lstm_cell_408/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_408/lstm_cell_408/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_409/lstm_cell_409/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_409/lstm_cell_409/kernel/v
?
8Adam/lstm_409/lstm_cell_409/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_409/lstm_cell_409/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_409/lstm_cell_409/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_409/lstm_cell_409/recurrent_kernel/v
?
BAdam/lstm_409/lstm_cell_409/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_409/lstm_cell_409/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_409/lstm_cell_409/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_409/lstm_cell_409/bias/v
?
6Adam/lstm_409/lstm_cell_409/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_409/lstm_cell_409/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_410/lstm_cell_410/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_410/lstm_cell_410/kernel/v
?
8Adam/lstm_410/lstm_cell_410/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_410/lstm_cell_410/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_410/lstm_cell_410/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_410/lstm_cell_410/recurrent_kernel/v
?
BAdam/lstm_410/lstm_cell_410/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_410/lstm_cell_410/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_410/lstm_cell_410/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_410/lstm_cell_410/bias/v
?
6Adam/lstm_410/lstm_cell_410/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_410/lstm_cell_410/bias/v*
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
VARIABLE_VALUEdense_136/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_136/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_408/lstm_cell_408/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_408/lstm_cell_408/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_408/lstm_cell_408/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_409/lstm_cell_409/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_409/lstm_cell_409/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_409/lstm_cell_409/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_410/lstm_cell_410/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_410/lstm_cell_410/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_410/lstm_cell_410/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_136/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_136/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_408/lstm_cell_408/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_408/lstm_cell_408/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_408/lstm_cell_408/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_409/lstm_cell_409/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_409/lstm_cell_409/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_409/lstm_cell_409/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_410/lstm_cell_410/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_410/lstm_cell_410/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_410/lstm_cell_410/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_136/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_136/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_408/lstm_cell_408/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_408/lstm_cell_408/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_408/lstm_cell_408/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_409/lstm_cell_409/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_409/lstm_cell_409/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_409/lstm_cell_409/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_410/lstm_cell_410/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_410/lstm_cell_410/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_410/lstm_cell_410/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_408_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_408_inputlstm_408/lstm_cell_408/kernel'lstm_408/lstm_cell_408/recurrent_kernellstm_408/lstm_cell_408/biaslstm_409/lstm_cell_409/kernel'lstm_409/lstm_cell_409/recurrent_kernellstm_409/lstm_cell_409/biaslstm_410/lstm_cell_410/kernel'lstm_410/lstm_cell_410/recurrent_kernellstm_410/lstm_cell_410/biasdense_136/kerneldense_136/bias*
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
$__inference_signature_wrapper_776814
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_136/kernel/Read/ReadVariableOp"dense_136/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_408/lstm_cell_408/kernel/Read/ReadVariableOp;lstm_408/lstm_cell_408/recurrent_kernel/Read/ReadVariableOp/lstm_408/lstm_cell_408/bias/Read/ReadVariableOp1lstm_409/lstm_cell_409/kernel/Read/ReadVariableOp;lstm_409/lstm_cell_409/recurrent_kernel/Read/ReadVariableOp/lstm_409/lstm_cell_409/bias/Read/ReadVariableOp1lstm_410/lstm_cell_410/kernel/Read/ReadVariableOp;lstm_410/lstm_cell_410/recurrent_kernel/Read/ReadVariableOp/lstm_410/lstm_cell_410/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_136/kernel/m/Read/ReadVariableOp)Adam/dense_136/bias/m/Read/ReadVariableOp8Adam/lstm_408/lstm_cell_408/kernel/m/Read/ReadVariableOpBAdam/lstm_408/lstm_cell_408/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_408/lstm_cell_408/bias/m/Read/ReadVariableOp8Adam/lstm_409/lstm_cell_409/kernel/m/Read/ReadVariableOpBAdam/lstm_409/lstm_cell_409/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_409/lstm_cell_409/bias/m/Read/ReadVariableOp8Adam/lstm_410/lstm_cell_410/kernel/m/Read/ReadVariableOpBAdam/lstm_410/lstm_cell_410/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_410/lstm_cell_410/bias/m/Read/ReadVariableOp+Adam/dense_136/kernel/v/Read/ReadVariableOp)Adam/dense_136/bias/v/Read/ReadVariableOp8Adam/lstm_408/lstm_cell_408/kernel/v/Read/ReadVariableOpBAdam/lstm_408/lstm_cell_408/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_408/lstm_cell_408/bias/v/Read/ReadVariableOp8Adam/lstm_409/lstm_cell_409/kernel/v/Read/ReadVariableOpBAdam/lstm_409/lstm_cell_409/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_409/lstm_cell_409/bias/v/Read/ReadVariableOp8Adam/lstm_410/lstm_cell_410/kernel/v/Read/ReadVariableOpBAdam/lstm_410/lstm_cell_410/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_410/lstm_cell_410/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_780026
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_136/kerneldense_136/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_408/lstm_cell_408/kernel'lstm_408/lstm_cell_408/recurrent_kernellstm_408/lstm_cell_408/biaslstm_409/lstm_cell_409/kernel'lstm_409/lstm_cell_409/recurrent_kernellstm_409/lstm_cell_409/biaslstm_410/lstm_cell_410/kernel'lstm_410/lstm_cell_410/recurrent_kernellstm_410/lstm_cell_410/biastotalcountAdam/dense_136/kernel/mAdam/dense_136/bias/m$Adam/lstm_408/lstm_cell_408/kernel/m.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m"Adam/lstm_408/lstm_cell_408/bias/m$Adam/lstm_409/lstm_cell_409/kernel/m.Adam/lstm_409/lstm_cell_409/recurrent_kernel/m"Adam/lstm_409/lstm_cell_409/bias/m$Adam/lstm_410/lstm_cell_410/kernel/m.Adam/lstm_410/lstm_cell_410/recurrent_kernel/m"Adam/lstm_410/lstm_cell_410/bias/mAdam/dense_136/kernel/vAdam/dense_136/bias/v$Adam/lstm_408/lstm_cell_408/kernel/v.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v"Adam/lstm_408/lstm_cell_408/bias/v$Adam/lstm_409/lstm_cell_409/kernel/v.Adam/lstm_409/lstm_cell_409/recurrent_kernel/v"Adam/lstm_409/lstm_cell_409/bias/v$Adam/lstm_410/lstm_cell_410/kernel/v.Adam/lstm_410/lstm_cell_410/recurrent_kernel/v"Adam/lstm_410/lstm_cell_410/bias/v*4
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
"__inference__traced_restore_780156??+
?
?
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_779687

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
?"
?
while_body_774635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_126_774659_0:	?/
while_lstm_cell_126_774661_0:	d?+
while_lstm_cell_126_774663_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_126_774659:	?-
while_lstm_cell_126_774661:	d?)
while_lstm_cell_126_774663:	???+while/lstm_cell_126/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_126/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_126_774659_0while_lstm_cell_126_774661_0while_lstm_cell_126_774663_0*
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774621?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_126/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_126/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_126/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_126/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_126_774659while_lstm_cell_126_774659_0":
while_lstm_cell_126_774661while_lstm_cell_126_774661_0":
while_lstm_cell_126_774663while_lstm_cell_126_774663_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_126/StatefulPartitionedCall+while/lstm_cell_126/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_778111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_126_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_126_matmul_readvariableop_resource:	?G
4while_lstm_cell_126_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_126_biasadd_readvariableop_resource:	???*while/lstm_cell_126/BiasAdd/ReadVariableOp?)while/lstm_cell_126/MatMul/ReadVariableOp?+while/lstm_cell_126/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_126/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_126/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_126/addAddV2$while/lstm_cell_126/MatMul:product:0&while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_126/BiasAddBiasAddwhile/lstm_cell_126/add:z:02while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_126/splitSplit,while/lstm_cell_126/split/split_dim:output:0$while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_126/SigmoidSigmoid"while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_1Sigmoid"while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mulMul!while/lstm_cell_126/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_126/ReluRelu"while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_1Mulwhile/lstm_cell_126/Sigmoid:y:0&while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/add_1AddV2while/lstm_cell_126/mul:z:0while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_2Sigmoid"while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_126/Relu_1Reluwhile/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_2Mul!while/lstm_cell_126/Sigmoid_2:y:0(while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_126/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_126/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_126/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_126/BiasAdd/ReadVariableOp*^while/lstm_cell_126/MatMul/ReadVariableOp,^while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_126_biasadd_readvariableop_resource5while_lstm_cell_126_biasadd_readvariableop_resource_0"n
4while_lstm_cell_126_matmul_1_readvariableop_resource6while_lstm_cell_126_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_126_matmul_readvariableop_resource4while_lstm_cell_126_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_126/BiasAdd/ReadVariableOp*while/lstm_cell_126/BiasAdd/ReadVariableOp2V
)while/lstm_cell_126/MatMul/ReadVariableOp)while/lstm_cell_126/MatMul/ReadVariableOp2Z
+while/lstm_cell_126/MatMul_1/ReadVariableOp+while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_126_layer_call_fn_779623

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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774767o
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
"__inference__traced_restore_780156
file_prefix3
!assignvariableop_dense_136_kernel:
/
!assignvariableop_1_dense_136_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_408_lstm_cell_408_kernel:	?M
:assignvariableop_8_lstm_408_lstm_cell_408_recurrent_kernel:	d?=
.assignvariableop_9_lstm_408_lstm_cell_408_bias:	?D
1assignvariableop_10_lstm_409_lstm_cell_409_kernel:	d?N
;assignvariableop_11_lstm_409_lstm_cell_409_recurrent_kernel:	2?>
/assignvariableop_12_lstm_409_lstm_cell_409_bias:	?C
1assignvariableop_13_lstm_410_lstm_cell_410_kernel:2(M
;assignvariableop_14_lstm_410_lstm_cell_410_recurrent_kernel:
(=
/assignvariableop_15_lstm_410_lstm_cell_410_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_136_kernel_m:
7
)assignvariableop_19_adam_dense_136_bias_m:K
8assignvariableop_20_adam_lstm_408_lstm_cell_408_kernel_m:	?U
Bassignvariableop_21_adam_lstm_408_lstm_cell_408_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_408_lstm_cell_408_bias_m:	?K
8assignvariableop_23_adam_lstm_409_lstm_cell_409_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_409_lstm_cell_409_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_409_lstm_cell_409_bias_m:	?J
8assignvariableop_26_adam_lstm_410_lstm_cell_410_kernel_m:2(T
Bassignvariableop_27_adam_lstm_410_lstm_cell_410_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_410_lstm_cell_410_bias_m:(=
+assignvariableop_29_adam_dense_136_kernel_v:
7
)assignvariableop_30_adam_dense_136_bias_v:K
8assignvariableop_31_adam_lstm_408_lstm_cell_408_kernel_v:	?U
Bassignvariableop_32_adam_lstm_408_lstm_cell_408_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_408_lstm_cell_408_bias_v:	?K
8assignvariableop_34_adam_lstm_409_lstm_cell_409_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_409_lstm_cell_409_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_409_lstm_cell_409_bias_v:	?J
8assignvariableop_37_adam_lstm_410_lstm_cell_410_kernel_v:2(T
Bassignvariableop_38_adam_lstm_410_lstm_cell_410_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_410_lstm_cell_410_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_136_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_136_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_408_lstm_cell_408_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_408_lstm_cell_408_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_408_lstm_cell_408_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_409_lstm_cell_409_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_409_lstm_cell_409_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_409_lstm_cell_409_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_410_lstm_cell_410_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_410_lstm_cell_410_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_410_lstm_cell_410_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_136_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_136_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_408_lstm_cell_408_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_408_lstm_cell_408_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_408_lstm_cell_408_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_409_lstm_cell_409_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_409_lstm_cell_409_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_409_lstm_cell_409_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_410_lstm_cell_410_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_410_lstm_cell_410_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_410_lstm_cell_410_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_136_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_136_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_408_lstm_cell_408_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_408_lstm_cell_408_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_408_lstm_cell_408_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_409_lstm_cell_409_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_409_lstm_cell_409_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_409_lstm_cell_409_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_410_lstm_cell_410_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_410_lstm_cell_410_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_410_lstm_cell_410_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_779753

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
?"
?
while_body_775526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_128_775550_0:2(.
while_lstm_cell_128_775552_0:
(*
while_lstm_cell_128_775554_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_128_775550:2(,
while_lstm_cell_128_775552:
((
while_lstm_cell_128_775554:(??+while/lstm_cell_128/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_128/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_128_775550_0while_lstm_cell_128_775552_0while_lstm_cell_128_775554_0*
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775467?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_128/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_128/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_128/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_128/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_128_775550while_lstm_cell_128_775550_0":
while_lstm_cell_128_775552while_lstm_cell_128_775552_0":
while_lstm_cell_128_775554while_lstm_cell_128_775554_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_128/StatefulPartitionedCall+while/lstm_cell_128/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_777967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_777967___redundant_placeholder04
0while_while_cond_777967___redundant_placeholder14
0while_while_cond_777967___redundant_placeholder24
0while_while_cond_777967___redundant_placeholder3
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
)__inference_lstm_410_layer_call_fn_778998

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
D__inference_lstm_410_layer_call_and_return_conditional_losses_776269o
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
while_cond_777824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_777824___redundant_placeholder04
0while_while_cond_777824___redundant_placeholder14
0while_while_cond_777824___redundant_placeholder24
0while_while_cond_777824___redundant_placeholder3
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_777909
inputs_0?
,lstm_cell_126_matmul_readvariableop_resource:	?A
.lstm_cell_126_matmul_1_readvariableop_resource:	d?<
-lstm_cell_126_biasadd_readvariableop_resource:	?
identity??$lstm_cell_126/BiasAdd/ReadVariableOp?#lstm_cell_126/MatMul/ReadVariableOp?%lstm_cell_126/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_126/MatMul/ReadVariableOpReadVariableOp,lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_126/MatMulMatMulstrided_slice_2:output:0+lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_126/MatMul_1MatMulzeros:output:0-lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_126/addAddV2lstm_cell_126/MatMul:product:0 lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_126/BiasAddBiasAddlstm_cell_126/add:z:0,lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_126/splitSplit&lstm_cell_126/split/split_dim:output:0lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_126/SigmoidSigmoidlstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_1Sigmoidlstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_126/mulMullstm_cell_126/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_126/ReluRelulstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_1Mullstm_cell_126/Sigmoid:y:0 lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_126/add_1AddV2lstm_cell_126/mul:z:0lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_2Sigmoidlstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_126/Relu_1Relulstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_2Mullstm_cell_126/Sigmoid_2:y:0"lstm_cell_126/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_126_matmul_readvariableop_resource.lstm_cell_126_matmul_1_readvariableop_resource-lstm_cell_126_biasadd_readvariableop_resource*
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
while_body_777825*
condR
while_cond_777824*K
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
NoOpNoOp%^lstm_cell_126/BiasAdd/ReadVariableOp$^lstm_cell_126/MatMul/ReadVariableOp&^lstm_cell_126/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_126/BiasAdd/ReadVariableOp$lstm_cell_126/BiasAdd/ReadVariableOp2J
#lstm_cell_126/MatMul/ReadVariableOp#lstm_cell_126/MatMul/ReadVariableOp2N
%lstm_cell_126/MatMul_1/ReadVariableOp%lstm_cell_126/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?T
?
)sequential_136_lstm_409_while_body_774325L
Hsequential_136_lstm_409_while_sequential_136_lstm_409_while_loop_counterR
Nsequential_136_lstm_409_while_sequential_136_lstm_409_while_maximum_iterations-
)sequential_136_lstm_409_while_placeholder/
+sequential_136_lstm_409_while_placeholder_1/
+sequential_136_lstm_409_while_placeholder_2/
+sequential_136_lstm_409_while_placeholder_3K
Gsequential_136_lstm_409_while_sequential_136_lstm_409_strided_slice_1_0?
?sequential_136_lstm_409_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_409_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_136_lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0:	d?a
Nsequential_136_lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?\
Msequential_136_lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0:	?*
&sequential_136_lstm_409_while_identity,
(sequential_136_lstm_409_while_identity_1,
(sequential_136_lstm_409_while_identity_2,
(sequential_136_lstm_409_while_identity_3,
(sequential_136_lstm_409_while_identity_4,
(sequential_136_lstm_409_while_identity_5I
Esequential_136_lstm_409_while_sequential_136_lstm_409_strided_slice_1?
?sequential_136_lstm_409_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_409_tensorarrayunstack_tensorlistfromtensor]
Jsequential_136_lstm_409_while_lstm_cell_127_matmul_readvariableop_resource:	d?_
Lsequential_136_lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource:	2?Z
Ksequential_136_lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource:	???Bsequential_136/lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp?Asequential_136/lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp?Csequential_136/lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp?
Osequential_136/lstm_409/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_136/lstm_409/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_136_lstm_409_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_409_tensorarrayunstack_tensorlistfromtensor_0)sequential_136_lstm_409_while_placeholderXsequential_136/lstm_409/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_136/lstm_409/while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOpLsequential_136_lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_136/lstm_409/while/lstm_cell_127/MatMulMatMulHsequential_136/lstm_409/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_136/lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_136/lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOpNsequential_136_lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_136/lstm_409/while/lstm_cell_127/MatMul_1MatMul+sequential_136_lstm_409_while_placeholder_2Ksequential_136/lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_136/lstm_409/while/lstm_cell_127/addAddV2<sequential_136/lstm_409/while/lstm_cell_127/MatMul:product:0>sequential_136/lstm_409/while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_136/lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOpMsequential_136_lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_136/lstm_409/while/lstm_cell_127/BiasAddBiasAdd3sequential_136/lstm_409/while/lstm_cell_127/add:z:0Jsequential_136/lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_136/lstm_409/while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_136/lstm_409/while/lstm_cell_127/splitSplitDsequential_136/lstm_409/while/lstm_cell_127/split/split_dim:output:0<sequential_136/lstm_409/while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_136/lstm_409/while/lstm_cell_127/SigmoidSigmoid:sequential_136/lstm_409/while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_136/lstm_409/while/lstm_cell_127/Sigmoid_1Sigmoid:sequential_136/lstm_409/while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_136/lstm_409/while/lstm_cell_127/mulMul9sequential_136/lstm_409/while/lstm_cell_127/Sigmoid_1:y:0+sequential_136_lstm_409_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_136/lstm_409/while/lstm_cell_127/ReluRelu:sequential_136/lstm_409/while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_136/lstm_409/while/lstm_cell_127/mul_1Mul7sequential_136/lstm_409/while/lstm_cell_127/Sigmoid:y:0>sequential_136/lstm_409/while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_136/lstm_409/while/lstm_cell_127/add_1AddV23sequential_136/lstm_409/while/lstm_cell_127/mul:z:05sequential_136/lstm_409/while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_136/lstm_409/while/lstm_cell_127/Sigmoid_2Sigmoid:sequential_136/lstm_409/while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_136/lstm_409/while/lstm_cell_127/Relu_1Relu5sequential_136/lstm_409/while/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_136/lstm_409/while/lstm_cell_127/mul_2Mul9sequential_136/lstm_409/while/lstm_cell_127/Sigmoid_2:y:0@sequential_136/lstm_409/while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_136/lstm_409/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_136_lstm_409_while_placeholder_1)sequential_136_lstm_409_while_placeholder5sequential_136/lstm_409/while/lstm_cell_127/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_136/lstm_409/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_136/lstm_409/while/addAddV2)sequential_136_lstm_409_while_placeholder,sequential_136/lstm_409/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_136/lstm_409/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_136/lstm_409/while/add_1AddV2Hsequential_136_lstm_409_while_sequential_136_lstm_409_while_loop_counter.sequential_136/lstm_409/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_136/lstm_409/while/IdentityIdentity'sequential_136/lstm_409/while/add_1:z:0#^sequential_136/lstm_409/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_409/while/Identity_1IdentityNsequential_136_lstm_409_while_sequential_136_lstm_409_while_maximum_iterations#^sequential_136/lstm_409/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_409/while/Identity_2Identity%sequential_136/lstm_409/while/add:z:0#^sequential_136/lstm_409/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_409/while/Identity_3IdentityRsequential_136/lstm_409/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_136/lstm_409/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_409/while/Identity_4Identity5sequential_136/lstm_409/while/lstm_cell_127/mul_2:z:0#^sequential_136/lstm_409/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_136/lstm_409/while/Identity_5Identity5sequential_136/lstm_409/while/lstm_cell_127/add_1:z:0#^sequential_136/lstm_409/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_136/lstm_409/while/NoOpNoOpC^sequential_136/lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOpB^sequential_136/lstm_409/while/lstm_cell_127/MatMul/ReadVariableOpD^sequential_136/lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_136_lstm_409_while_identity/sequential_136/lstm_409/while/Identity:output:0"]
(sequential_136_lstm_409_while_identity_11sequential_136/lstm_409/while/Identity_1:output:0"]
(sequential_136_lstm_409_while_identity_21sequential_136/lstm_409/while/Identity_2:output:0"]
(sequential_136_lstm_409_while_identity_31sequential_136/lstm_409/while/Identity_3:output:0"]
(sequential_136_lstm_409_while_identity_41sequential_136/lstm_409/while/Identity_4:output:0"]
(sequential_136_lstm_409_while_identity_51sequential_136/lstm_409/while/Identity_5:output:0"?
Ksequential_136_lstm_409_while_lstm_cell_127_biasadd_readvariableop_resourceMsequential_136_lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0"?
Lsequential_136_lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resourceNsequential_136_lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0"?
Jsequential_136_lstm_409_while_lstm_cell_127_matmul_readvariableop_resourceLsequential_136_lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0"?
Esequential_136_lstm_409_while_sequential_136_lstm_409_strided_slice_1Gsequential_136_lstm_409_while_sequential_136_lstm_409_strided_slice_1_0"?
?sequential_136_lstm_409_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_409_tensorarrayunstack_tensorlistfromtensor?sequential_136_lstm_409_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_409_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_136/lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOpBsequential_136/lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp2?
Asequential_136/lstm_409/while/lstm_cell_127/MatMul/ReadVariableOpAsequential_136/lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp2?
Csequential_136/lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOpCsequential_136/lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_776514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_776514___redundant_placeholder04
0while_while_cond_776514___redundant_placeholder14
0while_while_cond_776514___redundant_placeholder24
0while_while_cond_776514___redundant_placeholder3
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775903

inputs?
,lstm_cell_127_matmul_readvariableop_resource:	d?A
.lstm_cell_127_matmul_1_readvariableop_resource:	2?<
-lstm_cell_127_biasadd_readvariableop_resource:	?
identity??$lstm_cell_127/BiasAdd/ReadVariableOp?#lstm_cell_127/MatMul/ReadVariableOp?%lstm_cell_127/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_127/MatMul/ReadVariableOpReadVariableOp,lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_127/MatMulMatMulstrided_slice_2:output:0+lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_127/MatMul_1MatMulzeros:output:0-lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_127/addAddV2lstm_cell_127/MatMul:product:0 lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_127/BiasAddBiasAddlstm_cell_127/add:z:0,lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_127/splitSplit&lstm_cell_127/split/split_dim:output:0lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_127/SigmoidSigmoidlstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_1Sigmoidlstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_127/mulMullstm_cell_127/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_127/ReluRelulstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_1Mullstm_cell_127/Sigmoid:y:0 lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_127/add_1AddV2lstm_cell_127/mul:z:0lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_2Sigmoidlstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_127/Relu_1Relulstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_2Mullstm_cell_127/Sigmoid_2:y:0"lstm_cell_127/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_127_matmul_readvariableop_resource.lstm_cell_127_matmul_1_readvariableop_resource-lstm_cell_127_biasadd_readvariableop_resource*
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
while_body_775819*
condR
while_cond_775818*K
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
NoOpNoOp%^lstm_cell_127/BiasAdd/ReadVariableOp$^lstm_cell_127/MatMul/ReadVariableOp&^lstm_cell_127/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_127/BiasAdd/ReadVariableOp$lstm_cell_127/BiasAdd/ReadVariableOp2J
#lstm_cell_127/MatMul/ReadVariableOp#lstm_cell_127/MatMul/ReadVariableOp2N
%lstm_cell_127/MatMul_1/ReadVariableOp%lstm_cell_127/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_775968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_775968___redundant_placeholder04
0while_while_cond_775968___redundant_placeholder14
0while_while_cond_775968___redundant_placeholder24
0while_while_cond_775968___redundant_placeholder3
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
E__inference_dense_136_layer_call_and_return_conditional_losses_779589

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
?
)sequential_136_lstm_409_while_cond_774324L
Hsequential_136_lstm_409_while_sequential_136_lstm_409_while_loop_counterR
Nsequential_136_lstm_409_while_sequential_136_lstm_409_while_maximum_iterations-
)sequential_136_lstm_409_while_placeholder/
+sequential_136_lstm_409_while_placeholder_1/
+sequential_136_lstm_409_while_placeholder_2/
+sequential_136_lstm_409_while_placeholder_3N
Jsequential_136_lstm_409_while_less_sequential_136_lstm_409_strided_slice_1d
`sequential_136_lstm_409_while_sequential_136_lstm_409_while_cond_774324___redundant_placeholder0d
`sequential_136_lstm_409_while_sequential_136_lstm_409_while_cond_774324___redundant_placeholder1d
`sequential_136_lstm_409_while_sequential_136_lstm_409_while_cond_774324___redundant_placeholder2d
`sequential_136_lstm_409_while_sequential_136_lstm_409_while_cond_774324___redundant_placeholder3*
&sequential_136_lstm_409_while_identity
?
"sequential_136/lstm_409/while/LessLess)sequential_136_lstm_409_while_placeholderJsequential_136_lstm_409_while_less_sequential_136_lstm_409_strided_slice_1*
T0*
_output_shapes
: {
&sequential_136/lstm_409/while/IdentityIdentity&sequential_136/lstm_409/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_136_lstm_409_while_identity/sequential_136/lstm_409/while/Identity:output:0*(
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
while_cond_775818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_775818___redundant_placeholder04
0while_while_cond_775818___redundant_placeholder14
0while_while_cond_775818___redundant_placeholder24
0while_while_cond_775818___redundant_placeholder3
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
?
?
J__inference_sequential_136_layer_call_and_return_conditional_losses_776779
lstm_408_input"
lstm_408_776752:	?"
lstm_408_776754:	d?
lstm_408_776756:	?"
lstm_409_776759:	d?"
lstm_409_776761:	2?
lstm_409_776763:	?!
lstm_410_776766:2(!
lstm_410_776768:
(
lstm_410_776770:("
dense_136_776773:

dense_136_776775:
identity??!dense_136/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall? lstm_409/StatefulPartitionedCall? lstm_410/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputlstm_408_776752lstm_408_776754lstm_408_776756*
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_776599?
 lstm_409/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0lstm_409_776759lstm_409_776761lstm_409_776763*
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_776434?
 lstm_410/StatefulPartitionedCallStatefulPartitionedCall)lstm_409/StatefulPartitionedCall:output:0lstm_410_776766lstm_410_776768lstm_410_776770*
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_776269?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_410/StatefulPartitionedCall:output:0dense_136_776773dense_136_776775*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_776071y
IdentityIdentity*dense_136/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_136/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall!^lstm_409/StatefulPartitionedCall!^lstm_410/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall2D
 lstm_409/StatefulPartitionedCall lstm_409/StatefulPartitionedCall2D
 lstm_410/StatefulPartitionedCall lstm_410/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?8
?
while_body_778584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_127_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_127_matmul_readvariableop_resource:	d?G
4while_lstm_cell_127_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_127_biasadd_readvariableop_resource:	???*while/lstm_cell_127/BiasAdd/ReadVariableOp?)while/lstm_cell_127/MatMul/ReadVariableOp?+while/lstm_cell_127/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_127/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_127/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_127/addAddV2$while/lstm_cell_127/MatMul:product:0&while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_127/BiasAddBiasAddwhile/lstm_cell_127/add:z:02while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_127/splitSplit,while/lstm_cell_127/split/split_dim:output:0$while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_127/SigmoidSigmoid"while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_1Sigmoid"while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mulMul!while/lstm_cell_127/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_127/ReluRelu"while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_1Mulwhile/lstm_cell_127/Sigmoid:y:0&while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/add_1AddV2while/lstm_cell_127/mul:z:0while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_2Sigmoid"while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_127/Relu_1Reluwhile/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_2Mul!while/lstm_cell_127/Sigmoid_2:y:0(while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_127/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_127/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_127/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_127/BiasAdd/ReadVariableOp*^while/lstm_cell_127/MatMul/ReadVariableOp,^while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_127_biasadd_readvariableop_resource5while_lstm_cell_127_biasadd_readvariableop_resource_0"n
4while_lstm_cell_127_matmul_1_readvariableop_resource6while_lstm_cell_127_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_127_matmul_readvariableop_resource4while_lstm_cell_127_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_127/BiasAdd/ReadVariableOp*while/lstm_cell_127/BiasAdd/ReadVariableOp2V
)while/lstm_cell_127/MatMul/ReadVariableOp)while/lstm_cell_127/MatMul/ReadVariableOp2Z
+while/lstm_cell_127/MatMul_1/ReadVariableOp+while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_778869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_778869___redundant_placeholder04
0while_while_cond_778869___redundant_placeholder14
0while_while_cond_778869___redundant_placeholder24
0while_while_cond_778869___redundant_placeholder3
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
)__inference_lstm_408_layer_call_fn_777766

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
D__inference_lstm_408_layer_call_and_return_conditional_losses_776599s
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
?
?
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_779785

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
)__inference_lstm_409_layer_call_fn_778371

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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775903s
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
.__inference_lstm_cell_128_layer_call_fn_779819

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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775467o
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
while_cond_776184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_776184___redundant_placeholder04
0while_while_cond_776184___redundant_placeholder14
0while_while_cond_776184___redundant_placeholder24
0while_while_cond_776184___redundant_placeholder3
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
.__inference_lstm_cell_127_layer_call_fn_779721

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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_775117o
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
while_cond_774825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_774825___redundant_placeholder04
0while_while_cond_774825___redundant_placeholder14
0while_while_cond_774825___redundant_placeholder24
0while_while_cond_774825___redundant_placeholder3
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
while_body_775819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_127_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_127_matmul_readvariableop_resource:	d?G
4while_lstm_cell_127_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_127_biasadd_readvariableop_resource:	???*while/lstm_cell_127/BiasAdd/ReadVariableOp?)while/lstm_cell_127/MatMul/ReadVariableOp?+while/lstm_cell_127/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_127/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_127/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_127/addAddV2$while/lstm_cell_127/MatMul:product:0&while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_127/BiasAddBiasAddwhile/lstm_cell_127/add:z:02while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_127/splitSplit,while/lstm_cell_127/split/split_dim:output:0$while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_127/SigmoidSigmoid"while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_1Sigmoid"while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mulMul!while/lstm_cell_127/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_127/ReluRelu"while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_1Mulwhile/lstm_cell_127/Sigmoid:y:0&while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/add_1AddV2while/lstm_cell_127/mul:z:0while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_2Sigmoid"while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_127/Relu_1Reluwhile/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_2Mul!while/lstm_cell_127/Sigmoid_2:y:0(while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_127/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_127/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_127/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_127/BiasAdd/ReadVariableOp*^while/lstm_cell_127/MatMul/ReadVariableOp,^while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_127_biasadd_readvariableop_resource5while_lstm_cell_127_biasadd_readvariableop_resource_0"n
4while_lstm_cell_127_matmul_1_readvariableop_resource6while_lstm_cell_127_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_127_matmul_readvariableop_resource4while_lstm_cell_127_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_127/BiasAdd/ReadVariableOp*while/lstm_cell_127/BiasAdd/ReadVariableOp2V
)while/lstm_cell_127/MatMul/ReadVariableOp)while/lstm_cell_127/MatMul/ReadVariableOp2Z
+while/lstm_cell_127/MatMul_1/ReadVariableOp+while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_775176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_127_775200_0:	d?/
while_lstm_cell_127_775202_0:	2?+
while_lstm_cell_127_775204_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_127_775200:	d?-
while_lstm_cell_127_775202:	2?)
while_lstm_cell_127_775204:	???+while/lstm_cell_127/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_127/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_127_775200_0while_lstm_cell_127_775202_0while_lstm_cell_127_775204_0*
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_775117?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_127/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_127/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_127/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_127/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_127_775200while_lstm_cell_127_775200_0":
while_lstm_cell_127_775202while_lstm_cell_127_775202_0":
while_lstm_cell_127_775204while_lstm_cell_127_775204_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_127/StatefulPartitionedCall+while/lstm_cell_127/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775245

inputs'
lstm_cell_127_775163:	d?'
lstm_cell_127_775165:	2?#
lstm_cell_127_775167:	?
identity??%lstm_cell_127/StatefulPartitionedCall?while;
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
%lstm_cell_127/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_127_775163lstm_cell_127_775165lstm_cell_127_775167*
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_775117n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_127_775163lstm_cell_127_775165lstm_cell_127_775167*
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
while_body_775176*
condR
while_cond_775175*K
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
NoOpNoOp&^lstm_cell_127/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_127/StatefulPartitionedCall%lstm_cell_127/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_779486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_128_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_128_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_128_matmul_readvariableop_resource:2(F
4while_lstm_cell_128_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_128_biasadd_readvariableop_resource:(??*while/lstm_cell_128/BiasAdd/ReadVariableOp?)while/lstm_cell_128/MatMul/ReadVariableOp?+while/lstm_cell_128/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_128/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_128/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_128/addAddV2$while/lstm_cell_128/MatMul:product:0&while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_128/BiasAddBiasAddwhile/lstm_cell_128/add:z:02while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_128/splitSplit,while/lstm_cell_128/split/split_dim:output:0$while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_128/SigmoidSigmoid"while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_1Sigmoid"while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mulMul!while/lstm_cell_128/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_128/ReluRelu"while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_1Mulwhile/lstm_cell_128/Sigmoid:y:0&while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/add_1AddV2while/lstm_cell_128/mul:z:0while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_2Sigmoid"while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_128/Relu_1Reluwhile/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_2Mul!while/lstm_cell_128/Sigmoid_2:y:0(while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_128/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_128/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_128/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_128/BiasAdd/ReadVariableOp*^while/lstm_cell_128/MatMul/ReadVariableOp,^while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_128_biasadd_readvariableop_resource5while_lstm_cell_128_biasadd_readvariableop_resource_0"n
4while_lstm_cell_128_matmul_1_readvariableop_resource6while_lstm_cell_128_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_128_matmul_readvariableop_resource4while_lstm_cell_128_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_128/BiasAdd/ReadVariableOp*while/lstm_cell_128/BiasAdd/ReadVariableOp2V
)while/lstm_cell_128/MatMul/ReadVariableOp)while/lstm_cell_128/MatMul/ReadVariableOp2Z
+while/lstm_cell_128/MatMul_1/ReadVariableOp+while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778525
inputs_0?
,lstm_cell_127_matmul_readvariableop_resource:	d?A
.lstm_cell_127_matmul_1_readvariableop_resource:	2?<
-lstm_cell_127_biasadd_readvariableop_resource:	?
identity??$lstm_cell_127/BiasAdd/ReadVariableOp?#lstm_cell_127/MatMul/ReadVariableOp?%lstm_cell_127/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_127/MatMul/ReadVariableOpReadVariableOp,lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_127/MatMulMatMulstrided_slice_2:output:0+lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_127/MatMul_1MatMulzeros:output:0-lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_127/addAddV2lstm_cell_127/MatMul:product:0 lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_127/BiasAddBiasAddlstm_cell_127/add:z:0,lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_127/splitSplit&lstm_cell_127/split/split_dim:output:0lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_127/SigmoidSigmoidlstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_1Sigmoidlstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_127/mulMullstm_cell_127/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_127/ReluRelulstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_1Mullstm_cell_127/Sigmoid:y:0 lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_127/add_1AddV2lstm_cell_127/mul:z:0lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_2Sigmoidlstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_127/Relu_1Relulstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_2Mullstm_cell_127/Sigmoid_2:y:0"lstm_cell_127/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_127_matmul_readvariableop_resource.lstm_cell_127_matmul_1_readvariableop_resource-lstm_cell_127_biasadd_readvariableop_resource*
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
while_body_778441*
condR
while_cond_778440*K
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
NoOpNoOp%^lstm_cell_127/BiasAdd/ReadVariableOp$^lstm_cell_127/MatMul/ReadVariableOp&^lstm_cell_127/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_127/BiasAdd/ReadVariableOp$lstm_cell_127/BiasAdd/ReadVariableOp2J
#lstm_cell_127/MatMul/ReadVariableOp#lstm_cell_127/MatMul/ReadVariableOp2N
%lstm_cell_127/MatMul_1/ReadVariableOp%lstm_cell_127/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_410_while_cond_777204.
*lstm_410_while_lstm_410_while_loop_counter4
0lstm_410_while_lstm_410_while_maximum_iterations
lstm_410_while_placeholder 
lstm_410_while_placeholder_1 
lstm_410_while_placeholder_2 
lstm_410_while_placeholder_30
,lstm_410_while_less_lstm_410_strided_slice_1F
Blstm_410_while_lstm_410_while_cond_777204___redundant_placeholder0F
Blstm_410_while_lstm_410_while_cond_777204___redundant_placeholder1F
Blstm_410_while_lstm_410_while_cond_777204___redundant_placeholder2F
Blstm_410_while_lstm_410_while_cond_777204___redundant_placeholder3
lstm_410_while_identity
?
lstm_410/while/LessLesslstm_410_while_placeholder,lstm_410_while_less_lstm_410_strided_slice_1*
T0*
_output_shapes
: ]
lstm_410/while/IdentityIdentitylstm_410/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_410_while_identity lstm_410/while/Identity:output:0*(
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778668
inputs_0?
,lstm_cell_127_matmul_readvariableop_resource:	d?A
.lstm_cell_127_matmul_1_readvariableop_resource:	2?<
-lstm_cell_127_biasadd_readvariableop_resource:	?
identity??$lstm_cell_127/BiasAdd/ReadVariableOp?#lstm_cell_127/MatMul/ReadVariableOp?%lstm_cell_127/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_127/MatMul/ReadVariableOpReadVariableOp,lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_127/MatMulMatMulstrided_slice_2:output:0+lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_127/MatMul_1MatMulzeros:output:0-lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_127/addAddV2lstm_cell_127/MatMul:product:0 lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_127/BiasAddBiasAddlstm_cell_127/add:z:0,lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_127/splitSplit&lstm_cell_127/split/split_dim:output:0lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_127/SigmoidSigmoidlstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_1Sigmoidlstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_127/mulMullstm_cell_127/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_127/ReluRelulstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_1Mullstm_cell_127/Sigmoid:y:0 lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_127/add_1AddV2lstm_cell_127/mul:z:0lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_2Sigmoidlstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_127/Relu_1Relulstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_2Mullstm_cell_127/Sigmoid_2:y:0"lstm_cell_127/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_127_matmul_readvariableop_resource.lstm_cell_127_matmul_1_readvariableop_resource-lstm_cell_127_biasadd_readvariableop_resource*
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
while_body_778584*
condR
while_cond_778583*K
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
NoOpNoOp%^lstm_cell_127/BiasAdd/ReadVariableOp$^lstm_cell_127/MatMul/ReadVariableOp&^lstm_cell_127/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_127/BiasAdd/ReadVariableOp$lstm_cell_127/BiasAdd/ReadVariableOp2J
#lstm_cell_127/MatMul/ReadVariableOp#lstm_cell_127/MatMul/ReadVariableOp2N
%lstm_cell_127/MatMul_1/ReadVariableOp%lstm_cell_127/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_779057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_128_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_128_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_128_matmul_readvariableop_resource:2(F
4while_lstm_cell_128_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_128_biasadd_readvariableop_resource:(??*while/lstm_cell_128/BiasAdd/ReadVariableOp?)while/lstm_cell_128/MatMul/ReadVariableOp?+while/lstm_cell_128/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_128/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_128/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_128/addAddV2$while/lstm_cell_128/MatMul:product:0&while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_128/BiasAddBiasAddwhile/lstm_cell_128/add:z:02while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_128/splitSplit,while/lstm_cell_128/split/split_dim:output:0$while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_128/SigmoidSigmoid"while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_1Sigmoid"while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mulMul!while/lstm_cell_128/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_128/ReluRelu"while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_1Mulwhile/lstm_cell_128/Sigmoid:y:0&while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/add_1AddV2while/lstm_cell_128/mul:z:0while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_2Sigmoid"while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_128/Relu_1Reluwhile/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_2Mul!while/lstm_cell_128/Sigmoid_2:y:0(while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_128/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_128/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_128/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_128/BiasAdd/ReadVariableOp*^while/lstm_cell_128/MatMul/ReadVariableOp,^while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_128_biasadd_readvariableop_resource5while_lstm_cell_128_biasadd_readvariableop_resource_0"n
4while_lstm_cell_128_matmul_1_readvariableop_resource6while_lstm_cell_128_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_128_matmul_readvariableop_resource4while_lstm_cell_128_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_128/BiasAdd/ReadVariableOp*while/lstm_cell_128/BiasAdd/ReadVariableOp2V
)while/lstm_cell_128/MatMul/ReadVariableOp)while/lstm_cell_128/MatMul/ReadVariableOp2Z
+while/lstm_cell_128/MatMul_1/ReadVariableOp+while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_779851

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
while_cond_776349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_776349___redundant_placeholder04
0while_while_cond_776349___redundant_placeholder14
0while_while_cond_776349___redundant_placeholder24
0while_while_cond_776349___redundant_placeholder3
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
??
?
J__inference_sequential_136_layer_call_and_return_conditional_losses_777295

inputsH
5lstm_408_lstm_cell_126_matmul_readvariableop_resource:	?J
7lstm_408_lstm_cell_126_matmul_1_readvariableop_resource:	d?E
6lstm_408_lstm_cell_126_biasadd_readvariableop_resource:	?H
5lstm_409_lstm_cell_127_matmul_readvariableop_resource:	d?J
7lstm_409_lstm_cell_127_matmul_1_readvariableop_resource:	2?E
6lstm_409_lstm_cell_127_biasadd_readvariableop_resource:	?G
5lstm_410_lstm_cell_128_matmul_readvariableop_resource:2(I
7lstm_410_lstm_cell_128_matmul_1_readvariableop_resource:
(D
6lstm_410_lstm_cell_128_biasadd_readvariableop_resource:(:
(dense_136_matmul_readvariableop_resource:
7
)dense_136_biasadd_readvariableop_resource:
identity?? dense_136/BiasAdd/ReadVariableOp?dense_136/MatMul/ReadVariableOp?-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp?,lstm_408/lstm_cell_126/MatMul/ReadVariableOp?.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp?lstm_408/while?-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp?,lstm_409/lstm_cell_127/MatMul/ReadVariableOp?.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp?lstm_409/while?-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp?,lstm_410/lstm_cell_128/MatMul/ReadVariableOp?.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp?lstm_410/whileD
lstm_408/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_408/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_408/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_408/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_sliceStridedSlicelstm_408/Shape:output:0%lstm_408/strided_slice/stack:output:0'lstm_408/strided_slice/stack_1:output:0'lstm_408/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_408/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_408/zeros/packedPacklstm_408/strided_slice:output:0 lstm_408/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_408/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_408/zerosFilllstm_408/zeros/packed:output:0lstm_408/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_408/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_408/zeros_1/packedPacklstm_408/strided_slice:output:0"lstm_408/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_408/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_408/zeros_1Fill lstm_408/zeros_1/packed:output:0lstm_408/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_408/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_408/transpose	Transposeinputs lstm_408/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_408/Shape_1Shapelstm_408/transpose:y:0*
T0*
_output_shapes
:h
lstm_408/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_408/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_408/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_slice_1StridedSlicelstm_408/Shape_1:output:0'lstm_408/strided_slice_1/stack:output:0)lstm_408/strided_slice_1/stack_1:output:0)lstm_408/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_408/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_408/TensorArrayV2TensorListReserve-lstm_408/TensorArrayV2/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_408/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_408/transpose:y:0Glstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_408/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_408/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_408/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_slice_2StridedSlicelstm_408/transpose:y:0'lstm_408/strided_slice_2/stack:output:0)lstm_408/strided_slice_2/stack_1:output:0)lstm_408/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_408/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp5lstm_408_lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_408/lstm_cell_126/MatMulMatMul!lstm_408/strided_slice_2:output:04lstm_408/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp7lstm_408_lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_408/lstm_cell_126/MatMul_1MatMullstm_408/zeros:output:06lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_408/lstm_cell_126/addAddV2'lstm_408/lstm_cell_126/MatMul:product:0)lstm_408/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp6lstm_408_lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_408/lstm_cell_126/BiasAddBiasAddlstm_408/lstm_cell_126/add:z:05lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_408/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_408/lstm_cell_126/splitSplit/lstm_408/lstm_cell_126/split/split_dim:output:0'lstm_408/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_408/lstm_cell_126/SigmoidSigmoid%lstm_408/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_408/lstm_cell_126/Sigmoid_1Sigmoid%lstm_408/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/mulMul$lstm_408/lstm_cell_126/Sigmoid_1:y:0lstm_408/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_408/lstm_cell_126/ReluRelu%lstm_408/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/mul_1Mul"lstm_408/lstm_cell_126/Sigmoid:y:0)lstm_408/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/add_1AddV2lstm_408/lstm_cell_126/mul:z:0 lstm_408/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_408/lstm_cell_126/Sigmoid_2Sigmoid%lstm_408/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_408/lstm_cell_126/Relu_1Relu lstm_408/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/mul_2Mul$lstm_408/lstm_cell_126/Sigmoid_2:y:0+lstm_408/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_408/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_408/TensorArrayV2_1TensorListReserve/lstm_408/TensorArrayV2_1/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_408/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_408/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_408/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_408/whileWhile$lstm_408/while/loop_counter:output:0*lstm_408/while/maximum_iterations:output:0lstm_408/time:output:0!lstm_408/TensorArrayV2_1:handle:0lstm_408/zeros:output:0lstm_408/zeros_1:output:0!lstm_408/strided_slice_1:output:0@lstm_408/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_408_lstm_cell_126_matmul_readvariableop_resource7lstm_408_lstm_cell_126_matmul_1_readvariableop_resource6lstm_408_lstm_cell_126_biasadd_readvariableop_resource*
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
lstm_408_while_body_776927*&
condR
lstm_408_while_cond_776926*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_408/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_408/TensorArrayV2Stack/TensorListStackTensorListStacklstm_408/while:output:3Blstm_408/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_408/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_408/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_408/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_slice_3StridedSlice4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_408/strided_slice_3/stack:output:0)lstm_408/strided_slice_3/stack_1:output:0)lstm_408/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_408/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_408/transpose_1	Transpose4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_408/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_408/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_409/ShapeShapelstm_408/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_409/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_409/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_409/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_sliceStridedSlicelstm_409/Shape:output:0%lstm_409/strided_slice/stack:output:0'lstm_409/strided_slice/stack_1:output:0'lstm_409/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_409/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_409/zeros/packedPacklstm_409/strided_slice:output:0 lstm_409/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_409/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_409/zerosFilllstm_409/zeros/packed:output:0lstm_409/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_409/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_409/zeros_1/packedPacklstm_409/strided_slice:output:0"lstm_409/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_409/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_409/zeros_1Fill lstm_409/zeros_1/packed:output:0lstm_409/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_409/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_409/transpose	Transposelstm_408/transpose_1:y:0 lstm_409/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_409/Shape_1Shapelstm_409/transpose:y:0*
T0*
_output_shapes
:h
lstm_409/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_409/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_409/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_slice_1StridedSlicelstm_409/Shape_1:output:0'lstm_409/strided_slice_1/stack:output:0)lstm_409/strided_slice_1/stack_1:output:0)lstm_409/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_409/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_409/TensorArrayV2TensorListReserve-lstm_409/TensorArrayV2/element_shape:output:0!lstm_409/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_409/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_409/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_409/transpose:y:0Glstm_409/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_409/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_409/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_409/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_slice_2StridedSlicelstm_409/transpose:y:0'lstm_409/strided_slice_2/stack:output:0)lstm_409/strided_slice_2/stack_1:output:0)lstm_409/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_409/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp5lstm_409_lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_409/lstm_cell_127/MatMulMatMul!lstm_409/strided_slice_2:output:04lstm_409/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp7lstm_409_lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_409/lstm_cell_127/MatMul_1MatMullstm_409/zeros:output:06lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_409/lstm_cell_127/addAddV2'lstm_409/lstm_cell_127/MatMul:product:0)lstm_409/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp6lstm_409_lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_409/lstm_cell_127/BiasAddBiasAddlstm_409/lstm_cell_127/add:z:05lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_409/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_409/lstm_cell_127/splitSplit/lstm_409/lstm_cell_127/split/split_dim:output:0'lstm_409/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_409/lstm_cell_127/SigmoidSigmoid%lstm_409/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_409/lstm_cell_127/Sigmoid_1Sigmoid%lstm_409/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/mulMul$lstm_409/lstm_cell_127/Sigmoid_1:y:0lstm_409/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_409/lstm_cell_127/ReluRelu%lstm_409/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/mul_1Mul"lstm_409/lstm_cell_127/Sigmoid:y:0)lstm_409/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/add_1AddV2lstm_409/lstm_cell_127/mul:z:0 lstm_409/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_409/lstm_cell_127/Sigmoid_2Sigmoid%lstm_409/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_409/lstm_cell_127/Relu_1Relu lstm_409/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/mul_2Mul$lstm_409/lstm_cell_127/Sigmoid_2:y:0+lstm_409/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_409/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_409/TensorArrayV2_1TensorListReserve/lstm_409/TensorArrayV2_1/element_shape:output:0!lstm_409/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_409/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_409/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_409/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_409/whileWhile$lstm_409/while/loop_counter:output:0*lstm_409/while/maximum_iterations:output:0lstm_409/time:output:0!lstm_409/TensorArrayV2_1:handle:0lstm_409/zeros:output:0lstm_409/zeros_1:output:0!lstm_409/strided_slice_1:output:0@lstm_409/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_409_lstm_cell_127_matmul_readvariableop_resource7lstm_409_lstm_cell_127_matmul_1_readvariableop_resource6lstm_409_lstm_cell_127_biasadd_readvariableop_resource*
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
lstm_409_while_body_777066*&
condR
lstm_409_while_cond_777065*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_409/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_409/TensorArrayV2Stack/TensorListStackTensorListStacklstm_409/while:output:3Blstm_409/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_409/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_409/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_409/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_slice_3StridedSlice4lstm_409/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_409/strided_slice_3/stack:output:0)lstm_409/strided_slice_3/stack_1:output:0)lstm_409/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_409/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_409/transpose_1	Transpose4lstm_409/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_409/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_409/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_410/ShapeShapelstm_409/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_410/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_410/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_410/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_sliceStridedSlicelstm_410/Shape:output:0%lstm_410/strided_slice/stack:output:0'lstm_410/strided_slice/stack_1:output:0'lstm_410/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_410/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_410/zeros/packedPacklstm_410/strided_slice:output:0 lstm_410/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_410/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_410/zerosFilllstm_410/zeros/packed:output:0lstm_410/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_410/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_410/zeros_1/packedPacklstm_410/strided_slice:output:0"lstm_410/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_410/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_410/zeros_1Fill lstm_410/zeros_1/packed:output:0lstm_410/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_410/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_410/transpose	Transposelstm_409/transpose_1:y:0 lstm_410/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_410/Shape_1Shapelstm_410/transpose:y:0*
T0*
_output_shapes
:h
lstm_410/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_410/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_410/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_slice_1StridedSlicelstm_410/Shape_1:output:0'lstm_410/strided_slice_1/stack:output:0)lstm_410/strided_slice_1/stack_1:output:0)lstm_410/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_410/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_410/TensorArrayV2TensorListReserve-lstm_410/TensorArrayV2/element_shape:output:0!lstm_410/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_410/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_410/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_410/transpose:y:0Glstm_410/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_410/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_410/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_410/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_slice_2StridedSlicelstm_410/transpose:y:0'lstm_410/strided_slice_2/stack:output:0)lstm_410/strided_slice_2/stack_1:output:0)lstm_410/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_410/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp5lstm_410_lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_410/lstm_cell_128/MatMulMatMul!lstm_410/strided_slice_2:output:04lstm_410/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp7lstm_410_lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_410/lstm_cell_128/MatMul_1MatMullstm_410/zeros:output:06lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_410/lstm_cell_128/addAddV2'lstm_410/lstm_cell_128/MatMul:product:0)lstm_410/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp6lstm_410_lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_410/lstm_cell_128/BiasAddBiasAddlstm_410/lstm_cell_128/add:z:05lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_410/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_410/lstm_cell_128/splitSplit/lstm_410/lstm_cell_128/split/split_dim:output:0'lstm_410/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_410/lstm_cell_128/SigmoidSigmoid%lstm_410/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_410/lstm_cell_128/Sigmoid_1Sigmoid%lstm_410/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/mulMul$lstm_410/lstm_cell_128/Sigmoid_1:y:0lstm_410/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_410/lstm_cell_128/ReluRelu%lstm_410/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/mul_1Mul"lstm_410/lstm_cell_128/Sigmoid:y:0)lstm_410/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/add_1AddV2lstm_410/lstm_cell_128/mul:z:0 lstm_410/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_410/lstm_cell_128/Sigmoid_2Sigmoid%lstm_410/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_410/lstm_cell_128/Relu_1Relu lstm_410/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/mul_2Mul$lstm_410/lstm_cell_128/Sigmoid_2:y:0+lstm_410/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_410/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_410/TensorArrayV2_1TensorListReserve/lstm_410/TensorArrayV2_1/element_shape:output:0!lstm_410/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_410/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_410/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_410/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_410/whileWhile$lstm_410/while/loop_counter:output:0*lstm_410/while/maximum_iterations:output:0lstm_410/time:output:0!lstm_410/TensorArrayV2_1:handle:0lstm_410/zeros:output:0lstm_410/zeros_1:output:0!lstm_410/strided_slice_1:output:0@lstm_410/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_410_lstm_cell_128_matmul_readvariableop_resource7lstm_410_lstm_cell_128_matmul_1_readvariableop_resource6lstm_410_lstm_cell_128_biasadd_readvariableop_resource*
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
lstm_410_while_body_777205*&
condR
lstm_410_while_cond_777204*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_410/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_410/TensorArrayV2Stack/TensorListStackTensorListStacklstm_410/while:output:3Blstm_410/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_410/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_410/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_410/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_slice_3StridedSlice4lstm_410/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_410/strided_slice_3/stack:output:0)lstm_410/strided_slice_3/stack_1:output:0)lstm_410/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_410/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_410/transpose_1	Transpose4lstm_410/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_410/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_410/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_136/MatMul/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_136/MatMulMatMul!lstm_410/strided_slice_3:output:0'dense_136/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_136/BiasAdd/ReadVariableOpReadVariableOp)dense_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_136/BiasAddBiasAdddense_136/MatMul:product:0(dense_136/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_136/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_136/BiasAdd/ReadVariableOp ^dense_136/MatMul/ReadVariableOp.^lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp-^lstm_408/lstm_cell_126/MatMul/ReadVariableOp/^lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp^lstm_408/while.^lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp-^lstm_409/lstm_cell_127/MatMul/ReadVariableOp/^lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp^lstm_409/while.^lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp-^lstm_410/lstm_cell_128/MatMul/ReadVariableOp/^lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp^lstm_410/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_136/BiasAdd/ReadVariableOp dense_136/BiasAdd/ReadVariableOp2B
dense_136/MatMul/ReadVariableOpdense_136/MatMul/ReadVariableOp2^
-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp2\
,lstm_408/lstm_cell_126/MatMul/ReadVariableOp,lstm_408/lstm_cell_126/MatMul/ReadVariableOp2`
.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp2 
lstm_408/whilelstm_408/while2^
-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp2\
,lstm_409/lstm_cell_127/MatMul/ReadVariableOp,lstm_409/lstm_cell_127/MatMul/ReadVariableOp2`
.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp2 
lstm_409/whilelstm_409/while2^
-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp2\
,lstm_410/lstm_cell_128/MatMul/ReadVariableOp,lstm_410/lstm_cell_128/MatMul/ReadVariableOp2`
.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp2 
lstm_410/whilelstm_410/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_408_layer_call_fn_777755

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
D__inference_lstm_408_layer_call_and_return_conditional_losses_775753s
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778811

inputs?
,lstm_cell_127_matmul_readvariableop_resource:	d?A
.lstm_cell_127_matmul_1_readvariableop_resource:	2?<
-lstm_cell_127_biasadd_readvariableop_resource:	?
identity??$lstm_cell_127/BiasAdd/ReadVariableOp?#lstm_cell_127/MatMul/ReadVariableOp?%lstm_cell_127/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_127/MatMul/ReadVariableOpReadVariableOp,lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_127/MatMulMatMulstrided_slice_2:output:0+lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_127/MatMul_1MatMulzeros:output:0-lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_127/addAddV2lstm_cell_127/MatMul:product:0 lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_127/BiasAddBiasAddlstm_cell_127/add:z:0,lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_127/splitSplit&lstm_cell_127/split/split_dim:output:0lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_127/SigmoidSigmoidlstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_1Sigmoidlstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_127/mulMullstm_cell_127/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_127/ReluRelulstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_1Mullstm_cell_127/Sigmoid:y:0 lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_127/add_1AddV2lstm_cell_127/mul:z:0lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_2Sigmoidlstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_127/Relu_1Relulstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_2Mullstm_cell_127/Sigmoid_2:y:0"lstm_cell_127/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_127_matmul_readvariableop_resource.lstm_cell_127_matmul_1_readvariableop_resource-lstm_cell_127_biasadd_readvariableop_resource*
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
while_body_778727*
condR
while_cond_778726*K
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
NoOpNoOp%^lstm_cell_127/BiasAdd/ReadVariableOp$^lstm_cell_127/MatMul/ReadVariableOp&^lstm_cell_127/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_127/BiasAdd/ReadVariableOp$lstm_cell_127/BiasAdd/ReadVariableOp2J
#lstm_cell_127/MatMul/ReadVariableOp#lstm_cell_127/MatMul/ReadVariableOp2N
%lstm_cell_127/MatMul_1/ReadVariableOp%lstm_cell_127/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_127_layer_call_fn_779704

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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_774971o
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
lstm_409_while_cond_777065.
*lstm_409_while_lstm_409_while_loop_counter4
0lstm_409_while_lstm_409_while_maximum_iterations
lstm_409_while_placeholder 
lstm_409_while_placeholder_1 
lstm_409_while_placeholder_2 
lstm_409_while_placeholder_30
,lstm_409_while_less_lstm_409_strided_slice_1F
Blstm_409_while_lstm_409_while_cond_777065___redundant_placeholder0F
Blstm_409_while_lstm_409_while_cond_777065___redundant_placeholder1F
Blstm_409_while_lstm_409_while_cond_777065___redundant_placeholder2F
Blstm_409_while_lstm_409_while_cond_777065___redundant_placeholder3
lstm_409_while_identity
?
lstm_409/while/LessLesslstm_409_while_placeholder,lstm_409_while_less_lstm_409_strided_slice_1*
T0*
_output_shapes
: ]
lstm_409/while/IdentityIdentitylstm_409/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_409_while_identity lstm_409/while/Identity:output:0*(
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
while_cond_778726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_778726___redundant_placeholder04
0while_while_cond_778726___redundant_placeholder14
0while_while_cond_778726___redundant_placeholder24
0while_while_cond_778726___redundant_placeholder3
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
lstm_410_while_cond_777631.
*lstm_410_while_lstm_410_while_loop_counter4
0lstm_410_while_lstm_410_while_maximum_iterations
lstm_410_while_placeholder 
lstm_410_while_placeholder_1 
lstm_410_while_placeholder_2 
lstm_410_while_placeholder_30
,lstm_410_while_less_lstm_410_strided_slice_1F
Blstm_410_while_lstm_410_while_cond_777631___redundant_placeholder0F
Blstm_410_while_lstm_410_while_cond_777631___redundant_placeholder1F
Blstm_410_while_lstm_410_while_cond_777631___redundant_placeholder2F
Blstm_410_while_lstm_410_while_cond_777631___redundant_placeholder3
lstm_410_while_identity
?
lstm_410/while/LessLesslstm_410_while_placeholder,lstm_410_while_less_lstm_410_strided_slice_1*
T0*
_output_shapes
: ]
lstm_410/while/IdentityIdentitylstm_410/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_410_while_identity lstm_410/while/Identity:output:0*(
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_774895

inputs'
lstm_cell_126_774813:	?'
lstm_cell_126_774815:	d?#
lstm_cell_126_774817:	?
identity??%lstm_cell_126/StatefulPartitionedCall?while;
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
%lstm_cell_126/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_126_774813lstm_cell_126_774815lstm_cell_126_774817*
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774767n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_126_774813lstm_cell_126_774815lstm_cell_126_774817*
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
while_body_774826*
condR
while_cond_774825*K
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
NoOpNoOp&^lstm_cell_126/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_126/StatefulPartitionedCall%lstm_cell_126/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_128_layer_call_fn_779802

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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775321o
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
)__inference_lstm_409_layer_call_fn_778360
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775245|
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
?
)__inference_lstm_410_layer_call_fn_778965
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_775404o
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
??
?
J__inference_sequential_136_layer_call_and_return_conditional_losses_777722

inputsH
5lstm_408_lstm_cell_126_matmul_readvariableop_resource:	?J
7lstm_408_lstm_cell_126_matmul_1_readvariableop_resource:	d?E
6lstm_408_lstm_cell_126_biasadd_readvariableop_resource:	?H
5lstm_409_lstm_cell_127_matmul_readvariableop_resource:	d?J
7lstm_409_lstm_cell_127_matmul_1_readvariableop_resource:	2?E
6lstm_409_lstm_cell_127_biasadd_readvariableop_resource:	?G
5lstm_410_lstm_cell_128_matmul_readvariableop_resource:2(I
7lstm_410_lstm_cell_128_matmul_1_readvariableop_resource:
(D
6lstm_410_lstm_cell_128_biasadd_readvariableop_resource:(:
(dense_136_matmul_readvariableop_resource:
7
)dense_136_biasadd_readvariableop_resource:
identity?? dense_136/BiasAdd/ReadVariableOp?dense_136/MatMul/ReadVariableOp?-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp?,lstm_408/lstm_cell_126/MatMul/ReadVariableOp?.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp?lstm_408/while?-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp?,lstm_409/lstm_cell_127/MatMul/ReadVariableOp?.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp?lstm_409/while?-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp?,lstm_410/lstm_cell_128/MatMul/ReadVariableOp?.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp?lstm_410/whileD
lstm_408/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_408/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_408/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_408/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_sliceStridedSlicelstm_408/Shape:output:0%lstm_408/strided_slice/stack:output:0'lstm_408/strided_slice/stack_1:output:0'lstm_408/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_408/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_408/zeros/packedPacklstm_408/strided_slice:output:0 lstm_408/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_408/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_408/zerosFilllstm_408/zeros/packed:output:0lstm_408/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_408/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_408/zeros_1/packedPacklstm_408/strided_slice:output:0"lstm_408/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_408/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_408/zeros_1Fill lstm_408/zeros_1/packed:output:0lstm_408/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_408/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_408/transpose	Transposeinputs lstm_408/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_408/Shape_1Shapelstm_408/transpose:y:0*
T0*
_output_shapes
:h
lstm_408/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_408/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_408/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_slice_1StridedSlicelstm_408/Shape_1:output:0'lstm_408/strided_slice_1/stack:output:0)lstm_408/strided_slice_1/stack_1:output:0)lstm_408/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_408/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_408/TensorArrayV2TensorListReserve-lstm_408/TensorArrayV2/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_408/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_408/transpose:y:0Glstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_408/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_408/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_408/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_slice_2StridedSlicelstm_408/transpose:y:0'lstm_408/strided_slice_2/stack:output:0)lstm_408/strided_slice_2/stack_1:output:0)lstm_408/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_408/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp5lstm_408_lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_408/lstm_cell_126/MatMulMatMul!lstm_408/strided_slice_2:output:04lstm_408/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp7lstm_408_lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_408/lstm_cell_126/MatMul_1MatMullstm_408/zeros:output:06lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_408/lstm_cell_126/addAddV2'lstm_408/lstm_cell_126/MatMul:product:0)lstm_408/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp6lstm_408_lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_408/lstm_cell_126/BiasAddBiasAddlstm_408/lstm_cell_126/add:z:05lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_408/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_408/lstm_cell_126/splitSplit/lstm_408/lstm_cell_126/split/split_dim:output:0'lstm_408/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_408/lstm_cell_126/SigmoidSigmoid%lstm_408/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_408/lstm_cell_126/Sigmoid_1Sigmoid%lstm_408/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/mulMul$lstm_408/lstm_cell_126/Sigmoid_1:y:0lstm_408/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_408/lstm_cell_126/ReluRelu%lstm_408/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/mul_1Mul"lstm_408/lstm_cell_126/Sigmoid:y:0)lstm_408/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/add_1AddV2lstm_408/lstm_cell_126/mul:z:0 lstm_408/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_408/lstm_cell_126/Sigmoid_2Sigmoid%lstm_408/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_408/lstm_cell_126/Relu_1Relu lstm_408/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_408/lstm_cell_126/mul_2Mul$lstm_408/lstm_cell_126/Sigmoid_2:y:0+lstm_408/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_408/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_408/TensorArrayV2_1TensorListReserve/lstm_408/TensorArrayV2_1/element_shape:output:0!lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_408/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_408/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_408/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_408/whileWhile$lstm_408/while/loop_counter:output:0*lstm_408/while/maximum_iterations:output:0lstm_408/time:output:0!lstm_408/TensorArrayV2_1:handle:0lstm_408/zeros:output:0lstm_408/zeros_1:output:0!lstm_408/strided_slice_1:output:0@lstm_408/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_408_lstm_cell_126_matmul_readvariableop_resource7lstm_408_lstm_cell_126_matmul_1_readvariableop_resource6lstm_408_lstm_cell_126_biasadd_readvariableop_resource*
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
lstm_408_while_body_777354*&
condR
lstm_408_while_cond_777353*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_408/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_408/TensorArrayV2Stack/TensorListStackTensorListStacklstm_408/while:output:3Blstm_408/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_408/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_408/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_408/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_408/strided_slice_3StridedSlice4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_408/strided_slice_3/stack:output:0)lstm_408/strided_slice_3/stack_1:output:0)lstm_408/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_408/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_408/transpose_1	Transpose4lstm_408/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_408/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_408/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_409/ShapeShapelstm_408/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_409/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_409/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_409/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_sliceStridedSlicelstm_409/Shape:output:0%lstm_409/strided_slice/stack:output:0'lstm_409/strided_slice/stack_1:output:0'lstm_409/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_409/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_409/zeros/packedPacklstm_409/strided_slice:output:0 lstm_409/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_409/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_409/zerosFilllstm_409/zeros/packed:output:0lstm_409/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_409/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_409/zeros_1/packedPacklstm_409/strided_slice:output:0"lstm_409/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_409/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_409/zeros_1Fill lstm_409/zeros_1/packed:output:0lstm_409/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_409/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_409/transpose	Transposelstm_408/transpose_1:y:0 lstm_409/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_409/Shape_1Shapelstm_409/transpose:y:0*
T0*
_output_shapes
:h
lstm_409/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_409/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_409/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_slice_1StridedSlicelstm_409/Shape_1:output:0'lstm_409/strided_slice_1/stack:output:0)lstm_409/strided_slice_1/stack_1:output:0)lstm_409/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_409/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_409/TensorArrayV2TensorListReserve-lstm_409/TensorArrayV2/element_shape:output:0!lstm_409/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_409/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_409/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_409/transpose:y:0Glstm_409/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_409/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_409/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_409/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_slice_2StridedSlicelstm_409/transpose:y:0'lstm_409/strided_slice_2/stack:output:0)lstm_409/strided_slice_2/stack_1:output:0)lstm_409/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_409/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp5lstm_409_lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_409/lstm_cell_127/MatMulMatMul!lstm_409/strided_slice_2:output:04lstm_409/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp7lstm_409_lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_409/lstm_cell_127/MatMul_1MatMullstm_409/zeros:output:06lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_409/lstm_cell_127/addAddV2'lstm_409/lstm_cell_127/MatMul:product:0)lstm_409/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp6lstm_409_lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_409/lstm_cell_127/BiasAddBiasAddlstm_409/lstm_cell_127/add:z:05lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_409/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_409/lstm_cell_127/splitSplit/lstm_409/lstm_cell_127/split/split_dim:output:0'lstm_409/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_409/lstm_cell_127/SigmoidSigmoid%lstm_409/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_409/lstm_cell_127/Sigmoid_1Sigmoid%lstm_409/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/mulMul$lstm_409/lstm_cell_127/Sigmoid_1:y:0lstm_409/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_409/lstm_cell_127/ReluRelu%lstm_409/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/mul_1Mul"lstm_409/lstm_cell_127/Sigmoid:y:0)lstm_409/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/add_1AddV2lstm_409/lstm_cell_127/mul:z:0 lstm_409/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_409/lstm_cell_127/Sigmoid_2Sigmoid%lstm_409/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_409/lstm_cell_127/Relu_1Relu lstm_409/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_409/lstm_cell_127/mul_2Mul$lstm_409/lstm_cell_127/Sigmoid_2:y:0+lstm_409/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_409/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_409/TensorArrayV2_1TensorListReserve/lstm_409/TensorArrayV2_1/element_shape:output:0!lstm_409/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_409/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_409/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_409/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_409/whileWhile$lstm_409/while/loop_counter:output:0*lstm_409/while/maximum_iterations:output:0lstm_409/time:output:0!lstm_409/TensorArrayV2_1:handle:0lstm_409/zeros:output:0lstm_409/zeros_1:output:0!lstm_409/strided_slice_1:output:0@lstm_409/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_409_lstm_cell_127_matmul_readvariableop_resource7lstm_409_lstm_cell_127_matmul_1_readvariableop_resource6lstm_409_lstm_cell_127_biasadd_readvariableop_resource*
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
lstm_409_while_body_777493*&
condR
lstm_409_while_cond_777492*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_409/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_409/TensorArrayV2Stack/TensorListStackTensorListStacklstm_409/while:output:3Blstm_409/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_409/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_409/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_409/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_409/strided_slice_3StridedSlice4lstm_409/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_409/strided_slice_3/stack:output:0)lstm_409/strided_slice_3/stack_1:output:0)lstm_409/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_409/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_409/transpose_1	Transpose4lstm_409/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_409/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_409/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_410/ShapeShapelstm_409/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_410/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_410/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_410/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_sliceStridedSlicelstm_410/Shape:output:0%lstm_410/strided_slice/stack:output:0'lstm_410/strided_slice/stack_1:output:0'lstm_410/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_410/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_410/zeros/packedPacklstm_410/strided_slice:output:0 lstm_410/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_410/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_410/zerosFilllstm_410/zeros/packed:output:0lstm_410/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_410/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_410/zeros_1/packedPacklstm_410/strided_slice:output:0"lstm_410/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_410/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_410/zeros_1Fill lstm_410/zeros_1/packed:output:0lstm_410/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_410/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_410/transpose	Transposelstm_409/transpose_1:y:0 lstm_410/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_410/Shape_1Shapelstm_410/transpose:y:0*
T0*
_output_shapes
:h
lstm_410/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_410/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_410/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_slice_1StridedSlicelstm_410/Shape_1:output:0'lstm_410/strided_slice_1/stack:output:0)lstm_410/strided_slice_1/stack_1:output:0)lstm_410/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_410/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_410/TensorArrayV2TensorListReserve-lstm_410/TensorArrayV2/element_shape:output:0!lstm_410/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_410/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_410/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_410/transpose:y:0Glstm_410/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_410/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_410/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_410/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_slice_2StridedSlicelstm_410/transpose:y:0'lstm_410/strided_slice_2/stack:output:0)lstm_410/strided_slice_2/stack_1:output:0)lstm_410/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_410/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp5lstm_410_lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_410/lstm_cell_128/MatMulMatMul!lstm_410/strided_slice_2:output:04lstm_410/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp7lstm_410_lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_410/lstm_cell_128/MatMul_1MatMullstm_410/zeros:output:06lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_410/lstm_cell_128/addAddV2'lstm_410/lstm_cell_128/MatMul:product:0)lstm_410/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp6lstm_410_lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_410/lstm_cell_128/BiasAddBiasAddlstm_410/lstm_cell_128/add:z:05lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_410/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_410/lstm_cell_128/splitSplit/lstm_410/lstm_cell_128/split/split_dim:output:0'lstm_410/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_410/lstm_cell_128/SigmoidSigmoid%lstm_410/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_410/lstm_cell_128/Sigmoid_1Sigmoid%lstm_410/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/mulMul$lstm_410/lstm_cell_128/Sigmoid_1:y:0lstm_410/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_410/lstm_cell_128/ReluRelu%lstm_410/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/mul_1Mul"lstm_410/lstm_cell_128/Sigmoid:y:0)lstm_410/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/add_1AddV2lstm_410/lstm_cell_128/mul:z:0 lstm_410/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_410/lstm_cell_128/Sigmoid_2Sigmoid%lstm_410/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_410/lstm_cell_128/Relu_1Relu lstm_410/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_410/lstm_cell_128/mul_2Mul$lstm_410/lstm_cell_128/Sigmoid_2:y:0+lstm_410/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_410/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_410/TensorArrayV2_1TensorListReserve/lstm_410/TensorArrayV2_1/element_shape:output:0!lstm_410/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_410/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_410/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_410/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_410/whileWhile$lstm_410/while/loop_counter:output:0*lstm_410/while/maximum_iterations:output:0lstm_410/time:output:0!lstm_410/TensorArrayV2_1:handle:0lstm_410/zeros:output:0lstm_410/zeros_1:output:0!lstm_410/strided_slice_1:output:0@lstm_410/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_410_lstm_cell_128_matmul_readvariableop_resource7lstm_410_lstm_cell_128_matmul_1_readvariableop_resource6lstm_410_lstm_cell_128_biasadd_readvariableop_resource*
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
lstm_410_while_body_777632*&
condR
lstm_410_while_cond_777631*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_410/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_410/TensorArrayV2Stack/TensorListStackTensorListStacklstm_410/while:output:3Blstm_410/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_410/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_410/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_410/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_410/strided_slice_3StridedSlice4lstm_410/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_410/strided_slice_3/stack:output:0)lstm_410/strided_slice_3/stack_1:output:0)lstm_410/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_410/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_410/transpose_1	Transpose4lstm_410/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_410/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_410/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_136/MatMul/ReadVariableOpReadVariableOp(dense_136_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_136/MatMulMatMul!lstm_410/strided_slice_3:output:0'dense_136/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_136/BiasAdd/ReadVariableOpReadVariableOp)dense_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_136/BiasAddBiasAdddense_136/MatMul:product:0(dense_136/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_136/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_136/BiasAdd/ReadVariableOp ^dense_136/MatMul/ReadVariableOp.^lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp-^lstm_408/lstm_cell_126/MatMul/ReadVariableOp/^lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp^lstm_408/while.^lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp-^lstm_409/lstm_cell_127/MatMul/ReadVariableOp/^lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp^lstm_409/while.^lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp-^lstm_410/lstm_cell_128/MatMul/ReadVariableOp/^lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp^lstm_410/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_136/BiasAdd/ReadVariableOp dense_136/BiasAdd/ReadVariableOp2B
dense_136/MatMul/ReadVariableOpdense_136/MatMul/ReadVariableOp2^
-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp-lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp2\
,lstm_408/lstm_cell_126/MatMul/ReadVariableOp,lstm_408/lstm_cell_126/MatMul/ReadVariableOp2`
.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp.lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp2 
lstm_408/whilelstm_408/while2^
-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp-lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp2\
,lstm_409/lstm_cell_127/MatMul/ReadVariableOp,lstm_409/lstm_cell_127/MatMul/ReadVariableOp2`
.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp.lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp2 
lstm_409/whilelstm_409/while2^
-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp-lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp2\
,lstm_410/lstm_cell_128/MatMul/ReadVariableOp,lstm_410/lstm_cell_128/MatMul/ReadVariableOp2`
.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp.lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp2 
lstm_410/whilelstm_410/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_778583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_778583___redundant_placeholder04
0while_while_cond_778583___redundant_placeholder14
0while_while_cond_778583___redundant_placeholder24
0while_while_cond_778583___redundant_placeholder3
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
?
?
J__inference_sequential_136_layer_call_and_return_conditional_losses_776749
lstm_408_input"
lstm_408_776722:	?"
lstm_408_776724:	d?
lstm_408_776726:	?"
lstm_409_776729:	d?"
lstm_409_776731:	2?
lstm_409_776733:	?!
lstm_410_776736:2(!
lstm_410_776738:
(
lstm_410_776740:("
dense_136_776743:

dense_136_776745:
identity??!dense_136/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall? lstm_409/StatefulPartitionedCall? lstm_410/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputlstm_408_776722lstm_408_776724lstm_408_776726*
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_775753?
 lstm_409/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0lstm_409_776729lstm_409_776731lstm_409_776733*
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775903?
 lstm_410/StatefulPartitionedCallStatefulPartitionedCall)lstm_409/StatefulPartitionedCall:output:0lstm_410_776736lstm_410_776738lstm_410_776740*
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_776053?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_410/StatefulPartitionedCall:output:0dense_136_776743dense_136_776745*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_776071y
IdentityIdentity*dense_136/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_136/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall!^lstm_409/StatefulPartitionedCall!^lstm_410/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall2D
 lstm_409/StatefulPartitionedCall lstm_409/StatefulPartitionedCall2D
 lstm_410/StatefulPartitionedCall lstm_410/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?
?
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774621

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
D__inference_lstm_410_layer_call_and_return_conditional_losses_776053

inputs>
,lstm_cell_128_matmul_readvariableop_resource:2(@
.lstm_cell_128_matmul_1_readvariableop_resource:
(;
-lstm_cell_128_biasadd_readvariableop_resource:(
identity??$lstm_cell_128/BiasAdd/ReadVariableOp?#lstm_cell_128/MatMul/ReadVariableOp?%lstm_cell_128/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_128/MatMul/ReadVariableOpReadVariableOp,lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_128/MatMulMatMulstrided_slice_2:output:0+lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_128/MatMul_1MatMulzeros:output:0-lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_128/addAddV2lstm_cell_128/MatMul:product:0 lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_128/BiasAddBiasAddlstm_cell_128/add:z:0,lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_128/splitSplit&lstm_cell_128/split/split_dim:output:0lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_128/SigmoidSigmoidlstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_1Sigmoidlstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_128/mulMullstm_cell_128/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_128/ReluRelulstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_1Mullstm_cell_128/Sigmoid:y:0 lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_128/add_1AddV2lstm_cell_128/mul:z:0lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_2Sigmoidlstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_128/Relu_1Relulstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_2Mullstm_cell_128/Sigmoid_2:y:0"lstm_cell_128/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_128_matmul_readvariableop_resource.lstm_cell_128_matmul_1_readvariableop_resource-lstm_cell_128_biasadd_readvariableop_resource*
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
while_body_775969*
condR
while_cond_775968*K
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
NoOpNoOp%^lstm_cell_128/BiasAdd/ReadVariableOp$^lstm_cell_128/MatMul/ReadVariableOp&^lstm_cell_128/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_128/BiasAdd/ReadVariableOp$lstm_cell_128/BiasAdd/ReadVariableOp2J
#lstm_cell_128/MatMul/ReadVariableOp#lstm_cell_128/MatMul/ReadVariableOp2N
%lstm_cell_128/MatMul_1/ReadVariableOp%lstm_cell_128/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
)sequential_136_lstm_410_while_body_774464L
Hsequential_136_lstm_410_while_sequential_136_lstm_410_while_loop_counterR
Nsequential_136_lstm_410_while_sequential_136_lstm_410_while_maximum_iterations-
)sequential_136_lstm_410_while_placeholder/
+sequential_136_lstm_410_while_placeholder_1/
+sequential_136_lstm_410_while_placeholder_2/
+sequential_136_lstm_410_while_placeholder_3K
Gsequential_136_lstm_410_while_sequential_136_lstm_410_strided_slice_1_0?
?sequential_136_lstm_410_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_410_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_136_lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0:2(`
Nsequential_136_lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0:
([
Msequential_136_lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0:(*
&sequential_136_lstm_410_while_identity,
(sequential_136_lstm_410_while_identity_1,
(sequential_136_lstm_410_while_identity_2,
(sequential_136_lstm_410_while_identity_3,
(sequential_136_lstm_410_while_identity_4,
(sequential_136_lstm_410_while_identity_5I
Esequential_136_lstm_410_while_sequential_136_lstm_410_strided_slice_1?
?sequential_136_lstm_410_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_410_tensorarrayunstack_tensorlistfromtensor\
Jsequential_136_lstm_410_while_lstm_cell_128_matmul_readvariableop_resource:2(^
Lsequential_136_lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource:
(Y
Ksequential_136_lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource:(??Bsequential_136/lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp?Asequential_136/lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp?Csequential_136/lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp?
Osequential_136/lstm_410/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_136/lstm_410/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_136_lstm_410_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_410_tensorarrayunstack_tensorlistfromtensor_0)sequential_136_lstm_410_while_placeholderXsequential_136/lstm_410/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_136/lstm_410/while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOpLsequential_136_lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_136/lstm_410/while/lstm_cell_128/MatMulMatMulHsequential_136/lstm_410/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_136/lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_136/lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOpNsequential_136_lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_136/lstm_410/while/lstm_cell_128/MatMul_1MatMul+sequential_136_lstm_410_while_placeholder_2Ksequential_136/lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_136/lstm_410/while/lstm_cell_128/addAddV2<sequential_136/lstm_410/while/lstm_cell_128/MatMul:product:0>sequential_136/lstm_410/while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_136/lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOpMsequential_136_lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_136/lstm_410/while/lstm_cell_128/BiasAddBiasAdd3sequential_136/lstm_410/while/lstm_cell_128/add:z:0Jsequential_136/lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_136/lstm_410/while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_136/lstm_410/while/lstm_cell_128/splitSplitDsequential_136/lstm_410/while/lstm_cell_128/split/split_dim:output:0<sequential_136/lstm_410/while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_136/lstm_410/while/lstm_cell_128/SigmoidSigmoid:sequential_136/lstm_410/while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_136/lstm_410/while/lstm_cell_128/Sigmoid_1Sigmoid:sequential_136/lstm_410/while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_136/lstm_410/while/lstm_cell_128/mulMul9sequential_136/lstm_410/while/lstm_cell_128/Sigmoid_1:y:0+sequential_136_lstm_410_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_136/lstm_410/while/lstm_cell_128/ReluRelu:sequential_136/lstm_410/while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_136/lstm_410/while/lstm_cell_128/mul_1Mul7sequential_136/lstm_410/while/lstm_cell_128/Sigmoid:y:0>sequential_136/lstm_410/while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_136/lstm_410/while/lstm_cell_128/add_1AddV23sequential_136/lstm_410/while/lstm_cell_128/mul:z:05sequential_136/lstm_410/while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_136/lstm_410/while/lstm_cell_128/Sigmoid_2Sigmoid:sequential_136/lstm_410/while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_136/lstm_410/while/lstm_cell_128/Relu_1Relu5sequential_136/lstm_410/while/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_136/lstm_410/while/lstm_cell_128/mul_2Mul9sequential_136/lstm_410/while/lstm_cell_128/Sigmoid_2:y:0@sequential_136/lstm_410/while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_136/lstm_410/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_136_lstm_410_while_placeholder_1)sequential_136_lstm_410_while_placeholder5sequential_136/lstm_410/while/lstm_cell_128/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_136/lstm_410/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_136/lstm_410/while/addAddV2)sequential_136_lstm_410_while_placeholder,sequential_136/lstm_410/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_136/lstm_410/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_136/lstm_410/while/add_1AddV2Hsequential_136_lstm_410_while_sequential_136_lstm_410_while_loop_counter.sequential_136/lstm_410/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_136/lstm_410/while/IdentityIdentity'sequential_136/lstm_410/while/add_1:z:0#^sequential_136/lstm_410/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_410/while/Identity_1IdentityNsequential_136_lstm_410_while_sequential_136_lstm_410_while_maximum_iterations#^sequential_136/lstm_410/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_410/while/Identity_2Identity%sequential_136/lstm_410/while/add:z:0#^sequential_136/lstm_410/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_410/while/Identity_3IdentityRsequential_136/lstm_410/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_136/lstm_410/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_410/while/Identity_4Identity5sequential_136/lstm_410/while/lstm_cell_128/mul_2:z:0#^sequential_136/lstm_410/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_136/lstm_410/while/Identity_5Identity5sequential_136/lstm_410/while/lstm_cell_128/add_1:z:0#^sequential_136/lstm_410/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_136/lstm_410/while/NoOpNoOpC^sequential_136/lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOpB^sequential_136/lstm_410/while/lstm_cell_128/MatMul/ReadVariableOpD^sequential_136/lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_136_lstm_410_while_identity/sequential_136/lstm_410/while/Identity:output:0"]
(sequential_136_lstm_410_while_identity_11sequential_136/lstm_410/while/Identity_1:output:0"]
(sequential_136_lstm_410_while_identity_21sequential_136/lstm_410/while/Identity_2:output:0"]
(sequential_136_lstm_410_while_identity_31sequential_136/lstm_410/while/Identity_3:output:0"]
(sequential_136_lstm_410_while_identity_41sequential_136/lstm_410/while/Identity_4:output:0"]
(sequential_136_lstm_410_while_identity_51sequential_136/lstm_410/while/Identity_5:output:0"?
Ksequential_136_lstm_410_while_lstm_cell_128_biasadd_readvariableop_resourceMsequential_136_lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0"?
Lsequential_136_lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resourceNsequential_136_lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0"?
Jsequential_136_lstm_410_while_lstm_cell_128_matmul_readvariableop_resourceLsequential_136_lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0"?
Esequential_136_lstm_410_while_sequential_136_lstm_410_strided_slice_1Gsequential_136_lstm_410_while_sequential_136_lstm_410_strided_slice_1_0"?
?sequential_136_lstm_410_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_410_tensorarrayunstack_tensorlistfromtensor?sequential_136_lstm_410_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_410_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_136/lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOpBsequential_136/lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp2?
Asequential_136/lstm_410/while/lstm_cell_128/MatMul/ReadVariableOpAsequential_136/lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp2?
Csequential_136/lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOpCsequential_136/lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_136_layer_call_and_return_conditional_losses_776667

inputs"
lstm_408_776640:	?"
lstm_408_776642:	d?
lstm_408_776644:	?"
lstm_409_776647:	d?"
lstm_409_776649:	2?
lstm_409_776651:	?!
lstm_410_776654:2(!
lstm_410_776656:
(
lstm_410_776658:("
dense_136_776661:

dense_136_776663:
identity??!dense_136/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall? lstm_409/StatefulPartitionedCall? lstm_410/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCallinputslstm_408_776640lstm_408_776642lstm_408_776644*
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_776599?
 lstm_409/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0lstm_409_776647lstm_409_776649lstm_409_776651*
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_776434?
 lstm_410/StatefulPartitionedCallStatefulPartitionedCall)lstm_409/StatefulPartitionedCall:output:0lstm_410_776654lstm_410_776656lstm_410_776658*
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_776269?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_410/StatefulPartitionedCall:output:0dense_136_776661dense_136_776663*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_776071y
IdentityIdentity*dense_136/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_136/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall!^lstm_409/StatefulPartitionedCall!^lstm_410/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall2D
 lstm_409/StatefulPartitionedCall lstm_409/StatefulPartitionedCall2D
 lstm_410/StatefulPartitionedCall lstm_410/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_410_layer_call_and_return_conditional_losses_776269

inputs>
,lstm_cell_128_matmul_readvariableop_resource:2(@
.lstm_cell_128_matmul_1_readvariableop_resource:
(;
-lstm_cell_128_biasadd_readvariableop_resource:(
identity??$lstm_cell_128/BiasAdd/ReadVariableOp?#lstm_cell_128/MatMul/ReadVariableOp?%lstm_cell_128/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_128/MatMul/ReadVariableOpReadVariableOp,lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_128/MatMulMatMulstrided_slice_2:output:0+lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_128/MatMul_1MatMulzeros:output:0-lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_128/addAddV2lstm_cell_128/MatMul:product:0 lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_128/BiasAddBiasAddlstm_cell_128/add:z:0,lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_128/splitSplit&lstm_cell_128/split/split_dim:output:0lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_128/SigmoidSigmoidlstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_1Sigmoidlstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_128/mulMullstm_cell_128/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_128/ReluRelulstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_1Mullstm_cell_128/Sigmoid:y:0 lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_128/add_1AddV2lstm_cell_128/mul:z:0lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_2Sigmoidlstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_128/Relu_1Relulstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_2Mullstm_cell_128/Sigmoid_2:y:0"lstm_cell_128/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_128_matmul_readvariableop_resource.lstm_cell_128_matmul_1_readvariableop_resource-lstm_cell_128_biasadd_readvariableop_resource*
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
while_body_776185*
condR
while_cond_776184*K
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
NoOpNoOp%^lstm_cell_128/BiasAdd/ReadVariableOp$^lstm_cell_128/MatMul/ReadVariableOp&^lstm_cell_128/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_128/BiasAdd/ReadVariableOp$lstm_cell_128/BiasAdd/ReadVariableOp2J
#lstm_cell_128/MatMul/ReadVariableOp#lstm_cell_128/MatMul/ReadVariableOp2N
%lstm_cell_128/MatMul_1/ReadVariableOp%lstm_cell_128/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_408_while_body_777354.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_3-
)lstm_408_while_lstm_408_strided_slice_1_0i
elstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0:	?R
?lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?M
>lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
lstm_408_while_identity
lstm_408_while_identity_1
lstm_408_while_identity_2
lstm_408_while_identity_3
lstm_408_while_identity_4
lstm_408_while_identity_5+
'lstm_408_while_lstm_408_strided_slice_1g
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorN
;lstm_408_while_lstm_cell_126_matmul_readvariableop_resource:	?P
=lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource:	d?K
<lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource:	???3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp?2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp?4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp?
@lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_408/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0lstm_408_while_placeholderIlstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp=lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_408/while/lstm_cell_126/MatMulMatMul9lstm_408/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp?lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_408/while/lstm_cell_126/MatMul_1MatMullstm_408_while_placeholder_2<lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_408/while/lstm_cell_126/addAddV2-lstm_408/while/lstm_cell_126/MatMul:product:0/lstm_408/while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp>lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_408/while/lstm_cell_126/BiasAddBiasAdd$lstm_408/while/lstm_cell_126/add:z:0;lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_408/while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_408/while/lstm_cell_126/splitSplit5lstm_408/while/lstm_cell_126/split/split_dim:output:0-lstm_408/while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_408/while/lstm_cell_126/SigmoidSigmoid+lstm_408/while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_408/while/lstm_cell_126/Sigmoid_1Sigmoid+lstm_408/while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_408/while/lstm_cell_126/mulMul*lstm_408/while/lstm_cell_126/Sigmoid_1:y:0lstm_408_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_408/while/lstm_cell_126/ReluRelu+lstm_408/while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_408/while/lstm_cell_126/mul_1Mul(lstm_408/while/lstm_cell_126/Sigmoid:y:0/lstm_408/while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_408/while/lstm_cell_126/add_1AddV2$lstm_408/while/lstm_cell_126/mul:z:0&lstm_408/while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_408/while/lstm_cell_126/Sigmoid_2Sigmoid+lstm_408/while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_408/while/lstm_cell_126/Relu_1Relu&lstm_408/while/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_408/while/lstm_cell_126/mul_2Mul*lstm_408/while/lstm_cell_126/Sigmoid_2:y:01lstm_408/while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_408/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_408_while_placeholder_1lstm_408_while_placeholder&lstm_408/while/lstm_cell_126/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_408/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_408/while/addAddV2lstm_408_while_placeholderlstm_408/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_408/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_408/while/add_1AddV2*lstm_408_while_lstm_408_while_loop_counterlstm_408/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_408/while/IdentityIdentitylstm_408/while/add_1:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: ?
lstm_408/while/Identity_1Identity0lstm_408_while_lstm_408_while_maximum_iterations^lstm_408/while/NoOp*
T0*
_output_shapes
: t
lstm_408/while/Identity_2Identitylstm_408/while/add:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: ?
lstm_408/while/Identity_3IdentityClstm_408/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_408/while/NoOp*
T0*
_output_shapes
: ?
lstm_408/while/Identity_4Identity&lstm_408/while/lstm_cell_126/mul_2:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_408/while/Identity_5Identity&lstm_408/while/lstm_cell_126/add_1:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_408/while/NoOpNoOp4^lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp3^lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp5^lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_408_while_identity lstm_408/while/Identity:output:0"?
lstm_408_while_identity_1"lstm_408/while/Identity_1:output:0"?
lstm_408_while_identity_2"lstm_408/while/Identity_2:output:0"?
lstm_408_while_identity_3"lstm_408/while/Identity_3:output:0"?
lstm_408_while_identity_4"lstm_408/while/Identity_4:output:0"?
lstm_408_while_identity_5"lstm_408/while/Identity_5:output:0"T
'lstm_408_while_lstm_408_strided_slice_1)lstm_408_while_lstm_408_strided_slice_1_0"~
<lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource>lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0"?
=lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource?lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0"|
;lstm_408_while_lstm_cell_126_matmul_readvariableop_resource=lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0"?
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp2h
2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp2l
4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_779655

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
?W
?
__inference__traced_save_780026
file_prefix/
+savev2_dense_136_kernel_read_readvariableop-
)savev2_dense_136_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_408_lstm_cell_408_kernel_read_readvariableopF
Bsavev2_lstm_408_lstm_cell_408_recurrent_kernel_read_readvariableop:
6savev2_lstm_408_lstm_cell_408_bias_read_readvariableop<
8savev2_lstm_409_lstm_cell_409_kernel_read_readvariableopF
Bsavev2_lstm_409_lstm_cell_409_recurrent_kernel_read_readvariableop:
6savev2_lstm_409_lstm_cell_409_bias_read_readvariableop<
8savev2_lstm_410_lstm_cell_410_kernel_read_readvariableopF
Bsavev2_lstm_410_lstm_cell_410_recurrent_kernel_read_readvariableop:
6savev2_lstm_410_lstm_cell_410_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_136_kernel_m_read_readvariableop4
0savev2_adam_dense_136_bias_m_read_readvariableopC
?savev2_adam_lstm_408_lstm_cell_408_kernel_m_read_readvariableopM
Isavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_408_lstm_cell_408_bias_m_read_readvariableopC
?savev2_adam_lstm_409_lstm_cell_409_kernel_m_read_readvariableopM
Isavev2_adam_lstm_409_lstm_cell_409_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_409_lstm_cell_409_bias_m_read_readvariableopC
?savev2_adam_lstm_410_lstm_cell_410_kernel_m_read_readvariableopM
Isavev2_adam_lstm_410_lstm_cell_410_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_410_lstm_cell_410_bias_m_read_readvariableop6
2savev2_adam_dense_136_kernel_v_read_readvariableop4
0savev2_adam_dense_136_bias_v_read_readvariableopC
?savev2_adam_lstm_408_lstm_cell_408_kernel_v_read_readvariableopM
Isavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_408_lstm_cell_408_bias_v_read_readvariableopC
?savev2_adam_lstm_409_lstm_cell_409_kernel_v_read_readvariableopM
Isavev2_adam_lstm_409_lstm_cell_409_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_409_lstm_cell_409_bias_v_read_readvariableopC
?savev2_adam_lstm_410_lstm_cell_410_kernel_v_read_readvariableopM
Isavev2_adam_lstm_410_lstm_cell_410_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_410_lstm_cell_410_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_136_kernel_read_readvariableop)savev2_dense_136_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_408_lstm_cell_408_kernel_read_readvariableopBsavev2_lstm_408_lstm_cell_408_recurrent_kernel_read_readvariableop6savev2_lstm_408_lstm_cell_408_bias_read_readvariableop8savev2_lstm_409_lstm_cell_409_kernel_read_readvariableopBsavev2_lstm_409_lstm_cell_409_recurrent_kernel_read_readvariableop6savev2_lstm_409_lstm_cell_409_bias_read_readvariableop8savev2_lstm_410_lstm_cell_410_kernel_read_readvariableopBsavev2_lstm_410_lstm_cell_410_recurrent_kernel_read_readvariableop6savev2_lstm_410_lstm_cell_410_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_136_kernel_m_read_readvariableop0savev2_adam_dense_136_bias_m_read_readvariableop?savev2_adam_lstm_408_lstm_cell_408_kernel_m_read_readvariableopIsavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_408_lstm_cell_408_bias_m_read_readvariableop?savev2_adam_lstm_409_lstm_cell_409_kernel_m_read_readvariableopIsavev2_adam_lstm_409_lstm_cell_409_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_409_lstm_cell_409_bias_m_read_readvariableop?savev2_adam_lstm_410_lstm_cell_410_kernel_m_read_readvariableopIsavev2_adam_lstm_410_lstm_cell_410_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_410_lstm_cell_410_bias_m_read_readvariableop2savev2_adam_dense_136_kernel_v_read_readvariableop0savev2_adam_dense_136_bias_v_read_readvariableop?savev2_adam_lstm_408_lstm_cell_408_kernel_v_read_readvariableopIsavev2_adam_lstm_408_lstm_cell_408_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_408_lstm_cell_408_bias_v_read_readvariableop?savev2_adam_lstm_409_lstm_cell_409_kernel_v_read_readvariableopIsavev2_adam_lstm_409_lstm_cell_409_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_409_lstm_cell_409_bias_v_read_readvariableop?savev2_adam_lstm_410_lstm_cell_410_kernel_v_read_readvariableopIsavev2_adam_lstm_410_lstm_cell_410_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_410_lstm_cell_410_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
J__inference_sequential_136_layer_call_and_return_conditional_losses_776078

inputs"
lstm_408_775754:	?"
lstm_408_775756:	d?
lstm_408_775758:	?"
lstm_409_775904:	d?"
lstm_409_775906:	2?
lstm_409_775908:	?!
lstm_410_776054:2(!
lstm_410_776056:
(
lstm_410_776058:("
dense_136_776072:

dense_136_776074:
identity??!dense_136/StatefulPartitionedCall? lstm_408/StatefulPartitionedCall? lstm_409/StatefulPartitionedCall? lstm_410/StatefulPartitionedCall?
 lstm_408/StatefulPartitionedCallStatefulPartitionedCallinputslstm_408_775754lstm_408_775756lstm_408_775758*
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_775753?
 lstm_409/StatefulPartitionedCallStatefulPartitionedCall)lstm_408/StatefulPartitionedCall:output:0lstm_409_775904lstm_409_775906lstm_409_775908*
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775903?
 lstm_410/StatefulPartitionedCallStatefulPartitionedCall)lstm_409/StatefulPartitionedCall:output:0lstm_410_776054lstm_410_776056lstm_410_776058*
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_776053?
!dense_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_410/StatefulPartitionedCall:output:0dense_136_776072dense_136_776074*
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
E__inference_dense_136_layer_call_and_return_conditional_losses_776071y
IdentityIdentity*dense_136/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_136/StatefulPartitionedCall!^lstm_408/StatefulPartitionedCall!^lstm_409/StatefulPartitionedCall!^lstm_410/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_136/StatefulPartitionedCall!dense_136/StatefulPartitionedCall2D
 lstm_408/StatefulPartitionedCall lstm_408/StatefulPartitionedCall2D
 lstm_409/StatefulPartitionedCall lstm_409/StatefulPartitionedCall2D
 lstm_410/StatefulPartitionedCall lstm_410/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_775669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_126_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_126_matmul_readvariableop_resource:	?G
4while_lstm_cell_126_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_126_biasadd_readvariableop_resource:	???*while/lstm_cell_126/BiasAdd/ReadVariableOp?)while/lstm_cell_126/MatMul/ReadVariableOp?+while/lstm_cell_126/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_126/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_126/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_126/addAddV2$while/lstm_cell_126/MatMul:product:0&while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_126/BiasAddBiasAddwhile/lstm_cell_126/add:z:02while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_126/splitSplit,while/lstm_cell_126/split/split_dim:output:0$while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_126/SigmoidSigmoid"while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_1Sigmoid"while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mulMul!while/lstm_cell_126/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_126/ReluRelu"while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_1Mulwhile/lstm_cell_126/Sigmoid:y:0&while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/add_1AddV2while/lstm_cell_126/mul:z:0while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_2Sigmoid"while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_126/Relu_1Reluwhile/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_2Mul!while/lstm_cell_126/Sigmoid_2:y:0(while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_126/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_126/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_126/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_126/BiasAdd/ReadVariableOp*^while/lstm_cell_126/MatMul/ReadVariableOp,^while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_126_biasadd_readvariableop_resource5while_lstm_cell_126_biasadd_readvariableop_resource_0"n
4while_lstm_cell_126_matmul_1_readvariableop_resource6while_lstm_cell_126_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_126_matmul_readvariableop_resource4while_lstm_cell_126_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_126/BiasAdd/ReadVariableOp*while/lstm_cell_126/BiasAdd/ReadVariableOp2V
)while/lstm_cell_126/MatMul/ReadVariableOp)while/lstm_cell_126/MatMul/ReadVariableOp2Z
+while/lstm_cell_126/MatMul_1/ReadVariableOp+while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_775668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_775668___redundant_placeholder04
0while_while_cond_775668___redundant_placeholder14
0while_while_cond_775668___redundant_placeholder24
0while_while_cond_775668___redundant_placeholder3
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
?"
?
while_body_775335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_128_775359_0:2(.
while_lstm_cell_128_775361_0:
(*
while_lstm_cell_128_775363_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_128_775359:2(,
while_lstm_cell_128_775361:
((
while_lstm_cell_128_775363:(??+while/lstm_cell_128/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_128/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_128_775359_0while_lstm_cell_128_775361_0while_lstm_cell_128_775363_0*
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775321?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_128/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_128/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_128/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_128/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_128_775359while_lstm_cell_128_775359_0":
while_lstm_cell_128_775361while_lstm_cell_128_775361_0":
while_lstm_cell_128_775363while_lstm_cell_128_775363_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_128/StatefulPartitionedCall+while/lstm_cell_128/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_774826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_126_774850_0:	?/
while_lstm_cell_126_774852_0:	d?+
while_lstm_cell_126_774854_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_126_774850:	?-
while_lstm_cell_126_774852:	d?)
while_lstm_cell_126_774854:	???+while/lstm_cell_126/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_126/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_126_774850_0while_lstm_cell_126_774852_0while_lstm_cell_126_774854_0*
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774767?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_126/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_126/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_126/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_126/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_126_774850while_lstm_cell_126_774850_0":
while_lstm_cell_126_774852while_lstm_cell_126_774852_0":
while_lstm_cell_126_774854while_lstm_cell_126_774854_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_126/StatefulPartitionedCall+while/lstm_cell_126/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_775117

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
while_body_778870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_127_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_127_matmul_readvariableop_resource:	d?G
4while_lstm_cell_127_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_127_biasadd_readvariableop_resource:	???*while/lstm_cell_127/BiasAdd/ReadVariableOp?)while/lstm_cell_127/MatMul/ReadVariableOp?+while/lstm_cell_127/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_127/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_127/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_127/addAddV2$while/lstm_cell_127/MatMul:product:0&while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_127/BiasAddBiasAddwhile/lstm_cell_127/add:z:02while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_127/splitSplit,while/lstm_cell_127/split/split_dim:output:0$while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_127/SigmoidSigmoid"while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_1Sigmoid"while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mulMul!while/lstm_cell_127/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_127/ReluRelu"while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_1Mulwhile/lstm_cell_127/Sigmoid:y:0&while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/add_1AddV2while/lstm_cell_127/mul:z:0while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_2Sigmoid"while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_127/Relu_1Reluwhile/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_2Mul!while/lstm_cell_127/Sigmoid_2:y:0(while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_127/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_127/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_127/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_127/BiasAdd/ReadVariableOp*^while/lstm_cell_127/MatMul/ReadVariableOp,^while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_127_biasadd_readvariableop_resource5while_lstm_cell_127_biasadd_readvariableop_resource_0"n
4while_lstm_cell_127_matmul_1_readvariableop_resource6while_lstm_cell_127_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_127_matmul_readvariableop_resource4while_lstm_cell_127_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_127/BiasAdd/ReadVariableOp*while/lstm_cell_127/BiasAdd/ReadVariableOp2V
)while/lstm_cell_127/MatMul/ReadVariableOp)while/lstm_cell_127/MatMul/ReadVariableOp2Z
+while/lstm_cell_127/MatMul_1/ReadVariableOp+while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_776185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_128_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_128_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_128_matmul_readvariableop_resource:2(F
4while_lstm_cell_128_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_128_biasadd_readvariableop_resource:(??*while/lstm_cell_128/BiasAdd/ReadVariableOp?)while/lstm_cell_128/MatMul/ReadVariableOp?+while/lstm_cell_128/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_128/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_128/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_128/addAddV2$while/lstm_cell_128/MatMul:product:0&while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_128/BiasAddBiasAddwhile/lstm_cell_128/add:z:02while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_128/splitSplit,while/lstm_cell_128/split/split_dim:output:0$while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_128/SigmoidSigmoid"while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_1Sigmoid"while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mulMul!while/lstm_cell_128/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_128/ReluRelu"while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_1Mulwhile/lstm_cell_128/Sigmoid:y:0&while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/add_1AddV2while/lstm_cell_128/mul:z:0while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_2Sigmoid"while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_128/Relu_1Reluwhile/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_2Mul!while/lstm_cell_128/Sigmoid_2:y:0(while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_128/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_128/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_128/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_128/BiasAdd/ReadVariableOp*^while/lstm_cell_128/MatMul/ReadVariableOp,^while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_128_biasadd_readvariableop_resource5while_lstm_cell_128_biasadd_readvariableop_resource_0"n
4while_lstm_cell_128_matmul_1_readvariableop_resource6while_lstm_cell_128_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_128_matmul_readvariableop_resource4while_lstm_cell_128_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_128/BiasAdd/ReadVariableOp*while/lstm_cell_128/BiasAdd/ReadVariableOp2V
)while/lstm_cell_128/MatMul/ReadVariableOp)while/lstm_cell_128/MatMul/ReadVariableOp2Z
+while/lstm_cell_128/MatMul_1/ReadVariableOp+while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_126_layer_call_fn_779606

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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774621o
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_779141
inputs_0>
,lstm_cell_128_matmul_readvariableop_resource:2(@
.lstm_cell_128_matmul_1_readvariableop_resource:
(;
-lstm_cell_128_biasadd_readvariableop_resource:(
identity??$lstm_cell_128/BiasAdd/ReadVariableOp?#lstm_cell_128/MatMul/ReadVariableOp?%lstm_cell_128/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_128/MatMul/ReadVariableOpReadVariableOp,lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_128/MatMulMatMulstrided_slice_2:output:0+lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_128/MatMul_1MatMulzeros:output:0-lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_128/addAddV2lstm_cell_128/MatMul:product:0 lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_128/BiasAddBiasAddlstm_cell_128/add:z:0,lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_128/splitSplit&lstm_cell_128/split/split_dim:output:0lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_128/SigmoidSigmoidlstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_1Sigmoidlstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_128/mulMullstm_cell_128/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_128/ReluRelulstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_1Mullstm_cell_128/Sigmoid:y:0 lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_128/add_1AddV2lstm_cell_128/mul:z:0lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_2Sigmoidlstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_128/Relu_1Relulstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_2Mullstm_cell_128/Sigmoid_2:y:0"lstm_cell_128/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_128_matmul_readvariableop_resource.lstm_cell_128_matmul_1_readvariableop_resource-lstm_cell_128_biasadd_readvariableop_resource*
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
while_body_779057*
condR
while_cond_779056*K
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
NoOpNoOp%^lstm_cell_128/BiasAdd/ReadVariableOp$^lstm_cell_128/MatMul/ReadVariableOp&^lstm_cell_128/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_128/BiasAdd/ReadVariableOp$lstm_cell_128/BiasAdd/ReadVariableOp2J
#lstm_cell_128/MatMul/ReadVariableOp#lstm_cell_128/MatMul/ReadVariableOp2N
%lstm_cell_128/MatMul_1/ReadVariableOp%lstm_cell_128/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
D__inference_lstm_408_layer_call_and_return_conditional_losses_774704

inputs'
lstm_cell_126_774622:	?'
lstm_cell_126_774624:	d?#
lstm_cell_126_774626:	?
identity??%lstm_cell_126/StatefulPartitionedCall?while;
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
%lstm_cell_126/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_126_774622lstm_cell_126_774624lstm_cell_126_774626*
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774621n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_126_774622lstm_cell_126_774624lstm_cell_126_774626*
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
while_body_774635*
condR
while_cond_774634*K
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
NoOpNoOp&^lstm_cell_126/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_126/StatefulPartitionedCall%lstm_cell_126/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_410_layer_call_fn_778976
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_775595o
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_776434

inputs?
,lstm_cell_127_matmul_readvariableop_resource:	d?A
.lstm_cell_127_matmul_1_readvariableop_resource:	2?<
-lstm_cell_127_biasadd_readvariableop_resource:	?
identity??$lstm_cell_127/BiasAdd/ReadVariableOp?#lstm_cell_127/MatMul/ReadVariableOp?%lstm_cell_127/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_127/MatMul/ReadVariableOpReadVariableOp,lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_127/MatMulMatMulstrided_slice_2:output:0+lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_127/MatMul_1MatMulzeros:output:0-lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_127/addAddV2lstm_cell_127/MatMul:product:0 lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_127/BiasAddBiasAddlstm_cell_127/add:z:0,lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_127/splitSplit&lstm_cell_127/split/split_dim:output:0lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_127/SigmoidSigmoidlstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_1Sigmoidlstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_127/mulMullstm_cell_127/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_127/ReluRelulstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_1Mullstm_cell_127/Sigmoid:y:0 lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_127/add_1AddV2lstm_cell_127/mul:z:0lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_2Sigmoidlstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_127/Relu_1Relulstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_2Mullstm_cell_127/Sigmoid_2:y:0"lstm_cell_127/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_127_matmul_readvariableop_resource.lstm_cell_127_matmul_1_readvariableop_resource-lstm_cell_127_biasadd_readvariableop_resource*
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
while_body_776350*
condR
while_cond_776349*K
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
NoOpNoOp%^lstm_cell_127/BiasAdd/ReadVariableOp$^lstm_cell_127/MatMul/ReadVariableOp&^lstm_cell_127/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_127/BiasAdd/ReadVariableOp$lstm_cell_127/BiasAdd/ReadVariableOp2J
#lstm_cell_127/MatMul/ReadVariableOp#lstm_cell_127/MatMul/ReadVariableOp2N
%lstm_cell_127/MatMul_1/ReadVariableOp%lstm_cell_127/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_409_while_body_777066.
*lstm_409_while_lstm_409_while_loop_counter4
0lstm_409_while_lstm_409_while_maximum_iterations
lstm_409_while_placeholder 
lstm_409_while_placeholder_1 
lstm_409_while_placeholder_2 
lstm_409_while_placeholder_3-
)lstm_409_while_lstm_409_strided_slice_1_0i
elstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0:	d?R
?lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?M
>lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
lstm_409_while_identity
lstm_409_while_identity_1
lstm_409_while_identity_2
lstm_409_while_identity_3
lstm_409_while_identity_4
lstm_409_while_identity_5+
'lstm_409_while_lstm_409_strided_slice_1g
clstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensorN
;lstm_409_while_lstm_cell_127_matmul_readvariableop_resource:	d?P
=lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource:	2?K
<lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource:	???3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp?2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp?4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp?
@lstm_409/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_409/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensor_0lstm_409_while_placeholderIlstm_409/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp=lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_409/while/lstm_cell_127/MatMulMatMul9lstm_409/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp?lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_409/while/lstm_cell_127/MatMul_1MatMullstm_409_while_placeholder_2<lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_409/while/lstm_cell_127/addAddV2-lstm_409/while/lstm_cell_127/MatMul:product:0/lstm_409/while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp>lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_409/while/lstm_cell_127/BiasAddBiasAdd$lstm_409/while/lstm_cell_127/add:z:0;lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_409/while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_409/while/lstm_cell_127/splitSplit5lstm_409/while/lstm_cell_127/split/split_dim:output:0-lstm_409/while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_409/while/lstm_cell_127/SigmoidSigmoid+lstm_409/while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_409/while/lstm_cell_127/Sigmoid_1Sigmoid+lstm_409/while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_409/while/lstm_cell_127/mulMul*lstm_409/while/lstm_cell_127/Sigmoid_1:y:0lstm_409_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_409/while/lstm_cell_127/ReluRelu+lstm_409/while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_409/while/lstm_cell_127/mul_1Mul(lstm_409/while/lstm_cell_127/Sigmoid:y:0/lstm_409/while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_409/while/lstm_cell_127/add_1AddV2$lstm_409/while/lstm_cell_127/mul:z:0&lstm_409/while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_409/while/lstm_cell_127/Sigmoid_2Sigmoid+lstm_409/while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_409/while/lstm_cell_127/Relu_1Relu&lstm_409/while/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_409/while/lstm_cell_127/mul_2Mul*lstm_409/while/lstm_cell_127/Sigmoid_2:y:01lstm_409/while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_409/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_409_while_placeholder_1lstm_409_while_placeholder&lstm_409/while/lstm_cell_127/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_409/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_409/while/addAddV2lstm_409_while_placeholderlstm_409/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_409/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_409/while/add_1AddV2*lstm_409_while_lstm_409_while_loop_counterlstm_409/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_409/while/IdentityIdentitylstm_409/while/add_1:z:0^lstm_409/while/NoOp*
T0*
_output_shapes
: ?
lstm_409/while/Identity_1Identity0lstm_409_while_lstm_409_while_maximum_iterations^lstm_409/while/NoOp*
T0*
_output_shapes
: t
lstm_409/while/Identity_2Identitylstm_409/while/add:z:0^lstm_409/while/NoOp*
T0*
_output_shapes
: ?
lstm_409/while/Identity_3IdentityClstm_409/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_409/while/NoOp*
T0*
_output_shapes
: ?
lstm_409/while/Identity_4Identity&lstm_409/while/lstm_cell_127/mul_2:z:0^lstm_409/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_409/while/Identity_5Identity&lstm_409/while/lstm_cell_127/add_1:z:0^lstm_409/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_409/while/NoOpNoOp4^lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp3^lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp5^lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_409_while_identity lstm_409/while/Identity:output:0"?
lstm_409_while_identity_1"lstm_409/while/Identity_1:output:0"?
lstm_409_while_identity_2"lstm_409/while/Identity_2:output:0"?
lstm_409_while_identity_3"lstm_409/while/Identity_3:output:0"?
lstm_409_while_identity_4"lstm_409/while/Identity_4:output:0"?
lstm_409_while_identity_5"lstm_409/while/Identity_5:output:0"T
'lstm_409_while_lstm_409_strided_slice_1)lstm_409_while_lstm_409_strided_slice_1_0"~
<lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource>lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0"?
=lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource?lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0"|
;lstm_409_while_lstm_cell_127_matmul_readvariableop_resource=lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0"?
clstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensorelstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp2h
2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp2l
4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_778727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_127_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_127_matmul_readvariableop_resource:	d?G
4while_lstm_cell_127_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_127_biasadd_readvariableop_resource:	???*while/lstm_cell_127/BiasAdd/ReadVariableOp?)while/lstm_cell_127/MatMul/ReadVariableOp?+while/lstm_cell_127/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_127/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_127/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_127/addAddV2$while/lstm_cell_127/MatMul:product:0&while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_127/BiasAddBiasAddwhile/lstm_cell_127/add:z:02while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_127/splitSplit,while/lstm_cell_127/split/split_dim:output:0$while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_127/SigmoidSigmoid"while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_1Sigmoid"while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mulMul!while/lstm_cell_127/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_127/ReluRelu"while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_1Mulwhile/lstm_cell_127/Sigmoid:y:0&while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/add_1AddV2while/lstm_cell_127/mul:z:0while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_2Sigmoid"while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_127/Relu_1Reluwhile/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_2Mul!while/lstm_cell_127/Sigmoid_2:y:0(while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_127/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_127/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_127/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_127/BiasAdd/ReadVariableOp*^while/lstm_cell_127/MatMul/ReadVariableOp,^while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_127_biasadd_readvariableop_resource5while_lstm_cell_127_biasadd_readvariableop_resource_0"n
4while_lstm_cell_127_matmul_1_readvariableop_resource6while_lstm_cell_127_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_127_matmul_readvariableop_resource4while_lstm_cell_127_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_127/BiasAdd/ReadVariableOp*while/lstm_cell_127/BiasAdd/ReadVariableOp2V
)while/lstm_cell_127/MatMul/ReadVariableOp)while/lstm_cell_127/MatMul/ReadVariableOp2Z
+while/lstm_cell_127/MatMul_1/ReadVariableOp+while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_136_layer_call_fn_776841

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
J__inference_sequential_136_layer_call_and_return_conditional_losses_776078o
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
while_cond_778440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_778440___redundant_placeholder04
0while_while_cond_778440___redundant_placeholder14
0while_while_cond_778440___redundant_placeholder24
0while_while_cond_778440___redundant_placeholder3
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
while_body_776515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_126_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_126_matmul_readvariableop_resource:	?G
4while_lstm_cell_126_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_126_biasadd_readvariableop_resource:	???*while/lstm_cell_126/BiasAdd/ReadVariableOp?)while/lstm_cell_126/MatMul/ReadVariableOp?+while/lstm_cell_126/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_126/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_126/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_126/addAddV2$while/lstm_cell_126/MatMul:product:0&while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_126/BiasAddBiasAddwhile/lstm_cell_126/add:z:02while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_126/splitSplit,while/lstm_cell_126/split/split_dim:output:0$while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_126/SigmoidSigmoid"while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_1Sigmoid"while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mulMul!while/lstm_cell_126/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_126/ReluRelu"while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_1Mulwhile/lstm_cell_126/Sigmoid:y:0&while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/add_1AddV2while/lstm_cell_126/mul:z:0while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_2Sigmoid"while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_126/Relu_1Reluwhile/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_2Mul!while/lstm_cell_126/Sigmoid_2:y:0(while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_126/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_126/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_126/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_126/BiasAdd/ReadVariableOp*^while/lstm_cell_126/MatMul/ReadVariableOp,^while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_126_biasadd_readvariableop_resource5while_lstm_cell_126_biasadd_readvariableop_resource_0"n
4while_lstm_cell_126_matmul_1_readvariableop_resource6while_lstm_cell_126_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_126_matmul_readvariableop_resource4while_lstm_cell_126_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_126/BiasAdd/ReadVariableOp*while/lstm_cell_126/BiasAdd/ReadVariableOp2V
)while/lstm_cell_126/MatMul/ReadVariableOp)while/lstm_cell_126/MatMul/ReadVariableOp2Z
+while/lstm_cell_126/MatMul_1/ReadVariableOp+while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_779883

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
D__inference_lstm_408_layer_call_and_return_conditional_losses_778052
inputs_0?
,lstm_cell_126_matmul_readvariableop_resource:	?A
.lstm_cell_126_matmul_1_readvariableop_resource:	d?<
-lstm_cell_126_biasadd_readvariableop_resource:	?
identity??$lstm_cell_126/BiasAdd/ReadVariableOp?#lstm_cell_126/MatMul/ReadVariableOp?%lstm_cell_126/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_126/MatMul/ReadVariableOpReadVariableOp,lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_126/MatMulMatMulstrided_slice_2:output:0+lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_126/MatMul_1MatMulzeros:output:0-lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_126/addAddV2lstm_cell_126/MatMul:product:0 lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_126/BiasAddBiasAddlstm_cell_126/add:z:0,lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_126/splitSplit&lstm_cell_126/split/split_dim:output:0lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_126/SigmoidSigmoidlstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_1Sigmoidlstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_126/mulMullstm_cell_126/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_126/ReluRelulstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_1Mullstm_cell_126/Sigmoid:y:0 lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_126/add_1AddV2lstm_cell_126/mul:z:0lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_2Sigmoidlstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_126/Relu_1Relulstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_2Mullstm_cell_126/Sigmoid_2:y:0"lstm_cell_126/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_126_matmul_readvariableop_resource.lstm_cell_126_matmul_1_readvariableop_resource-lstm_cell_126_biasadd_readvariableop_resource*
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
while_body_777968*
condR
while_cond_777967*K
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
NoOpNoOp%^lstm_cell_126/BiasAdd/ReadVariableOp$^lstm_cell_126/MatMul/ReadVariableOp&^lstm_cell_126/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_126/BiasAdd/ReadVariableOp$lstm_cell_126/BiasAdd/ReadVariableOp2J
#lstm_cell_126/MatMul/ReadVariableOp#lstm_cell_126/MatMul/ReadVariableOp2N
%lstm_cell_126/MatMul_1/ReadVariableOp%lstm_cell_126/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_409_while_body_777493.
*lstm_409_while_lstm_409_while_loop_counter4
0lstm_409_while_lstm_409_while_maximum_iterations
lstm_409_while_placeholder 
lstm_409_while_placeholder_1 
lstm_409_while_placeholder_2 
lstm_409_while_placeholder_3-
)lstm_409_while_lstm_409_strided_slice_1_0i
elstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0:	d?R
?lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?M
>lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
lstm_409_while_identity
lstm_409_while_identity_1
lstm_409_while_identity_2
lstm_409_while_identity_3
lstm_409_while_identity_4
lstm_409_while_identity_5+
'lstm_409_while_lstm_409_strided_slice_1g
clstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensorN
;lstm_409_while_lstm_cell_127_matmul_readvariableop_resource:	d?P
=lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource:	2?K
<lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource:	???3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp?2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp?4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp?
@lstm_409/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_409/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensor_0lstm_409_while_placeholderIlstm_409/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp=lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_409/while/lstm_cell_127/MatMulMatMul9lstm_409/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp?lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_409/while/lstm_cell_127/MatMul_1MatMullstm_409_while_placeholder_2<lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_409/while/lstm_cell_127/addAddV2-lstm_409/while/lstm_cell_127/MatMul:product:0/lstm_409/while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp>lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_409/while/lstm_cell_127/BiasAddBiasAdd$lstm_409/while/lstm_cell_127/add:z:0;lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_409/while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_409/while/lstm_cell_127/splitSplit5lstm_409/while/lstm_cell_127/split/split_dim:output:0-lstm_409/while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_409/while/lstm_cell_127/SigmoidSigmoid+lstm_409/while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_409/while/lstm_cell_127/Sigmoid_1Sigmoid+lstm_409/while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_409/while/lstm_cell_127/mulMul*lstm_409/while/lstm_cell_127/Sigmoid_1:y:0lstm_409_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_409/while/lstm_cell_127/ReluRelu+lstm_409/while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_409/while/lstm_cell_127/mul_1Mul(lstm_409/while/lstm_cell_127/Sigmoid:y:0/lstm_409/while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_409/while/lstm_cell_127/add_1AddV2$lstm_409/while/lstm_cell_127/mul:z:0&lstm_409/while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_409/while/lstm_cell_127/Sigmoid_2Sigmoid+lstm_409/while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_409/while/lstm_cell_127/Relu_1Relu&lstm_409/while/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_409/while/lstm_cell_127/mul_2Mul*lstm_409/while/lstm_cell_127/Sigmoid_2:y:01lstm_409/while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_409/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_409_while_placeholder_1lstm_409_while_placeholder&lstm_409/while/lstm_cell_127/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_409/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_409/while/addAddV2lstm_409_while_placeholderlstm_409/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_409/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_409/while/add_1AddV2*lstm_409_while_lstm_409_while_loop_counterlstm_409/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_409/while/IdentityIdentitylstm_409/while/add_1:z:0^lstm_409/while/NoOp*
T0*
_output_shapes
: ?
lstm_409/while/Identity_1Identity0lstm_409_while_lstm_409_while_maximum_iterations^lstm_409/while/NoOp*
T0*
_output_shapes
: t
lstm_409/while/Identity_2Identitylstm_409/while/add:z:0^lstm_409/while/NoOp*
T0*
_output_shapes
: ?
lstm_409/while/Identity_3IdentityClstm_409/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_409/while/NoOp*
T0*
_output_shapes
: ?
lstm_409/while/Identity_4Identity&lstm_409/while/lstm_cell_127/mul_2:z:0^lstm_409/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_409/while/Identity_5Identity&lstm_409/while/lstm_cell_127/add_1:z:0^lstm_409/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_409/while/NoOpNoOp4^lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp3^lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp5^lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_409_while_identity lstm_409/while/Identity:output:0"?
lstm_409_while_identity_1"lstm_409/while/Identity_1:output:0"?
lstm_409_while_identity_2"lstm_409/while/Identity_2:output:0"?
lstm_409_while_identity_3"lstm_409/while/Identity_3:output:0"?
lstm_409_while_identity_4"lstm_409/while/Identity_4:output:0"?
lstm_409_while_identity_5"lstm_409/while/Identity_5:output:0"T
'lstm_409_while_lstm_409_strided_slice_1)lstm_409_while_lstm_409_strided_slice_1_0"~
<lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource>lstm_409_while_lstm_cell_127_biasadd_readvariableop_resource_0"?
=lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource?lstm_409_while_lstm_cell_127_matmul_1_readvariableop_resource_0"|
;lstm_409_while_lstm_cell_127_matmul_readvariableop_resource=lstm_409_while_lstm_cell_127_matmul_readvariableop_resource_0"?
clstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensorelstm_409_while_tensorarrayv2read_tensorlistgetitem_lstm_409_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp3lstm_409/while/lstm_cell_127/BiasAdd/ReadVariableOp2h
2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp2lstm_409/while/lstm_cell_127/MatMul/ReadVariableOp2l
4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp4lstm_409/while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_408_layer_call_fn_777744
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_774895|
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_774971

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
while_body_775969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_128_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_128_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_128_matmul_readvariableop_resource:2(F
4while_lstm_cell_128_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_128_biasadd_readvariableop_resource:(??*while/lstm_cell_128/BiasAdd/ReadVariableOp?)while/lstm_cell_128/MatMul/ReadVariableOp?+while/lstm_cell_128/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_128/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_128/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_128/addAddV2$while/lstm_cell_128/MatMul:product:0&while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_128/BiasAddBiasAddwhile/lstm_cell_128/add:z:02while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_128/splitSplit,while/lstm_cell_128/split/split_dim:output:0$while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_128/SigmoidSigmoid"while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_1Sigmoid"while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mulMul!while/lstm_cell_128/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_128/ReluRelu"while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_1Mulwhile/lstm_cell_128/Sigmoid:y:0&while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/add_1AddV2while/lstm_cell_128/mul:z:0while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_2Sigmoid"while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_128/Relu_1Reluwhile/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_2Mul!while/lstm_cell_128/Sigmoid_2:y:0(while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_128/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_128/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_128/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_128/BiasAdd/ReadVariableOp*^while/lstm_cell_128/MatMul/ReadVariableOp,^while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_128_biasadd_readvariableop_resource5while_lstm_cell_128_biasadd_readvariableop_resource_0"n
4while_lstm_cell_128_matmul_1_readvariableop_resource6while_lstm_cell_128_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_128_matmul_readvariableop_resource4while_lstm_cell_128_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_128/BiasAdd/ReadVariableOp*while/lstm_cell_128/BiasAdd/ReadVariableOp2V
)while/lstm_cell_128/MatMul/ReadVariableOp)while/lstm_cell_128/MatMul/ReadVariableOp2Z
+while/lstm_cell_128/MatMul_1/ReadVariableOp+while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778954

inputs?
,lstm_cell_127_matmul_readvariableop_resource:	d?A
.lstm_cell_127_matmul_1_readvariableop_resource:	2?<
-lstm_cell_127_biasadd_readvariableop_resource:	?
identity??$lstm_cell_127/BiasAdd/ReadVariableOp?#lstm_cell_127/MatMul/ReadVariableOp?%lstm_cell_127/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_127/MatMul/ReadVariableOpReadVariableOp,lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_127/MatMulMatMulstrided_slice_2:output:0+lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_127/MatMul_1MatMulzeros:output:0-lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_127/addAddV2lstm_cell_127/MatMul:product:0 lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_127/BiasAddBiasAddlstm_cell_127/add:z:0,lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_127/splitSplit&lstm_cell_127/split/split_dim:output:0lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_127/SigmoidSigmoidlstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_1Sigmoidlstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_127/mulMullstm_cell_127/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_127/ReluRelulstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_1Mullstm_cell_127/Sigmoid:y:0 lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_127/add_1AddV2lstm_cell_127/mul:z:0lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_127/Sigmoid_2Sigmoidlstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_127/Relu_1Relulstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_127/mul_2Mullstm_cell_127/Sigmoid_2:y:0"lstm_cell_127/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_127_matmul_readvariableop_resource.lstm_cell_127_matmul_1_readvariableop_resource-lstm_cell_127_biasadd_readvariableop_resource*
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
while_body_778870*
condR
while_cond_778869*K
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
NoOpNoOp%^lstm_cell_127/BiasAdd/ReadVariableOp$^lstm_cell_127/MatMul/ReadVariableOp&^lstm_cell_127/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_127/BiasAdd/ReadVariableOp$lstm_cell_127/BiasAdd/ReadVariableOp2J
#lstm_cell_127/MatMul/ReadVariableOp#lstm_cell_127/MatMul/ReadVariableOp2N
%lstm_cell_127/MatMul_1/ReadVariableOp%lstm_cell_127/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_410_while_body_777205.
*lstm_410_while_lstm_410_while_loop_counter4
0lstm_410_while_lstm_410_while_maximum_iterations
lstm_410_while_placeholder 
lstm_410_while_placeholder_1 
lstm_410_while_placeholder_2 
lstm_410_while_placeholder_3-
)lstm_410_while_lstm_410_strided_slice_1_0i
elstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0:2(Q
?lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(L
>lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0:(
lstm_410_while_identity
lstm_410_while_identity_1
lstm_410_while_identity_2
lstm_410_while_identity_3
lstm_410_while_identity_4
lstm_410_while_identity_5+
'lstm_410_while_lstm_410_strided_slice_1g
clstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensorM
;lstm_410_while_lstm_cell_128_matmul_readvariableop_resource:2(O
=lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource:
(J
<lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource:(??3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp?2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp?4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp?
@lstm_410/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_410/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensor_0lstm_410_while_placeholderIlstm_410/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp=lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_410/while/lstm_cell_128/MatMulMatMul9lstm_410/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp?lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_410/while/lstm_cell_128/MatMul_1MatMullstm_410_while_placeholder_2<lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_410/while/lstm_cell_128/addAddV2-lstm_410/while/lstm_cell_128/MatMul:product:0/lstm_410/while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp>lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_410/while/lstm_cell_128/BiasAddBiasAdd$lstm_410/while/lstm_cell_128/add:z:0;lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_410/while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_410/while/lstm_cell_128/splitSplit5lstm_410/while/lstm_cell_128/split/split_dim:output:0-lstm_410/while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_410/while/lstm_cell_128/SigmoidSigmoid+lstm_410/while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_410/while/lstm_cell_128/Sigmoid_1Sigmoid+lstm_410/while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_410/while/lstm_cell_128/mulMul*lstm_410/while/lstm_cell_128/Sigmoid_1:y:0lstm_410_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_410/while/lstm_cell_128/ReluRelu+lstm_410/while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_410/while/lstm_cell_128/mul_1Mul(lstm_410/while/lstm_cell_128/Sigmoid:y:0/lstm_410/while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_410/while/lstm_cell_128/add_1AddV2$lstm_410/while/lstm_cell_128/mul:z:0&lstm_410/while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_410/while/lstm_cell_128/Sigmoid_2Sigmoid+lstm_410/while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_410/while/lstm_cell_128/Relu_1Relu&lstm_410/while/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_410/while/lstm_cell_128/mul_2Mul*lstm_410/while/lstm_cell_128/Sigmoid_2:y:01lstm_410/while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_410/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_410_while_placeholder_1lstm_410_while_placeholder&lstm_410/while/lstm_cell_128/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_410/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_410/while/addAddV2lstm_410_while_placeholderlstm_410/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_410/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_410/while/add_1AddV2*lstm_410_while_lstm_410_while_loop_counterlstm_410/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_410/while/IdentityIdentitylstm_410/while/add_1:z:0^lstm_410/while/NoOp*
T0*
_output_shapes
: ?
lstm_410/while/Identity_1Identity0lstm_410_while_lstm_410_while_maximum_iterations^lstm_410/while/NoOp*
T0*
_output_shapes
: t
lstm_410/while/Identity_2Identitylstm_410/while/add:z:0^lstm_410/while/NoOp*
T0*
_output_shapes
: ?
lstm_410/while/Identity_3IdentityClstm_410/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_410/while/NoOp*
T0*
_output_shapes
: ?
lstm_410/while/Identity_4Identity&lstm_410/while/lstm_cell_128/mul_2:z:0^lstm_410/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_410/while/Identity_5Identity&lstm_410/while/lstm_cell_128/add_1:z:0^lstm_410/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_410/while/NoOpNoOp4^lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp3^lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp5^lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_410_while_identity lstm_410/while/Identity:output:0"?
lstm_410_while_identity_1"lstm_410/while/Identity_1:output:0"?
lstm_410_while_identity_2"lstm_410/while/Identity_2:output:0"?
lstm_410_while_identity_3"lstm_410/while/Identity_3:output:0"?
lstm_410_while_identity_4"lstm_410/while/Identity_4:output:0"?
lstm_410_while_identity_5"lstm_410/while/Identity_5:output:0"T
'lstm_410_while_lstm_410_strided_slice_1)lstm_410_while_lstm_410_strided_slice_1_0"~
<lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource>lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0"?
=lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource?lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0"|
;lstm_410_while_lstm_cell_128_matmul_readvariableop_resource=lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0"?
clstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensorelstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp2h
2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp2l
4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_779284
inputs_0>
,lstm_cell_128_matmul_readvariableop_resource:2(@
.lstm_cell_128_matmul_1_readvariableop_resource:
(;
-lstm_cell_128_biasadd_readvariableop_resource:(
identity??$lstm_cell_128/BiasAdd/ReadVariableOp?#lstm_cell_128/MatMul/ReadVariableOp?%lstm_cell_128/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_128/MatMul/ReadVariableOpReadVariableOp,lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_128/MatMulMatMulstrided_slice_2:output:0+lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_128/MatMul_1MatMulzeros:output:0-lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_128/addAddV2lstm_cell_128/MatMul:product:0 lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_128/BiasAddBiasAddlstm_cell_128/add:z:0,lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_128/splitSplit&lstm_cell_128/split/split_dim:output:0lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_128/SigmoidSigmoidlstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_1Sigmoidlstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_128/mulMullstm_cell_128/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_128/ReluRelulstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_1Mullstm_cell_128/Sigmoid:y:0 lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_128/add_1AddV2lstm_cell_128/mul:z:0lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_2Sigmoidlstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_128/Relu_1Relulstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_2Mullstm_cell_128/Sigmoid_2:y:0"lstm_cell_128/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_128_matmul_readvariableop_resource.lstm_cell_128_matmul_1_readvariableop_resource-lstm_cell_128_biasadd_readvariableop_resource*
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
while_body_779200*
condR
while_cond_779199*K
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
NoOpNoOp%^lstm_cell_128/BiasAdd/ReadVariableOp$^lstm_cell_128/MatMul/ReadVariableOp&^lstm_cell_128/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_128/BiasAdd/ReadVariableOp$lstm_cell_128/BiasAdd/ReadVariableOp2J
#lstm_cell_128/MatMul/ReadVariableOp#lstm_cell_128/MatMul/ReadVariableOp2N
%lstm_cell_128/MatMul_1/ReadVariableOp%lstm_cell_128/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_408_layer_call_and_return_conditional_losses_776599

inputs?
,lstm_cell_126_matmul_readvariableop_resource:	?A
.lstm_cell_126_matmul_1_readvariableop_resource:	d?<
-lstm_cell_126_biasadd_readvariableop_resource:	?
identity??$lstm_cell_126/BiasAdd/ReadVariableOp?#lstm_cell_126/MatMul/ReadVariableOp?%lstm_cell_126/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_126/MatMul/ReadVariableOpReadVariableOp,lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_126/MatMulMatMulstrided_slice_2:output:0+lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_126/MatMul_1MatMulzeros:output:0-lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_126/addAddV2lstm_cell_126/MatMul:product:0 lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_126/BiasAddBiasAddlstm_cell_126/add:z:0,lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_126/splitSplit&lstm_cell_126/split/split_dim:output:0lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_126/SigmoidSigmoidlstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_1Sigmoidlstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_126/mulMullstm_cell_126/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_126/ReluRelulstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_1Mullstm_cell_126/Sigmoid:y:0 lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_126/add_1AddV2lstm_cell_126/mul:z:0lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_2Sigmoidlstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_126/Relu_1Relulstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_2Mullstm_cell_126/Sigmoid_2:y:0"lstm_cell_126/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_126_matmul_readvariableop_resource.lstm_cell_126_matmul_1_readvariableop_resource-lstm_cell_126_biasadd_readvariableop_resource*
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
while_body_776515*
condR
while_cond_776514*K
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
NoOpNoOp%^lstm_cell_126/BiasAdd/ReadVariableOp$^lstm_cell_126/MatMul/ReadVariableOp&^lstm_cell_126/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_126/BiasAdd/ReadVariableOp$lstm_cell_126/BiasAdd/ReadVariableOp2J
#lstm_cell_126/MatMul/ReadVariableOp#lstm_cell_126/MatMul/ReadVariableOp2N
%lstm_cell_126/MatMul_1/ReadVariableOp%lstm_cell_126/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775321

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
/__inference_sequential_136_layer_call_fn_776719
lstm_408_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_136_layer_call_and_return_conditional_losses_776667o
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
_user_specified_namelstm_408_input
?
?
)__inference_lstm_409_layer_call_fn_778349
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775054|
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
while_cond_775175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_775175___redundant_placeholder04
0while_while_cond_775175___redundant_placeholder14
0while_while_cond_775175___redundant_placeholder24
0while_while_cond_775175___redundant_placeholder3
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
while_cond_779056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_779056___redundant_placeholder04
0while_while_cond_779056___redundant_placeholder14
0while_while_cond_779056___redundant_placeholder24
0while_while_cond_779056___redundant_placeholder3
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
while_body_778441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_127_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_127_matmul_readvariableop_resource:	d?G
4while_lstm_cell_127_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_127_biasadd_readvariableop_resource:	???*while/lstm_cell_127/BiasAdd/ReadVariableOp?)while/lstm_cell_127/MatMul/ReadVariableOp?+while/lstm_cell_127/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_127/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_127/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_127/addAddV2$while/lstm_cell_127/MatMul:product:0&while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_127/BiasAddBiasAddwhile/lstm_cell_127/add:z:02while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_127/splitSplit,while/lstm_cell_127/split/split_dim:output:0$while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_127/SigmoidSigmoid"while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_1Sigmoid"while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mulMul!while/lstm_cell_127/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_127/ReluRelu"while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_1Mulwhile/lstm_cell_127/Sigmoid:y:0&while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/add_1AddV2while/lstm_cell_127/mul:z:0while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_2Sigmoid"while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_127/Relu_1Reluwhile/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_2Mul!while/lstm_cell_127/Sigmoid_2:y:0(while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_127/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_127/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_127/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_127/BiasAdd/ReadVariableOp*^while/lstm_cell_127/MatMul/ReadVariableOp,^while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_127_biasadd_readvariableop_resource5while_lstm_cell_127_biasadd_readvariableop_resource_0"n
4while_lstm_cell_127_matmul_1_readvariableop_resource6while_lstm_cell_127_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_127_matmul_readvariableop_resource4while_lstm_cell_127_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_127/BiasAdd/ReadVariableOp*while/lstm_cell_127/BiasAdd/ReadVariableOp2V
)while/lstm_cell_127/MatMul/ReadVariableOp)while/lstm_cell_127/MatMul/ReadVariableOp2Z
+while/lstm_cell_127/MatMul_1/ReadVariableOp+while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_779427

inputs>
,lstm_cell_128_matmul_readvariableop_resource:2(@
.lstm_cell_128_matmul_1_readvariableop_resource:
(;
-lstm_cell_128_biasadd_readvariableop_resource:(
identity??$lstm_cell_128/BiasAdd/ReadVariableOp?#lstm_cell_128/MatMul/ReadVariableOp?%lstm_cell_128/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_128/MatMul/ReadVariableOpReadVariableOp,lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_128/MatMulMatMulstrided_slice_2:output:0+lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_128/MatMul_1MatMulzeros:output:0-lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_128/addAddV2lstm_cell_128/MatMul:product:0 lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_128/BiasAddBiasAddlstm_cell_128/add:z:0,lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_128/splitSplit&lstm_cell_128/split/split_dim:output:0lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_128/SigmoidSigmoidlstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_1Sigmoidlstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_128/mulMullstm_cell_128/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_128/ReluRelulstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_1Mullstm_cell_128/Sigmoid:y:0 lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_128/add_1AddV2lstm_cell_128/mul:z:0lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_2Sigmoidlstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_128/Relu_1Relulstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_2Mullstm_cell_128/Sigmoid_2:y:0"lstm_cell_128/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_128_matmul_readvariableop_resource.lstm_cell_128_matmul_1_readvariableop_resource-lstm_cell_128_biasadd_readvariableop_resource*
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
while_body_779343*
condR
while_cond_779342*K
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
NoOpNoOp%^lstm_cell_128/BiasAdd/ReadVariableOp$^lstm_cell_128/MatMul/ReadVariableOp&^lstm_cell_128/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_128/BiasAdd/ReadVariableOp$lstm_cell_128/BiasAdd/ReadVariableOp2J
#lstm_cell_128/MatMul/ReadVariableOp#lstm_cell_128/MatMul/ReadVariableOp2N
%lstm_cell_128/MatMul_1/ReadVariableOp%lstm_cell_128/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_408_layer_call_and_return_conditional_losses_778338

inputs?
,lstm_cell_126_matmul_readvariableop_resource:	?A
.lstm_cell_126_matmul_1_readvariableop_resource:	d?<
-lstm_cell_126_biasadd_readvariableop_resource:	?
identity??$lstm_cell_126/BiasAdd/ReadVariableOp?#lstm_cell_126/MatMul/ReadVariableOp?%lstm_cell_126/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_126/MatMul/ReadVariableOpReadVariableOp,lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_126/MatMulMatMulstrided_slice_2:output:0+lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_126/MatMul_1MatMulzeros:output:0-lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_126/addAddV2lstm_cell_126/MatMul:product:0 lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_126/BiasAddBiasAddlstm_cell_126/add:z:0,lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_126/splitSplit&lstm_cell_126/split/split_dim:output:0lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_126/SigmoidSigmoidlstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_1Sigmoidlstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_126/mulMullstm_cell_126/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_126/ReluRelulstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_1Mullstm_cell_126/Sigmoid:y:0 lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_126/add_1AddV2lstm_cell_126/mul:z:0lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_2Sigmoidlstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_126/Relu_1Relulstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_2Mullstm_cell_126/Sigmoid_2:y:0"lstm_cell_126/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_126_matmul_readvariableop_resource.lstm_cell_126_matmul_1_readvariableop_resource-lstm_cell_126_biasadd_readvariableop_resource*
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
while_body_778254*
condR
while_cond_778253*K
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
NoOpNoOp%^lstm_cell_126/BiasAdd/ReadVariableOp$^lstm_cell_126/MatMul/ReadVariableOp&^lstm_cell_126/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_126/BiasAdd/ReadVariableOp$lstm_cell_126/BiasAdd/ReadVariableOp2J
#lstm_cell_126/MatMul/ReadVariableOp#lstm_cell_126/MatMul/ReadVariableOp2N
%lstm_cell_126/MatMul_1/ReadVariableOp%lstm_cell_126/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_408_layer_call_and_return_conditional_losses_775753

inputs?
,lstm_cell_126_matmul_readvariableop_resource:	?A
.lstm_cell_126_matmul_1_readvariableop_resource:	d?<
-lstm_cell_126_biasadd_readvariableop_resource:	?
identity??$lstm_cell_126/BiasAdd/ReadVariableOp?#lstm_cell_126/MatMul/ReadVariableOp?%lstm_cell_126/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_126/MatMul/ReadVariableOpReadVariableOp,lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_126/MatMulMatMulstrided_slice_2:output:0+lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_126/MatMul_1MatMulzeros:output:0-lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_126/addAddV2lstm_cell_126/MatMul:product:0 lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_126/BiasAddBiasAddlstm_cell_126/add:z:0,lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_126/splitSplit&lstm_cell_126/split/split_dim:output:0lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_126/SigmoidSigmoidlstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_1Sigmoidlstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_126/mulMullstm_cell_126/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_126/ReluRelulstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_1Mullstm_cell_126/Sigmoid:y:0 lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_126/add_1AddV2lstm_cell_126/mul:z:0lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_2Sigmoidlstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_126/Relu_1Relulstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_2Mullstm_cell_126/Sigmoid_2:y:0"lstm_cell_126/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_126_matmul_readvariableop_resource.lstm_cell_126_matmul_1_readvariableop_resource-lstm_cell_126_biasadd_readvariableop_resource*
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
while_body_775669*
condR
while_cond_775668*K
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
NoOpNoOp%^lstm_cell_126/BiasAdd/ReadVariableOp$^lstm_cell_126/MatMul/ReadVariableOp&^lstm_cell_126/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_126/BiasAdd/ReadVariableOp$lstm_cell_126/BiasAdd/ReadVariableOp2J
#lstm_cell_126/MatMul/ReadVariableOp#lstm_cell_126/MatMul/ReadVariableOp2N
%lstm_cell_126/MatMul_1/ReadVariableOp%lstm_cell_126/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_776814
lstm_408_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_774554o
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
_user_specified_namelstm_408_input
?8
?
while_body_776350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_127_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_127_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_127_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_127_matmul_readvariableop_resource:	d?G
4while_lstm_cell_127_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_127_biasadd_readvariableop_resource:	???*while/lstm_cell_127/BiasAdd/ReadVariableOp?)while/lstm_cell_127/MatMul/ReadVariableOp?+while/lstm_cell_127/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_127/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_127_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_127/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_127_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_127/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_127/addAddV2$while/lstm_cell_127/MatMul:product:0&while/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_127_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_127/BiasAddBiasAddwhile/lstm_cell_127/add:z:02while/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_127/splitSplit,while/lstm_cell_127/split/split_dim:output:0$while/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_127/SigmoidSigmoid"while/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_1Sigmoid"while/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mulMul!while/lstm_cell_127/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_127/ReluRelu"while/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_1Mulwhile/lstm_cell_127/Sigmoid:y:0&while/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/add_1AddV2while/lstm_cell_127/mul:z:0while/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_127/Sigmoid_2Sigmoid"while/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_127/Relu_1Reluwhile/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_127/mul_2Mul!while/lstm_cell_127/Sigmoid_2:y:0(while/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_127/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_127/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_127/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_127/BiasAdd/ReadVariableOp*^while/lstm_cell_127/MatMul/ReadVariableOp,^while/lstm_cell_127/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_127_biasadd_readvariableop_resource5while_lstm_cell_127_biasadd_readvariableop_resource_0"n
4while_lstm_cell_127_matmul_1_readvariableop_resource6while_lstm_cell_127_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_127_matmul_readvariableop_resource4while_lstm_cell_127_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_127/BiasAdd/ReadVariableOp*while/lstm_cell_127/BiasAdd/ReadVariableOp2V
)while/lstm_cell_127/MatMul/ReadVariableOp)while/lstm_cell_127/MatMul/ReadVariableOp2Z
+while/lstm_cell_127/MatMul_1/ReadVariableOp+while/lstm_cell_127/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_775054

inputs'
lstm_cell_127_774972:	d?'
lstm_cell_127_774974:	2?#
lstm_cell_127_774976:	?
identity??%lstm_cell_127/StatefulPartitionedCall?while;
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
%lstm_cell_127/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_127_774972lstm_cell_127_774974lstm_cell_127_774976*
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_774971n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_127_774972lstm_cell_127_774974lstm_cell_127_774976*
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
while_body_774985*
condR
while_cond_774984*K
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
NoOpNoOp&^lstm_cell_127/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_127/StatefulPartitionedCall%lstm_cell_127/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_778253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_778253___redundant_placeholder04
0while_while_cond_778253___redundant_placeholder14
0while_while_cond_778253___redundant_placeholder24
0while_while_cond_778253___redundant_placeholder3
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
)__inference_lstm_409_layer_call_fn_778382

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
D__inference_lstm_409_layer_call_and_return_conditional_losses_776434s
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
)__inference_lstm_408_layer_call_fn_777733
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_774704|
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
while_cond_779342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_779342___redundant_placeholder04
0while_while_cond_779342___redundant_placeholder14
0while_while_cond_779342___redundant_placeholder24
0while_while_cond_779342___redundant_placeholder3
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
)sequential_136_lstm_408_while_body_774186L
Hsequential_136_lstm_408_while_sequential_136_lstm_408_while_loop_counterR
Nsequential_136_lstm_408_while_sequential_136_lstm_408_while_maximum_iterations-
)sequential_136_lstm_408_while_placeholder/
+sequential_136_lstm_408_while_placeholder_1/
+sequential_136_lstm_408_while_placeholder_2/
+sequential_136_lstm_408_while_placeholder_3K
Gsequential_136_lstm_408_while_sequential_136_lstm_408_strided_slice_1_0?
?sequential_136_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_408_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_136_lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0:	?a
Nsequential_136_lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?\
Msequential_136_lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0:	?*
&sequential_136_lstm_408_while_identity,
(sequential_136_lstm_408_while_identity_1,
(sequential_136_lstm_408_while_identity_2,
(sequential_136_lstm_408_while_identity_3,
(sequential_136_lstm_408_while_identity_4,
(sequential_136_lstm_408_while_identity_5I
Esequential_136_lstm_408_while_sequential_136_lstm_408_strided_slice_1?
?sequential_136_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_408_tensorarrayunstack_tensorlistfromtensor]
Jsequential_136_lstm_408_while_lstm_cell_126_matmul_readvariableop_resource:	?_
Lsequential_136_lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource:	d?Z
Ksequential_136_lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource:	???Bsequential_136/lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp?Asequential_136/lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp?Csequential_136/lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp?
Osequential_136/lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_136/lstm_408/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_136_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_408_tensorarrayunstack_tensorlistfromtensor_0)sequential_136_lstm_408_while_placeholderXsequential_136/lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_136/lstm_408/while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOpLsequential_136_lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_136/lstm_408/while/lstm_cell_126/MatMulMatMulHsequential_136/lstm_408/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_136/lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_136/lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOpNsequential_136_lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_136/lstm_408/while/lstm_cell_126/MatMul_1MatMul+sequential_136_lstm_408_while_placeholder_2Ksequential_136/lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_136/lstm_408/while/lstm_cell_126/addAddV2<sequential_136/lstm_408/while/lstm_cell_126/MatMul:product:0>sequential_136/lstm_408/while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_136/lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOpMsequential_136_lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_136/lstm_408/while/lstm_cell_126/BiasAddBiasAdd3sequential_136/lstm_408/while/lstm_cell_126/add:z:0Jsequential_136/lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_136/lstm_408/while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_136/lstm_408/while/lstm_cell_126/splitSplitDsequential_136/lstm_408/while/lstm_cell_126/split/split_dim:output:0<sequential_136/lstm_408/while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_136/lstm_408/while/lstm_cell_126/SigmoidSigmoid:sequential_136/lstm_408/while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_136/lstm_408/while/lstm_cell_126/Sigmoid_1Sigmoid:sequential_136/lstm_408/while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_136/lstm_408/while/lstm_cell_126/mulMul9sequential_136/lstm_408/while/lstm_cell_126/Sigmoid_1:y:0+sequential_136_lstm_408_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_136/lstm_408/while/lstm_cell_126/ReluRelu:sequential_136/lstm_408/while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_136/lstm_408/while/lstm_cell_126/mul_1Mul7sequential_136/lstm_408/while/lstm_cell_126/Sigmoid:y:0>sequential_136/lstm_408/while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_136/lstm_408/while/lstm_cell_126/add_1AddV23sequential_136/lstm_408/while/lstm_cell_126/mul:z:05sequential_136/lstm_408/while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_136/lstm_408/while/lstm_cell_126/Sigmoid_2Sigmoid:sequential_136/lstm_408/while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_136/lstm_408/while/lstm_cell_126/Relu_1Relu5sequential_136/lstm_408/while/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_136/lstm_408/while/lstm_cell_126/mul_2Mul9sequential_136/lstm_408/while/lstm_cell_126/Sigmoid_2:y:0@sequential_136/lstm_408/while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_136/lstm_408/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_136_lstm_408_while_placeholder_1)sequential_136_lstm_408_while_placeholder5sequential_136/lstm_408/while/lstm_cell_126/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_136/lstm_408/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_136/lstm_408/while/addAddV2)sequential_136_lstm_408_while_placeholder,sequential_136/lstm_408/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_136/lstm_408/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_136/lstm_408/while/add_1AddV2Hsequential_136_lstm_408_while_sequential_136_lstm_408_while_loop_counter.sequential_136/lstm_408/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_136/lstm_408/while/IdentityIdentity'sequential_136/lstm_408/while/add_1:z:0#^sequential_136/lstm_408/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_408/while/Identity_1IdentityNsequential_136_lstm_408_while_sequential_136_lstm_408_while_maximum_iterations#^sequential_136/lstm_408/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_408/while/Identity_2Identity%sequential_136/lstm_408/while/add:z:0#^sequential_136/lstm_408/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_408/while/Identity_3IdentityRsequential_136/lstm_408/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_136/lstm_408/while/NoOp*
T0*
_output_shapes
: ?
(sequential_136/lstm_408/while/Identity_4Identity5sequential_136/lstm_408/while/lstm_cell_126/mul_2:z:0#^sequential_136/lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_136/lstm_408/while/Identity_5Identity5sequential_136/lstm_408/while/lstm_cell_126/add_1:z:0#^sequential_136/lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_136/lstm_408/while/NoOpNoOpC^sequential_136/lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOpB^sequential_136/lstm_408/while/lstm_cell_126/MatMul/ReadVariableOpD^sequential_136/lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_136_lstm_408_while_identity/sequential_136/lstm_408/while/Identity:output:0"]
(sequential_136_lstm_408_while_identity_11sequential_136/lstm_408/while/Identity_1:output:0"]
(sequential_136_lstm_408_while_identity_21sequential_136/lstm_408/while/Identity_2:output:0"]
(sequential_136_lstm_408_while_identity_31sequential_136/lstm_408/while/Identity_3:output:0"]
(sequential_136_lstm_408_while_identity_41sequential_136/lstm_408/while/Identity_4:output:0"]
(sequential_136_lstm_408_while_identity_51sequential_136/lstm_408/while/Identity_5:output:0"?
Ksequential_136_lstm_408_while_lstm_cell_126_biasadd_readvariableop_resourceMsequential_136_lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0"?
Lsequential_136_lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resourceNsequential_136_lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0"?
Jsequential_136_lstm_408_while_lstm_cell_126_matmul_readvariableop_resourceLsequential_136_lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0"?
Esequential_136_lstm_408_while_sequential_136_lstm_408_strided_slice_1Gsequential_136_lstm_408_while_sequential_136_lstm_408_strided_slice_1_0"?
?sequential_136_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_408_tensorarrayunstack_tensorlistfromtensor?sequential_136_lstm_408_while_tensorarrayv2read_tensorlistgetitem_sequential_136_lstm_408_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_136/lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOpBsequential_136/lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp2?
Asequential_136/lstm_408/while/lstm_cell_126/MatMul/ReadVariableOpAsequential_136/lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp2?
Csequential_136/lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOpCsequential_136/lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_136_lstm_408_while_cond_774185L
Hsequential_136_lstm_408_while_sequential_136_lstm_408_while_loop_counterR
Nsequential_136_lstm_408_while_sequential_136_lstm_408_while_maximum_iterations-
)sequential_136_lstm_408_while_placeholder/
+sequential_136_lstm_408_while_placeholder_1/
+sequential_136_lstm_408_while_placeholder_2/
+sequential_136_lstm_408_while_placeholder_3N
Jsequential_136_lstm_408_while_less_sequential_136_lstm_408_strided_slice_1d
`sequential_136_lstm_408_while_sequential_136_lstm_408_while_cond_774185___redundant_placeholder0d
`sequential_136_lstm_408_while_sequential_136_lstm_408_while_cond_774185___redundant_placeholder1d
`sequential_136_lstm_408_while_sequential_136_lstm_408_while_cond_774185___redundant_placeholder2d
`sequential_136_lstm_408_while_sequential_136_lstm_408_while_cond_774185___redundant_placeholder3*
&sequential_136_lstm_408_while_identity
?
"sequential_136/lstm_408/while/LessLess)sequential_136_lstm_408_while_placeholderJsequential_136_lstm_408_while_less_sequential_136_lstm_408_strided_slice_1*
T0*
_output_shapes
: {
&sequential_136/lstm_408/while/IdentityIdentity&sequential_136/lstm_408/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_136_lstm_408_while_identity/sequential_136/lstm_408/while/Identity:output:0*(
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

lstm_408_while_body_776927.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_3-
)lstm_408_while_lstm_408_strided_slice_1_0i
elstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0:	?R
?lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?M
>lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
lstm_408_while_identity
lstm_408_while_identity_1
lstm_408_while_identity_2
lstm_408_while_identity_3
lstm_408_while_identity_4
lstm_408_while_identity_5+
'lstm_408_while_lstm_408_strided_slice_1g
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorN
;lstm_408_while_lstm_cell_126_matmul_readvariableop_resource:	?P
=lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource:	d?K
<lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource:	???3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp?2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp?4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp?
@lstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_408/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0lstm_408_while_placeholderIlstm_408/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp=lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_408/while/lstm_cell_126/MatMulMatMul9lstm_408/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp?lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_408/while/lstm_cell_126/MatMul_1MatMullstm_408_while_placeholder_2<lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_408/while/lstm_cell_126/addAddV2-lstm_408/while/lstm_cell_126/MatMul:product:0/lstm_408/while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp>lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_408/while/lstm_cell_126/BiasAddBiasAdd$lstm_408/while/lstm_cell_126/add:z:0;lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_408/while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_408/while/lstm_cell_126/splitSplit5lstm_408/while/lstm_cell_126/split/split_dim:output:0-lstm_408/while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_408/while/lstm_cell_126/SigmoidSigmoid+lstm_408/while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_408/while/lstm_cell_126/Sigmoid_1Sigmoid+lstm_408/while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_408/while/lstm_cell_126/mulMul*lstm_408/while/lstm_cell_126/Sigmoid_1:y:0lstm_408_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_408/while/lstm_cell_126/ReluRelu+lstm_408/while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_408/while/lstm_cell_126/mul_1Mul(lstm_408/while/lstm_cell_126/Sigmoid:y:0/lstm_408/while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_408/while/lstm_cell_126/add_1AddV2$lstm_408/while/lstm_cell_126/mul:z:0&lstm_408/while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_408/while/lstm_cell_126/Sigmoid_2Sigmoid+lstm_408/while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_408/while/lstm_cell_126/Relu_1Relu&lstm_408/while/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_408/while/lstm_cell_126/mul_2Mul*lstm_408/while/lstm_cell_126/Sigmoid_2:y:01lstm_408/while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_408/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_408_while_placeholder_1lstm_408_while_placeholder&lstm_408/while/lstm_cell_126/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_408/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_408/while/addAddV2lstm_408_while_placeholderlstm_408/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_408/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_408/while/add_1AddV2*lstm_408_while_lstm_408_while_loop_counterlstm_408/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_408/while/IdentityIdentitylstm_408/while/add_1:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: ?
lstm_408/while/Identity_1Identity0lstm_408_while_lstm_408_while_maximum_iterations^lstm_408/while/NoOp*
T0*
_output_shapes
: t
lstm_408/while/Identity_2Identitylstm_408/while/add:z:0^lstm_408/while/NoOp*
T0*
_output_shapes
: ?
lstm_408/while/Identity_3IdentityClstm_408/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_408/while/NoOp*
T0*
_output_shapes
: ?
lstm_408/while/Identity_4Identity&lstm_408/while/lstm_cell_126/mul_2:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_408/while/Identity_5Identity&lstm_408/while/lstm_cell_126/add_1:z:0^lstm_408/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_408/while/NoOpNoOp4^lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp3^lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp5^lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_408_while_identity lstm_408/while/Identity:output:0"?
lstm_408_while_identity_1"lstm_408/while/Identity_1:output:0"?
lstm_408_while_identity_2"lstm_408/while/Identity_2:output:0"?
lstm_408_while_identity_3"lstm_408/while/Identity_3:output:0"?
lstm_408_while_identity_4"lstm_408/while/Identity_4:output:0"?
lstm_408_while_identity_5"lstm_408/while/Identity_5:output:0"T
'lstm_408_while_lstm_408_strided_slice_1)lstm_408_while_lstm_408_strided_slice_1_0"~
<lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource>lstm_408_while_lstm_cell_126_biasadd_readvariableop_resource_0"?
=lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource?lstm_408_while_lstm_cell_126_matmul_1_readvariableop_resource_0"|
;lstm_408_while_lstm_cell_126_matmul_readvariableop_resource=lstm_408_while_lstm_cell_126_matmul_readvariableop_resource_0"?
clstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensorelstm_408_while_tensorarrayv2read_tensorlistgetitem_lstm_408_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp3lstm_408/while/lstm_cell_126/BiasAdd/ReadVariableOp2h
2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp2lstm_408/while/lstm_cell_126/MatMul/ReadVariableOp2l
4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp4lstm_408/while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_774767

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
lstm_408_while_cond_776926.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_30
,lstm_408_while_less_lstm_408_strided_slice_1F
Blstm_408_while_lstm_408_while_cond_776926___redundant_placeholder0F
Blstm_408_while_lstm_408_while_cond_776926___redundant_placeholder1F
Blstm_408_while_lstm_408_while_cond_776926___redundant_placeholder2F
Blstm_408_while_lstm_408_while_cond_776926___redundant_placeholder3
lstm_408_while_identity
?
lstm_408/while/LessLesslstm_408_while_placeholder,lstm_408_while_less_lstm_408_strided_slice_1*
T0*
_output_shapes
: ]
lstm_408/while/IdentityIdentitylstm_408/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_408_while_identity lstm_408/while/Identity:output:0*(
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
!__inference__wrapped_model_774554
lstm_408_inputW
Dsequential_136_lstm_408_lstm_cell_126_matmul_readvariableop_resource:	?Y
Fsequential_136_lstm_408_lstm_cell_126_matmul_1_readvariableop_resource:	d?T
Esequential_136_lstm_408_lstm_cell_126_biasadd_readvariableop_resource:	?W
Dsequential_136_lstm_409_lstm_cell_127_matmul_readvariableop_resource:	d?Y
Fsequential_136_lstm_409_lstm_cell_127_matmul_1_readvariableop_resource:	2?T
Esequential_136_lstm_409_lstm_cell_127_biasadd_readvariableop_resource:	?V
Dsequential_136_lstm_410_lstm_cell_128_matmul_readvariableop_resource:2(X
Fsequential_136_lstm_410_lstm_cell_128_matmul_1_readvariableop_resource:
(S
Esequential_136_lstm_410_lstm_cell_128_biasadd_readvariableop_resource:(I
7sequential_136_dense_136_matmul_readvariableop_resource:
F
8sequential_136_dense_136_biasadd_readvariableop_resource:
identity??/sequential_136/dense_136/BiasAdd/ReadVariableOp?.sequential_136/dense_136/MatMul/ReadVariableOp?<sequential_136/lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp?;sequential_136/lstm_408/lstm_cell_126/MatMul/ReadVariableOp?=sequential_136/lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp?sequential_136/lstm_408/while?<sequential_136/lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp?;sequential_136/lstm_409/lstm_cell_127/MatMul/ReadVariableOp?=sequential_136/lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp?sequential_136/lstm_409/while?<sequential_136/lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp?;sequential_136/lstm_410/lstm_cell_128/MatMul/ReadVariableOp?=sequential_136/lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp?sequential_136/lstm_410/while[
sequential_136/lstm_408/ShapeShapelstm_408_input*
T0*
_output_shapes
:u
+sequential_136/lstm_408/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_136/lstm_408/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_136/lstm_408/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_136/lstm_408/strided_sliceStridedSlice&sequential_136/lstm_408/Shape:output:04sequential_136/lstm_408/strided_slice/stack:output:06sequential_136/lstm_408/strided_slice/stack_1:output:06sequential_136/lstm_408/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_136/lstm_408/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_136/lstm_408/zeros/packedPack.sequential_136/lstm_408/strided_slice:output:0/sequential_136/lstm_408/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_136/lstm_408/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_136/lstm_408/zerosFill-sequential_136/lstm_408/zeros/packed:output:0,sequential_136/lstm_408/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_136/lstm_408/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_136/lstm_408/zeros_1/packedPack.sequential_136/lstm_408/strided_slice:output:01sequential_136/lstm_408/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_136/lstm_408/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_136/lstm_408/zeros_1Fill/sequential_136/lstm_408/zeros_1/packed:output:0.sequential_136/lstm_408/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_136/lstm_408/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_136/lstm_408/transpose	Transposelstm_408_input/sequential_136/lstm_408/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_136/lstm_408/Shape_1Shape%sequential_136/lstm_408/transpose:y:0*
T0*
_output_shapes
:w
-sequential_136/lstm_408/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_408/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_136/lstm_408/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_408/strided_slice_1StridedSlice(sequential_136/lstm_408/Shape_1:output:06sequential_136/lstm_408/strided_slice_1/stack:output:08sequential_136/lstm_408/strided_slice_1/stack_1:output:08sequential_136/lstm_408/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_136/lstm_408/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_136/lstm_408/TensorArrayV2TensorListReserve<sequential_136/lstm_408/TensorArrayV2/element_shape:output:00sequential_136/lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_136/lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_136/lstm_408/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_136/lstm_408/transpose:y:0Vsequential_136/lstm_408/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_136/lstm_408/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_408/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_136/lstm_408/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_408/strided_slice_2StridedSlice%sequential_136/lstm_408/transpose:y:06sequential_136/lstm_408/strided_slice_2/stack:output:08sequential_136/lstm_408/strided_slice_2/stack_1:output:08sequential_136/lstm_408/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_136/lstm_408/lstm_cell_126/MatMul/ReadVariableOpReadVariableOpDsequential_136_lstm_408_lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_136/lstm_408/lstm_cell_126/MatMulMatMul0sequential_136/lstm_408/strided_slice_2:output:0Csequential_136/lstm_408/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_136/lstm_408/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOpFsequential_136_lstm_408_lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_136/lstm_408/lstm_cell_126/MatMul_1MatMul&sequential_136/lstm_408/zeros:output:0Esequential_136/lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_136/lstm_408/lstm_cell_126/addAddV26sequential_136/lstm_408/lstm_cell_126/MatMul:product:08sequential_136/lstm_408/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_136/lstm_408/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOpEsequential_136_lstm_408_lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_136/lstm_408/lstm_cell_126/BiasAddBiasAdd-sequential_136/lstm_408/lstm_cell_126/add:z:0Dsequential_136/lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_136/lstm_408/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_136/lstm_408/lstm_cell_126/splitSplit>sequential_136/lstm_408/lstm_cell_126/split/split_dim:output:06sequential_136/lstm_408/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_136/lstm_408/lstm_cell_126/SigmoidSigmoid4sequential_136/lstm_408/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_136/lstm_408/lstm_cell_126/Sigmoid_1Sigmoid4sequential_136/lstm_408/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_136/lstm_408/lstm_cell_126/mulMul3sequential_136/lstm_408/lstm_cell_126/Sigmoid_1:y:0(sequential_136/lstm_408/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_136/lstm_408/lstm_cell_126/ReluRelu4sequential_136/lstm_408/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_136/lstm_408/lstm_cell_126/mul_1Mul1sequential_136/lstm_408/lstm_cell_126/Sigmoid:y:08sequential_136/lstm_408/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_136/lstm_408/lstm_cell_126/add_1AddV2-sequential_136/lstm_408/lstm_cell_126/mul:z:0/sequential_136/lstm_408/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_136/lstm_408/lstm_cell_126/Sigmoid_2Sigmoid4sequential_136/lstm_408/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_136/lstm_408/lstm_cell_126/Relu_1Relu/sequential_136/lstm_408/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_136/lstm_408/lstm_cell_126/mul_2Mul3sequential_136/lstm_408/lstm_cell_126/Sigmoid_2:y:0:sequential_136/lstm_408/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_136/lstm_408/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_136/lstm_408/TensorArrayV2_1TensorListReserve>sequential_136/lstm_408/TensorArrayV2_1/element_shape:output:00sequential_136/lstm_408/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_136/lstm_408/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_136/lstm_408/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_136/lstm_408/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_136/lstm_408/whileWhile3sequential_136/lstm_408/while/loop_counter:output:09sequential_136/lstm_408/while/maximum_iterations:output:0%sequential_136/lstm_408/time:output:00sequential_136/lstm_408/TensorArrayV2_1:handle:0&sequential_136/lstm_408/zeros:output:0(sequential_136/lstm_408/zeros_1:output:00sequential_136/lstm_408/strided_slice_1:output:0Osequential_136/lstm_408/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_136_lstm_408_lstm_cell_126_matmul_readvariableop_resourceFsequential_136_lstm_408_lstm_cell_126_matmul_1_readvariableop_resourceEsequential_136_lstm_408_lstm_cell_126_biasadd_readvariableop_resource*
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
)sequential_136_lstm_408_while_body_774186*5
cond-R+
)sequential_136_lstm_408_while_cond_774185*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_136/lstm_408/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_136/lstm_408/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_136/lstm_408/while:output:3Qsequential_136/lstm_408/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_136/lstm_408/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_136/lstm_408/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_408/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_408/strided_slice_3StridedSliceCsequential_136/lstm_408/TensorArrayV2Stack/TensorListStack:tensor:06sequential_136/lstm_408/strided_slice_3/stack:output:08sequential_136/lstm_408/strided_slice_3/stack_1:output:08sequential_136/lstm_408/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_136/lstm_408/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_136/lstm_408/transpose_1	TransposeCsequential_136/lstm_408/TensorArrayV2Stack/TensorListStack:tensor:01sequential_136/lstm_408/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_136/lstm_408/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_136/lstm_409/ShapeShape'sequential_136/lstm_408/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_136/lstm_409/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_136/lstm_409/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_136/lstm_409/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_136/lstm_409/strided_sliceStridedSlice&sequential_136/lstm_409/Shape:output:04sequential_136/lstm_409/strided_slice/stack:output:06sequential_136/lstm_409/strided_slice/stack_1:output:06sequential_136/lstm_409/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_136/lstm_409/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_136/lstm_409/zeros/packedPack.sequential_136/lstm_409/strided_slice:output:0/sequential_136/lstm_409/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_136/lstm_409/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_136/lstm_409/zerosFill-sequential_136/lstm_409/zeros/packed:output:0,sequential_136/lstm_409/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_136/lstm_409/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_136/lstm_409/zeros_1/packedPack.sequential_136/lstm_409/strided_slice:output:01sequential_136/lstm_409/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_136/lstm_409/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_136/lstm_409/zeros_1Fill/sequential_136/lstm_409/zeros_1/packed:output:0.sequential_136/lstm_409/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_136/lstm_409/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_136/lstm_409/transpose	Transpose'sequential_136/lstm_408/transpose_1:y:0/sequential_136/lstm_409/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_136/lstm_409/Shape_1Shape%sequential_136/lstm_409/transpose:y:0*
T0*
_output_shapes
:w
-sequential_136/lstm_409/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_409/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_136/lstm_409/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_409/strided_slice_1StridedSlice(sequential_136/lstm_409/Shape_1:output:06sequential_136/lstm_409/strided_slice_1/stack:output:08sequential_136/lstm_409/strided_slice_1/stack_1:output:08sequential_136/lstm_409/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_136/lstm_409/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_136/lstm_409/TensorArrayV2TensorListReserve<sequential_136/lstm_409/TensorArrayV2/element_shape:output:00sequential_136/lstm_409/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_136/lstm_409/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_136/lstm_409/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_136/lstm_409/transpose:y:0Vsequential_136/lstm_409/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_136/lstm_409/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_409/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_136/lstm_409/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_409/strided_slice_2StridedSlice%sequential_136/lstm_409/transpose:y:06sequential_136/lstm_409/strided_slice_2/stack:output:08sequential_136/lstm_409/strided_slice_2/stack_1:output:08sequential_136/lstm_409/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_136/lstm_409/lstm_cell_127/MatMul/ReadVariableOpReadVariableOpDsequential_136_lstm_409_lstm_cell_127_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_136/lstm_409/lstm_cell_127/MatMulMatMul0sequential_136/lstm_409/strided_slice_2:output:0Csequential_136/lstm_409/lstm_cell_127/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_136/lstm_409/lstm_cell_127/MatMul_1/ReadVariableOpReadVariableOpFsequential_136_lstm_409_lstm_cell_127_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_136/lstm_409/lstm_cell_127/MatMul_1MatMul&sequential_136/lstm_409/zeros:output:0Esequential_136/lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_136/lstm_409/lstm_cell_127/addAddV26sequential_136/lstm_409/lstm_cell_127/MatMul:product:08sequential_136/lstm_409/lstm_cell_127/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_136/lstm_409/lstm_cell_127/BiasAdd/ReadVariableOpReadVariableOpEsequential_136_lstm_409_lstm_cell_127_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_136/lstm_409/lstm_cell_127/BiasAddBiasAdd-sequential_136/lstm_409/lstm_cell_127/add:z:0Dsequential_136/lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_136/lstm_409/lstm_cell_127/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_136/lstm_409/lstm_cell_127/splitSplit>sequential_136/lstm_409/lstm_cell_127/split/split_dim:output:06sequential_136/lstm_409/lstm_cell_127/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_136/lstm_409/lstm_cell_127/SigmoidSigmoid4sequential_136/lstm_409/lstm_cell_127/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_136/lstm_409/lstm_cell_127/Sigmoid_1Sigmoid4sequential_136/lstm_409/lstm_cell_127/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_136/lstm_409/lstm_cell_127/mulMul3sequential_136/lstm_409/lstm_cell_127/Sigmoid_1:y:0(sequential_136/lstm_409/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_136/lstm_409/lstm_cell_127/ReluRelu4sequential_136/lstm_409/lstm_cell_127/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_136/lstm_409/lstm_cell_127/mul_1Mul1sequential_136/lstm_409/lstm_cell_127/Sigmoid:y:08sequential_136/lstm_409/lstm_cell_127/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_136/lstm_409/lstm_cell_127/add_1AddV2-sequential_136/lstm_409/lstm_cell_127/mul:z:0/sequential_136/lstm_409/lstm_cell_127/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_136/lstm_409/lstm_cell_127/Sigmoid_2Sigmoid4sequential_136/lstm_409/lstm_cell_127/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_136/lstm_409/lstm_cell_127/Relu_1Relu/sequential_136/lstm_409/lstm_cell_127/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_136/lstm_409/lstm_cell_127/mul_2Mul3sequential_136/lstm_409/lstm_cell_127/Sigmoid_2:y:0:sequential_136/lstm_409/lstm_cell_127/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_136/lstm_409/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_136/lstm_409/TensorArrayV2_1TensorListReserve>sequential_136/lstm_409/TensorArrayV2_1/element_shape:output:00sequential_136/lstm_409/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_136/lstm_409/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_136/lstm_409/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_136/lstm_409/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_136/lstm_409/whileWhile3sequential_136/lstm_409/while/loop_counter:output:09sequential_136/lstm_409/while/maximum_iterations:output:0%sequential_136/lstm_409/time:output:00sequential_136/lstm_409/TensorArrayV2_1:handle:0&sequential_136/lstm_409/zeros:output:0(sequential_136/lstm_409/zeros_1:output:00sequential_136/lstm_409/strided_slice_1:output:0Osequential_136/lstm_409/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_136_lstm_409_lstm_cell_127_matmul_readvariableop_resourceFsequential_136_lstm_409_lstm_cell_127_matmul_1_readvariableop_resourceEsequential_136_lstm_409_lstm_cell_127_biasadd_readvariableop_resource*
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
)sequential_136_lstm_409_while_body_774325*5
cond-R+
)sequential_136_lstm_409_while_cond_774324*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_136/lstm_409/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_136/lstm_409/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_136/lstm_409/while:output:3Qsequential_136/lstm_409/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_136/lstm_409/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_136/lstm_409/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_409/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_409/strided_slice_3StridedSliceCsequential_136/lstm_409/TensorArrayV2Stack/TensorListStack:tensor:06sequential_136/lstm_409/strided_slice_3/stack:output:08sequential_136/lstm_409/strided_slice_3/stack_1:output:08sequential_136/lstm_409/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_136/lstm_409/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_136/lstm_409/transpose_1	TransposeCsequential_136/lstm_409/TensorArrayV2Stack/TensorListStack:tensor:01sequential_136/lstm_409/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_136/lstm_409/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_136/lstm_410/ShapeShape'sequential_136/lstm_409/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_136/lstm_410/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_136/lstm_410/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_136/lstm_410/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_136/lstm_410/strided_sliceStridedSlice&sequential_136/lstm_410/Shape:output:04sequential_136/lstm_410/strided_slice/stack:output:06sequential_136/lstm_410/strided_slice/stack_1:output:06sequential_136/lstm_410/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_136/lstm_410/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_136/lstm_410/zeros/packedPack.sequential_136/lstm_410/strided_slice:output:0/sequential_136/lstm_410/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_136/lstm_410/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_136/lstm_410/zerosFill-sequential_136/lstm_410/zeros/packed:output:0,sequential_136/lstm_410/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_136/lstm_410/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_136/lstm_410/zeros_1/packedPack.sequential_136/lstm_410/strided_slice:output:01sequential_136/lstm_410/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_136/lstm_410/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_136/lstm_410/zeros_1Fill/sequential_136/lstm_410/zeros_1/packed:output:0.sequential_136/lstm_410/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_136/lstm_410/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_136/lstm_410/transpose	Transpose'sequential_136/lstm_409/transpose_1:y:0/sequential_136/lstm_410/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_136/lstm_410/Shape_1Shape%sequential_136/lstm_410/transpose:y:0*
T0*
_output_shapes
:w
-sequential_136/lstm_410/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_410/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_136/lstm_410/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_410/strided_slice_1StridedSlice(sequential_136/lstm_410/Shape_1:output:06sequential_136/lstm_410/strided_slice_1/stack:output:08sequential_136/lstm_410/strided_slice_1/stack_1:output:08sequential_136/lstm_410/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_136/lstm_410/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_136/lstm_410/TensorArrayV2TensorListReserve<sequential_136/lstm_410/TensorArrayV2/element_shape:output:00sequential_136/lstm_410/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_136/lstm_410/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_136/lstm_410/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_136/lstm_410/transpose:y:0Vsequential_136/lstm_410/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_136/lstm_410/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_410/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_136/lstm_410/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_410/strided_slice_2StridedSlice%sequential_136/lstm_410/transpose:y:06sequential_136/lstm_410/strided_slice_2/stack:output:08sequential_136/lstm_410/strided_slice_2/stack_1:output:08sequential_136/lstm_410/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_136/lstm_410/lstm_cell_128/MatMul/ReadVariableOpReadVariableOpDsequential_136_lstm_410_lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_136/lstm_410/lstm_cell_128/MatMulMatMul0sequential_136/lstm_410/strided_slice_2:output:0Csequential_136/lstm_410/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_136/lstm_410/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOpFsequential_136_lstm_410_lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_136/lstm_410/lstm_cell_128/MatMul_1MatMul&sequential_136/lstm_410/zeros:output:0Esequential_136/lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_136/lstm_410/lstm_cell_128/addAddV26sequential_136/lstm_410/lstm_cell_128/MatMul:product:08sequential_136/lstm_410/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_136/lstm_410/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOpEsequential_136_lstm_410_lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_136/lstm_410/lstm_cell_128/BiasAddBiasAdd-sequential_136/lstm_410/lstm_cell_128/add:z:0Dsequential_136/lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_136/lstm_410/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_136/lstm_410/lstm_cell_128/splitSplit>sequential_136/lstm_410/lstm_cell_128/split/split_dim:output:06sequential_136/lstm_410/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_136/lstm_410/lstm_cell_128/SigmoidSigmoid4sequential_136/lstm_410/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_136/lstm_410/lstm_cell_128/Sigmoid_1Sigmoid4sequential_136/lstm_410/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_136/lstm_410/lstm_cell_128/mulMul3sequential_136/lstm_410/lstm_cell_128/Sigmoid_1:y:0(sequential_136/lstm_410/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_136/lstm_410/lstm_cell_128/ReluRelu4sequential_136/lstm_410/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_136/lstm_410/lstm_cell_128/mul_1Mul1sequential_136/lstm_410/lstm_cell_128/Sigmoid:y:08sequential_136/lstm_410/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_136/lstm_410/lstm_cell_128/add_1AddV2-sequential_136/lstm_410/lstm_cell_128/mul:z:0/sequential_136/lstm_410/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_136/lstm_410/lstm_cell_128/Sigmoid_2Sigmoid4sequential_136/lstm_410/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_136/lstm_410/lstm_cell_128/Relu_1Relu/sequential_136/lstm_410/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_136/lstm_410/lstm_cell_128/mul_2Mul3sequential_136/lstm_410/lstm_cell_128/Sigmoid_2:y:0:sequential_136/lstm_410/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_136/lstm_410/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_136/lstm_410/TensorArrayV2_1TensorListReserve>sequential_136/lstm_410/TensorArrayV2_1/element_shape:output:00sequential_136/lstm_410/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_136/lstm_410/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_136/lstm_410/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_136/lstm_410/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_136/lstm_410/whileWhile3sequential_136/lstm_410/while/loop_counter:output:09sequential_136/lstm_410/while/maximum_iterations:output:0%sequential_136/lstm_410/time:output:00sequential_136/lstm_410/TensorArrayV2_1:handle:0&sequential_136/lstm_410/zeros:output:0(sequential_136/lstm_410/zeros_1:output:00sequential_136/lstm_410/strided_slice_1:output:0Osequential_136/lstm_410/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_136_lstm_410_lstm_cell_128_matmul_readvariableop_resourceFsequential_136_lstm_410_lstm_cell_128_matmul_1_readvariableop_resourceEsequential_136_lstm_410_lstm_cell_128_biasadd_readvariableop_resource*
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
)sequential_136_lstm_410_while_body_774464*5
cond-R+
)sequential_136_lstm_410_while_cond_774463*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_136/lstm_410/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_136/lstm_410/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_136/lstm_410/while:output:3Qsequential_136/lstm_410/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_136/lstm_410/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_136/lstm_410/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_136/lstm_410/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_136/lstm_410/strided_slice_3StridedSliceCsequential_136/lstm_410/TensorArrayV2Stack/TensorListStack:tensor:06sequential_136/lstm_410/strided_slice_3/stack:output:08sequential_136/lstm_410/strided_slice_3/stack_1:output:08sequential_136/lstm_410/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_136/lstm_410/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_136/lstm_410/transpose_1	TransposeCsequential_136/lstm_410/TensorArrayV2Stack/TensorListStack:tensor:01sequential_136/lstm_410/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_136/lstm_410/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_136/dense_136/MatMul/ReadVariableOpReadVariableOp7sequential_136_dense_136_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_136/dense_136/MatMulMatMul0sequential_136/lstm_410/strided_slice_3:output:06sequential_136/dense_136/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_136/dense_136/BiasAdd/ReadVariableOpReadVariableOp8sequential_136_dense_136_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_136/dense_136/BiasAddBiasAdd)sequential_136/dense_136/MatMul:product:07sequential_136/dense_136/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_136/dense_136/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_136/dense_136/BiasAdd/ReadVariableOp/^sequential_136/dense_136/MatMul/ReadVariableOp=^sequential_136/lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp<^sequential_136/lstm_408/lstm_cell_126/MatMul/ReadVariableOp>^sequential_136/lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp^sequential_136/lstm_408/while=^sequential_136/lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp<^sequential_136/lstm_409/lstm_cell_127/MatMul/ReadVariableOp>^sequential_136/lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp^sequential_136/lstm_409/while=^sequential_136/lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp<^sequential_136/lstm_410/lstm_cell_128/MatMul/ReadVariableOp>^sequential_136/lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp^sequential_136/lstm_410/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_136/dense_136/BiasAdd/ReadVariableOp/sequential_136/dense_136/BiasAdd/ReadVariableOp2`
.sequential_136/dense_136/MatMul/ReadVariableOp.sequential_136/dense_136/MatMul/ReadVariableOp2|
<sequential_136/lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp<sequential_136/lstm_408/lstm_cell_126/BiasAdd/ReadVariableOp2z
;sequential_136/lstm_408/lstm_cell_126/MatMul/ReadVariableOp;sequential_136/lstm_408/lstm_cell_126/MatMul/ReadVariableOp2~
=sequential_136/lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp=sequential_136/lstm_408/lstm_cell_126/MatMul_1/ReadVariableOp2>
sequential_136/lstm_408/whilesequential_136/lstm_408/while2|
<sequential_136/lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp<sequential_136/lstm_409/lstm_cell_127/BiasAdd/ReadVariableOp2z
;sequential_136/lstm_409/lstm_cell_127/MatMul/ReadVariableOp;sequential_136/lstm_409/lstm_cell_127/MatMul/ReadVariableOp2~
=sequential_136/lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp=sequential_136/lstm_409/lstm_cell_127/MatMul_1/ReadVariableOp2>
sequential_136/lstm_409/whilesequential_136/lstm_409/while2|
<sequential_136/lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp<sequential_136/lstm_410/lstm_cell_128/BiasAdd/ReadVariableOp2z
;sequential_136/lstm_410/lstm_cell_128/MatMul/ReadVariableOp;sequential_136/lstm_410/lstm_cell_128/MatMul/ReadVariableOp2~
=sequential_136/lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp=sequential_136/lstm_410/lstm_cell_128/MatMul_1/ReadVariableOp2>
sequential_136/lstm_410/whilesequential_136/lstm_410/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_408_input
?8
?
while_body_777825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_126_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_126_matmul_readvariableop_resource:	?G
4while_lstm_cell_126_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_126_biasadd_readvariableop_resource:	???*while/lstm_cell_126/BiasAdd/ReadVariableOp?)while/lstm_cell_126/MatMul/ReadVariableOp?+while/lstm_cell_126/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_126/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_126/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_126/addAddV2$while/lstm_cell_126/MatMul:product:0&while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_126/BiasAddBiasAddwhile/lstm_cell_126/add:z:02while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_126/splitSplit,while/lstm_cell_126/split/split_dim:output:0$while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_126/SigmoidSigmoid"while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_1Sigmoid"while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mulMul!while/lstm_cell_126/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_126/ReluRelu"while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_1Mulwhile/lstm_cell_126/Sigmoid:y:0&while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/add_1AddV2while/lstm_cell_126/mul:z:0while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_2Sigmoid"while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_126/Relu_1Reluwhile/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_2Mul!while/lstm_cell_126/Sigmoid_2:y:0(while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_126/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_126/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_126/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_126/BiasAdd/ReadVariableOp*^while/lstm_cell_126/MatMul/ReadVariableOp,^while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_126_biasadd_readvariableop_resource5while_lstm_cell_126_biasadd_readvariableop_resource_0"n
4while_lstm_cell_126_matmul_1_readvariableop_resource6while_lstm_cell_126_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_126_matmul_readvariableop_resource4while_lstm_cell_126_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_126/BiasAdd/ReadVariableOp*while/lstm_cell_126/BiasAdd/ReadVariableOp2V
)while/lstm_cell_126/MatMul/ReadVariableOp)while/lstm_cell_126/MatMul/ReadVariableOp2Z
+while/lstm_cell_126/MatMul_1/ReadVariableOp+while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_774634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_774634___redundant_placeholder04
0while_while_cond_774634___redundant_placeholder14
0while_while_cond_774634___redundant_placeholder24
0while_while_cond_774634___redundant_placeholder3
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
while_body_779343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_128_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_128_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_128_matmul_readvariableop_resource:2(F
4while_lstm_cell_128_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_128_biasadd_readvariableop_resource:(??*while/lstm_cell_128/BiasAdd/ReadVariableOp?)while/lstm_cell_128/MatMul/ReadVariableOp?+while/lstm_cell_128/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_128/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_128/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_128/addAddV2$while/lstm_cell_128/MatMul:product:0&while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_128/BiasAddBiasAddwhile/lstm_cell_128/add:z:02while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_128/splitSplit,while/lstm_cell_128/split/split_dim:output:0$while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_128/SigmoidSigmoid"while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_1Sigmoid"while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mulMul!while/lstm_cell_128/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_128/ReluRelu"while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_1Mulwhile/lstm_cell_128/Sigmoid:y:0&while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/add_1AddV2while/lstm_cell_128/mul:z:0while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_2Sigmoid"while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_128/Relu_1Reluwhile/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_2Mul!while/lstm_cell_128/Sigmoid_2:y:0(while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_128/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_128/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_128/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_128/BiasAdd/ReadVariableOp*^while/lstm_cell_128/MatMul/ReadVariableOp,^while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_128_biasadd_readvariableop_resource5while_lstm_cell_128_biasadd_readvariableop_resource_0"n
4while_lstm_cell_128_matmul_1_readvariableop_resource6while_lstm_cell_128_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_128_matmul_readvariableop_resource4while_lstm_cell_128_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_128/BiasAdd/ReadVariableOp*while/lstm_cell_128/BiasAdd/ReadVariableOp2V
)while/lstm_cell_128/MatMul/ReadVariableOp)while/lstm_cell_128/MatMul/ReadVariableOp2Z
+while/lstm_cell_128/MatMul_1/ReadVariableOp+while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_410_while_body_777632.
*lstm_410_while_lstm_410_while_loop_counter4
0lstm_410_while_lstm_410_while_maximum_iterations
lstm_410_while_placeholder 
lstm_410_while_placeholder_1 
lstm_410_while_placeholder_2 
lstm_410_while_placeholder_3-
)lstm_410_while_lstm_410_strided_slice_1_0i
elstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0:2(Q
?lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(L
>lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0:(
lstm_410_while_identity
lstm_410_while_identity_1
lstm_410_while_identity_2
lstm_410_while_identity_3
lstm_410_while_identity_4
lstm_410_while_identity_5+
'lstm_410_while_lstm_410_strided_slice_1g
clstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensorM
;lstm_410_while_lstm_cell_128_matmul_readvariableop_resource:2(O
=lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource:
(J
<lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource:(??3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp?2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp?4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp?
@lstm_410/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_410/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensor_0lstm_410_while_placeholderIlstm_410/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp=lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_410/while/lstm_cell_128/MatMulMatMul9lstm_410/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp?lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_410/while/lstm_cell_128/MatMul_1MatMullstm_410_while_placeholder_2<lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_410/while/lstm_cell_128/addAddV2-lstm_410/while/lstm_cell_128/MatMul:product:0/lstm_410/while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp>lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_410/while/lstm_cell_128/BiasAddBiasAdd$lstm_410/while/lstm_cell_128/add:z:0;lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_410/while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_410/while/lstm_cell_128/splitSplit5lstm_410/while/lstm_cell_128/split/split_dim:output:0-lstm_410/while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_410/while/lstm_cell_128/SigmoidSigmoid+lstm_410/while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_410/while/lstm_cell_128/Sigmoid_1Sigmoid+lstm_410/while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_410/while/lstm_cell_128/mulMul*lstm_410/while/lstm_cell_128/Sigmoid_1:y:0lstm_410_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_410/while/lstm_cell_128/ReluRelu+lstm_410/while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_410/while/lstm_cell_128/mul_1Mul(lstm_410/while/lstm_cell_128/Sigmoid:y:0/lstm_410/while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_410/while/lstm_cell_128/add_1AddV2$lstm_410/while/lstm_cell_128/mul:z:0&lstm_410/while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_410/while/lstm_cell_128/Sigmoid_2Sigmoid+lstm_410/while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_410/while/lstm_cell_128/Relu_1Relu&lstm_410/while/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_410/while/lstm_cell_128/mul_2Mul*lstm_410/while/lstm_cell_128/Sigmoid_2:y:01lstm_410/while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_410/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_410_while_placeholder_1lstm_410_while_placeholder&lstm_410/while/lstm_cell_128/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_410/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_410/while/addAddV2lstm_410_while_placeholderlstm_410/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_410/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_410/while/add_1AddV2*lstm_410_while_lstm_410_while_loop_counterlstm_410/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_410/while/IdentityIdentitylstm_410/while/add_1:z:0^lstm_410/while/NoOp*
T0*
_output_shapes
: ?
lstm_410/while/Identity_1Identity0lstm_410_while_lstm_410_while_maximum_iterations^lstm_410/while/NoOp*
T0*
_output_shapes
: t
lstm_410/while/Identity_2Identitylstm_410/while/add:z:0^lstm_410/while/NoOp*
T0*
_output_shapes
: ?
lstm_410/while/Identity_3IdentityClstm_410/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_410/while/NoOp*
T0*
_output_shapes
: ?
lstm_410/while/Identity_4Identity&lstm_410/while/lstm_cell_128/mul_2:z:0^lstm_410/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_410/while/Identity_5Identity&lstm_410/while/lstm_cell_128/add_1:z:0^lstm_410/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_410/while/NoOpNoOp4^lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp3^lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp5^lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_410_while_identity lstm_410/while/Identity:output:0"?
lstm_410_while_identity_1"lstm_410/while/Identity_1:output:0"?
lstm_410_while_identity_2"lstm_410/while/Identity_2:output:0"?
lstm_410_while_identity_3"lstm_410/while/Identity_3:output:0"?
lstm_410_while_identity_4"lstm_410/while/Identity_4:output:0"?
lstm_410_while_identity_5"lstm_410/while/Identity_5:output:0"T
'lstm_410_while_lstm_410_strided_slice_1)lstm_410_while_lstm_410_strided_slice_1_0"~
<lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource>lstm_410_while_lstm_cell_128_biasadd_readvariableop_resource_0"?
=lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource?lstm_410_while_lstm_cell_128_matmul_1_readvariableop_resource_0"|
;lstm_410_while_lstm_cell_128_matmul_readvariableop_resource=lstm_410_while_lstm_cell_128_matmul_readvariableop_resource_0"?
clstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensorelstm_410_while_tensorarrayv2read_tensorlistgetitem_lstm_410_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp3lstm_410/while/lstm_cell_128/BiasAdd/ReadVariableOp2h
2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp2lstm_410/while/lstm_cell_128/MatMul/ReadVariableOp2l
4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp4lstm_410/while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_778110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_778110___redundant_placeholder04
0while_while_cond_778110___redundant_placeholder14
0while_while_cond_778110___redundant_placeholder24
0while_while_cond_778110___redundant_placeholder3
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
?"
?
while_body_774985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_127_775009_0:	d?/
while_lstm_cell_127_775011_0:	2?+
while_lstm_cell_127_775013_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_127_775009:	d?-
while_lstm_cell_127_775011:	2?)
while_lstm_cell_127_775013:	???+while/lstm_cell_127/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_127/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_127_775009_0while_lstm_cell_127_775011_0while_lstm_cell_127_775013_0*
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_774971?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_127/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_127/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_127/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_127/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_127_775009while_lstm_cell_127_775009_0":
while_lstm_cell_127_775011while_lstm_cell_127_775011_0":
while_lstm_cell_127_775013while_lstm_cell_127_775013_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_127/StatefulPartitionedCall+while/lstm_cell_127/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_136_layer_call_fn_776868

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
J__inference_sequential_136_layer_call_and_return_conditional_losses_776667o
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
)__inference_lstm_410_layer_call_fn_778987

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
D__inference_lstm_410_layer_call_and_return_conditional_losses_776053o
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
while_cond_775334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_775334___redundant_placeholder04
0while_while_cond_775334___redundant_placeholder14
0while_while_cond_775334___redundant_placeholder24
0while_while_cond_775334___redundant_placeholder3
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
lstm_409_while_cond_777492.
*lstm_409_while_lstm_409_while_loop_counter4
0lstm_409_while_lstm_409_while_maximum_iterations
lstm_409_while_placeholder 
lstm_409_while_placeholder_1 
lstm_409_while_placeholder_2 
lstm_409_while_placeholder_30
,lstm_409_while_less_lstm_409_strided_slice_1F
Blstm_409_while_lstm_409_while_cond_777492___redundant_placeholder0F
Blstm_409_while_lstm_409_while_cond_777492___redundant_placeholder1F
Blstm_409_while_lstm_409_while_cond_777492___redundant_placeholder2F
Blstm_409_while_lstm_409_while_cond_777492___redundant_placeholder3
lstm_409_while_identity
?
lstm_409/while/LessLesslstm_409_while_placeholder,lstm_409_while_less_lstm_409_strided_slice_1*
T0*
_output_shapes
: ]
lstm_409/while/IdentityIdentitylstm_409/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_409_while_identity lstm_409/while/Identity:output:0*(
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
while_body_778254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_126_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_126_matmul_readvariableop_resource:	?G
4while_lstm_cell_126_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_126_biasadd_readvariableop_resource:	???*while/lstm_cell_126/BiasAdd/ReadVariableOp?)while/lstm_cell_126/MatMul/ReadVariableOp?+while/lstm_cell_126/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_126/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_126/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_126/addAddV2$while/lstm_cell_126/MatMul:product:0&while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_126/BiasAddBiasAddwhile/lstm_cell_126/add:z:02while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_126/splitSplit,while/lstm_cell_126/split/split_dim:output:0$while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_126/SigmoidSigmoid"while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_1Sigmoid"while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mulMul!while/lstm_cell_126/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_126/ReluRelu"while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_1Mulwhile/lstm_cell_126/Sigmoid:y:0&while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/add_1AddV2while/lstm_cell_126/mul:z:0while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_2Sigmoid"while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_126/Relu_1Reluwhile/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_2Mul!while/lstm_cell_126/Sigmoid_2:y:0(while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_126/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_126/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_126/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_126/BiasAdd/ReadVariableOp*^while/lstm_cell_126/MatMul/ReadVariableOp,^while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_126_biasadd_readvariableop_resource5while_lstm_cell_126_biasadd_readvariableop_resource_0"n
4while_lstm_cell_126_matmul_1_readvariableop_resource6while_lstm_cell_126_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_126_matmul_readvariableop_resource4while_lstm_cell_126_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_126/BiasAdd/ReadVariableOp*while/lstm_cell_126/BiasAdd/ReadVariableOp2V
)while/lstm_cell_126/MatMul/ReadVariableOp)while/lstm_cell_126/MatMul/ReadVariableOp2Z
+while/lstm_cell_126/MatMul_1/ReadVariableOp+while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_408_while_cond_777353.
*lstm_408_while_lstm_408_while_loop_counter4
0lstm_408_while_lstm_408_while_maximum_iterations
lstm_408_while_placeholder 
lstm_408_while_placeholder_1 
lstm_408_while_placeholder_2 
lstm_408_while_placeholder_30
,lstm_408_while_less_lstm_408_strided_slice_1F
Blstm_408_while_lstm_408_while_cond_777353___redundant_placeholder0F
Blstm_408_while_lstm_408_while_cond_777353___redundant_placeholder1F
Blstm_408_while_lstm_408_while_cond_777353___redundant_placeholder2F
Blstm_408_while_lstm_408_while_cond_777353___redundant_placeholder3
lstm_408_while_identity
?
lstm_408/while/LessLesslstm_408_while_placeholder,lstm_408_while_less_lstm_408_strided_slice_1*
T0*
_output_shapes
: ]
lstm_408/while/IdentityIdentitylstm_408/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_408_while_identity lstm_408/while/Identity:output:0*(
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775467

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
while_body_779200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_128_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_128_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_128_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_128_matmul_readvariableop_resource:2(F
4while_lstm_cell_128_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_128_biasadd_readvariableop_resource:(??*while/lstm_cell_128/BiasAdd/ReadVariableOp?)while/lstm_cell_128/MatMul/ReadVariableOp?+while/lstm_cell_128/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_128/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_128_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_128/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_128_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_128/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_128/addAddV2$while/lstm_cell_128/MatMul:product:0&while/lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_128_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_128/BiasAddBiasAddwhile/lstm_cell_128/add:z:02while/lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_128/splitSplit,while/lstm_cell_128/split/split_dim:output:0$while/lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_128/SigmoidSigmoid"while/lstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_1Sigmoid"while/lstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mulMul!while/lstm_cell_128/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_128/ReluRelu"while/lstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_1Mulwhile/lstm_cell_128/Sigmoid:y:0&while/lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/add_1AddV2while/lstm_cell_128/mul:z:0while/lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_128/Sigmoid_2Sigmoid"while/lstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_128/Relu_1Reluwhile/lstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_128/mul_2Mul!while/lstm_cell_128/Sigmoid_2:y:0(while/lstm_cell_128/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_128/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_128/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_128/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_128/BiasAdd/ReadVariableOp*^while/lstm_cell_128/MatMul/ReadVariableOp,^while/lstm_cell_128/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_128_biasadd_readvariableop_resource5while_lstm_cell_128_biasadd_readvariableop_resource_0"n
4while_lstm_cell_128_matmul_1_readvariableop_resource6while_lstm_cell_128_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_128_matmul_readvariableop_resource4while_lstm_cell_128_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_128/BiasAdd/ReadVariableOp*while/lstm_cell_128/BiasAdd/ReadVariableOp2V
)while/lstm_cell_128/MatMul/ReadVariableOp)while/lstm_cell_128/MatMul/ReadVariableOp2Z
+while/lstm_cell_128/MatMul_1/ReadVariableOp+while/lstm_cell_128/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_775525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_775525___redundant_placeholder04
0while_while_cond_775525___redundant_placeholder14
0while_while_cond_775525___redundant_placeholder24
0while_while_cond_775525___redundant_placeholder3
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
)sequential_136_lstm_410_while_cond_774463L
Hsequential_136_lstm_410_while_sequential_136_lstm_410_while_loop_counterR
Nsequential_136_lstm_410_while_sequential_136_lstm_410_while_maximum_iterations-
)sequential_136_lstm_410_while_placeholder/
+sequential_136_lstm_410_while_placeholder_1/
+sequential_136_lstm_410_while_placeholder_2/
+sequential_136_lstm_410_while_placeholder_3N
Jsequential_136_lstm_410_while_less_sequential_136_lstm_410_strided_slice_1d
`sequential_136_lstm_410_while_sequential_136_lstm_410_while_cond_774463___redundant_placeholder0d
`sequential_136_lstm_410_while_sequential_136_lstm_410_while_cond_774463___redundant_placeholder1d
`sequential_136_lstm_410_while_sequential_136_lstm_410_while_cond_774463___redundant_placeholder2d
`sequential_136_lstm_410_while_sequential_136_lstm_410_while_cond_774463___redundant_placeholder3*
&sequential_136_lstm_410_while_identity
?
"sequential_136/lstm_410/while/LessLess)sequential_136_lstm_410_while_placeholderJsequential_136_lstm_410_while_less_sequential_136_lstm_410_strided_slice_1*
T0*
_output_shapes
: {
&sequential_136/lstm_410/while/IdentityIdentity&sequential_136/lstm_410/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_136_lstm_410_while_identity/sequential_136/lstm_410/while/Identity:output:0*(
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
while_body_777968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_126_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_126_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_126_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_126_matmul_readvariableop_resource:	?G
4while_lstm_cell_126_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_126_biasadd_readvariableop_resource:	???*while/lstm_cell_126/BiasAdd/ReadVariableOp?)while/lstm_cell_126/MatMul/ReadVariableOp?+while/lstm_cell_126/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_126/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_126_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_126/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_126_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_126/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_126/addAddV2$while/lstm_cell_126/MatMul:product:0&while/lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_126_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_126/BiasAddBiasAddwhile/lstm_cell_126/add:z:02while/lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_126/splitSplit,while/lstm_cell_126/split/split_dim:output:0$while/lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_126/SigmoidSigmoid"while/lstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_1Sigmoid"while/lstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mulMul!while/lstm_cell_126/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_126/ReluRelu"while/lstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_1Mulwhile/lstm_cell_126/Sigmoid:y:0&while/lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/add_1AddV2while/lstm_cell_126/mul:z:0while/lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_126/Sigmoid_2Sigmoid"while/lstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_126/Relu_1Reluwhile/lstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_126/mul_2Mul!while/lstm_cell_126/Sigmoid_2:y:0(while/lstm_cell_126/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_126/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_126/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_126/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_126/BiasAdd/ReadVariableOp*^while/lstm_cell_126/MatMul/ReadVariableOp,^while/lstm_cell_126/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_126_biasadd_readvariableop_resource5while_lstm_cell_126_biasadd_readvariableop_resource_0"n
4while_lstm_cell_126_matmul_1_readvariableop_resource6while_lstm_cell_126_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_126_matmul_readvariableop_resource4while_lstm_cell_126_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_126/BiasAdd/ReadVariableOp*while/lstm_cell_126/BiasAdd/ReadVariableOp2V
)while/lstm_cell_126/MatMul/ReadVariableOp)while/lstm_cell_126/MatMul/ReadVariableOp2Z
+while/lstm_cell_126/MatMul_1/ReadVariableOp+while/lstm_cell_126/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_779485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_779485___redundant_placeholder04
0while_while_cond_779485___redundant_placeholder14
0while_while_cond_779485___redundant_placeholder24
0while_while_cond_779485___redundant_placeholder3
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
*__inference_dense_136_layer_call_fn_779579

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
E__inference_dense_136_layer_call_and_return_conditional_losses_776071o
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_778195

inputs?
,lstm_cell_126_matmul_readvariableop_resource:	?A
.lstm_cell_126_matmul_1_readvariableop_resource:	d?<
-lstm_cell_126_biasadd_readvariableop_resource:	?
identity??$lstm_cell_126/BiasAdd/ReadVariableOp?#lstm_cell_126/MatMul/ReadVariableOp?%lstm_cell_126/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_126/MatMul/ReadVariableOpReadVariableOp,lstm_cell_126_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_126/MatMulMatMulstrided_slice_2:output:0+lstm_cell_126/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_126/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_126_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_126/MatMul_1MatMulzeros:output:0-lstm_cell_126/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_126/addAddV2lstm_cell_126/MatMul:product:0 lstm_cell_126/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_126/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_126_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_126/BiasAddBiasAddlstm_cell_126/add:z:0,lstm_cell_126/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_126/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_126/splitSplit&lstm_cell_126/split/split_dim:output:0lstm_cell_126/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_126/SigmoidSigmoidlstm_cell_126/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_1Sigmoidlstm_cell_126/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_126/mulMullstm_cell_126/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_126/ReluRelulstm_cell_126/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_1Mullstm_cell_126/Sigmoid:y:0 lstm_cell_126/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_126/add_1AddV2lstm_cell_126/mul:z:0lstm_cell_126/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_126/Sigmoid_2Sigmoidlstm_cell_126/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_126/Relu_1Relulstm_cell_126/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_126/mul_2Mullstm_cell_126/Sigmoid_2:y:0"lstm_cell_126/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_126_matmul_readvariableop_resource.lstm_cell_126_matmul_1_readvariableop_resource-lstm_cell_126_biasadd_readvariableop_resource*
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
while_body_778111*
condR
while_cond_778110*K
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
NoOpNoOp%^lstm_cell_126/BiasAdd/ReadVariableOp$^lstm_cell_126/MatMul/ReadVariableOp&^lstm_cell_126/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_126/BiasAdd/ReadVariableOp$lstm_cell_126/BiasAdd/ReadVariableOp2J
#lstm_cell_126/MatMul/ReadVariableOp#lstm_cell_126/MatMul/ReadVariableOp2N
%lstm_cell_126/MatMul_1/ReadVariableOp%lstm_cell_126/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_136_layer_call_and_return_conditional_losses_776071

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
while_cond_774984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_774984___redundant_placeholder04
0while_while_cond_774984___redundant_placeholder14
0while_while_cond_774984___redundant_placeholder24
0while_while_cond_774984___redundant_placeholder3
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_775404

inputs&
lstm_cell_128_775322:2(&
lstm_cell_128_775324:
("
lstm_cell_128_775326:(
identity??%lstm_cell_128/StatefulPartitionedCall?while;
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
%lstm_cell_128/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_128_775322lstm_cell_128_775324lstm_cell_128_775326*
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775321n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_128_775322lstm_cell_128_775324lstm_cell_128_775326*
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
while_body_775335*
condR
while_cond_775334*K
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
NoOpNoOp&^lstm_cell_128/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_128/StatefulPartitionedCall%lstm_cell_128/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
D__inference_lstm_410_layer_call_and_return_conditional_losses_775595

inputs&
lstm_cell_128_775513:2(&
lstm_cell_128_775515:
("
lstm_cell_128_775517:(
identity??%lstm_cell_128/StatefulPartitionedCall?while;
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
%lstm_cell_128/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_128_775513lstm_cell_128_775515lstm_cell_128_775517*
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_775467n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_128_775513lstm_cell_128_775515lstm_cell_128_775517*
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
while_body_775526*
condR
while_cond_775525*K
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
NoOpNoOp&^lstm_cell_128/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_128/StatefulPartitionedCall%lstm_cell_128/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_410_layer_call_and_return_conditional_losses_779570

inputs>
,lstm_cell_128_matmul_readvariableop_resource:2(@
.lstm_cell_128_matmul_1_readvariableop_resource:
(;
-lstm_cell_128_biasadd_readvariableop_resource:(
identity??$lstm_cell_128/BiasAdd/ReadVariableOp?#lstm_cell_128/MatMul/ReadVariableOp?%lstm_cell_128/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_128/MatMul/ReadVariableOpReadVariableOp,lstm_cell_128_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_128/MatMulMatMulstrided_slice_2:output:0+lstm_cell_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_128/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_128_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_128/MatMul_1MatMulzeros:output:0-lstm_cell_128/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_128/addAddV2lstm_cell_128/MatMul:product:0 lstm_cell_128/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_128/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_128_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_128/BiasAddBiasAddlstm_cell_128/add:z:0,lstm_cell_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_128/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_128/splitSplit&lstm_cell_128/split/split_dim:output:0lstm_cell_128/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_128/SigmoidSigmoidlstm_cell_128/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_1Sigmoidlstm_cell_128/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_128/mulMullstm_cell_128/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_128/ReluRelulstm_cell_128/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_1Mullstm_cell_128/Sigmoid:y:0 lstm_cell_128/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_128/add_1AddV2lstm_cell_128/mul:z:0lstm_cell_128/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_128/Sigmoid_2Sigmoidlstm_cell_128/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_128/Relu_1Relulstm_cell_128/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_128/mul_2Mullstm_cell_128/Sigmoid_2:y:0"lstm_cell_128/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_128_matmul_readvariableop_resource.lstm_cell_128_matmul_1_readvariableop_resource-lstm_cell_128_biasadd_readvariableop_resource*
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
while_body_779486*
condR
while_cond_779485*K
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
NoOpNoOp%^lstm_cell_128/BiasAdd/ReadVariableOp$^lstm_cell_128/MatMul/ReadVariableOp&^lstm_cell_128/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_128/BiasAdd/ReadVariableOp$lstm_cell_128/BiasAdd/ReadVariableOp2J
#lstm_cell_128/MatMul/ReadVariableOp#lstm_cell_128/MatMul/ReadVariableOp2N
%lstm_cell_128/MatMul_1/ReadVariableOp%lstm_cell_128/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_779199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_779199___redundant_placeholder04
0while_while_cond_779199___redundant_placeholder14
0while_while_cond_779199___redundant_placeholder24
0while_while_cond_779199___redundant_placeholder3
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
/__inference_sequential_136_layer_call_fn_776103
lstm_408_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_408_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_136_layer_call_and_return_conditional_losses_776078o
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
_user_specified_namelstm_408_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_408_input;
 serving_default_lstm_408_input:0?????????=
	dense_1360
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
2dense_136/kernel
:2dense_136/bias
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
0:.	?2lstm_408/lstm_cell_408/kernel
::8	d?2'lstm_408/lstm_cell_408/recurrent_kernel
*:(?2lstm_408/lstm_cell_408/bias
0:.	d?2lstm_409/lstm_cell_409/kernel
::8	2?2'lstm_409/lstm_cell_409/recurrent_kernel
*:(?2lstm_409/lstm_cell_409/bias
/:-2(2lstm_410/lstm_cell_410/kernel
9:7
(2'lstm_410/lstm_cell_410/recurrent_kernel
):'(2lstm_410/lstm_cell_410/bias
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
2Adam/dense_136/kernel/m
!:2Adam/dense_136/bias/m
5:3	?2$Adam/lstm_408/lstm_cell_408/kernel/m
?:=	d?2.Adam/lstm_408/lstm_cell_408/recurrent_kernel/m
/:-?2"Adam/lstm_408/lstm_cell_408/bias/m
5:3	d?2$Adam/lstm_409/lstm_cell_409/kernel/m
?:=	2?2.Adam/lstm_409/lstm_cell_409/recurrent_kernel/m
/:-?2"Adam/lstm_409/lstm_cell_409/bias/m
4:22(2$Adam/lstm_410/lstm_cell_410/kernel/m
>:<
(2.Adam/lstm_410/lstm_cell_410/recurrent_kernel/m
.:,(2"Adam/lstm_410/lstm_cell_410/bias/m
':%
2Adam/dense_136/kernel/v
!:2Adam/dense_136/bias/v
5:3	?2$Adam/lstm_408/lstm_cell_408/kernel/v
?:=	d?2.Adam/lstm_408/lstm_cell_408/recurrent_kernel/v
/:-?2"Adam/lstm_408/lstm_cell_408/bias/v
5:3	d?2$Adam/lstm_409/lstm_cell_409/kernel/v
?:=	2?2.Adam/lstm_409/lstm_cell_409/recurrent_kernel/v
/:-?2"Adam/lstm_409/lstm_cell_409/bias/v
4:22(2$Adam/lstm_410/lstm_cell_410/kernel/v
>:<
(2.Adam/lstm_410/lstm_cell_410/recurrent_kernel/v
.:,(2"Adam/lstm_410/lstm_cell_410/bias/v
?2?
/__inference_sequential_136_layer_call_fn_776103
/__inference_sequential_136_layer_call_fn_776841
/__inference_sequential_136_layer_call_fn_776868
/__inference_sequential_136_layer_call_fn_776719?
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
J__inference_sequential_136_layer_call_and_return_conditional_losses_777295
J__inference_sequential_136_layer_call_and_return_conditional_losses_777722
J__inference_sequential_136_layer_call_and_return_conditional_losses_776749
J__inference_sequential_136_layer_call_and_return_conditional_losses_776779?
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
!__inference__wrapped_model_774554lstm_408_input"?
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
)__inference_lstm_408_layer_call_fn_777733
)__inference_lstm_408_layer_call_fn_777744
)__inference_lstm_408_layer_call_fn_777755
)__inference_lstm_408_layer_call_fn_777766?
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_777909
D__inference_lstm_408_layer_call_and_return_conditional_losses_778052
D__inference_lstm_408_layer_call_and_return_conditional_losses_778195
D__inference_lstm_408_layer_call_and_return_conditional_losses_778338?
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
)__inference_lstm_409_layer_call_fn_778349
)__inference_lstm_409_layer_call_fn_778360
)__inference_lstm_409_layer_call_fn_778371
)__inference_lstm_409_layer_call_fn_778382?
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778525
D__inference_lstm_409_layer_call_and_return_conditional_losses_778668
D__inference_lstm_409_layer_call_and_return_conditional_losses_778811
D__inference_lstm_409_layer_call_and_return_conditional_losses_778954?
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
)__inference_lstm_410_layer_call_fn_778965
)__inference_lstm_410_layer_call_fn_778976
)__inference_lstm_410_layer_call_fn_778987
)__inference_lstm_410_layer_call_fn_778998?
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_779141
D__inference_lstm_410_layer_call_and_return_conditional_losses_779284
D__inference_lstm_410_layer_call_and_return_conditional_losses_779427
D__inference_lstm_410_layer_call_and_return_conditional_losses_779570?
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
*__inference_dense_136_layer_call_fn_779579?
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
E__inference_dense_136_layer_call_and_return_conditional_losses_779589?
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
$__inference_signature_wrapper_776814lstm_408_input"?
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
.__inference_lstm_cell_126_layer_call_fn_779606
.__inference_lstm_cell_126_layer_call_fn_779623?
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_779655
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_779687?
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
.__inference_lstm_cell_127_layer_call_fn_779704
.__inference_lstm_cell_127_layer_call_fn_779721?
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_779753
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_779785?
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
.__inference_lstm_cell_128_layer_call_fn_779802
.__inference_lstm_cell_128_layer_call_fn_779819?
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_779851
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_779883?
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
!__inference__wrapped_model_774554?-./012345!";?8
1?.
,?)
lstm_408_input?????????
? "5?2
0
	dense_136#? 
	dense_136??????????
E__inference_dense_136_layer_call_and_return_conditional_losses_779589\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_136_layer_call_fn_779579O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_408_layer_call_and_return_conditional_losses_777909?-./O?L
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_778052?-./O?L
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_778195q-./??<
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
D__inference_lstm_408_layer_call_and_return_conditional_losses_778338q-./??<
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
)__inference_lstm_408_layer_call_fn_777733}-./O?L
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
)__inference_lstm_408_layer_call_fn_777744}-./O?L
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
)__inference_lstm_408_layer_call_fn_777755d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_408_layer_call_fn_777766d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_409_layer_call_and_return_conditional_losses_778525?012O?L
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778668?012O?L
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778811q012??<
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
D__inference_lstm_409_layer_call_and_return_conditional_losses_778954q012??<
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
)__inference_lstm_409_layer_call_fn_778349}012O?L
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
)__inference_lstm_409_layer_call_fn_778360}012O?L
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
)__inference_lstm_409_layer_call_fn_778371d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_409_layer_call_fn_778382d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_410_layer_call_and_return_conditional_losses_779141}345O?L
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_779284}345O?L
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_779427m345??<
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
D__inference_lstm_410_layer_call_and_return_conditional_losses_779570m345??<
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
)__inference_lstm_410_layer_call_fn_778965p345O?L
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
)__inference_lstm_410_layer_call_fn_778976p345O?L
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
)__inference_lstm_410_layer_call_fn_778987`345??<
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
)__inference_lstm_410_layer_call_fn_778998`345??<
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_779655?-./??}
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
I__inference_lstm_cell_126_layer_call_and_return_conditional_losses_779687?-./??}
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
.__inference_lstm_cell_126_layer_call_fn_779606?-./??}
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
.__inference_lstm_cell_126_layer_call_fn_779623?-./??}
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_779753?012??}
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
I__inference_lstm_cell_127_layer_call_and_return_conditional_losses_779785?012??}
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
.__inference_lstm_cell_127_layer_call_fn_779704?012??}
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
.__inference_lstm_cell_127_layer_call_fn_779721?012??}
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_779851?345??}
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
I__inference_lstm_cell_128_layer_call_and_return_conditional_losses_779883?345??}
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
.__inference_lstm_cell_128_layer_call_fn_779802?345??}
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
.__inference_lstm_cell_128_layer_call_fn_779819?345??}
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
J__inference_sequential_136_layer_call_and_return_conditional_losses_776749y-./012345!"C?@
9?6
,?)
lstm_408_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_136_layer_call_and_return_conditional_losses_776779y-./012345!"C?@
9?6
,?)
lstm_408_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_136_layer_call_and_return_conditional_losses_777295q-./012345!";?8
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
J__inference_sequential_136_layer_call_and_return_conditional_losses_777722q-./012345!";?8
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
/__inference_sequential_136_layer_call_fn_776103l-./012345!"C?@
9?6
,?)
lstm_408_input?????????
p 

 
? "???????????
/__inference_sequential_136_layer_call_fn_776719l-./012345!"C?@
9?6
,?)
lstm_408_input?????????
p

 
? "???????????
/__inference_sequential_136_layer_call_fn_776841d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_136_layer_call_fn_776868d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_776814?-./012345!"M?J
? 
C?@
>
lstm_408_input,?)
lstm_408_input?????????"5?2
0
	dense_136#? 
	dense_136?????????