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
dense_157/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_157/kernel
u
$dense_157/kernel/Read/ReadVariableOpReadVariableOpdense_157/kernel*
_output_shapes

:
*
dtype0
t
dense_157/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_157/bias
m
"dense_157/bias/Read/ReadVariableOpReadVariableOpdense_157/bias*
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
lstm_471/lstm_cell_471/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_471/lstm_cell_471/kernel
?
1lstm_471/lstm_cell_471/kernel/Read/ReadVariableOpReadVariableOplstm_471/lstm_cell_471/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_471/lstm_cell_471/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_471/lstm_cell_471/recurrent_kernel
?
;lstm_471/lstm_cell_471/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_471/lstm_cell_471/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_471/lstm_cell_471/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_471/lstm_cell_471/bias
?
/lstm_471/lstm_cell_471/bias/Read/ReadVariableOpReadVariableOplstm_471/lstm_cell_471/bias*
_output_shapes	
:?*
dtype0
?
lstm_472/lstm_cell_472/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_472/lstm_cell_472/kernel
?
1lstm_472/lstm_cell_472/kernel/Read/ReadVariableOpReadVariableOplstm_472/lstm_cell_472/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_472/lstm_cell_472/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_472/lstm_cell_472/recurrent_kernel
?
;lstm_472/lstm_cell_472/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_472/lstm_cell_472/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_472/lstm_cell_472/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_472/lstm_cell_472/bias
?
/lstm_472/lstm_cell_472/bias/Read/ReadVariableOpReadVariableOplstm_472/lstm_cell_472/bias*
_output_shapes	
:?*
dtype0
?
lstm_473/lstm_cell_473/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_473/lstm_cell_473/kernel
?
1lstm_473/lstm_cell_473/kernel/Read/ReadVariableOpReadVariableOplstm_473/lstm_cell_473/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_473/lstm_cell_473/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_473/lstm_cell_473/recurrent_kernel
?
;lstm_473/lstm_cell_473/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_473/lstm_cell_473/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_473/lstm_cell_473/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_473/lstm_cell_473/bias
?
/lstm_473/lstm_cell_473/bias/Read/ReadVariableOpReadVariableOplstm_473/lstm_cell_473/bias*
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
Adam/dense_157/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_157/kernel/m
?
+Adam/dense_157/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_157/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_157/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_157/bias/m
{
)Adam/dense_157/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_157/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_471/lstm_cell_471/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_471/lstm_cell_471/kernel/m
?
8Adam/lstm_471/lstm_cell_471/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_471/lstm_cell_471/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_471/lstm_cell_471/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_471/lstm_cell_471/recurrent_kernel/m
?
BAdam/lstm_471/lstm_cell_471/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_471/lstm_cell_471/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_471/lstm_cell_471/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_471/lstm_cell_471/bias/m
?
6Adam/lstm_471/lstm_cell_471/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_471/lstm_cell_471/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_472/lstm_cell_472/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_472/lstm_cell_472/kernel/m
?
8Adam/lstm_472/lstm_cell_472/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_472/lstm_cell_472/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_472/lstm_cell_472/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_472/lstm_cell_472/recurrent_kernel/m
?
BAdam/lstm_472/lstm_cell_472/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_472/lstm_cell_472/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_472/lstm_cell_472/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_472/lstm_cell_472/bias/m
?
6Adam/lstm_472/lstm_cell_472/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_472/lstm_cell_472/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_473/lstm_cell_473/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_473/lstm_cell_473/kernel/m
?
8Adam/lstm_473/lstm_cell_473/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_473/lstm_cell_473/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_473/lstm_cell_473/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_473/lstm_cell_473/recurrent_kernel/m
?
BAdam/lstm_473/lstm_cell_473/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_473/lstm_cell_473/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_473/lstm_cell_473/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_473/lstm_cell_473/bias/m
?
6Adam/lstm_473/lstm_cell_473/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_473/lstm_cell_473/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_157/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_157/kernel/v
?
+Adam/dense_157/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_157/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_157/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_157/bias/v
{
)Adam/dense_157/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_157/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_471/lstm_cell_471/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_471/lstm_cell_471/kernel/v
?
8Adam/lstm_471/lstm_cell_471/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_471/lstm_cell_471/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_471/lstm_cell_471/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_471/lstm_cell_471/recurrent_kernel/v
?
BAdam/lstm_471/lstm_cell_471/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_471/lstm_cell_471/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_471/lstm_cell_471/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_471/lstm_cell_471/bias/v
?
6Adam/lstm_471/lstm_cell_471/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_471/lstm_cell_471/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_472/lstm_cell_472/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_472/lstm_cell_472/kernel/v
?
8Adam/lstm_472/lstm_cell_472/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_472/lstm_cell_472/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_472/lstm_cell_472/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_472/lstm_cell_472/recurrent_kernel/v
?
BAdam/lstm_472/lstm_cell_472/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_472/lstm_cell_472/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_472/lstm_cell_472/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_472/lstm_cell_472/bias/v
?
6Adam/lstm_472/lstm_cell_472/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_472/lstm_cell_472/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_473/lstm_cell_473/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_473/lstm_cell_473/kernel/v
?
8Adam/lstm_473/lstm_cell_473/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_473/lstm_cell_473/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_473/lstm_cell_473/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_473/lstm_cell_473/recurrent_kernel/v
?
BAdam/lstm_473/lstm_cell_473/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_473/lstm_cell_473/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_473/lstm_cell_473/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_473/lstm_cell_473/bias/v
?
6Adam/lstm_473/lstm_cell_473/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_473/lstm_cell_473/bias/v*
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
VARIABLE_VALUEdense_157/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_157/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_471/lstm_cell_471/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_471/lstm_cell_471/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_471/lstm_cell_471/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_472/lstm_cell_472/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_472/lstm_cell_472/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_472/lstm_cell_472/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_473/lstm_cell_473/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_473/lstm_cell_473/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_473/lstm_cell_473/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_157/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_157/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_471/lstm_cell_471/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_471/lstm_cell_471/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_471/lstm_cell_471/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_472/lstm_cell_472/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_472/lstm_cell_472/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_472/lstm_cell_472/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_473/lstm_cell_473/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_473/lstm_cell_473/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_473/lstm_cell_473/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_157/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_157/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_471/lstm_cell_471/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_471/lstm_cell_471/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_471/lstm_cell_471/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_472/lstm_cell_472/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_472/lstm_cell_472/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_472/lstm_cell_472/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_473/lstm_cell_473/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_473/lstm_cell_473/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_473/lstm_cell_473/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_471_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_471_inputlstm_471/lstm_cell_471/kernel'lstm_471/lstm_cell_471/recurrent_kernellstm_471/lstm_cell_471/biaslstm_472/lstm_cell_472/kernel'lstm_472/lstm_cell_472/recurrent_kernellstm_472/lstm_cell_472/biaslstm_473/lstm_cell_473/kernel'lstm_473/lstm_cell_473/recurrent_kernellstm_473/lstm_cell_473/biasdense_157/kerneldense_157/bias*
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
%__inference_signature_wrapper_1811162
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_157/kernel/Read/ReadVariableOp"dense_157/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_471/lstm_cell_471/kernel/Read/ReadVariableOp;lstm_471/lstm_cell_471/recurrent_kernel/Read/ReadVariableOp/lstm_471/lstm_cell_471/bias/Read/ReadVariableOp1lstm_472/lstm_cell_472/kernel/Read/ReadVariableOp;lstm_472/lstm_cell_472/recurrent_kernel/Read/ReadVariableOp/lstm_472/lstm_cell_472/bias/Read/ReadVariableOp1lstm_473/lstm_cell_473/kernel/Read/ReadVariableOp;lstm_473/lstm_cell_473/recurrent_kernel/Read/ReadVariableOp/lstm_473/lstm_cell_473/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_157/kernel/m/Read/ReadVariableOp)Adam/dense_157/bias/m/Read/ReadVariableOp8Adam/lstm_471/lstm_cell_471/kernel/m/Read/ReadVariableOpBAdam/lstm_471/lstm_cell_471/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_471/lstm_cell_471/bias/m/Read/ReadVariableOp8Adam/lstm_472/lstm_cell_472/kernel/m/Read/ReadVariableOpBAdam/lstm_472/lstm_cell_472/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_472/lstm_cell_472/bias/m/Read/ReadVariableOp8Adam/lstm_473/lstm_cell_473/kernel/m/Read/ReadVariableOpBAdam/lstm_473/lstm_cell_473/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_473/lstm_cell_473/bias/m/Read/ReadVariableOp+Adam/dense_157/kernel/v/Read/ReadVariableOp)Adam/dense_157/bias/v/Read/ReadVariableOp8Adam/lstm_471/lstm_cell_471/kernel/v/Read/ReadVariableOpBAdam/lstm_471/lstm_cell_471/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_471/lstm_cell_471/bias/v/Read/ReadVariableOp8Adam/lstm_472/lstm_cell_472/kernel/v/Read/ReadVariableOpBAdam/lstm_472/lstm_cell_472/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_472/lstm_cell_472/bias/v/Read/ReadVariableOp8Adam/lstm_473/lstm_cell_473/kernel/v/Read/ReadVariableOpBAdam/lstm_473/lstm_cell_473/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_473/lstm_cell_473/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1814374
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_157/kerneldense_157/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_471/lstm_cell_471/kernel'lstm_471/lstm_cell_471/recurrent_kernellstm_471/lstm_cell_471/biaslstm_472/lstm_cell_472/kernel'lstm_472/lstm_cell_472/recurrent_kernellstm_472/lstm_cell_472/biaslstm_473/lstm_cell_473/kernel'lstm_473/lstm_cell_473/recurrent_kernellstm_473/lstm_cell_473/biastotalcountAdam/dense_157/kernel/mAdam/dense_157/bias/m$Adam/lstm_471/lstm_cell_471/kernel/m.Adam/lstm_471/lstm_cell_471/recurrent_kernel/m"Adam/lstm_471/lstm_cell_471/bias/m$Adam/lstm_472/lstm_cell_472/kernel/m.Adam/lstm_472/lstm_cell_472/recurrent_kernel/m"Adam/lstm_472/lstm_cell_472/bias/m$Adam/lstm_473/lstm_cell_473/kernel/m.Adam/lstm_473/lstm_cell_473/recurrent_kernel/m"Adam/lstm_473/lstm_cell_473/bias/mAdam/dense_157/kernel/vAdam/dense_157/bias/v$Adam/lstm_471/lstm_cell_471/kernel/v.Adam/lstm_471/lstm_cell_471/recurrent_kernel/v"Adam/lstm_471/lstm_cell_471/bias/v$Adam/lstm_472/lstm_cell_472/kernel/v.Adam/lstm_472/lstm_cell_472/recurrent_kernel/v"Adam/lstm_472/lstm_cell_472/bias/v$Adam/lstm_473/lstm_cell_473/kernel/v.Adam/lstm_473/lstm_cell_473/recurrent_kernel/v"Adam/lstm_473/lstm_cell_473/bias/v*4
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
#__inference__traced_restore_1814504??+
?
?
while_cond_1813690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1813690___redundant_placeholder05
1while_while_cond_1813690___redundant_placeholder15
1while_while_cond_1813690___redundant_placeholder25
1while_while_cond_1813690___redundant_placeholder3
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
while_cond_1812315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1812315___redundant_placeholder05
1while_while_cond_1812315___redundant_placeholder15
1while_while_cond_1812315___redundant_placeholder25
1while_while_cond_1812315___redundant_placeholder3
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
*__inference_lstm_472_layer_call_fn_1812708
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1809593|
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
?#
?
while_body_1809174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_297_1809198_0:	?0
while_lstm_cell_297_1809200_0:	d?,
while_lstm_cell_297_1809202_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_297_1809198:	?.
while_lstm_cell_297_1809200:	d?*
while_lstm_cell_297_1809202:	???+while/lstm_cell_297/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_297/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_297_1809198_0while_lstm_cell_297_1809200_0while_lstm_cell_297_1809202_0*
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1809115?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_297/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_297/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_297/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_297/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_297_1809198while_lstm_cell_297_1809198_0"<
while_lstm_cell_297_1809200while_lstm_cell_297_1809200_0"<
while_lstm_cell_297_1809202while_lstm_cell_297_1809202_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_297/StatefulPartitionedCall+while/lstm_cell_297/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_299_layer_call_fn_1814167

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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809815o
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
while_cond_1809873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1809873___redundant_placeholder05
1while_while_cond_1809873___redundant_placeholder15
1while_while_cond_1809873___redundant_placeholder25
1while_while_cond_1809873___redundant_placeholder3
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812543

inputs?
,lstm_cell_297_matmul_readvariableop_resource:	?A
.lstm_cell_297_matmul_1_readvariableop_resource:	d?<
-lstm_cell_297_biasadd_readvariableop_resource:	?
identity??$lstm_cell_297/BiasAdd/ReadVariableOp?#lstm_cell_297/MatMul/ReadVariableOp?%lstm_cell_297/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_297/MatMul/ReadVariableOpReadVariableOp,lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_297/MatMulMatMulstrided_slice_2:output:0+lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_297/MatMul_1MatMulzeros:output:0-lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_297/addAddV2lstm_cell_297/MatMul:product:0 lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_297/BiasAddBiasAddlstm_cell_297/add:z:0,lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_297/splitSplit&lstm_cell_297/split/split_dim:output:0lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_297/SigmoidSigmoidlstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_1Sigmoidlstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_297/mulMullstm_cell_297/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_297/ReluRelulstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_1Mullstm_cell_297/Sigmoid:y:0 lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_297/add_1AddV2lstm_cell_297/mul:z:0lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_2Sigmoidlstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_297/Relu_1Relulstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_2Mullstm_cell_297/Sigmoid_2:y:0"lstm_cell_297/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_297_matmul_readvariableop_resource.lstm_cell_297_matmul_1_readvariableop_resource-lstm_cell_297_biasadd_readvariableop_resource*
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
while_body_1812459*
condR
while_cond_1812458*K
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
NoOpNoOp%^lstm_cell_297/BiasAdd/ReadVariableOp$^lstm_cell_297/MatMul/ReadVariableOp&^lstm_cell_297/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_297/BiasAdd/ReadVariableOp$lstm_cell_297/BiasAdd/ReadVariableOp2J
#lstm_cell_297/MatMul/ReadVariableOp#lstm_cell_297/MatMul/ReadVariableOp2N
%lstm_cell_297/MatMul_1/ReadVariableOp%lstm_cell_297/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1808969

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
?K
?
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812257
inputs_0?
,lstm_cell_297_matmul_readvariableop_resource:	?A
.lstm_cell_297_matmul_1_readvariableop_resource:	d?<
-lstm_cell_297_biasadd_readvariableop_resource:	?
identity??$lstm_cell_297/BiasAdd/ReadVariableOp?#lstm_cell_297/MatMul/ReadVariableOp?%lstm_cell_297/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_297/MatMul/ReadVariableOpReadVariableOp,lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_297/MatMulMatMulstrided_slice_2:output:0+lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_297/MatMul_1MatMulzeros:output:0-lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_297/addAddV2lstm_cell_297/MatMul:product:0 lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_297/BiasAddBiasAddlstm_cell_297/add:z:0,lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_297/splitSplit&lstm_cell_297/split/split_dim:output:0lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_297/SigmoidSigmoidlstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_1Sigmoidlstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_297/mulMullstm_cell_297/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_297/ReluRelulstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_1Mullstm_cell_297/Sigmoid:y:0 lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_297/add_1AddV2lstm_cell_297/mul:z:0lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_2Sigmoidlstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_297/Relu_1Relulstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_2Mullstm_cell_297/Sigmoid_2:y:0"lstm_cell_297/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_297_matmul_readvariableop_resource.lstm_cell_297_matmul_1_readvariableop_resource-lstm_cell_297_biasadd_readvariableop_resource*
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
while_body_1812173*
condR
while_cond_1812172*K
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
NoOpNoOp%^lstm_cell_297/BiasAdd/ReadVariableOp$^lstm_cell_297/MatMul/ReadVariableOp&^lstm_cell_297/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_297/BiasAdd/ReadVariableOp$lstm_cell_297/BiasAdd/ReadVariableOp2J
#lstm_cell_297/MatMul/ReadVariableOp#lstm_cell_297/MatMul/ReadVariableOp2N
%lstm_cell_297/MatMul_1/ReadVariableOp%lstm_cell_297/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_471_layer_call_fn_1812092
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1809243|
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
0__inference_sequential_157_layer_call_fn_1811067
lstm_471_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_471_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811015o
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
_user_specified_namelstm_471_input
?8
?
while_body_1812459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_297_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_297_matmul_readvariableop_resource:	?G
4while_lstm_cell_297_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_297_biasadd_readvariableop_resource:	???*while/lstm_cell_297/BiasAdd/ReadVariableOp?)while/lstm_cell_297/MatMul/ReadVariableOp?+while/lstm_cell_297/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_297/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_297/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_297/addAddV2$while/lstm_cell_297/MatMul:product:0&while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_297/BiasAddBiasAddwhile/lstm_cell_297/add:z:02while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_297/splitSplit,while/lstm_cell_297/split/split_dim:output:0$while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_297/SigmoidSigmoid"while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_1Sigmoid"while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mulMul!while/lstm_cell_297/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_297/ReluRelu"while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_1Mulwhile/lstm_cell_297/Sigmoid:y:0&while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/add_1AddV2while/lstm_cell_297/mul:z:0while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_2Sigmoid"while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_297/Relu_1Reluwhile/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_2Mul!while/lstm_cell_297/Sigmoid_2:y:0(while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_297/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_297/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_297/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_297/BiasAdd/ReadVariableOp*^while/lstm_cell_297/MatMul/ReadVariableOp,^while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_297_biasadd_readvariableop_resource5while_lstm_cell_297_biasadd_readvariableop_resource_0"n
4while_lstm_cell_297_matmul_1_readvariableop_resource6while_lstm_cell_297_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_297_matmul_readvariableop_resource4while_lstm_cell_297_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_297/BiasAdd/ReadVariableOp*while/lstm_cell_297/BiasAdd/ReadVariableOp2V
)while/lstm_cell_297/MatMul/ReadVariableOp)while/lstm_cell_297/MatMul/ReadVariableOp2Z
+while/lstm_cell_297/MatMul_1/ReadVariableOp+while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813632
inputs_0>
,lstm_cell_299_matmul_readvariableop_resource:2(@
.lstm_cell_299_matmul_1_readvariableop_resource:
(;
-lstm_cell_299_biasadd_readvariableop_resource:(
identity??$lstm_cell_299/BiasAdd/ReadVariableOp?#lstm_cell_299/MatMul/ReadVariableOp?%lstm_cell_299/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_299/MatMul/ReadVariableOpReadVariableOp,lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_299/MatMulMatMulstrided_slice_2:output:0+lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_299/MatMul_1MatMulzeros:output:0-lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_299/addAddV2lstm_cell_299/MatMul:product:0 lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_299/BiasAddBiasAddlstm_cell_299/add:z:0,lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_299/splitSplit&lstm_cell_299/split/split_dim:output:0lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_299/SigmoidSigmoidlstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_1Sigmoidlstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_299/mulMullstm_cell_299/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_299/ReluRelulstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_1Mullstm_cell_299/Sigmoid:y:0 lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_299/add_1AddV2lstm_cell_299/mul:z:0lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_2Sigmoidlstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_299/Relu_1Relulstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_2Mullstm_cell_299/Sigmoid_2:y:0"lstm_cell_299/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_299_matmul_readvariableop_resource.lstm_cell_299_matmul_1_readvariableop_resource-lstm_cell_299_biasadd_readvariableop_resource*
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
while_body_1813548*
condR
while_cond_1813547*K
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
NoOpNoOp%^lstm_cell_299/BiasAdd/ReadVariableOp$^lstm_cell_299/MatMul/ReadVariableOp&^lstm_cell_299/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_299/BiasAdd/ReadVariableOp$lstm_cell_299/BiasAdd/ReadVariableOp2J
#lstm_cell_299/MatMul/ReadVariableOp#lstm_cell_299/MatMul/ReadVariableOp2N
%lstm_cell_299/MatMul_1/ReadVariableOp%lstm_cell_299/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1810697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1810697___redundant_placeholder05
1while_while_cond_1810697___redundant_placeholder15
1while_while_cond_1810697___redundant_placeholder25
1while_while_cond_1810697___redundant_placeholder3
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
/__inference_lstm_cell_298_layer_call_fn_1814069

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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809465o
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
?
?
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1814101

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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813489
inputs_0>
,lstm_cell_299_matmul_readvariableop_resource:2(@
.lstm_cell_299_matmul_1_readvariableop_resource:
(;
-lstm_cell_299_biasadd_readvariableop_resource:(
identity??$lstm_cell_299/BiasAdd/ReadVariableOp?#lstm_cell_299/MatMul/ReadVariableOp?%lstm_cell_299/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_299/MatMul/ReadVariableOpReadVariableOp,lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_299/MatMulMatMulstrided_slice_2:output:0+lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_299/MatMul_1MatMulzeros:output:0-lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_299/addAddV2lstm_cell_299/MatMul:product:0 lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_299/BiasAddBiasAddlstm_cell_299/add:z:0,lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_299/splitSplit&lstm_cell_299/split/split_dim:output:0lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_299/SigmoidSigmoidlstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_1Sigmoidlstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_299/mulMullstm_cell_299/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_299/ReluRelulstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_1Mullstm_cell_299/Sigmoid:y:0 lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_299/add_1AddV2lstm_cell_299/mul:z:0lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_2Sigmoidlstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_299/Relu_1Relulstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_2Mullstm_cell_299/Sigmoid_2:y:0"lstm_cell_299/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_299_matmul_readvariableop_resource.lstm_cell_299_matmul_1_readvariableop_resource-lstm_cell_299_biasadd_readvariableop_resource*
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
while_body_1813405*
condR
while_cond_1813404*K
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
NoOpNoOp%^lstm_cell_299/BiasAdd/ReadVariableOp$^lstm_cell_299/MatMul/ReadVariableOp&^lstm_cell_299/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_299/BiasAdd/ReadVariableOp$lstm_cell_299/BiasAdd/ReadVariableOp2J
#lstm_cell_299/MatMul/ReadVariableOp#lstm_cell_299/MatMul/ReadVariableOp2N
%lstm_cell_299/MatMul_1/ReadVariableOp%lstm_cell_299/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_1809524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_298_1809548_0:	d?0
while_lstm_cell_298_1809550_0:	2?,
while_lstm_cell_298_1809552_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_298_1809548:	d?.
while_lstm_cell_298_1809550:	2?*
while_lstm_cell_298_1809552:	???+while/lstm_cell_298/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_298/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_298_1809548_0while_lstm_cell_298_1809550_0while_lstm_cell_298_1809552_0*
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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809465?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_298/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_298/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_298/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_298/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_298_1809548while_lstm_cell_298_1809548_0"<
while_lstm_cell_298_1809550while_lstm_cell_298_1809550_0"<
while_lstm_cell_298_1809552while_lstm_cell_298_1809552_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_298/StatefulPartitionedCall+while/lstm_cell_298/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_473_layer_call_fn_1813335

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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810401o
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1809752

inputs'
lstm_cell_299_1809670:2('
lstm_cell_299_1809672:
(#
lstm_cell_299_1809674:(
identity??%lstm_cell_299/StatefulPartitionedCall?while;
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
%lstm_cell_299/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_299_1809670lstm_cell_299_1809672lstm_cell_299_1809674*
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809669n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_299_1809670lstm_cell_299_1809672lstm_cell_299_1809674*
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
while_body_1809683*
condR
while_cond_1809682*K
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
NoOpNoOp&^lstm_cell_299/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_299/StatefulPartitionedCall%lstm_cell_299/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1814133

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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813159

inputs?
,lstm_cell_298_matmul_readvariableop_resource:	d?A
.lstm_cell_298_matmul_1_readvariableop_resource:	2?<
-lstm_cell_298_biasadd_readvariableop_resource:	?
identity??$lstm_cell_298/BiasAdd/ReadVariableOp?#lstm_cell_298/MatMul/ReadVariableOp?%lstm_cell_298/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_298/MatMul/ReadVariableOpReadVariableOp,lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_298/MatMulMatMulstrided_slice_2:output:0+lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_298/MatMul_1MatMulzeros:output:0-lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_298/addAddV2lstm_cell_298/MatMul:product:0 lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_298/BiasAddBiasAddlstm_cell_298/add:z:0,lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_298/splitSplit&lstm_cell_298/split/split_dim:output:0lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_298/SigmoidSigmoidlstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_1Sigmoidlstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_298/mulMullstm_cell_298/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_298/ReluRelulstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_1Mullstm_cell_298/Sigmoid:y:0 lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_298/add_1AddV2lstm_cell_298/mul:z:0lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_2Sigmoidlstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_298/Relu_1Relulstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_2Mullstm_cell_298/Sigmoid_2:y:0"lstm_cell_298/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_298_matmul_readvariableop_resource.lstm_cell_298_matmul_1_readvariableop_resource-lstm_cell_298_biasadd_readvariableop_resource*
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
while_body_1813075*
condR
while_cond_1813074*K
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
NoOpNoOp%^lstm_cell_298/BiasAdd/ReadVariableOp$^lstm_cell_298/MatMul/ReadVariableOp&^lstm_cell_298/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_298/BiasAdd/ReadVariableOp$lstm_cell_298/BiasAdd/ReadVariableOp2J
#lstm_cell_298/MatMul/ReadVariableOp#lstm_cell_298/MatMul/ReadVariableOp2N
%lstm_cell_298/MatMul_1/ReadVariableOp%lstm_cell_298/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1810166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1810166___redundant_placeholder05
1while_while_cond_1810166___redundant_placeholder15
1while_while_cond_1810166___redundant_placeholder25
1while_while_cond_1810166___redundant_placeholder3
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809815

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
??
?
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811643

inputsH
5lstm_471_lstm_cell_297_matmul_readvariableop_resource:	?J
7lstm_471_lstm_cell_297_matmul_1_readvariableop_resource:	d?E
6lstm_471_lstm_cell_297_biasadd_readvariableop_resource:	?H
5lstm_472_lstm_cell_298_matmul_readvariableop_resource:	d?J
7lstm_472_lstm_cell_298_matmul_1_readvariableop_resource:	2?E
6lstm_472_lstm_cell_298_biasadd_readvariableop_resource:	?G
5lstm_473_lstm_cell_299_matmul_readvariableop_resource:2(I
7lstm_473_lstm_cell_299_matmul_1_readvariableop_resource:
(D
6lstm_473_lstm_cell_299_biasadd_readvariableop_resource:(:
(dense_157_matmul_readvariableop_resource:
7
)dense_157_biasadd_readvariableop_resource:
identity?? dense_157/BiasAdd/ReadVariableOp?dense_157/MatMul/ReadVariableOp?-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp?,lstm_471/lstm_cell_297/MatMul/ReadVariableOp?.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp?lstm_471/while?-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp?,lstm_472/lstm_cell_298/MatMul/ReadVariableOp?.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp?lstm_472/while?-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp?,lstm_473/lstm_cell_299/MatMul/ReadVariableOp?.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp?lstm_473/whileD
lstm_471/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_sliceStridedSlicelstm_471/Shape:output:0%lstm_471/strided_slice/stack:output:0'lstm_471/strided_slice/stack_1:output:0'lstm_471/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_471/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_471/zeros/packedPacklstm_471/strided_slice:output:0 lstm_471/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_471/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_471/zerosFilllstm_471/zeros/packed:output:0lstm_471/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_471/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_471/zeros_1/packedPacklstm_471/strided_slice:output:0"lstm_471/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_471/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_471/zeros_1Fill lstm_471/zeros_1/packed:output:0lstm_471/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_471/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_471/transpose	Transposeinputs lstm_471/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_471/Shape_1Shapelstm_471/transpose:y:0*
T0*
_output_shapes
:h
lstm_471/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_471/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_471/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_slice_1StridedSlicelstm_471/Shape_1:output:0'lstm_471/strided_slice_1/stack:output:0)lstm_471/strided_slice_1/stack_1:output:0)lstm_471/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_471/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_471/TensorArrayV2TensorListReserve-lstm_471/TensorArrayV2/element_shape:output:0!lstm_471/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_471/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_471/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_471/transpose:y:0Glstm_471/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_471/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_471/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_471/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_slice_2StridedSlicelstm_471/transpose:y:0'lstm_471/strided_slice_2/stack:output:0)lstm_471/strided_slice_2/stack_1:output:0)lstm_471/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_471/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp5lstm_471_lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_471/lstm_cell_297/MatMulMatMul!lstm_471/strided_slice_2:output:04lstm_471/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp7lstm_471_lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_471/lstm_cell_297/MatMul_1MatMullstm_471/zeros:output:06lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_471/lstm_cell_297/addAddV2'lstm_471/lstm_cell_297/MatMul:product:0)lstm_471/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp6lstm_471_lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_471/lstm_cell_297/BiasAddBiasAddlstm_471/lstm_cell_297/add:z:05lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_471/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_471/lstm_cell_297/splitSplit/lstm_471/lstm_cell_297/split/split_dim:output:0'lstm_471/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_471/lstm_cell_297/SigmoidSigmoid%lstm_471/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_471/lstm_cell_297/Sigmoid_1Sigmoid%lstm_471/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/mulMul$lstm_471/lstm_cell_297/Sigmoid_1:y:0lstm_471/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_471/lstm_cell_297/ReluRelu%lstm_471/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/mul_1Mul"lstm_471/lstm_cell_297/Sigmoid:y:0)lstm_471/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/add_1AddV2lstm_471/lstm_cell_297/mul:z:0 lstm_471/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_471/lstm_cell_297/Sigmoid_2Sigmoid%lstm_471/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_471/lstm_cell_297/Relu_1Relu lstm_471/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/mul_2Mul$lstm_471/lstm_cell_297/Sigmoid_2:y:0+lstm_471/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_471/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_471/TensorArrayV2_1TensorListReserve/lstm_471/TensorArrayV2_1/element_shape:output:0!lstm_471/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_471/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_471/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_471/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_471/whileWhile$lstm_471/while/loop_counter:output:0*lstm_471/while/maximum_iterations:output:0lstm_471/time:output:0!lstm_471/TensorArrayV2_1:handle:0lstm_471/zeros:output:0lstm_471/zeros_1:output:0!lstm_471/strided_slice_1:output:0@lstm_471/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_471_lstm_cell_297_matmul_readvariableop_resource7lstm_471_lstm_cell_297_matmul_1_readvariableop_resource6lstm_471_lstm_cell_297_biasadd_readvariableop_resource*
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
lstm_471_while_body_1811275*'
condR
lstm_471_while_cond_1811274*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_471/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_471/TensorArrayV2Stack/TensorListStackTensorListStacklstm_471/while:output:3Blstm_471/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_471/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_471/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_471/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_slice_3StridedSlice4lstm_471/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_471/strided_slice_3/stack:output:0)lstm_471/strided_slice_3/stack_1:output:0)lstm_471/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_471/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_471/transpose_1	Transpose4lstm_471/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_471/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_471/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_472/ShapeShapelstm_471/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_472/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_472/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_472/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_sliceStridedSlicelstm_472/Shape:output:0%lstm_472/strided_slice/stack:output:0'lstm_472/strided_slice/stack_1:output:0'lstm_472/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_472/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_472/zeros/packedPacklstm_472/strided_slice:output:0 lstm_472/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_472/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_472/zerosFilllstm_472/zeros/packed:output:0lstm_472/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_472/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_472/zeros_1/packedPacklstm_472/strided_slice:output:0"lstm_472/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_472/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_472/zeros_1Fill lstm_472/zeros_1/packed:output:0lstm_472/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_472/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_472/transpose	Transposelstm_471/transpose_1:y:0 lstm_472/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_472/Shape_1Shapelstm_472/transpose:y:0*
T0*
_output_shapes
:h
lstm_472/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_472/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_472/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_slice_1StridedSlicelstm_472/Shape_1:output:0'lstm_472/strided_slice_1/stack:output:0)lstm_472/strided_slice_1/stack_1:output:0)lstm_472/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_472/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_472/TensorArrayV2TensorListReserve-lstm_472/TensorArrayV2/element_shape:output:0!lstm_472/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_472/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_472/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_472/transpose:y:0Glstm_472/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_472/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_472/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_472/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_slice_2StridedSlicelstm_472/transpose:y:0'lstm_472/strided_slice_2/stack:output:0)lstm_472/strided_slice_2/stack_1:output:0)lstm_472/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_472/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp5lstm_472_lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_472/lstm_cell_298/MatMulMatMul!lstm_472/strided_slice_2:output:04lstm_472/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp7lstm_472_lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_472/lstm_cell_298/MatMul_1MatMullstm_472/zeros:output:06lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_472/lstm_cell_298/addAddV2'lstm_472/lstm_cell_298/MatMul:product:0)lstm_472/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp6lstm_472_lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_472/lstm_cell_298/BiasAddBiasAddlstm_472/lstm_cell_298/add:z:05lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_472/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_472/lstm_cell_298/splitSplit/lstm_472/lstm_cell_298/split/split_dim:output:0'lstm_472/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_472/lstm_cell_298/SigmoidSigmoid%lstm_472/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_472/lstm_cell_298/Sigmoid_1Sigmoid%lstm_472/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/mulMul$lstm_472/lstm_cell_298/Sigmoid_1:y:0lstm_472/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_472/lstm_cell_298/ReluRelu%lstm_472/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/mul_1Mul"lstm_472/lstm_cell_298/Sigmoid:y:0)lstm_472/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/add_1AddV2lstm_472/lstm_cell_298/mul:z:0 lstm_472/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_472/lstm_cell_298/Sigmoid_2Sigmoid%lstm_472/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_472/lstm_cell_298/Relu_1Relu lstm_472/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/mul_2Mul$lstm_472/lstm_cell_298/Sigmoid_2:y:0+lstm_472/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_472/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_472/TensorArrayV2_1TensorListReserve/lstm_472/TensorArrayV2_1/element_shape:output:0!lstm_472/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_472/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_472/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_472/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_472/whileWhile$lstm_472/while/loop_counter:output:0*lstm_472/while/maximum_iterations:output:0lstm_472/time:output:0!lstm_472/TensorArrayV2_1:handle:0lstm_472/zeros:output:0lstm_472/zeros_1:output:0!lstm_472/strided_slice_1:output:0@lstm_472/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_472_lstm_cell_298_matmul_readvariableop_resource7lstm_472_lstm_cell_298_matmul_1_readvariableop_resource6lstm_472_lstm_cell_298_biasadd_readvariableop_resource*
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
lstm_472_while_body_1811414*'
condR
lstm_472_while_cond_1811413*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_472/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_472/TensorArrayV2Stack/TensorListStackTensorListStacklstm_472/while:output:3Blstm_472/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_472/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_472/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_472/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_slice_3StridedSlice4lstm_472/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_472/strided_slice_3/stack:output:0)lstm_472/strided_slice_3/stack_1:output:0)lstm_472/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_472/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_472/transpose_1	Transpose4lstm_472/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_472/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_472/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_473/ShapeShapelstm_472/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_473/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_473/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_473/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_sliceStridedSlicelstm_473/Shape:output:0%lstm_473/strided_slice/stack:output:0'lstm_473/strided_slice/stack_1:output:0'lstm_473/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_473/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_473/zeros/packedPacklstm_473/strided_slice:output:0 lstm_473/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_473/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_473/zerosFilllstm_473/zeros/packed:output:0lstm_473/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_473/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_473/zeros_1/packedPacklstm_473/strided_slice:output:0"lstm_473/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_473/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_473/zeros_1Fill lstm_473/zeros_1/packed:output:0lstm_473/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_473/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_473/transpose	Transposelstm_472/transpose_1:y:0 lstm_473/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_473/Shape_1Shapelstm_473/transpose:y:0*
T0*
_output_shapes
:h
lstm_473/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_473/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_473/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_slice_1StridedSlicelstm_473/Shape_1:output:0'lstm_473/strided_slice_1/stack:output:0)lstm_473/strided_slice_1/stack_1:output:0)lstm_473/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_473/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_473/TensorArrayV2TensorListReserve-lstm_473/TensorArrayV2/element_shape:output:0!lstm_473/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_473/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_473/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_473/transpose:y:0Glstm_473/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_473/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_473/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_473/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_slice_2StridedSlicelstm_473/transpose:y:0'lstm_473/strided_slice_2/stack:output:0)lstm_473/strided_slice_2/stack_1:output:0)lstm_473/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_473/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp5lstm_473_lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_473/lstm_cell_299/MatMulMatMul!lstm_473/strided_slice_2:output:04lstm_473/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp7lstm_473_lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_473/lstm_cell_299/MatMul_1MatMullstm_473/zeros:output:06lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_473/lstm_cell_299/addAddV2'lstm_473/lstm_cell_299/MatMul:product:0)lstm_473/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp6lstm_473_lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_473/lstm_cell_299/BiasAddBiasAddlstm_473/lstm_cell_299/add:z:05lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_473/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_473/lstm_cell_299/splitSplit/lstm_473/lstm_cell_299/split/split_dim:output:0'lstm_473/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_473/lstm_cell_299/SigmoidSigmoid%lstm_473/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_473/lstm_cell_299/Sigmoid_1Sigmoid%lstm_473/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/mulMul$lstm_473/lstm_cell_299/Sigmoid_1:y:0lstm_473/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_473/lstm_cell_299/ReluRelu%lstm_473/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/mul_1Mul"lstm_473/lstm_cell_299/Sigmoid:y:0)lstm_473/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/add_1AddV2lstm_473/lstm_cell_299/mul:z:0 lstm_473/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_473/lstm_cell_299/Sigmoid_2Sigmoid%lstm_473/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_473/lstm_cell_299/Relu_1Relu lstm_473/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/mul_2Mul$lstm_473/lstm_cell_299/Sigmoid_2:y:0+lstm_473/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_473/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_473/TensorArrayV2_1TensorListReserve/lstm_473/TensorArrayV2_1/element_shape:output:0!lstm_473/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_473/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_473/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_473/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_473/whileWhile$lstm_473/while/loop_counter:output:0*lstm_473/while/maximum_iterations:output:0lstm_473/time:output:0!lstm_473/TensorArrayV2_1:handle:0lstm_473/zeros:output:0lstm_473/zeros_1:output:0!lstm_473/strided_slice_1:output:0@lstm_473/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_473_lstm_cell_299_matmul_readvariableop_resource7lstm_473_lstm_cell_299_matmul_1_readvariableop_resource6lstm_473_lstm_cell_299_biasadd_readvariableop_resource*
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
lstm_473_while_body_1811553*'
condR
lstm_473_while_cond_1811552*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_473/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_473/TensorArrayV2Stack/TensorListStackTensorListStacklstm_473/while:output:3Blstm_473/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_473/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_473/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_473/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_slice_3StridedSlice4lstm_473/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_473/strided_slice_3/stack:output:0)lstm_473/strided_slice_3/stack_1:output:0)lstm_473/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_473/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_473/transpose_1	Transpose4lstm_473/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_473/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_473/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_157/MatMul/ReadVariableOpReadVariableOp(dense_157_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_157/MatMulMatMul!lstm_473/strided_slice_3:output:0'dense_157/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_157/BiasAdd/ReadVariableOpReadVariableOp)dense_157_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_157/BiasAddBiasAdddense_157/MatMul:product:0(dense_157/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_157/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_157/BiasAdd/ReadVariableOp ^dense_157/MatMul/ReadVariableOp.^lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp-^lstm_471/lstm_cell_297/MatMul/ReadVariableOp/^lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp^lstm_471/while.^lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp-^lstm_472/lstm_cell_298/MatMul/ReadVariableOp/^lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp^lstm_472/while.^lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp-^lstm_473/lstm_cell_299/MatMul/ReadVariableOp/^lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp^lstm_473/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_157/BiasAdd/ReadVariableOp dense_157/BiasAdd/ReadVariableOp2B
dense_157/MatMul/ReadVariableOpdense_157/MatMul/ReadVariableOp2^
-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp2\
,lstm_471/lstm_cell_297/MatMul/ReadVariableOp,lstm_471/lstm_cell_297/MatMul/ReadVariableOp2`
.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp2 
lstm_471/whilelstm_471/while2^
-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp2\
,lstm_472/lstm_cell_298/MatMul/ReadVariableOp,lstm_472/lstm_cell_298/MatMul/ReadVariableOp2`
.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp2 
lstm_472/whilelstm_472/while2^
-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp2\
,lstm_473/lstm_cell_299/MatMul/ReadVariableOp,lstm_473/lstm_cell_299/MatMul/ReadVariableOp2`
.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp2 
lstm_473/whilelstm_473/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_473_while_cond_1811552.
*lstm_473_while_lstm_473_while_loop_counter4
0lstm_473_while_lstm_473_while_maximum_iterations
lstm_473_while_placeholder 
lstm_473_while_placeholder_1 
lstm_473_while_placeholder_2 
lstm_473_while_placeholder_30
,lstm_473_while_less_lstm_473_strided_slice_1G
Clstm_473_while_lstm_473_while_cond_1811552___redundant_placeholder0G
Clstm_473_while_lstm_473_while_cond_1811552___redundant_placeholder1G
Clstm_473_while_lstm_473_while_cond_1811552___redundant_placeholder2G
Clstm_473_while_lstm_473_while_cond_1811552___redundant_placeholder3
lstm_473_while_identity
?
lstm_473/while/LessLesslstm_473_while_placeholder,lstm_473_while_less_lstm_473_strided_slice_1*
T0*
_output_shapes
: ]
lstm_473/while/IdentityIdentitylstm_473/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_473_while_identity lstm_473/while/Identity:output:0*(
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
while_body_1812789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_298_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_298_matmul_readvariableop_resource:	d?G
4while_lstm_cell_298_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_298_biasadd_readvariableop_resource:	???*while/lstm_cell_298/BiasAdd/ReadVariableOp?)while/lstm_cell_298/MatMul/ReadVariableOp?+while/lstm_cell_298/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_298/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_298/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_298/addAddV2$while/lstm_cell_298/MatMul:product:0&while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_298/BiasAddBiasAddwhile/lstm_cell_298/add:z:02while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_298/splitSplit,while/lstm_cell_298/split/split_dim:output:0$while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_298/SigmoidSigmoid"while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_1Sigmoid"while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mulMul!while/lstm_cell_298/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_298/ReluRelu"while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_1Mulwhile/lstm_cell_298/Sigmoid:y:0&while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/add_1AddV2while/lstm_cell_298/mul:z:0while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_2Sigmoid"while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_298/Relu_1Reluwhile/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_2Mul!while/lstm_cell_298/Sigmoid_2:y:0(while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_298/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_298/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_298/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_298/BiasAdd/ReadVariableOp*^while/lstm_cell_298/MatMul/ReadVariableOp,^while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_298_biasadd_readvariableop_resource5while_lstm_cell_298_biasadd_readvariableop_resource_0"n
4while_lstm_cell_298_matmul_1_readvariableop_resource6while_lstm_cell_298_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_298_matmul_readvariableop_resource4while_lstm_cell_298_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_298/BiasAdd/ReadVariableOp*while/lstm_cell_298/BiasAdd/ReadVariableOp2V
)while/lstm_cell_298/MatMul/ReadVariableOp)while/lstm_cell_298/MatMul/ReadVariableOp2Z
+while/lstm_cell_298/MatMul_1/ReadVariableOp+while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1813547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1813547___redundant_placeholder05
1while_while_cond_1813547___redundant_placeholder15
1while_while_cond_1813547___redundant_placeholder25
1while_while_cond_1813547___redundant_placeholder3
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813302

inputs?
,lstm_cell_298_matmul_readvariableop_resource:	d?A
.lstm_cell_298_matmul_1_readvariableop_resource:	2?<
-lstm_cell_298_biasadd_readvariableop_resource:	?
identity??$lstm_cell_298/BiasAdd/ReadVariableOp?#lstm_cell_298/MatMul/ReadVariableOp?%lstm_cell_298/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_298/MatMul/ReadVariableOpReadVariableOp,lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_298/MatMulMatMulstrided_slice_2:output:0+lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_298/MatMul_1MatMulzeros:output:0-lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_298/addAddV2lstm_cell_298/MatMul:product:0 lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_298/BiasAddBiasAddlstm_cell_298/add:z:0,lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_298/splitSplit&lstm_cell_298/split/split_dim:output:0lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_298/SigmoidSigmoidlstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_1Sigmoidlstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_298/mulMullstm_cell_298/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_298/ReluRelulstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_1Mullstm_cell_298/Sigmoid:y:0 lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_298/add_1AddV2lstm_cell_298/mul:z:0lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_2Sigmoidlstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_298/Relu_1Relulstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_2Mullstm_cell_298/Sigmoid_2:y:0"lstm_cell_298/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_298_matmul_readvariableop_resource.lstm_cell_298_matmul_1_readvariableop_resource-lstm_cell_298_biasadd_readvariableop_resource*
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
while_body_1813218*
condR
while_cond_1813217*K
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
NoOpNoOp%^lstm_cell_298/BiasAdd/ReadVariableOp$^lstm_cell_298/MatMul/ReadVariableOp&^lstm_cell_298/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_298/BiasAdd/ReadVariableOp$lstm_cell_298/BiasAdd/ReadVariableOp2J
#lstm_cell_298/MatMul/ReadVariableOp#lstm_cell_298/MatMul/ReadVariableOp2N
%lstm_cell_298/MatMul_1/ReadVariableOp%lstm_cell_298/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1813075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_298_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_298_matmul_readvariableop_resource:	d?G
4while_lstm_cell_298_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_298_biasadd_readvariableop_resource:	???*while/lstm_cell_298/BiasAdd/ReadVariableOp?)while/lstm_cell_298/MatMul/ReadVariableOp?+while/lstm_cell_298/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_298/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_298/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_298/addAddV2$while/lstm_cell_298/MatMul:product:0&while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_298/BiasAddBiasAddwhile/lstm_cell_298/add:z:02while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_298/splitSplit,while/lstm_cell_298/split/split_dim:output:0$while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_298/SigmoidSigmoid"while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_1Sigmoid"while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mulMul!while/lstm_cell_298/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_298/ReluRelu"while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_1Mulwhile/lstm_cell_298/Sigmoid:y:0&while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/add_1AddV2while/lstm_cell_298/mul:z:0while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_2Sigmoid"while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_298/Relu_1Reluwhile/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_2Mul!while/lstm_cell_298/Sigmoid_2:y:0(while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_298/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_298/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_298/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_298/BiasAdd/ReadVariableOp*^while/lstm_cell_298/MatMul/ReadVariableOp,^while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_298_biasadd_readvariableop_resource5while_lstm_cell_298_biasadd_readvariableop_resource_0"n
4while_lstm_cell_298_matmul_1_readvariableop_resource6while_lstm_cell_298_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_298_matmul_readvariableop_resource4while_lstm_cell_298_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_298/BiasAdd/ReadVariableOp*while/lstm_cell_298/BiasAdd/ReadVariableOp2V
)while/lstm_cell_298/MatMul/ReadVariableOp)while/lstm_cell_298/MatMul/ReadVariableOp2Z
+while/lstm_cell_298/MatMul_1/ReadVariableOp+while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1809052

inputs(
lstm_cell_297_1808970:	?(
lstm_cell_297_1808972:	d?$
lstm_cell_297_1808974:	?
identity??%lstm_cell_297/StatefulPartitionedCall?while;
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
%lstm_cell_297/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_297_1808970lstm_cell_297_1808972lstm_cell_297_1808974*
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1808969n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_297_1808970lstm_cell_297_1808972lstm_cell_297_1808974*
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
while_body_1808983*
condR
while_cond_1808982*K
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
NoOpNoOp&^lstm_cell_297/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_297/StatefulPartitionedCall%lstm_cell_297/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809465

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
?
/__inference_lstm_cell_297_layer_call_fn_1813954

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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1808969o
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
F__inference_dense_157_layer_call_and_return_conditional_losses_1810419

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
??
?
#__inference__traced_restore_1814504
file_prefix3
!assignvariableop_dense_157_kernel:
/
!assignvariableop_1_dense_157_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_471_lstm_cell_471_kernel:	?M
:assignvariableop_8_lstm_471_lstm_cell_471_recurrent_kernel:	d?=
.assignvariableop_9_lstm_471_lstm_cell_471_bias:	?D
1assignvariableop_10_lstm_472_lstm_cell_472_kernel:	d?N
;assignvariableop_11_lstm_472_lstm_cell_472_recurrent_kernel:	2?>
/assignvariableop_12_lstm_472_lstm_cell_472_bias:	?C
1assignvariableop_13_lstm_473_lstm_cell_473_kernel:2(M
;assignvariableop_14_lstm_473_lstm_cell_473_recurrent_kernel:
(=
/assignvariableop_15_lstm_473_lstm_cell_473_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_157_kernel_m:
7
)assignvariableop_19_adam_dense_157_bias_m:K
8assignvariableop_20_adam_lstm_471_lstm_cell_471_kernel_m:	?U
Bassignvariableop_21_adam_lstm_471_lstm_cell_471_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_471_lstm_cell_471_bias_m:	?K
8assignvariableop_23_adam_lstm_472_lstm_cell_472_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_472_lstm_cell_472_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_472_lstm_cell_472_bias_m:	?J
8assignvariableop_26_adam_lstm_473_lstm_cell_473_kernel_m:2(T
Bassignvariableop_27_adam_lstm_473_lstm_cell_473_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_473_lstm_cell_473_bias_m:(=
+assignvariableop_29_adam_dense_157_kernel_v:
7
)assignvariableop_30_adam_dense_157_bias_v:K
8assignvariableop_31_adam_lstm_471_lstm_cell_471_kernel_v:	?U
Bassignvariableop_32_adam_lstm_471_lstm_cell_471_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_471_lstm_cell_471_bias_v:	?K
8assignvariableop_34_adam_lstm_472_lstm_cell_472_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_472_lstm_cell_472_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_472_lstm_cell_472_bias_v:	?J
8assignvariableop_37_adam_lstm_473_lstm_cell_473_kernel_v:2(T
Bassignvariableop_38_adam_lstm_473_lstm_cell_473_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_473_lstm_cell_473_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_157_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_157_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_471_lstm_cell_471_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_471_lstm_cell_471_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_471_lstm_cell_471_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_472_lstm_cell_472_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_472_lstm_cell_472_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_472_lstm_cell_472_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_473_lstm_cell_473_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_473_lstm_cell_473_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_473_lstm_cell_473_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_157_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_157_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_471_lstm_cell_471_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_471_lstm_cell_471_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_471_lstm_cell_471_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_472_lstm_cell_472_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_472_lstm_cell_472_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_472_lstm_cell_472_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_473_lstm_cell_473_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_473_lstm_cell_473_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_473_lstm_cell_473_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_157_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_157_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_471_lstm_cell_471_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_471_lstm_cell_471_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_471_lstm_cell_471_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_472_lstm_cell_472_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_472_lstm_cell_472_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_472_lstm_cell_472_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_473_lstm_cell_473_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_473_lstm_cell_473_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_473_lstm_cell_473_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_1812931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1812931___redundant_placeholder05
1while_while_cond_1812931___redundant_placeholder15
1while_while_cond_1812931___redundant_placeholder25
1while_while_cond_1812931___redundant_placeholder3
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810947

inputs?
,lstm_cell_297_matmul_readvariableop_resource:	?A
.lstm_cell_297_matmul_1_readvariableop_resource:	d?<
-lstm_cell_297_biasadd_readvariableop_resource:	?
identity??$lstm_cell_297/BiasAdd/ReadVariableOp?#lstm_cell_297/MatMul/ReadVariableOp?%lstm_cell_297/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_297/MatMul/ReadVariableOpReadVariableOp,lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_297/MatMulMatMulstrided_slice_2:output:0+lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_297/MatMul_1MatMulzeros:output:0-lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_297/addAddV2lstm_cell_297/MatMul:product:0 lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_297/BiasAddBiasAddlstm_cell_297/add:z:0,lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_297/splitSplit&lstm_cell_297/split/split_dim:output:0lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_297/SigmoidSigmoidlstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_1Sigmoidlstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_297/mulMullstm_cell_297/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_297/ReluRelulstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_1Mullstm_cell_297/Sigmoid:y:0 lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_297/add_1AddV2lstm_cell_297/mul:z:0lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_2Sigmoidlstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_297/Relu_1Relulstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_2Mullstm_cell_297/Sigmoid_2:y:0"lstm_cell_297/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_297_matmul_readvariableop_resource.lstm_cell_297_matmul_1_readvariableop_resource-lstm_cell_297_biasadd_readvariableop_resource*
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
while_body_1810863*
condR
while_cond_1810862*K
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
NoOpNoOp%^lstm_cell_297/BiasAdd/ReadVariableOp$^lstm_cell_297/MatMul/ReadVariableOp&^lstm_cell_297/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_297/BiasAdd/ReadVariableOp$lstm_cell_297/BiasAdd/ReadVariableOp2J
#lstm_cell_297/MatMul/ReadVariableOp#lstm_cell_297/MatMul/ReadVariableOp2N
%lstm_cell_297/MatMul_1/ReadVariableOp%lstm_cell_297/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1813691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_299_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_299_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_299_matmul_readvariableop_resource:2(F
4while_lstm_cell_299_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_299_biasadd_readvariableop_resource:(??*while/lstm_cell_299/BiasAdd/ReadVariableOp?)while/lstm_cell_299/MatMul/ReadVariableOp?+while/lstm_cell_299/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_299/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_299/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_299/addAddV2$while/lstm_cell_299/MatMul:product:0&while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_299/BiasAddBiasAddwhile/lstm_cell_299/add:z:02while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_299/splitSplit,while/lstm_cell_299/split/split_dim:output:0$while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_299/SigmoidSigmoid"while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_1Sigmoid"while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mulMul!while/lstm_cell_299/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_299/ReluRelu"while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_1Mulwhile/lstm_cell_299/Sigmoid:y:0&while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/add_1AddV2while/lstm_cell_299/mul:z:0while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_2Sigmoid"while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_299/Relu_1Reluwhile/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_2Mul!while/lstm_cell_299/Sigmoid_2:y:0(while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_299/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_299/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_299/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_299/BiasAdd/ReadVariableOp*^while/lstm_cell_299/MatMul/ReadVariableOp,^while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_299_biasadd_readvariableop_resource5while_lstm_cell_299_biasadd_readvariableop_resource_0"n
4while_lstm_cell_299_matmul_1_readvariableop_resource6while_lstm_cell_299_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_299_matmul_readvariableop_resource4while_lstm_cell_299_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_299/BiasAdd/ReadVariableOp*while/lstm_cell_299/BiasAdd/ReadVariableOp2V
)while/lstm_cell_299/MatMul/ReadVariableOp)while/lstm_cell_299/MatMul/ReadVariableOp2Z
+while/lstm_cell_299/MatMul_1/ReadVariableOp+while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1809523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1809523___redundant_placeholder05
1while_while_cond_1809523___redundant_placeholder15
1while_while_cond_1809523___redundant_placeholder25
1while_while_cond_1809523___redundant_placeholder3
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
+__inference_dense_157_layer_call_fn_1813927

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
F__inference_dense_157_layer_call_and_return_conditional_losses_1810419o
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

?
0__inference_sequential_157_layer_call_fn_1811216

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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811015o
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
while_body_1812173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_297_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_297_matmul_readvariableop_resource:	?G
4while_lstm_cell_297_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_297_biasadd_readvariableop_resource:	???*while/lstm_cell_297/BiasAdd/ReadVariableOp?)while/lstm_cell_297/MatMul/ReadVariableOp?+while/lstm_cell_297/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_297/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_297/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_297/addAddV2$while/lstm_cell_297/MatMul:product:0&while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_297/BiasAddBiasAddwhile/lstm_cell_297/add:z:02while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_297/splitSplit,while/lstm_cell_297/split/split_dim:output:0$while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_297/SigmoidSigmoid"while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_1Sigmoid"while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mulMul!while/lstm_cell_297/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_297/ReluRelu"while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_1Mulwhile/lstm_cell_297/Sigmoid:y:0&while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/add_1AddV2while/lstm_cell_297/mul:z:0while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_2Sigmoid"while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_297/Relu_1Reluwhile/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_2Mul!while/lstm_cell_297/Sigmoid_2:y:0(while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_297/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_297/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_297/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_297/BiasAdd/ReadVariableOp*^while/lstm_cell_297/MatMul/ReadVariableOp,^while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_297_biasadd_readvariableop_resource5while_lstm_cell_297_biasadd_readvariableop_resource_0"n
4while_lstm_cell_297_matmul_1_readvariableop_resource6while_lstm_cell_297_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_297_matmul_readvariableop_resource4while_lstm_cell_297_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_297/BiasAdd/ReadVariableOp*while/lstm_cell_297/BiasAdd/ReadVariableOp2V
)while/lstm_cell_297/MatMul/ReadVariableOp)while/lstm_cell_297/MatMul/ReadVariableOp2Z
+while/lstm_cell_297/MatMul_1/ReadVariableOp+while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810782

inputs?
,lstm_cell_298_matmul_readvariableop_resource:	d?A
.lstm_cell_298_matmul_1_readvariableop_resource:	2?<
-lstm_cell_298_biasadd_readvariableop_resource:	?
identity??$lstm_cell_298/BiasAdd/ReadVariableOp?#lstm_cell_298/MatMul/ReadVariableOp?%lstm_cell_298/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_298/MatMul/ReadVariableOpReadVariableOp,lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_298/MatMulMatMulstrided_slice_2:output:0+lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_298/MatMul_1MatMulzeros:output:0-lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_298/addAddV2lstm_cell_298/MatMul:product:0 lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_298/BiasAddBiasAddlstm_cell_298/add:z:0,lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_298/splitSplit&lstm_cell_298/split/split_dim:output:0lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_298/SigmoidSigmoidlstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_1Sigmoidlstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_298/mulMullstm_cell_298/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_298/ReluRelulstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_1Mullstm_cell_298/Sigmoid:y:0 lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_298/add_1AddV2lstm_cell_298/mul:z:0lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_2Sigmoidlstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_298/Relu_1Relulstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_2Mullstm_cell_298/Sigmoid_2:y:0"lstm_cell_298/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_298_matmul_readvariableop_resource.lstm_cell_298_matmul_1_readvariableop_resource-lstm_cell_298_biasadd_readvariableop_resource*
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
while_body_1810698*
condR
while_cond_1810697*K
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
NoOpNoOp%^lstm_cell_298/BiasAdd/ReadVariableOp$^lstm_cell_298/MatMul/ReadVariableOp&^lstm_cell_298/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_298/BiasAdd/ReadVariableOp$lstm_cell_298/BiasAdd/ReadVariableOp2J
#lstm_cell_298/MatMul/ReadVariableOp#lstm_cell_298/MatMul/ReadVariableOp2N
%lstm_cell_298/MatMul_1/ReadVariableOp%lstm_cell_298/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1814035

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
/__inference_lstm_cell_299_layer_call_fn_1814150

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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809669o
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
?J
?
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810101

inputs?
,lstm_cell_297_matmul_readvariableop_resource:	?A
.lstm_cell_297_matmul_1_readvariableop_resource:	d?<
-lstm_cell_297_biasadd_readvariableop_resource:	?
identity??$lstm_cell_297/BiasAdd/ReadVariableOp?#lstm_cell_297/MatMul/ReadVariableOp?%lstm_cell_297/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_297/MatMul/ReadVariableOpReadVariableOp,lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_297/MatMulMatMulstrided_slice_2:output:0+lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_297/MatMul_1MatMulzeros:output:0-lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_297/addAddV2lstm_cell_297/MatMul:product:0 lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_297/BiasAddBiasAddlstm_cell_297/add:z:0,lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_297/splitSplit&lstm_cell_297/split/split_dim:output:0lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_297/SigmoidSigmoidlstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_1Sigmoidlstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_297/mulMullstm_cell_297/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_297/ReluRelulstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_1Mullstm_cell_297/Sigmoid:y:0 lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_297/add_1AddV2lstm_cell_297/mul:z:0lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_2Sigmoidlstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_297/Relu_1Relulstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_2Mullstm_cell_297/Sigmoid_2:y:0"lstm_cell_297/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_297_matmul_readvariableop_resource.lstm_cell_297_matmul_1_readvariableop_resource-lstm_cell_297_biasadd_readvariableop_resource*
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
while_body_1810017*
condR
while_cond_1810016*K
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
NoOpNoOp%^lstm_cell_297/BiasAdd/ReadVariableOp$^lstm_cell_297/MatMul/ReadVariableOp&^lstm_cell_297/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_297/BiasAdd/ReadVariableOp$lstm_cell_297/BiasAdd/ReadVariableOp2J
#lstm_cell_297/MatMul/ReadVariableOp#lstm_cell_297/MatMul/ReadVariableOp2N
%lstm_cell_297/MatMul_1/ReadVariableOp%lstm_cell_297/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809319

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
while_body_1813834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_299_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_299_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_299_matmul_readvariableop_resource:2(F
4while_lstm_cell_299_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_299_biasadd_readvariableop_resource:(??*while/lstm_cell_299/BiasAdd/ReadVariableOp?)while/lstm_cell_299/MatMul/ReadVariableOp?+while/lstm_cell_299/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_299/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_299/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_299/addAddV2$while/lstm_cell_299/MatMul:product:0&while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_299/BiasAddBiasAddwhile/lstm_cell_299/add:z:02while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_299/splitSplit,while/lstm_cell_299/split/split_dim:output:0$while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_299/SigmoidSigmoid"while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_1Sigmoid"while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mulMul!while/lstm_cell_299/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_299/ReluRelu"while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_1Mulwhile/lstm_cell_299/Sigmoid:y:0&while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/add_1AddV2while/lstm_cell_299/mul:z:0while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_2Sigmoid"while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_299/Relu_1Reluwhile/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_2Mul!while/lstm_cell_299/Sigmoid_2:y:0(while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_299/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_299/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_299/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_299/BiasAdd/ReadVariableOp*^while/lstm_cell_299/MatMul/ReadVariableOp,^while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_299_biasadd_readvariableop_resource5while_lstm_cell_299_biasadd_readvariableop_resource_0"n
4while_lstm_cell_299_matmul_1_readvariableop_resource6while_lstm_cell_299_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_299_matmul_readvariableop_resource4while_lstm_cell_299_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_299/BiasAdd/ReadVariableOp*while/lstm_cell_299/BiasAdd/ReadVariableOp2V
)while/lstm_cell_299/MatMul/ReadVariableOp)while/lstm_cell_299/MatMul/ReadVariableOp2Z
+while/lstm_cell_299/MatMul_1/ReadVariableOp+while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1811162
lstm_471_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_471_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1808902o
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
_user_specified_namelstm_471_input
?
?
while_cond_1812788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1812788___redundant_placeholder05
1while_while_cond_1812788___redundant_placeholder15
1while_while_cond_1812788___redundant_placeholder25
1while_while_cond_1812788___redundant_placeholder3
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
lstm_471_while_cond_1811274.
*lstm_471_while_lstm_471_while_loop_counter4
0lstm_471_while_lstm_471_while_maximum_iterations
lstm_471_while_placeholder 
lstm_471_while_placeholder_1 
lstm_471_while_placeholder_2 
lstm_471_while_placeholder_30
,lstm_471_while_less_lstm_471_strided_slice_1G
Clstm_471_while_lstm_471_while_cond_1811274___redundant_placeholder0G
Clstm_471_while_lstm_471_while_cond_1811274___redundant_placeholder1G
Clstm_471_while_lstm_471_while_cond_1811274___redundant_placeholder2G
Clstm_471_while_lstm_471_while_cond_1811274___redundant_placeholder3
lstm_471_while_identity
?
lstm_471/while/LessLesslstm_471_while_placeholder,lstm_471_while_less_lstm_471_strided_slice_1*
T0*
_output_shapes
: ]
lstm_471/while/IdentityIdentitylstm_471/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_471_while_identity lstm_471/while/Identity:output:0*(
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
while_cond_1810016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1810016___redundant_placeholder05
1while_while_cond_1810016___redundant_placeholder15
1while_while_cond_1810016___redundant_placeholder25
1while_while_cond_1810016___redundant_placeholder3
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
*__inference_lstm_472_layer_call_fn_1812730

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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810782s
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

lstm_471_while_body_1811702.
*lstm_471_while_lstm_471_while_loop_counter4
0lstm_471_while_lstm_471_while_maximum_iterations
lstm_471_while_placeholder 
lstm_471_while_placeholder_1 
lstm_471_while_placeholder_2 
lstm_471_while_placeholder_3-
)lstm_471_while_lstm_471_strided_slice_1_0i
elstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0:	?R
?lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?M
>lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
lstm_471_while_identity
lstm_471_while_identity_1
lstm_471_while_identity_2
lstm_471_while_identity_3
lstm_471_while_identity_4
lstm_471_while_identity_5+
'lstm_471_while_lstm_471_strided_slice_1g
clstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensorN
;lstm_471_while_lstm_cell_297_matmul_readvariableop_resource:	?P
=lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource:	d?K
<lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource:	???3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp?2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp?4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp?
@lstm_471/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_471/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensor_0lstm_471_while_placeholderIlstm_471/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp=lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_471/while/lstm_cell_297/MatMulMatMul9lstm_471/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp?lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_471/while/lstm_cell_297/MatMul_1MatMullstm_471_while_placeholder_2<lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_471/while/lstm_cell_297/addAddV2-lstm_471/while/lstm_cell_297/MatMul:product:0/lstm_471/while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp>lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_471/while/lstm_cell_297/BiasAddBiasAdd$lstm_471/while/lstm_cell_297/add:z:0;lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_471/while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_471/while/lstm_cell_297/splitSplit5lstm_471/while/lstm_cell_297/split/split_dim:output:0-lstm_471/while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_471/while/lstm_cell_297/SigmoidSigmoid+lstm_471/while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_471/while/lstm_cell_297/Sigmoid_1Sigmoid+lstm_471/while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_471/while/lstm_cell_297/mulMul*lstm_471/while/lstm_cell_297/Sigmoid_1:y:0lstm_471_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_471/while/lstm_cell_297/ReluRelu+lstm_471/while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_471/while/lstm_cell_297/mul_1Mul(lstm_471/while/lstm_cell_297/Sigmoid:y:0/lstm_471/while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_471/while/lstm_cell_297/add_1AddV2$lstm_471/while/lstm_cell_297/mul:z:0&lstm_471/while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_471/while/lstm_cell_297/Sigmoid_2Sigmoid+lstm_471/while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_471/while/lstm_cell_297/Relu_1Relu&lstm_471/while/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_471/while/lstm_cell_297/mul_2Mul*lstm_471/while/lstm_cell_297/Sigmoid_2:y:01lstm_471/while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_471/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_471_while_placeholder_1lstm_471_while_placeholder&lstm_471/while/lstm_cell_297/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_471/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_471/while/addAddV2lstm_471_while_placeholderlstm_471/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_471/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_471/while/add_1AddV2*lstm_471_while_lstm_471_while_loop_counterlstm_471/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_471/while/IdentityIdentitylstm_471/while/add_1:z:0^lstm_471/while/NoOp*
T0*
_output_shapes
: ?
lstm_471/while/Identity_1Identity0lstm_471_while_lstm_471_while_maximum_iterations^lstm_471/while/NoOp*
T0*
_output_shapes
: t
lstm_471/while/Identity_2Identitylstm_471/while/add:z:0^lstm_471/while/NoOp*
T0*
_output_shapes
: ?
lstm_471/while/Identity_3IdentityClstm_471/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_471/while/NoOp*
T0*
_output_shapes
: ?
lstm_471/while/Identity_4Identity&lstm_471/while/lstm_cell_297/mul_2:z:0^lstm_471/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_471/while/Identity_5Identity&lstm_471/while/lstm_cell_297/add_1:z:0^lstm_471/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_471/while/NoOpNoOp4^lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp3^lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp5^lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_471_while_identity lstm_471/while/Identity:output:0"?
lstm_471_while_identity_1"lstm_471/while/Identity_1:output:0"?
lstm_471_while_identity_2"lstm_471/while/Identity_2:output:0"?
lstm_471_while_identity_3"lstm_471/while/Identity_3:output:0"?
lstm_471_while_identity_4"lstm_471/while/Identity_4:output:0"?
lstm_471_while_identity_5"lstm_471/while/Identity_5:output:0"T
'lstm_471_while_lstm_471_strided_slice_1)lstm_471_while_lstm_471_strided_slice_1_0"~
<lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource>lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0"?
=lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource?lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0"|
;lstm_471_while_lstm_cell_297_matmul_readvariableop_resource=lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0"?
clstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensorelstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp2h
2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp2l
4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811015

inputs#
lstm_471_1810988:	?#
lstm_471_1810990:	d?
lstm_471_1810992:	?#
lstm_472_1810995:	d?#
lstm_472_1810997:	2?
lstm_472_1810999:	?"
lstm_473_1811002:2("
lstm_473_1811004:
(
lstm_473_1811006:(#
dense_157_1811009:

dense_157_1811011:
identity??!dense_157/StatefulPartitionedCall? lstm_471/StatefulPartitionedCall? lstm_472/StatefulPartitionedCall? lstm_473/StatefulPartitionedCall?
 lstm_471/StatefulPartitionedCallStatefulPartitionedCallinputslstm_471_1810988lstm_471_1810990lstm_471_1810992*
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810947?
 lstm_472/StatefulPartitionedCallStatefulPartitionedCall)lstm_471/StatefulPartitionedCall:output:0lstm_472_1810995lstm_472_1810997lstm_472_1810999*
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810782?
 lstm_473/StatefulPartitionedCallStatefulPartitionedCall)lstm_472/StatefulPartitionedCall:output:0lstm_473_1811002lstm_473_1811004lstm_473_1811006*
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810617?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_473/StatefulPartitionedCall:output:0dense_157_1811009dense_157_1811011*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_1810419y
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_157/StatefulPartitionedCall!^lstm_471/StatefulPartitionedCall!^lstm_472/StatefulPartitionedCall!^lstm_473/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2D
 lstm_471/StatefulPartitionedCall lstm_471/StatefulPartitionedCall2D
 lstm_472/StatefulPartitionedCall lstm_472/StatefulPartitionedCall2D
 lstm_473/StatefulPartitionedCall lstm_473/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811097
lstm_471_input#
lstm_471_1811070:	?#
lstm_471_1811072:	d?
lstm_471_1811074:	?#
lstm_472_1811077:	d?#
lstm_472_1811079:	2?
lstm_472_1811081:	?"
lstm_473_1811084:2("
lstm_473_1811086:
(
lstm_473_1811088:(#
dense_157_1811091:

dense_157_1811093:
identity??!dense_157/StatefulPartitionedCall? lstm_471/StatefulPartitionedCall? lstm_472/StatefulPartitionedCall? lstm_473/StatefulPartitionedCall?
 lstm_471/StatefulPartitionedCallStatefulPartitionedCalllstm_471_inputlstm_471_1811070lstm_471_1811072lstm_471_1811074*
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810101?
 lstm_472/StatefulPartitionedCallStatefulPartitionedCall)lstm_471/StatefulPartitionedCall:output:0lstm_472_1811077lstm_472_1811079lstm_472_1811081*
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810251?
 lstm_473/StatefulPartitionedCallStatefulPartitionedCall)lstm_472/StatefulPartitionedCall:output:0lstm_473_1811084lstm_473_1811086lstm_473_1811088*
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810401?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_473/StatefulPartitionedCall:output:0dense_157_1811091dense_157_1811093*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_1810419y
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_157/StatefulPartitionedCall!^lstm_471/StatefulPartitionedCall!^lstm_472/StatefulPartitionedCall!^lstm_473/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2D
 lstm_471/StatefulPartitionedCall lstm_471/StatefulPartitionedCall2D
 lstm_472/StatefulPartitionedCall lstm_472/StatefulPartitionedCall2D
 lstm_473/StatefulPartitionedCall lstm_473/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_471_input
?
?
K__inference_sequential_157_layer_call_and_return_conditional_losses_1810426

inputs#
lstm_471_1810102:	?#
lstm_471_1810104:	d?
lstm_471_1810106:	?#
lstm_472_1810252:	d?#
lstm_472_1810254:	2?
lstm_472_1810256:	?"
lstm_473_1810402:2("
lstm_473_1810404:
(
lstm_473_1810406:(#
dense_157_1810420:

dense_157_1810422:
identity??!dense_157/StatefulPartitionedCall? lstm_471/StatefulPartitionedCall? lstm_472/StatefulPartitionedCall? lstm_473/StatefulPartitionedCall?
 lstm_471/StatefulPartitionedCallStatefulPartitionedCallinputslstm_471_1810102lstm_471_1810104lstm_471_1810106*
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810101?
 lstm_472/StatefulPartitionedCallStatefulPartitionedCall)lstm_471/StatefulPartitionedCall:output:0lstm_472_1810252lstm_472_1810254lstm_472_1810256*
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810251?
 lstm_473/StatefulPartitionedCallStatefulPartitionedCall)lstm_472/StatefulPartitionedCall:output:0lstm_473_1810402lstm_473_1810404lstm_473_1810406*
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810401?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_473/StatefulPartitionedCall:output:0dense_157_1810420dense_157_1810422*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_1810419y
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_157/StatefulPartitionedCall!^lstm_471/StatefulPartitionedCall!^lstm_472/StatefulPartitionedCall!^lstm_473/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2D
 lstm_471/StatefulPartitionedCall lstm_471/StatefulPartitionedCall2D
 lstm_472/StatefulPartitionedCall lstm_472/StatefulPartitionedCall2D
 lstm_473/StatefulPartitionedCall lstm_473/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_473_layer_call_fn_1813313
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1809752o
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
while_cond_1809682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1809682___redundant_placeholder05
1while_while_cond_1809682___redundant_placeholder15
1while_while_cond_1809682___redundant_placeholder25
1while_while_cond_1809682___redundant_placeholder3
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1809943

inputs'
lstm_cell_299_1809861:2('
lstm_cell_299_1809863:
(#
lstm_cell_299_1809865:(
identity??%lstm_cell_299/StatefulPartitionedCall?while;
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
%lstm_cell_299/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_299_1809861lstm_cell_299_1809863lstm_cell_299_1809865*
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809815n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_299_1809861lstm_cell_299_1809863lstm_cell_299_1809865*
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
while_body_1809874*
condR
while_cond_1809873*K
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
NoOpNoOp&^lstm_cell_299/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_299/StatefulPartitionedCall%lstm_cell_299/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809669

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
0__inference_sequential_157_layer_call_fn_1810451
lstm_471_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_471_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1810426o
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
_user_specified_namelstm_471_input
?8
?
while_body_1810317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_299_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_299_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_299_matmul_readvariableop_resource:2(F
4while_lstm_cell_299_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_299_biasadd_readvariableop_resource:(??*while/lstm_cell_299/BiasAdd/ReadVariableOp?)while/lstm_cell_299/MatMul/ReadVariableOp?+while/lstm_cell_299/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_299/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_299/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_299/addAddV2$while/lstm_cell_299/MatMul:product:0&while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_299/BiasAddBiasAddwhile/lstm_cell_299/add:z:02while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_299/splitSplit,while/lstm_cell_299/split/split_dim:output:0$while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_299/SigmoidSigmoid"while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_1Sigmoid"while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mulMul!while/lstm_cell_299/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_299/ReluRelu"while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_1Mulwhile/lstm_cell_299/Sigmoid:y:0&while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/add_1AddV2while/lstm_cell_299/mul:z:0while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_2Sigmoid"while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_299/Relu_1Reluwhile/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_2Mul!while/lstm_cell_299/Sigmoid_2:y:0(while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_299/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_299/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_299/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_299/BiasAdd/ReadVariableOp*^while/lstm_cell_299/MatMul/ReadVariableOp,^while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_299_biasadd_readvariableop_resource5while_lstm_cell_299_biasadd_readvariableop_resource_0"n
4while_lstm_cell_299_matmul_1_readvariableop_resource6while_lstm_cell_299_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_299_matmul_readvariableop_resource4while_lstm_cell_299_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_299/BiasAdd/ReadVariableOp*while/lstm_cell_299/BiasAdd/ReadVariableOp2V
)while/lstm_cell_299/MatMul/ReadVariableOp)while/lstm_cell_299/MatMul/ReadVariableOp2Z
+while/lstm_cell_299/MatMul_1/ReadVariableOp+while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810401

inputs>
,lstm_cell_299_matmul_readvariableop_resource:2(@
.lstm_cell_299_matmul_1_readvariableop_resource:
(;
-lstm_cell_299_biasadd_readvariableop_resource:(
identity??$lstm_cell_299/BiasAdd/ReadVariableOp?#lstm_cell_299/MatMul/ReadVariableOp?%lstm_cell_299/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_299/MatMul/ReadVariableOpReadVariableOp,lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_299/MatMulMatMulstrided_slice_2:output:0+lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_299/MatMul_1MatMulzeros:output:0-lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_299/addAddV2lstm_cell_299/MatMul:product:0 lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_299/BiasAddBiasAddlstm_cell_299/add:z:0,lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_299/splitSplit&lstm_cell_299/split/split_dim:output:0lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_299/SigmoidSigmoidlstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_1Sigmoidlstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_299/mulMullstm_cell_299/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_299/ReluRelulstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_1Mullstm_cell_299/Sigmoid:y:0 lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_299/add_1AddV2lstm_cell_299/mul:z:0lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_2Sigmoidlstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_299/Relu_1Relulstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_2Mullstm_cell_299/Sigmoid_2:y:0"lstm_cell_299/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_299_matmul_readvariableop_resource.lstm_cell_299_matmul_1_readvariableop_resource-lstm_cell_299_biasadd_readvariableop_resource*
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
while_body_1810317*
condR
while_cond_1810316*K
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
NoOpNoOp%^lstm_cell_299/BiasAdd/ReadVariableOp$^lstm_cell_299/MatMul/ReadVariableOp&^lstm_cell_299/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_299/BiasAdd/ReadVariableOp$lstm_cell_299/BiasAdd/ReadVariableOp2J
#lstm_cell_299/MatMul/ReadVariableOp#lstm_cell_299/MatMul/ReadVariableOp2N
%lstm_cell_299/MatMul_1/ReadVariableOp%lstm_cell_299/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_472_layer_call_and_return_conditional_losses_1812873
inputs_0?
,lstm_cell_298_matmul_readvariableop_resource:	d?A
.lstm_cell_298_matmul_1_readvariableop_resource:	2?<
-lstm_cell_298_biasadd_readvariableop_resource:	?
identity??$lstm_cell_298/BiasAdd/ReadVariableOp?#lstm_cell_298/MatMul/ReadVariableOp?%lstm_cell_298/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_298/MatMul/ReadVariableOpReadVariableOp,lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_298/MatMulMatMulstrided_slice_2:output:0+lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_298/MatMul_1MatMulzeros:output:0-lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_298/addAddV2lstm_cell_298/MatMul:product:0 lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_298/BiasAddBiasAddlstm_cell_298/add:z:0,lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_298/splitSplit&lstm_cell_298/split/split_dim:output:0lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_298/SigmoidSigmoidlstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_1Sigmoidlstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_298/mulMullstm_cell_298/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_298/ReluRelulstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_1Mullstm_cell_298/Sigmoid:y:0 lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_298/add_1AddV2lstm_cell_298/mul:z:0lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_2Sigmoidlstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_298/Relu_1Relulstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_2Mullstm_cell_298/Sigmoid_2:y:0"lstm_cell_298/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_298_matmul_readvariableop_resource.lstm_cell_298_matmul_1_readvariableop_resource-lstm_cell_298_biasadd_readvariableop_resource*
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
while_body_1812789*
condR
while_cond_1812788*K
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
NoOpNoOp%^lstm_cell_298/BiasAdd/ReadVariableOp$^lstm_cell_298/MatMul/ReadVariableOp&^lstm_cell_298/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_298/BiasAdd/ReadVariableOp$lstm_cell_298/BiasAdd/ReadVariableOp2J
#lstm_cell_298/MatMul/ReadVariableOp#lstm_cell_298/MatMul/ReadVariableOp2N
%lstm_cell_298/MatMul_1/ReadVariableOp%lstm_cell_298/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810251

inputs?
,lstm_cell_298_matmul_readvariableop_resource:	d?A
.lstm_cell_298_matmul_1_readvariableop_resource:	2?<
-lstm_cell_298_biasadd_readvariableop_resource:	?
identity??$lstm_cell_298/BiasAdd/ReadVariableOp?#lstm_cell_298/MatMul/ReadVariableOp?%lstm_cell_298/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_298/MatMul/ReadVariableOpReadVariableOp,lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_298/MatMulMatMulstrided_slice_2:output:0+lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_298/MatMul_1MatMulzeros:output:0-lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_298/addAddV2lstm_cell_298/MatMul:product:0 lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_298/BiasAddBiasAddlstm_cell_298/add:z:0,lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_298/splitSplit&lstm_cell_298/split/split_dim:output:0lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_298/SigmoidSigmoidlstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_1Sigmoidlstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_298/mulMullstm_cell_298/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_298/ReluRelulstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_1Mullstm_cell_298/Sigmoid:y:0 lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_298/add_1AddV2lstm_cell_298/mul:z:0lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_2Sigmoidlstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_298/Relu_1Relulstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_2Mullstm_cell_298/Sigmoid_2:y:0"lstm_cell_298/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_298_matmul_readvariableop_resource.lstm_cell_298_matmul_1_readvariableop_resource-lstm_cell_298_biasadd_readvariableop_resource*
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
while_body_1810167*
condR
while_cond_1810166*K
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
NoOpNoOp%^lstm_cell_298/BiasAdd/ReadVariableOp$^lstm_cell_298/MatMul/ReadVariableOp&^lstm_cell_298/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_298/BiasAdd/ReadVariableOp$lstm_cell_298/BiasAdd/ReadVariableOp2J
#lstm_cell_298/MatMul/ReadVariableOp#lstm_cell_298/MatMul/ReadVariableOp2N
%lstm_cell_298/MatMul_1/ReadVariableOp%lstm_cell_298/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_472_layer_call_fn_1812697
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1809402|
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
while_cond_1813404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1813404___redundant_placeholder05
1while_while_cond_1813404___redundant_placeholder15
1while_while_cond_1813404___redundant_placeholder25
1while_while_cond_1813404___redundant_placeholder3
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812400
inputs_0?
,lstm_cell_297_matmul_readvariableop_resource:	?A
.lstm_cell_297_matmul_1_readvariableop_resource:	d?<
-lstm_cell_297_biasadd_readvariableop_resource:	?
identity??$lstm_cell_297/BiasAdd/ReadVariableOp?#lstm_cell_297/MatMul/ReadVariableOp?%lstm_cell_297/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_297/MatMul/ReadVariableOpReadVariableOp,lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_297/MatMulMatMulstrided_slice_2:output:0+lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_297/MatMul_1MatMulzeros:output:0-lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_297/addAddV2lstm_cell_297/MatMul:product:0 lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_297/BiasAddBiasAddlstm_cell_297/add:z:0,lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_297/splitSplit&lstm_cell_297/split/split_dim:output:0lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_297/SigmoidSigmoidlstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_1Sigmoidlstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_297/mulMullstm_cell_297/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_297/ReluRelulstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_1Mullstm_cell_297/Sigmoid:y:0 lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_297/add_1AddV2lstm_cell_297/mul:z:0lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_2Sigmoidlstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_297/Relu_1Relulstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_2Mullstm_cell_297/Sigmoid_2:y:0"lstm_cell_297/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_297_matmul_readvariableop_resource.lstm_cell_297_matmul_1_readvariableop_resource-lstm_cell_297_biasadd_readvariableop_resource*
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
while_body_1812316*
condR
while_cond_1812315*K
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
NoOpNoOp%^lstm_cell_297/BiasAdd/ReadVariableOp$^lstm_cell_297/MatMul/ReadVariableOp&^lstm_cell_297/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_297/BiasAdd/ReadVariableOp$lstm_cell_297/BiasAdd/ReadVariableOp2J
#lstm_cell_297/MatMul/ReadVariableOp#lstm_cell_297/MatMul/ReadVariableOp2N
%lstm_cell_297/MatMul_1/ReadVariableOp%lstm_cell_297/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_472_while_body_1811841.
*lstm_472_while_lstm_472_while_loop_counter4
0lstm_472_while_lstm_472_while_maximum_iterations
lstm_472_while_placeholder 
lstm_472_while_placeholder_1 
lstm_472_while_placeholder_2 
lstm_472_while_placeholder_3-
)lstm_472_while_lstm_472_strided_slice_1_0i
elstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0:	d?R
?lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?M
>lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
lstm_472_while_identity
lstm_472_while_identity_1
lstm_472_while_identity_2
lstm_472_while_identity_3
lstm_472_while_identity_4
lstm_472_while_identity_5+
'lstm_472_while_lstm_472_strided_slice_1g
clstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensorN
;lstm_472_while_lstm_cell_298_matmul_readvariableop_resource:	d?P
=lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource:	2?K
<lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource:	???3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp?2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp?4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp?
@lstm_472/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_472/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensor_0lstm_472_while_placeholderIlstm_472/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp=lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_472/while/lstm_cell_298/MatMulMatMul9lstm_472/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp?lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_472/while/lstm_cell_298/MatMul_1MatMullstm_472_while_placeholder_2<lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_472/while/lstm_cell_298/addAddV2-lstm_472/while/lstm_cell_298/MatMul:product:0/lstm_472/while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp>lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_472/while/lstm_cell_298/BiasAddBiasAdd$lstm_472/while/lstm_cell_298/add:z:0;lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_472/while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_472/while/lstm_cell_298/splitSplit5lstm_472/while/lstm_cell_298/split/split_dim:output:0-lstm_472/while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_472/while/lstm_cell_298/SigmoidSigmoid+lstm_472/while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_472/while/lstm_cell_298/Sigmoid_1Sigmoid+lstm_472/while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_472/while/lstm_cell_298/mulMul*lstm_472/while/lstm_cell_298/Sigmoid_1:y:0lstm_472_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_472/while/lstm_cell_298/ReluRelu+lstm_472/while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_472/while/lstm_cell_298/mul_1Mul(lstm_472/while/lstm_cell_298/Sigmoid:y:0/lstm_472/while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_472/while/lstm_cell_298/add_1AddV2$lstm_472/while/lstm_cell_298/mul:z:0&lstm_472/while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_472/while/lstm_cell_298/Sigmoid_2Sigmoid+lstm_472/while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_472/while/lstm_cell_298/Relu_1Relu&lstm_472/while/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_472/while/lstm_cell_298/mul_2Mul*lstm_472/while/lstm_cell_298/Sigmoid_2:y:01lstm_472/while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_472/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_472_while_placeholder_1lstm_472_while_placeholder&lstm_472/while/lstm_cell_298/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_472/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_472/while/addAddV2lstm_472_while_placeholderlstm_472/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_472/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_472/while/add_1AddV2*lstm_472_while_lstm_472_while_loop_counterlstm_472/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_472/while/IdentityIdentitylstm_472/while/add_1:z:0^lstm_472/while/NoOp*
T0*
_output_shapes
: ?
lstm_472/while/Identity_1Identity0lstm_472_while_lstm_472_while_maximum_iterations^lstm_472/while/NoOp*
T0*
_output_shapes
: t
lstm_472/while/Identity_2Identitylstm_472/while/add:z:0^lstm_472/while/NoOp*
T0*
_output_shapes
: ?
lstm_472/while/Identity_3IdentityClstm_472/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_472/while/NoOp*
T0*
_output_shapes
: ?
lstm_472/while/Identity_4Identity&lstm_472/while/lstm_cell_298/mul_2:z:0^lstm_472/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_472/while/Identity_5Identity&lstm_472/while/lstm_cell_298/add_1:z:0^lstm_472/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_472/while/NoOpNoOp4^lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp3^lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp5^lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_472_while_identity lstm_472/while/Identity:output:0"?
lstm_472_while_identity_1"lstm_472/while/Identity_1:output:0"?
lstm_472_while_identity_2"lstm_472/while/Identity_2:output:0"?
lstm_472_while_identity_3"lstm_472/while/Identity_3:output:0"?
lstm_472_while_identity_4"lstm_472/while/Identity_4:output:0"?
lstm_472_while_identity_5"lstm_472/while/Identity_5:output:0"T
'lstm_472_while_lstm_472_strided_slice_1)lstm_472_while_lstm_472_strided_slice_1_0"~
<lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource>lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0"?
=lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource?lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0"|
;lstm_472_while_lstm_cell_298_matmul_readvariableop_resource=lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0"?
clstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensorelstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp2h
2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp2l
4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_471_layer_call_fn_1812114

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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810947s
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
while_body_1809333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_298_1809357_0:	d?0
while_lstm_cell_298_1809359_0:	2?,
while_lstm_cell_298_1809361_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_298_1809357:	d?.
while_lstm_cell_298_1809359:	2?*
while_lstm_cell_298_1809361:	???+while/lstm_cell_298/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_298/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_298_1809357_0while_lstm_cell_298_1809359_0while_lstm_cell_298_1809361_0*
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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809319?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_298/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_298/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_298/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_298/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_298_1809357while_lstm_cell_298_1809357_0"<
while_lstm_cell_298_1809359while_lstm_cell_298_1809359_0"<
while_lstm_cell_298_1809361while_lstm_cell_298_1809361_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_298/StatefulPartitionedCall+while/lstm_cell_298/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1810167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_298_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_298_matmul_readvariableop_resource:	d?G
4while_lstm_cell_298_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_298_biasadd_readvariableop_resource:	???*while/lstm_cell_298/BiasAdd/ReadVariableOp?)while/lstm_cell_298/MatMul/ReadVariableOp?+while/lstm_cell_298/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_298/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_298/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_298/addAddV2$while/lstm_cell_298/MatMul:product:0&while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_298/BiasAddBiasAddwhile/lstm_cell_298/add:z:02while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_298/splitSplit,while/lstm_cell_298/split/split_dim:output:0$while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_298/SigmoidSigmoid"while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_1Sigmoid"while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mulMul!while/lstm_cell_298/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_298/ReluRelu"while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_1Mulwhile/lstm_cell_298/Sigmoid:y:0&while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/add_1AddV2while/lstm_cell_298/mul:z:0while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_2Sigmoid"while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_298/Relu_1Reluwhile/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_2Mul!while/lstm_cell_298/Sigmoid_2:y:0(while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_298/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_298/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_298/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_298/BiasAdd/ReadVariableOp*^while/lstm_cell_298/MatMul/ReadVariableOp,^while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_298_biasadd_readvariableop_resource5while_lstm_cell_298_biasadd_readvariableop_resource_0"n
4while_lstm_cell_298_matmul_1_readvariableop_resource6while_lstm_cell_298_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_298_matmul_readvariableop_resource4while_lstm_cell_298_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_298/BiasAdd/ReadVariableOp*while/lstm_cell_298/BiasAdd/ReadVariableOp2V
)while/lstm_cell_298/MatMul/ReadVariableOp)while/lstm_cell_298/MatMul/ReadVariableOp2Z
+while/lstm_cell_298/MatMul_1/ReadVariableOp+while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_1808902
lstm_471_inputW
Dsequential_157_lstm_471_lstm_cell_297_matmul_readvariableop_resource:	?Y
Fsequential_157_lstm_471_lstm_cell_297_matmul_1_readvariableop_resource:	d?T
Esequential_157_lstm_471_lstm_cell_297_biasadd_readvariableop_resource:	?W
Dsequential_157_lstm_472_lstm_cell_298_matmul_readvariableop_resource:	d?Y
Fsequential_157_lstm_472_lstm_cell_298_matmul_1_readvariableop_resource:	2?T
Esequential_157_lstm_472_lstm_cell_298_biasadd_readvariableop_resource:	?V
Dsequential_157_lstm_473_lstm_cell_299_matmul_readvariableop_resource:2(X
Fsequential_157_lstm_473_lstm_cell_299_matmul_1_readvariableop_resource:
(S
Esequential_157_lstm_473_lstm_cell_299_biasadd_readvariableop_resource:(I
7sequential_157_dense_157_matmul_readvariableop_resource:
F
8sequential_157_dense_157_biasadd_readvariableop_resource:
identity??/sequential_157/dense_157/BiasAdd/ReadVariableOp?.sequential_157/dense_157/MatMul/ReadVariableOp?<sequential_157/lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp?;sequential_157/lstm_471/lstm_cell_297/MatMul/ReadVariableOp?=sequential_157/lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp?sequential_157/lstm_471/while?<sequential_157/lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp?;sequential_157/lstm_472/lstm_cell_298/MatMul/ReadVariableOp?=sequential_157/lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp?sequential_157/lstm_472/while?<sequential_157/lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp?;sequential_157/lstm_473/lstm_cell_299/MatMul/ReadVariableOp?=sequential_157/lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp?sequential_157/lstm_473/while[
sequential_157/lstm_471/ShapeShapelstm_471_input*
T0*
_output_shapes
:u
+sequential_157/lstm_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_157/lstm_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_157/lstm_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_157/lstm_471/strided_sliceStridedSlice&sequential_157/lstm_471/Shape:output:04sequential_157/lstm_471/strided_slice/stack:output:06sequential_157/lstm_471/strided_slice/stack_1:output:06sequential_157/lstm_471/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_157/lstm_471/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_157/lstm_471/zeros/packedPack.sequential_157/lstm_471/strided_slice:output:0/sequential_157/lstm_471/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_157/lstm_471/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_157/lstm_471/zerosFill-sequential_157/lstm_471/zeros/packed:output:0,sequential_157/lstm_471/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_157/lstm_471/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_157/lstm_471/zeros_1/packedPack.sequential_157/lstm_471/strided_slice:output:01sequential_157/lstm_471/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_157/lstm_471/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_157/lstm_471/zeros_1Fill/sequential_157/lstm_471/zeros_1/packed:output:0.sequential_157/lstm_471/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_157/lstm_471/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_157/lstm_471/transpose	Transposelstm_471_input/sequential_157/lstm_471/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_157/lstm_471/Shape_1Shape%sequential_157/lstm_471/transpose:y:0*
T0*
_output_shapes
:w
-sequential_157/lstm_471/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_471/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_157/lstm_471/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_471/strided_slice_1StridedSlice(sequential_157/lstm_471/Shape_1:output:06sequential_157/lstm_471/strided_slice_1/stack:output:08sequential_157/lstm_471/strided_slice_1/stack_1:output:08sequential_157/lstm_471/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_157/lstm_471/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_157/lstm_471/TensorArrayV2TensorListReserve<sequential_157/lstm_471/TensorArrayV2/element_shape:output:00sequential_157/lstm_471/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_157/lstm_471/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_157/lstm_471/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_157/lstm_471/transpose:y:0Vsequential_157/lstm_471/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_157/lstm_471/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_471/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_157/lstm_471/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_471/strided_slice_2StridedSlice%sequential_157/lstm_471/transpose:y:06sequential_157/lstm_471/strided_slice_2/stack:output:08sequential_157/lstm_471/strided_slice_2/stack_1:output:08sequential_157/lstm_471/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_157/lstm_471/lstm_cell_297/MatMul/ReadVariableOpReadVariableOpDsequential_157_lstm_471_lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_157/lstm_471/lstm_cell_297/MatMulMatMul0sequential_157/lstm_471/strided_slice_2:output:0Csequential_157/lstm_471/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_157/lstm_471/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOpFsequential_157_lstm_471_lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_157/lstm_471/lstm_cell_297/MatMul_1MatMul&sequential_157/lstm_471/zeros:output:0Esequential_157/lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_157/lstm_471/lstm_cell_297/addAddV26sequential_157/lstm_471/lstm_cell_297/MatMul:product:08sequential_157/lstm_471/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_157/lstm_471/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOpEsequential_157_lstm_471_lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_157/lstm_471/lstm_cell_297/BiasAddBiasAdd-sequential_157/lstm_471/lstm_cell_297/add:z:0Dsequential_157/lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_157/lstm_471/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_157/lstm_471/lstm_cell_297/splitSplit>sequential_157/lstm_471/lstm_cell_297/split/split_dim:output:06sequential_157/lstm_471/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_157/lstm_471/lstm_cell_297/SigmoidSigmoid4sequential_157/lstm_471/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_157/lstm_471/lstm_cell_297/Sigmoid_1Sigmoid4sequential_157/lstm_471/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_157/lstm_471/lstm_cell_297/mulMul3sequential_157/lstm_471/lstm_cell_297/Sigmoid_1:y:0(sequential_157/lstm_471/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_157/lstm_471/lstm_cell_297/ReluRelu4sequential_157/lstm_471/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_157/lstm_471/lstm_cell_297/mul_1Mul1sequential_157/lstm_471/lstm_cell_297/Sigmoid:y:08sequential_157/lstm_471/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_157/lstm_471/lstm_cell_297/add_1AddV2-sequential_157/lstm_471/lstm_cell_297/mul:z:0/sequential_157/lstm_471/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_157/lstm_471/lstm_cell_297/Sigmoid_2Sigmoid4sequential_157/lstm_471/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_157/lstm_471/lstm_cell_297/Relu_1Relu/sequential_157/lstm_471/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_157/lstm_471/lstm_cell_297/mul_2Mul3sequential_157/lstm_471/lstm_cell_297/Sigmoid_2:y:0:sequential_157/lstm_471/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_157/lstm_471/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_157/lstm_471/TensorArrayV2_1TensorListReserve>sequential_157/lstm_471/TensorArrayV2_1/element_shape:output:00sequential_157/lstm_471/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_157/lstm_471/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_157/lstm_471/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_157/lstm_471/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_157/lstm_471/whileWhile3sequential_157/lstm_471/while/loop_counter:output:09sequential_157/lstm_471/while/maximum_iterations:output:0%sequential_157/lstm_471/time:output:00sequential_157/lstm_471/TensorArrayV2_1:handle:0&sequential_157/lstm_471/zeros:output:0(sequential_157/lstm_471/zeros_1:output:00sequential_157/lstm_471/strided_slice_1:output:0Osequential_157/lstm_471/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_157_lstm_471_lstm_cell_297_matmul_readvariableop_resourceFsequential_157_lstm_471_lstm_cell_297_matmul_1_readvariableop_resourceEsequential_157_lstm_471_lstm_cell_297_biasadd_readvariableop_resource*
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
*sequential_157_lstm_471_while_body_1808534*6
cond.R,
*sequential_157_lstm_471_while_cond_1808533*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_157/lstm_471/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_157/lstm_471/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_157/lstm_471/while:output:3Qsequential_157/lstm_471/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_157/lstm_471/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_157/lstm_471/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_471/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_471/strided_slice_3StridedSliceCsequential_157/lstm_471/TensorArrayV2Stack/TensorListStack:tensor:06sequential_157/lstm_471/strided_slice_3/stack:output:08sequential_157/lstm_471/strided_slice_3/stack_1:output:08sequential_157/lstm_471/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_157/lstm_471/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_157/lstm_471/transpose_1	TransposeCsequential_157/lstm_471/TensorArrayV2Stack/TensorListStack:tensor:01sequential_157/lstm_471/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_157/lstm_471/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_157/lstm_472/ShapeShape'sequential_157/lstm_471/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_157/lstm_472/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_157/lstm_472/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_157/lstm_472/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_157/lstm_472/strided_sliceStridedSlice&sequential_157/lstm_472/Shape:output:04sequential_157/lstm_472/strided_slice/stack:output:06sequential_157/lstm_472/strided_slice/stack_1:output:06sequential_157/lstm_472/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_157/lstm_472/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_157/lstm_472/zeros/packedPack.sequential_157/lstm_472/strided_slice:output:0/sequential_157/lstm_472/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_157/lstm_472/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_157/lstm_472/zerosFill-sequential_157/lstm_472/zeros/packed:output:0,sequential_157/lstm_472/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_157/lstm_472/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_157/lstm_472/zeros_1/packedPack.sequential_157/lstm_472/strided_slice:output:01sequential_157/lstm_472/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_157/lstm_472/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_157/lstm_472/zeros_1Fill/sequential_157/lstm_472/zeros_1/packed:output:0.sequential_157/lstm_472/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_157/lstm_472/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_157/lstm_472/transpose	Transpose'sequential_157/lstm_471/transpose_1:y:0/sequential_157/lstm_472/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_157/lstm_472/Shape_1Shape%sequential_157/lstm_472/transpose:y:0*
T0*
_output_shapes
:w
-sequential_157/lstm_472/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_472/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_157/lstm_472/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_472/strided_slice_1StridedSlice(sequential_157/lstm_472/Shape_1:output:06sequential_157/lstm_472/strided_slice_1/stack:output:08sequential_157/lstm_472/strided_slice_1/stack_1:output:08sequential_157/lstm_472/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_157/lstm_472/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_157/lstm_472/TensorArrayV2TensorListReserve<sequential_157/lstm_472/TensorArrayV2/element_shape:output:00sequential_157/lstm_472/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_157/lstm_472/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_157/lstm_472/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_157/lstm_472/transpose:y:0Vsequential_157/lstm_472/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_157/lstm_472/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_472/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_157/lstm_472/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_472/strided_slice_2StridedSlice%sequential_157/lstm_472/transpose:y:06sequential_157/lstm_472/strided_slice_2/stack:output:08sequential_157/lstm_472/strided_slice_2/stack_1:output:08sequential_157/lstm_472/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_157/lstm_472/lstm_cell_298/MatMul/ReadVariableOpReadVariableOpDsequential_157_lstm_472_lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_157/lstm_472/lstm_cell_298/MatMulMatMul0sequential_157/lstm_472/strided_slice_2:output:0Csequential_157/lstm_472/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_157/lstm_472/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOpFsequential_157_lstm_472_lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_157/lstm_472/lstm_cell_298/MatMul_1MatMul&sequential_157/lstm_472/zeros:output:0Esequential_157/lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_157/lstm_472/lstm_cell_298/addAddV26sequential_157/lstm_472/lstm_cell_298/MatMul:product:08sequential_157/lstm_472/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_157/lstm_472/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOpEsequential_157_lstm_472_lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_157/lstm_472/lstm_cell_298/BiasAddBiasAdd-sequential_157/lstm_472/lstm_cell_298/add:z:0Dsequential_157/lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_157/lstm_472/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_157/lstm_472/lstm_cell_298/splitSplit>sequential_157/lstm_472/lstm_cell_298/split/split_dim:output:06sequential_157/lstm_472/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_157/lstm_472/lstm_cell_298/SigmoidSigmoid4sequential_157/lstm_472/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_157/lstm_472/lstm_cell_298/Sigmoid_1Sigmoid4sequential_157/lstm_472/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_157/lstm_472/lstm_cell_298/mulMul3sequential_157/lstm_472/lstm_cell_298/Sigmoid_1:y:0(sequential_157/lstm_472/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_157/lstm_472/lstm_cell_298/ReluRelu4sequential_157/lstm_472/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_157/lstm_472/lstm_cell_298/mul_1Mul1sequential_157/lstm_472/lstm_cell_298/Sigmoid:y:08sequential_157/lstm_472/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_157/lstm_472/lstm_cell_298/add_1AddV2-sequential_157/lstm_472/lstm_cell_298/mul:z:0/sequential_157/lstm_472/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_157/lstm_472/lstm_cell_298/Sigmoid_2Sigmoid4sequential_157/lstm_472/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_157/lstm_472/lstm_cell_298/Relu_1Relu/sequential_157/lstm_472/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_157/lstm_472/lstm_cell_298/mul_2Mul3sequential_157/lstm_472/lstm_cell_298/Sigmoid_2:y:0:sequential_157/lstm_472/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_157/lstm_472/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_157/lstm_472/TensorArrayV2_1TensorListReserve>sequential_157/lstm_472/TensorArrayV2_1/element_shape:output:00sequential_157/lstm_472/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_157/lstm_472/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_157/lstm_472/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_157/lstm_472/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_157/lstm_472/whileWhile3sequential_157/lstm_472/while/loop_counter:output:09sequential_157/lstm_472/while/maximum_iterations:output:0%sequential_157/lstm_472/time:output:00sequential_157/lstm_472/TensorArrayV2_1:handle:0&sequential_157/lstm_472/zeros:output:0(sequential_157/lstm_472/zeros_1:output:00sequential_157/lstm_472/strided_slice_1:output:0Osequential_157/lstm_472/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_157_lstm_472_lstm_cell_298_matmul_readvariableop_resourceFsequential_157_lstm_472_lstm_cell_298_matmul_1_readvariableop_resourceEsequential_157_lstm_472_lstm_cell_298_biasadd_readvariableop_resource*
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
*sequential_157_lstm_472_while_body_1808673*6
cond.R,
*sequential_157_lstm_472_while_cond_1808672*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_157/lstm_472/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_157/lstm_472/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_157/lstm_472/while:output:3Qsequential_157/lstm_472/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_157/lstm_472/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_157/lstm_472/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_472/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_472/strided_slice_3StridedSliceCsequential_157/lstm_472/TensorArrayV2Stack/TensorListStack:tensor:06sequential_157/lstm_472/strided_slice_3/stack:output:08sequential_157/lstm_472/strided_slice_3/stack_1:output:08sequential_157/lstm_472/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_157/lstm_472/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_157/lstm_472/transpose_1	TransposeCsequential_157/lstm_472/TensorArrayV2Stack/TensorListStack:tensor:01sequential_157/lstm_472/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_157/lstm_472/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_157/lstm_473/ShapeShape'sequential_157/lstm_472/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_157/lstm_473/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_157/lstm_473/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_157/lstm_473/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_157/lstm_473/strided_sliceStridedSlice&sequential_157/lstm_473/Shape:output:04sequential_157/lstm_473/strided_slice/stack:output:06sequential_157/lstm_473/strided_slice/stack_1:output:06sequential_157/lstm_473/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_157/lstm_473/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_157/lstm_473/zeros/packedPack.sequential_157/lstm_473/strided_slice:output:0/sequential_157/lstm_473/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_157/lstm_473/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_157/lstm_473/zerosFill-sequential_157/lstm_473/zeros/packed:output:0,sequential_157/lstm_473/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_157/lstm_473/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_157/lstm_473/zeros_1/packedPack.sequential_157/lstm_473/strided_slice:output:01sequential_157/lstm_473/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_157/lstm_473/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_157/lstm_473/zeros_1Fill/sequential_157/lstm_473/zeros_1/packed:output:0.sequential_157/lstm_473/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_157/lstm_473/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_157/lstm_473/transpose	Transpose'sequential_157/lstm_472/transpose_1:y:0/sequential_157/lstm_473/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_157/lstm_473/Shape_1Shape%sequential_157/lstm_473/transpose:y:0*
T0*
_output_shapes
:w
-sequential_157/lstm_473/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_473/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_157/lstm_473/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_473/strided_slice_1StridedSlice(sequential_157/lstm_473/Shape_1:output:06sequential_157/lstm_473/strided_slice_1/stack:output:08sequential_157/lstm_473/strided_slice_1/stack_1:output:08sequential_157/lstm_473/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_157/lstm_473/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_157/lstm_473/TensorArrayV2TensorListReserve<sequential_157/lstm_473/TensorArrayV2/element_shape:output:00sequential_157/lstm_473/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_157/lstm_473/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_157/lstm_473/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_157/lstm_473/transpose:y:0Vsequential_157/lstm_473/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_157/lstm_473/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_473/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_157/lstm_473/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_473/strided_slice_2StridedSlice%sequential_157/lstm_473/transpose:y:06sequential_157/lstm_473/strided_slice_2/stack:output:08sequential_157/lstm_473/strided_slice_2/stack_1:output:08sequential_157/lstm_473/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_157/lstm_473/lstm_cell_299/MatMul/ReadVariableOpReadVariableOpDsequential_157_lstm_473_lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_157/lstm_473/lstm_cell_299/MatMulMatMul0sequential_157/lstm_473/strided_slice_2:output:0Csequential_157/lstm_473/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_157/lstm_473/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOpFsequential_157_lstm_473_lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_157/lstm_473/lstm_cell_299/MatMul_1MatMul&sequential_157/lstm_473/zeros:output:0Esequential_157/lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_157/lstm_473/lstm_cell_299/addAddV26sequential_157/lstm_473/lstm_cell_299/MatMul:product:08sequential_157/lstm_473/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_157/lstm_473/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOpEsequential_157_lstm_473_lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_157/lstm_473/lstm_cell_299/BiasAddBiasAdd-sequential_157/lstm_473/lstm_cell_299/add:z:0Dsequential_157/lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_157/lstm_473/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_157/lstm_473/lstm_cell_299/splitSplit>sequential_157/lstm_473/lstm_cell_299/split/split_dim:output:06sequential_157/lstm_473/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_157/lstm_473/lstm_cell_299/SigmoidSigmoid4sequential_157/lstm_473/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_157/lstm_473/lstm_cell_299/Sigmoid_1Sigmoid4sequential_157/lstm_473/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_157/lstm_473/lstm_cell_299/mulMul3sequential_157/lstm_473/lstm_cell_299/Sigmoid_1:y:0(sequential_157/lstm_473/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_157/lstm_473/lstm_cell_299/ReluRelu4sequential_157/lstm_473/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_157/lstm_473/lstm_cell_299/mul_1Mul1sequential_157/lstm_473/lstm_cell_299/Sigmoid:y:08sequential_157/lstm_473/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_157/lstm_473/lstm_cell_299/add_1AddV2-sequential_157/lstm_473/lstm_cell_299/mul:z:0/sequential_157/lstm_473/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_157/lstm_473/lstm_cell_299/Sigmoid_2Sigmoid4sequential_157/lstm_473/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_157/lstm_473/lstm_cell_299/Relu_1Relu/sequential_157/lstm_473/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_157/lstm_473/lstm_cell_299/mul_2Mul3sequential_157/lstm_473/lstm_cell_299/Sigmoid_2:y:0:sequential_157/lstm_473/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_157/lstm_473/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_157/lstm_473/TensorArrayV2_1TensorListReserve>sequential_157/lstm_473/TensorArrayV2_1/element_shape:output:00sequential_157/lstm_473/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_157/lstm_473/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_157/lstm_473/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_157/lstm_473/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_157/lstm_473/whileWhile3sequential_157/lstm_473/while/loop_counter:output:09sequential_157/lstm_473/while/maximum_iterations:output:0%sequential_157/lstm_473/time:output:00sequential_157/lstm_473/TensorArrayV2_1:handle:0&sequential_157/lstm_473/zeros:output:0(sequential_157/lstm_473/zeros_1:output:00sequential_157/lstm_473/strided_slice_1:output:0Osequential_157/lstm_473/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_157_lstm_473_lstm_cell_299_matmul_readvariableop_resourceFsequential_157_lstm_473_lstm_cell_299_matmul_1_readvariableop_resourceEsequential_157_lstm_473_lstm_cell_299_biasadd_readvariableop_resource*
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
*sequential_157_lstm_473_while_body_1808812*6
cond.R,
*sequential_157_lstm_473_while_cond_1808811*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_157/lstm_473/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_157/lstm_473/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_157/lstm_473/while:output:3Qsequential_157/lstm_473/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_157/lstm_473/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_157/lstm_473/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_157/lstm_473/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_157/lstm_473/strided_slice_3StridedSliceCsequential_157/lstm_473/TensorArrayV2Stack/TensorListStack:tensor:06sequential_157/lstm_473/strided_slice_3/stack:output:08sequential_157/lstm_473/strided_slice_3/stack_1:output:08sequential_157/lstm_473/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_157/lstm_473/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_157/lstm_473/transpose_1	TransposeCsequential_157/lstm_473/TensorArrayV2Stack/TensorListStack:tensor:01sequential_157/lstm_473/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_157/lstm_473/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_157/dense_157/MatMul/ReadVariableOpReadVariableOp7sequential_157_dense_157_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_157/dense_157/MatMulMatMul0sequential_157/lstm_473/strided_slice_3:output:06sequential_157/dense_157/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_157/dense_157/BiasAdd/ReadVariableOpReadVariableOp8sequential_157_dense_157_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_157/dense_157/BiasAddBiasAdd)sequential_157/dense_157/MatMul:product:07sequential_157/dense_157/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_157/dense_157/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_157/dense_157/BiasAdd/ReadVariableOp/^sequential_157/dense_157/MatMul/ReadVariableOp=^sequential_157/lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp<^sequential_157/lstm_471/lstm_cell_297/MatMul/ReadVariableOp>^sequential_157/lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp^sequential_157/lstm_471/while=^sequential_157/lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp<^sequential_157/lstm_472/lstm_cell_298/MatMul/ReadVariableOp>^sequential_157/lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp^sequential_157/lstm_472/while=^sequential_157/lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp<^sequential_157/lstm_473/lstm_cell_299/MatMul/ReadVariableOp>^sequential_157/lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp^sequential_157/lstm_473/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_157/dense_157/BiasAdd/ReadVariableOp/sequential_157/dense_157/BiasAdd/ReadVariableOp2`
.sequential_157/dense_157/MatMul/ReadVariableOp.sequential_157/dense_157/MatMul/ReadVariableOp2|
<sequential_157/lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp<sequential_157/lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp2z
;sequential_157/lstm_471/lstm_cell_297/MatMul/ReadVariableOp;sequential_157/lstm_471/lstm_cell_297/MatMul/ReadVariableOp2~
=sequential_157/lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp=sequential_157/lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp2>
sequential_157/lstm_471/whilesequential_157/lstm_471/while2|
<sequential_157/lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp<sequential_157/lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp2z
;sequential_157/lstm_472/lstm_cell_298/MatMul/ReadVariableOp;sequential_157/lstm_472/lstm_cell_298/MatMul/ReadVariableOp2~
=sequential_157/lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp=sequential_157/lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp2>
sequential_157/lstm_472/whilesequential_157/lstm_472/while2|
<sequential_157/lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp<sequential_157/lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp2z
;sequential_157/lstm_473/lstm_cell_299/MatMul/ReadVariableOp;sequential_157/lstm_473/lstm_cell_299/MatMul/ReadVariableOp2~
=sequential_157/lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp=sequential_157/lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp2>
sequential_157/lstm_473/whilesequential_157/lstm_473/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_471_input
?8
?
while_body_1810863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_297_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_297_matmul_readvariableop_resource:	?G
4while_lstm_cell_297_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_297_biasadd_readvariableop_resource:	???*while/lstm_cell_297/BiasAdd/ReadVariableOp?)while/lstm_cell_297/MatMul/ReadVariableOp?+while/lstm_cell_297/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_297/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_297/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_297/addAddV2$while/lstm_cell_297/MatMul:product:0&while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_297/BiasAddBiasAddwhile/lstm_cell_297/add:z:02while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_297/splitSplit,while/lstm_cell_297/split/split_dim:output:0$while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_297/SigmoidSigmoid"while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_1Sigmoid"while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mulMul!while/lstm_cell_297/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_297/ReluRelu"while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_1Mulwhile/lstm_cell_297/Sigmoid:y:0&while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/add_1AddV2while/lstm_cell_297/mul:z:0while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_2Sigmoid"while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_297/Relu_1Reluwhile/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_2Mul!while/lstm_cell_297/Sigmoid_2:y:0(while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_297/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_297/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_297/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_297/BiasAdd/ReadVariableOp*^while/lstm_cell_297/MatMul/ReadVariableOp,^while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_297_biasadd_readvariableop_resource5while_lstm_cell_297_biasadd_readvariableop_resource_0"n
4while_lstm_cell_297_matmul_1_readvariableop_resource6while_lstm_cell_297_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_297_matmul_readvariableop_resource4while_lstm_cell_297_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_297/BiasAdd/ReadVariableOp*while/lstm_cell_297/BiasAdd/ReadVariableOp2V
)while/lstm_cell_297/MatMul/ReadVariableOp)while/lstm_cell_297/MatMul/ReadVariableOp2Z
+while/lstm_cell_297/MatMul_1/ReadVariableOp+while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1812070

inputsH
5lstm_471_lstm_cell_297_matmul_readvariableop_resource:	?J
7lstm_471_lstm_cell_297_matmul_1_readvariableop_resource:	d?E
6lstm_471_lstm_cell_297_biasadd_readvariableop_resource:	?H
5lstm_472_lstm_cell_298_matmul_readvariableop_resource:	d?J
7lstm_472_lstm_cell_298_matmul_1_readvariableop_resource:	2?E
6lstm_472_lstm_cell_298_biasadd_readvariableop_resource:	?G
5lstm_473_lstm_cell_299_matmul_readvariableop_resource:2(I
7lstm_473_lstm_cell_299_matmul_1_readvariableop_resource:
(D
6lstm_473_lstm_cell_299_biasadd_readvariableop_resource:(:
(dense_157_matmul_readvariableop_resource:
7
)dense_157_biasadd_readvariableop_resource:
identity?? dense_157/BiasAdd/ReadVariableOp?dense_157/MatMul/ReadVariableOp?-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp?,lstm_471/lstm_cell_297/MatMul/ReadVariableOp?.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp?lstm_471/while?-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp?,lstm_472/lstm_cell_298/MatMul/ReadVariableOp?.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp?lstm_472/while?-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp?,lstm_473/lstm_cell_299/MatMul/ReadVariableOp?.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp?lstm_473/whileD
lstm_471/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_471/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_471/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_471/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_sliceStridedSlicelstm_471/Shape:output:0%lstm_471/strided_slice/stack:output:0'lstm_471/strided_slice/stack_1:output:0'lstm_471/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_471/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_471/zeros/packedPacklstm_471/strided_slice:output:0 lstm_471/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_471/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_471/zerosFilllstm_471/zeros/packed:output:0lstm_471/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_471/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_471/zeros_1/packedPacklstm_471/strided_slice:output:0"lstm_471/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_471/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_471/zeros_1Fill lstm_471/zeros_1/packed:output:0lstm_471/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_471/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_471/transpose	Transposeinputs lstm_471/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_471/Shape_1Shapelstm_471/transpose:y:0*
T0*
_output_shapes
:h
lstm_471/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_471/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_471/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_slice_1StridedSlicelstm_471/Shape_1:output:0'lstm_471/strided_slice_1/stack:output:0)lstm_471/strided_slice_1/stack_1:output:0)lstm_471/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_471/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_471/TensorArrayV2TensorListReserve-lstm_471/TensorArrayV2/element_shape:output:0!lstm_471/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_471/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_471/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_471/transpose:y:0Glstm_471/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_471/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_471/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_471/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_slice_2StridedSlicelstm_471/transpose:y:0'lstm_471/strided_slice_2/stack:output:0)lstm_471/strided_slice_2/stack_1:output:0)lstm_471/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_471/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp5lstm_471_lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_471/lstm_cell_297/MatMulMatMul!lstm_471/strided_slice_2:output:04lstm_471/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp7lstm_471_lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_471/lstm_cell_297/MatMul_1MatMullstm_471/zeros:output:06lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_471/lstm_cell_297/addAddV2'lstm_471/lstm_cell_297/MatMul:product:0)lstm_471/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp6lstm_471_lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_471/lstm_cell_297/BiasAddBiasAddlstm_471/lstm_cell_297/add:z:05lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_471/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_471/lstm_cell_297/splitSplit/lstm_471/lstm_cell_297/split/split_dim:output:0'lstm_471/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_471/lstm_cell_297/SigmoidSigmoid%lstm_471/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_471/lstm_cell_297/Sigmoid_1Sigmoid%lstm_471/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/mulMul$lstm_471/lstm_cell_297/Sigmoid_1:y:0lstm_471/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_471/lstm_cell_297/ReluRelu%lstm_471/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/mul_1Mul"lstm_471/lstm_cell_297/Sigmoid:y:0)lstm_471/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/add_1AddV2lstm_471/lstm_cell_297/mul:z:0 lstm_471/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_471/lstm_cell_297/Sigmoid_2Sigmoid%lstm_471/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_471/lstm_cell_297/Relu_1Relu lstm_471/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_471/lstm_cell_297/mul_2Mul$lstm_471/lstm_cell_297/Sigmoid_2:y:0+lstm_471/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_471/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_471/TensorArrayV2_1TensorListReserve/lstm_471/TensorArrayV2_1/element_shape:output:0!lstm_471/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_471/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_471/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_471/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_471/whileWhile$lstm_471/while/loop_counter:output:0*lstm_471/while/maximum_iterations:output:0lstm_471/time:output:0!lstm_471/TensorArrayV2_1:handle:0lstm_471/zeros:output:0lstm_471/zeros_1:output:0!lstm_471/strided_slice_1:output:0@lstm_471/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_471_lstm_cell_297_matmul_readvariableop_resource7lstm_471_lstm_cell_297_matmul_1_readvariableop_resource6lstm_471_lstm_cell_297_biasadd_readvariableop_resource*
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
lstm_471_while_body_1811702*'
condR
lstm_471_while_cond_1811701*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_471/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_471/TensorArrayV2Stack/TensorListStackTensorListStacklstm_471/while:output:3Blstm_471/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_471/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_471/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_471/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_471/strided_slice_3StridedSlice4lstm_471/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_471/strided_slice_3/stack:output:0)lstm_471/strided_slice_3/stack_1:output:0)lstm_471/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_471/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_471/transpose_1	Transpose4lstm_471/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_471/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_471/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_472/ShapeShapelstm_471/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_472/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_472/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_472/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_sliceStridedSlicelstm_472/Shape:output:0%lstm_472/strided_slice/stack:output:0'lstm_472/strided_slice/stack_1:output:0'lstm_472/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_472/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_472/zeros/packedPacklstm_472/strided_slice:output:0 lstm_472/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_472/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_472/zerosFilllstm_472/zeros/packed:output:0lstm_472/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_472/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_472/zeros_1/packedPacklstm_472/strided_slice:output:0"lstm_472/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_472/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_472/zeros_1Fill lstm_472/zeros_1/packed:output:0lstm_472/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_472/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_472/transpose	Transposelstm_471/transpose_1:y:0 lstm_472/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_472/Shape_1Shapelstm_472/transpose:y:0*
T0*
_output_shapes
:h
lstm_472/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_472/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_472/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_slice_1StridedSlicelstm_472/Shape_1:output:0'lstm_472/strided_slice_1/stack:output:0)lstm_472/strided_slice_1/stack_1:output:0)lstm_472/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_472/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_472/TensorArrayV2TensorListReserve-lstm_472/TensorArrayV2/element_shape:output:0!lstm_472/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_472/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_472/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_472/transpose:y:0Glstm_472/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_472/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_472/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_472/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_slice_2StridedSlicelstm_472/transpose:y:0'lstm_472/strided_slice_2/stack:output:0)lstm_472/strided_slice_2/stack_1:output:0)lstm_472/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_472/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp5lstm_472_lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_472/lstm_cell_298/MatMulMatMul!lstm_472/strided_slice_2:output:04lstm_472/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp7lstm_472_lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_472/lstm_cell_298/MatMul_1MatMullstm_472/zeros:output:06lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_472/lstm_cell_298/addAddV2'lstm_472/lstm_cell_298/MatMul:product:0)lstm_472/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp6lstm_472_lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_472/lstm_cell_298/BiasAddBiasAddlstm_472/lstm_cell_298/add:z:05lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_472/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_472/lstm_cell_298/splitSplit/lstm_472/lstm_cell_298/split/split_dim:output:0'lstm_472/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_472/lstm_cell_298/SigmoidSigmoid%lstm_472/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_472/lstm_cell_298/Sigmoid_1Sigmoid%lstm_472/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/mulMul$lstm_472/lstm_cell_298/Sigmoid_1:y:0lstm_472/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_472/lstm_cell_298/ReluRelu%lstm_472/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/mul_1Mul"lstm_472/lstm_cell_298/Sigmoid:y:0)lstm_472/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/add_1AddV2lstm_472/lstm_cell_298/mul:z:0 lstm_472/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_472/lstm_cell_298/Sigmoid_2Sigmoid%lstm_472/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_472/lstm_cell_298/Relu_1Relu lstm_472/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_472/lstm_cell_298/mul_2Mul$lstm_472/lstm_cell_298/Sigmoid_2:y:0+lstm_472/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_472/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_472/TensorArrayV2_1TensorListReserve/lstm_472/TensorArrayV2_1/element_shape:output:0!lstm_472/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_472/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_472/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_472/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_472/whileWhile$lstm_472/while/loop_counter:output:0*lstm_472/while/maximum_iterations:output:0lstm_472/time:output:0!lstm_472/TensorArrayV2_1:handle:0lstm_472/zeros:output:0lstm_472/zeros_1:output:0!lstm_472/strided_slice_1:output:0@lstm_472/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_472_lstm_cell_298_matmul_readvariableop_resource7lstm_472_lstm_cell_298_matmul_1_readvariableop_resource6lstm_472_lstm_cell_298_biasadd_readvariableop_resource*
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
lstm_472_while_body_1811841*'
condR
lstm_472_while_cond_1811840*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_472/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_472/TensorArrayV2Stack/TensorListStackTensorListStacklstm_472/while:output:3Blstm_472/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_472/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_472/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_472/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_472/strided_slice_3StridedSlice4lstm_472/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_472/strided_slice_3/stack:output:0)lstm_472/strided_slice_3/stack_1:output:0)lstm_472/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_472/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_472/transpose_1	Transpose4lstm_472/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_472/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_472/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_473/ShapeShapelstm_472/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_473/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_473/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_473/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_sliceStridedSlicelstm_473/Shape:output:0%lstm_473/strided_slice/stack:output:0'lstm_473/strided_slice/stack_1:output:0'lstm_473/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_473/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_473/zeros/packedPacklstm_473/strided_slice:output:0 lstm_473/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_473/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_473/zerosFilllstm_473/zeros/packed:output:0lstm_473/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_473/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_473/zeros_1/packedPacklstm_473/strided_slice:output:0"lstm_473/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_473/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_473/zeros_1Fill lstm_473/zeros_1/packed:output:0lstm_473/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_473/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_473/transpose	Transposelstm_472/transpose_1:y:0 lstm_473/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_473/Shape_1Shapelstm_473/transpose:y:0*
T0*
_output_shapes
:h
lstm_473/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_473/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_473/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_slice_1StridedSlicelstm_473/Shape_1:output:0'lstm_473/strided_slice_1/stack:output:0)lstm_473/strided_slice_1/stack_1:output:0)lstm_473/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_473/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_473/TensorArrayV2TensorListReserve-lstm_473/TensorArrayV2/element_shape:output:0!lstm_473/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_473/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_473/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_473/transpose:y:0Glstm_473/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_473/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_473/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_473/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_slice_2StridedSlicelstm_473/transpose:y:0'lstm_473/strided_slice_2/stack:output:0)lstm_473/strided_slice_2/stack_1:output:0)lstm_473/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_473/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp5lstm_473_lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_473/lstm_cell_299/MatMulMatMul!lstm_473/strided_slice_2:output:04lstm_473/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp7lstm_473_lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_473/lstm_cell_299/MatMul_1MatMullstm_473/zeros:output:06lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_473/lstm_cell_299/addAddV2'lstm_473/lstm_cell_299/MatMul:product:0)lstm_473/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp6lstm_473_lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_473/lstm_cell_299/BiasAddBiasAddlstm_473/lstm_cell_299/add:z:05lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_473/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_473/lstm_cell_299/splitSplit/lstm_473/lstm_cell_299/split/split_dim:output:0'lstm_473/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_473/lstm_cell_299/SigmoidSigmoid%lstm_473/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_473/lstm_cell_299/Sigmoid_1Sigmoid%lstm_473/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/mulMul$lstm_473/lstm_cell_299/Sigmoid_1:y:0lstm_473/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_473/lstm_cell_299/ReluRelu%lstm_473/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/mul_1Mul"lstm_473/lstm_cell_299/Sigmoid:y:0)lstm_473/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/add_1AddV2lstm_473/lstm_cell_299/mul:z:0 lstm_473/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_473/lstm_cell_299/Sigmoid_2Sigmoid%lstm_473/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_473/lstm_cell_299/Relu_1Relu lstm_473/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_473/lstm_cell_299/mul_2Mul$lstm_473/lstm_cell_299/Sigmoid_2:y:0+lstm_473/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_473/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_473/TensorArrayV2_1TensorListReserve/lstm_473/TensorArrayV2_1/element_shape:output:0!lstm_473/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_473/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_473/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_473/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_473/whileWhile$lstm_473/while/loop_counter:output:0*lstm_473/while/maximum_iterations:output:0lstm_473/time:output:0!lstm_473/TensorArrayV2_1:handle:0lstm_473/zeros:output:0lstm_473/zeros_1:output:0!lstm_473/strided_slice_1:output:0@lstm_473/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_473_lstm_cell_299_matmul_readvariableop_resource7lstm_473_lstm_cell_299_matmul_1_readvariableop_resource6lstm_473_lstm_cell_299_biasadd_readvariableop_resource*
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
lstm_473_while_body_1811980*'
condR
lstm_473_while_cond_1811979*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_473/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_473/TensorArrayV2Stack/TensorListStackTensorListStacklstm_473/while:output:3Blstm_473/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_473/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_473/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_473/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_473/strided_slice_3StridedSlice4lstm_473/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_473/strided_slice_3/stack:output:0)lstm_473/strided_slice_3/stack_1:output:0)lstm_473/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_473/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_473/transpose_1	Transpose4lstm_473/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_473/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_473/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_157/MatMul/ReadVariableOpReadVariableOp(dense_157_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_157/MatMulMatMul!lstm_473/strided_slice_3:output:0'dense_157/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_157/BiasAdd/ReadVariableOpReadVariableOp)dense_157_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_157/BiasAddBiasAdddense_157/MatMul:product:0(dense_157/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_157/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_157/BiasAdd/ReadVariableOp ^dense_157/MatMul/ReadVariableOp.^lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp-^lstm_471/lstm_cell_297/MatMul/ReadVariableOp/^lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp^lstm_471/while.^lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp-^lstm_472/lstm_cell_298/MatMul/ReadVariableOp/^lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp^lstm_472/while.^lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp-^lstm_473/lstm_cell_299/MatMul/ReadVariableOp/^lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp^lstm_473/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_157/BiasAdd/ReadVariableOp dense_157/BiasAdd/ReadVariableOp2B
dense_157/MatMul/ReadVariableOpdense_157/MatMul/ReadVariableOp2^
-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp-lstm_471/lstm_cell_297/BiasAdd/ReadVariableOp2\
,lstm_471/lstm_cell_297/MatMul/ReadVariableOp,lstm_471/lstm_cell_297/MatMul/ReadVariableOp2`
.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp.lstm_471/lstm_cell_297/MatMul_1/ReadVariableOp2 
lstm_471/whilelstm_471/while2^
-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp-lstm_472/lstm_cell_298/BiasAdd/ReadVariableOp2\
,lstm_472/lstm_cell_298/MatMul/ReadVariableOp,lstm_472/lstm_cell_298/MatMul/ReadVariableOp2`
.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp.lstm_472/lstm_cell_298/MatMul_1/ReadVariableOp2 
lstm_472/whilelstm_472/while2^
-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp-lstm_473/lstm_cell_299/BiasAdd/ReadVariableOp2\
,lstm_473/lstm_cell_299/MatMul/ReadVariableOp,lstm_473/lstm_cell_299/MatMul/ReadVariableOp2`
.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp.lstm_473/lstm_cell_299/MatMul_1/ReadVariableOp2 
lstm_473/whilelstm_473/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1810533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_299_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_299_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_299_matmul_readvariableop_resource:2(F
4while_lstm_cell_299_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_299_biasadd_readvariableop_resource:(??*while/lstm_cell_299/BiasAdd/ReadVariableOp?)while/lstm_cell_299/MatMul/ReadVariableOp?+while/lstm_cell_299/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_299/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_299/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_299/addAddV2$while/lstm_cell_299/MatMul:product:0&while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_299/BiasAddBiasAddwhile/lstm_cell_299/add:z:02while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_299/splitSplit,while/lstm_cell_299/split/split_dim:output:0$while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_299/SigmoidSigmoid"while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_1Sigmoid"while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mulMul!while/lstm_cell_299/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_299/ReluRelu"while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_1Mulwhile/lstm_cell_299/Sigmoid:y:0&while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/add_1AddV2while/lstm_cell_299/mul:z:0while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_2Sigmoid"while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_299/Relu_1Reluwhile/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_2Mul!while/lstm_cell_299/Sigmoid_2:y:0(while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_299/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_299/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_299/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_299/BiasAdd/ReadVariableOp*^while/lstm_cell_299/MatMul/ReadVariableOp,^while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_299_biasadd_readvariableop_resource5while_lstm_cell_299_biasadd_readvariableop_resource_0"n
4while_lstm_cell_299_matmul_1_readvariableop_resource6while_lstm_cell_299_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_299_matmul_readvariableop_resource4while_lstm_cell_299_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_299/BiasAdd/ReadVariableOp*while/lstm_cell_299/BiasAdd/ReadVariableOp2V
)while/lstm_cell_299/MatMul/ReadVariableOp)while/lstm_cell_299/MatMul/ReadVariableOp2Z
+while/lstm_cell_299/MatMul_1/ReadVariableOp+while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1810017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_297_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_297_matmul_readvariableop_resource:	?G
4while_lstm_cell_297_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_297_biasadd_readvariableop_resource:	???*while/lstm_cell_297/BiasAdd/ReadVariableOp?)while/lstm_cell_297/MatMul/ReadVariableOp?+while/lstm_cell_297/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_297/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_297/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_297/addAddV2$while/lstm_cell_297/MatMul:product:0&while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_297/BiasAddBiasAddwhile/lstm_cell_297/add:z:02while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_297/splitSplit,while/lstm_cell_297/split/split_dim:output:0$while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_297/SigmoidSigmoid"while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_1Sigmoid"while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mulMul!while/lstm_cell_297/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_297/ReluRelu"while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_1Mulwhile/lstm_cell_297/Sigmoid:y:0&while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/add_1AddV2while/lstm_cell_297/mul:z:0while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_2Sigmoid"while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_297/Relu_1Reluwhile/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_2Mul!while/lstm_cell_297/Sigmoid_2:y:0(while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_297/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_297/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_297/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_297/BiasAdd/ReadVariableOp*^while/lstm_cell_297/MatMul/ReadVariableOp,^while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_297_biasadd_readvariableop_resource5while_lstm_cell_297_biasadd_readvariableop_resource_0"n
4while_lstm_cell_297_matmul_1_readvariableop_resource6while_lstm_cell_297_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_297_matmul_readvariableop_resource4while_lstm_cell_297_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_297/BiasAdd/ReadVariableOp*while/lstm_cell_297/BiasAdd/ReadVariableOp2V
)while/lstm_cell_297/MatMul/ReadVariableOp)while/lstm_cell_297/MatMul/ReadVariableOp2Z
+while/lstm_cell_297/MatMul_1/ReadVariableOp+while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_157_lstm_471_while_cond_1808533L
Hsequential_157_lstm_471_while_sequential_157_lstm_471_while_loop_counterR
Nsequential_157_lstm_471_while_sequential_157_lstm_471_while_maximum_iterations-
)sequential_157_lstm_471_while_placeholder/
+sequential_157_lstm_471_while_placeholder_1/
+sequential_157_lstm_471_while_placeholder_2/
+sequential_157_lstm_471_while_placeholder_3N
Jsequential_157_lstm_471_while_less_sequential_157_lstm_471_strided_slice_1e
asequential_157_lstm_471_while_sequential_157_lstm_471_while_cond_1808533___redundant_placeholder0e
asequential_157_lstm_471_while_sequential_157_lstm_471_while_cond_1808533___redundant_placeholder1e
asequential_157_lstm_471_while_sequential_157_lstm_471_while_cond_1808533___redundant_placeholder2e
asequential_157_lstm_471_while_sequential_157_lstm_471_while_cond_1808533___redundant_placeholder3*
&sequential_157_lstm_471_while_identity
?
"sequential_157/lstm_471/while/LessLess)sequential_157_lstm_471_while_placeholderJsequential_157_lstm_471_while_less_sequential_157_lstm_471_strided_slice_1*
T0*
_output_shapes
: {
&sequential_157/lstm_471/while/IdentityIdentity&sequential_157/lstm_471/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_157_lstm_471_while_identity/sequential_157/lstm_471/while/Identity:output:0*(
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
while_body_1812932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_298_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_298_matmul_readvariableop_resource:	d?G
4while_lstm_cell_298_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_298_biasadd_readvariableop_resource:	???*while/lstm_cell_298/BiasAdd/ReadVariableOp?)while/lstm_cell_298/MatMul/ReadVariableOp?+while/lstm_cell_298/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_298/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_298/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_298/addAddV2$while/lstm_cell_298/MatMul:product:0&while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_298/BiasAddBiasAddwhile/lstm_cell_298/add:z:02while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_298/splitSplit,while/lstm_cell_298/split/split_dim:output:0$while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_298/SigmoidSigmoid"while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_1Sigmoid"while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mulMul!while/lstm_cell_298/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_298/ReluRelu"while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_1Mulwhile/lstm_cell_298/Sigmoid:y:0&while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/add_1AddV2while/lstm_cell_298/mul:z:0while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_2Sigmoid"while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_298/Relu_1Reluwhile/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_2Mul!while/lstm_cell_298/Sigmoid_2:y:0(while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_298/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_298/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_298/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_298/BiasAdd/ReadVariableOp*^while/lstm_cell_298/MatMul/ReadVariableOp,^while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_298_biasadd_readvariableop_resource5while_lstm_cell_298_biasadd_readvariableop_resource_0"n
4while_lstm_cell_298_matmul_1_readvariableop_resource6while_lstm_cell_298_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_298_matmul_readvariableop_resource4while_lstm_cell_298_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_298/BiasAdd/ReadVariableOp*while/lstm_cell_298/BiasAdd/ReadVariableOp2V
)while/lstm_cell_298/MatMul/ReadVariableOp)while/lstm_cell_298/MatMul/ReadVariableOp2Z
+while/lstm_cell_298/MatMul_1/ReadVariableOp+while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1809874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_299_1809898_0:2(/
while_lstm_cell_299_1809900_0:
(+
while_lstm_cell_299_1809902_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_299_1809898:2(-
while_lstm_cell_299_1809900:
()
while_lstm_cell_299_1809902:(??+while/lstm_cell_299/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_299/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_299_1809898_0while_lstm_cell_299_1809900_0while_lstm_cell_299_1809902_0*
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809815?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_299/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_299/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_299/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_299/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_299_1809898while_lstm_cell_299_1809898_0"<
while_lstm_cell_299_1809900while_lstm_cell_299_1809900_0"<
while_lstm_cell_299_1809902while_lstm_cell_299_1809902_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_299/StatefulPartitionedCall+while/lstm_cell_299/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1813405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_299_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_299_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_299_matmul_readvariableop_resource:2(F
4while_lstm_cell_299_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_299_biasadd_readvariableop_resource:(??*while/lstm_cell_299/BiasAdd/ReadVariableOp?)while/lstm_cell_299/MatMul/ReadVariableOp?+while/lstm_cell_299/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_299/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_299/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_299/addAddV2$while/lstm_cell_299/MatMul:product:0&while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_299/BiasAddBiasAddwhile/lstm_cell_299/add:z:02while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_299/splitSplit,while/lstm_cell_299/split/split_dim:output:0$while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_299/SigmoidSigmoid"while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_1Sigmoid"while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mulMul!while/lstm_cell_299/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_299/ReluRelu"while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_1Mulwhile/lstm_cell_299/Sigmoid:y:0&while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/add_1AddV2while/lstm_cell_299/mul:z:0while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_2Sigmoid"while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_299/Relu_1Reluwhile/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_2Mul!while/lstm_cell_299/Sigmoid_2:y:0(while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_299/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_299/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_299/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_299/BiasAdd/ReadVariableOp*^while/lstm_cell_299/MatMul/ReadVariableOp,^while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_299_biasadd_readvariableop_resource5while_lstm_cell_299_biasadd_readvariableop_resource_0"n
4while_lstm_cell_299_matmul_1_readvariableop_resource6while_lstm_cell_299_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_299_matmul_readvariableop_resource4while_lstm_cell_299_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_299/BiasAdd/ReadVariableOp*while/lstm_cell_299/BiasAdd/ReadVariableOp2V
)while/lstm_cell_299/MatMul/ReadVariableOp)while/lstm_cell_299/MatMul/ReadVariableOp2Z
+while/lstm_cell_299/MatMul_1/ReadVariableOp+while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_157_lstm_472_while_cond_1808672L
Hsequential_157_lstm_472_while_sequential_157_lstm_472_while_loop_counterR
Nsequential_157_lstm_472_while_sequential_157_lstm_472_while_maximum_iterations-
)sequential_157_lstm_472_while_placeholder/
+sequential_157_lstm_472_while_placeholder_1/
+sequential_157_lstm_472_while_placeholder_2/
+sequential_157_lstm_472_while_placeholder_3N
Jsequential_157_lstm_472_while_less_sequential_157_lstm_472_strided_slice_1e
asequential_157_lstm_472_while_sequential_157_lstm_472_while_cond_1808672___redundant_placeholder0e
asequential_157_lstm_472_while_sequential_157_lstm_472_while_cond_1808672___redundant_placeholder1e
asequential_157_lstm_472_while_sequential_157_lstm_472_while_cond_1808672___redundant_placeholder2e
asequential_157_lstm_472_while_sequential_157_lstm_472_while_cond_1808672___redundant_placeholder3*
&sequential_157_lstm_472_while_identity
?
"sequential_157/lstm_472/while/LessLess)sequential_157_lstm_472_while_placeholderJsequential_157_lstm_472_while_less_sequential_157_lstm_472_strided_slice_1*
T0*
_output_shapes
: {
&sequential_157/lstm_472/while/IdentityIdentity&sequential_157/lstm_472/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_157_lstm_472_while_identity/sequential_157/lstm_472/while/Identity:output:0*(
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
*sequential_157_lstm_472_while_body_1808673L
Hsequential_157_lstm_472_while_sequential_157_lstm_472_while_loop_counterR
Nsequential_157_lstm_472_while_sequential_157_lstm_472_while_maximum_iterations-
)sequential_157_lstm_472_while_placeholder/
+sequential_157_lstm_472_while_placeholder_1/
+sequential_157_lstm_472_while_placeholder_2/
+sequential_157_lstm_472_while_placeholder_3K
Gsequential_157_lstm_472_while_sequential_157_lstm_472_strided_slice_1_0?
?sequential_157_lstm_472_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_472_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_157_lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0:	d?a
Nsequential_157_lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?\
Msequential_157_lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0:	?*
&sequential_157_lstm_472_while_identity,
(sequential_157_lstm_472_while_identity_1,
(sequential_157_lstm_472_while_identity_2,
(sequential_157_lstm_472_while_identity_3,
(sequential_157_lstm_472_while_identity_4,
(sequential_157_lstm_472_while_identity_5I
Esequential_157_lstm_472_while_sequential_157_lstm_472_strided_slice_1?
?sequential_157_lstm_472_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_472_tensorarrayunstack_tensorlistfromtensor]
Jsequential_157_lstm_472_while_lstm_cell_298_matmul_readvariableop_resource:	d?_
Lsequential_157_lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource:	2?Z
Ksequential_157_lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource:	???Bsequential_157/lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp?Asequential_157/lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp?Csequential_157/lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp?
Osequential_157/lstm_472/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_157/lstm_472/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_157_lstm_472_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_472_tensorarrayunstack_tensorlistfromtensor_0)sequential_157_lstm_472_while_placeholderXsequential_157/lstm_472/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_157/lstm_472/while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOpLsequential_157_lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_157/lstm_472/while/lstm_cell_298/MatMulMatMulHsequential_157/lstm_472/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_157/lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_157/lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOpNsequential_157_lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_157/lstm_472/while/lstm_cell_298/MatMul_1MatMul+sequential_157_lstm_472_while_placeholder_2Ksequential_157/lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_157/lstm_472/while/lstm_cell_298/addAddV2<sequential_157/lstm_472/while/lstm_cell_298/MatMul:product:0>sequential_157/lstm_472/while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_157/lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOpMsequential_157_lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_157/lstm_472/while/lstm_cell_298/BiasAddBiasAdd3sequential_157/lstm_472/while/lstm_cell_298/add:z:0Jsequential_157/lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_157/lstm_472/while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_157/lstm_472/while/lstm_cell_298/splitSplitDsequential_157/lstm_472/while/lstm_cell_298/split/split_dim:output:0<sequential_157/lstm_472/while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_157/lstm_472/while/lstm_cell_298/SigmoidSigmoid:sequential_157/lstm_472/while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_157/lstm_472/while/lstm_cell_298/Sigmoid_1Sigmoid:sequential_157/lstm_472/while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_157/lstm_472/while/lstm_cell_298/mulMul9sequential_157/lstm_472/while/lstm_cell_298/Sigmoid_1:y:0+sequential_157_lstm_472_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_157/lstm_472/while/lstm_cell_298/ReluRelu:sequential_157/lstm_472/while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_157/lstm_472/while/lstm_cell_298/mul_1Mul7sequential_157/lstm_472/while/lstm_cell_298/Sigmoid:y:0>sequential_157/lstm_472/while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_157/lstm_472/while/lstm_cell_298/add_1AddV23sequential_157/lstm_472/while/lstm_cell_298/mul:z:05sequential_157/lstm_472/while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_157/lstm_472/while/lstm_cell_298/Sigmoid_2Sigmoid:sequential_157/lstm_472/while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_157/lstm_472/while/lstm_cell_298/Relu_1Relu5sequential_157/lstm_472/while/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_157/lstm_472/while/lstm_cell_298/mul_2Mul9sequential_157/lstm_472/while/lstm_cell_298/Sigmoid_2:y:0@sequential_157/lstm_472/while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_157/lstm_472/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_157_lstm_472_while_placeholder_1)sequential_157_lstm_472_while_placeholder5sequential_157/lstm_472/while/lstm_cell_298/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_157/lstm_472/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_157/lstm_472/while/addAddV2)sequential_157_lstm_472_while_placeholder,sequential_157/lstm_472/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_157/lstm_472/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_157/lstm_472/while/add_1AddV2Hsequential_157_lstm_472_while_sequential_157_lstm_472_while_loop_counter.sequential_157/lstm_472/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_157/lstm_472/while/IdentityIdentity'sequential_157/lstm_472/while/add_1:z:0#^sequential_157/lstm_472/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_472/while/Identity_1IdentityNsequential_157_lstm_472_while_sequential_157_lstm_472_while_maximum_iterations#^sequential_157/lstm_472/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_472/while/Identity_2Identity%sequential_157/lstm_472/while/add:z:0#^sequential_157/lstm_472/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_472/while/Identity_3IdentityRsequential_157/lstm_472/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_157/lstm_472/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_472/while/Identity_4Identity5sequential_157/lstm_472/while/lstm_cell_298/mul_2:z:0#^sequential_157/lstm_472/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_157/lstm_472/while/Identity_5Identity5sequential_157/lstm_472/while/lstm_cell_298/add_1:z:0#^sequential_157/lstm_472/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_157/lstm_472/while/NoOpNoOpC^sequential_157/lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOpB^sequential_157/lstm_472/while/lstm_cell_298/MatMul/ReadVariableOpD^sequential_157/lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_157_lstm_472_while_identity/sequential_157/lstm_472/while/Identity:output:0"]
(sequential_157_lstm_472_while_identity_11sequential_157/lstm_472/while/Identity_1:output:0"]
(sequential_157_lstm_472_while_identity_21sequential_157/lstm_472/while/Identity_2:output:0"]
(sequential_157_lstm_472_while_identity_31sequential_157/lstm_472/while/Identity_3:output:0"]
(sequential_157_lstm_472_while_identity_41sequential_157/lstm_472/while/Identity_4:output:0"]
(sequential_157_lstm_472_while_identity_51sequential_157/lstm_472/while/Identity_5:output:0"?
Ksequential_157_lstm_472_while_lstm_cell_298_biasadd_readvariableop_resourceMsequential_157_lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0"?
Lsequential_157_lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resourceNsequential_157_lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0"?
Jsequential_157_lstm_472_while_lstm_cell_298_matmul_readvariableop_resourceLsequential_157_lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0"?
Esequential_157_lstm_472_while_sequential_157_lstm_472_strided_slice_1Gsequential_157_lstm_472_while_sequential_157_lstm_472_strided_slice_1_0"?
?sequential_157_lstm_472_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_472_tensorarrayunstack_tensorlistfromtensor?sequential_157_lstm_472_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_472_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_157/lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOpBsequential_157/lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp2?
Asequential_157/lstm_472/while/lstm_cell_298/MatMul/ReadVariableOpAsequential_157/lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp2?
Csequential_157/lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOpCsequential_157/lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_471_while_cond_1811701.
*lstm_471_while_lstm_471_while_loop_counter4
0lstm_471_while_lstm_471_while_maximum_iterations
lstm_471_while_placeholder 
lstm_471_while_placeholder_1 
lstm_471_while_placeholder_2 
lstm_471_while_placeholder_30
,lstm_471_while_less_lstm_471_strided_slice_1G
Clstm_471_while_lstm_471_while_cond_1811701___redundant_placeholder0G
Clstm_471_while_lstm_471_while_cond_1811701___redundant_placeholder1G
Clstm_471_while_lstm_471_while_cond_1811701___redundant_placeholder2G
Clstm_471_while_lstm_471_while_cond_1811701___redundant_placeholder3
lstm_471_while_identity
?
lstm_471/while/LessLesslstm_471_while_placeholder,lstm_471_while_less_lstm_471_strided_slice_1*
T0*
_output_shapes
: ]
lstm_471/while/IdentityIdentitylstm_471/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_471_while_identity lstm_471/while/Identity:output:0*(
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
while_cond_1810862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1810862___redundant_placeholder05
1while_while_cond_1810862___redundant_placeholder15
1while_while_cond_1810862___redundant_placeholder25
1while_while_cond_1810862___redundant_placeholder3
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
while_cond_1808982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1808982___redundant_placeholder05
1while_while_cond_1808982___redundant_placeholder15
1while_while_cond_1808982___redundant_placeholder25
1while_while_cond_1808982___redundant_placeholder3
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
while_cond_1812172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1812172___redundant_placeholder05
1while_while_cond_1812172___redundant_placeholder15
1while_while_cond_1812172___redundant_placeholder25
1while_while_cond_1812172___redundant_placeholder3
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
while_body_1813218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_298_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_298_matmul_readvariableop_resource:	d?G
4while_lstm_cell_298_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_298_biasadd_readvariableop_resource:	???*while/lstm_cell_298/BiasAdd/ReadVariableOp?)while/lstm_cell_298/MatMul/ReadVariableOp?+while/lstm_cell_298/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_298/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_298/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_298/addAddV2$while/lstm_cell_298/MatMul:product:0&while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_298/BiasAddBiasAddwhile/lstm_cell_298/add:z:02while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_298/splitSplit,while/lstm_cell_298/split/split_dim:output:0$while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_298/SigmoidSigmoid"while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_1Sigmoid"while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mulMul!while/lstm_cell_298/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_298/ReluRelu"while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_1Mulwhile/lstm_cell_298/Sigmoid:y:0&while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/add_1AddV2while/lstm_cell_298/mul:z:0while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_2Sigmoid"while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_298/Relu_1Reluwhile/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_2Mul!while/lstm_cell_298/Sigmoid_2:y:0(while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_298/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_298/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_298/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_298/BiasAdd/ReadVariableOp*^while/lstm_cell_298/MatMul/ReadVariableOp,^while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_298_biasadd_readvariableop_resource5while_lstm_cell_298_biasadd_readvariableop_resource_0"n
4while_lstm_cell_298_matmul_1_readvariableop_resource6while_lstm_cell_298_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_298_matmul_readvariableop_resource4while_lstm_cell_298_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_298/BiasAdd/ReadVariableOp*while/lstm_cell_298/BiasAdd/ReadVariableOp2V
)while/lstm_cell_298/MatMul/ReadVariableOp)while/lstm_cell_298/MatMul/ReadVariableOp2Z
+while/lstm_cell_298/MatMul_1/ReadVariableOp+while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_298_layer_call_fn_1814052

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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809319o
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
while_cond_1812601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1812601___redundant_placeholder05
1while_while_cond_1812601___redundant_placeholder15
1while_while_cond_1812601___redundant_placeholder25
1while_while_cond_1812601___redundant_placeholder3
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811127
lstm_471_input#
lstm_471_1811100:	?#
lstm_471_1811102:	d?
lstm_471_1811104:	?#
lstm_472_1811107:	d?#
lstm_472_1811109:	2?
lstm_472_1811111:	?"
lstm_473_1811114:2("
lstm_473_1811116:
(
lstm_473_1811118:(#
dense_157_1811121:

dense_157_1811123:
identity??!dense_157/StatefulPartitionedCall? lstm_471/StatefulPartitionedCall? lstm_472/StatefulPartitionedCall? lstm_473/StatefulPartitionedCall?
 lstm_471/StatefulPartitionedCallStatefulPartitionedCalllstm_471_inputlstm_471_1811100lstm_471_1811102lstm_471_1811104*
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810947?
 lstm_472/StatefulPartitionedCallStatefulPartitionedCall)lstm_471/StatefulPartitionedCall:output:0lstm_472_1811107lstm_472_1811109lstm_472_1811111*
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810782?
 lstm_473/StatefulPartitionedCallStatefulPartitionedCall)lstm_472/StatefulPartitionedCall:output:0lstm_473_1811114lstm_473_1811116lstm_473_1811118*
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810617?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_473/StatefulPartitionedCall:output:0dense_157_1811121dense_157_1811123*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_1810419y
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_157/StatefulPartitionedCall!^lstm_471/StatefulPartitionedCall!^lstm_472/StatefulPartitionedCall!^lstm_473/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2D
 lstm_471/StatefulPartitionedCall lstm_471/StatefulPartitionedCall2D
 lstm_472/StatefulPartitionedCall lstm_472/StatefulPartitionedCall2D
 lstm_473/StatefulPartitionedCall lstm_473/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_471_input
?
?
*__inference_lstm_473_layer_call_fn_1813324
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1809943o
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
while_cond_1812458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1812458___redundant_placeholder05
1while_while_cond_1812458___redundant_placeholder15
1while_while_cond_1812458___redundant_placeholder25
1while_while_cond_1812458___redundant_placeholder3
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
while_body_1812316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_297_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_297_matmul_readvariableop_resource:	?G
4while_lstm_cell_297_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_297_biasadd_readvariableop_resource:	???*while/lstm_cell_297/BiasAdd/ReadVariableOp?)while/lstm_cell_297/MatMul/ReadVariableOp?+while/lstm_cell_297/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_297/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_297/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_297/addAddV2$while/lstm_cell_297/MatMul:product:0&while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_297/BiasAddBiasAddwhile/lstm_cell_297/add:z:02while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_297/splitSplit,while/lstm_cell_297/split/split_dim:output:0$while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_297/SigmoidSigmoid"while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_1Sigmoid"while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mulMul!while/lstm_cell_297/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_297/ReluRelu"while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_1Mulwhile/lstm_cell_297/Sigmoid:y:0&while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/add_1AddV2while/lstm_cell_297/mul:z:0while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_2Sigmoid"while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_297/Relu_1Reluwhile/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_2Mul!while/lstm_cell_297/Sigmoid_2:y:0(while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_297/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_297/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_297/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_297/BiasAdd/ReadVariableOp*^while/lstm_cell_297/MatMul/ReadVariableOp,^while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_297_biasadd_readvariableop_resource5while_lstm_cell_297_biasadd_readvariableop_resource_0"n
4while_lstm_cell_297_matmul_1_readvariableop_resource6while_lstm_cell_297_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_297_matmul_readvariableop_resource4while_lstm_cell_297_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_297/BiasAdd/ReadVariableOp*while/lstm_cell_297/BiasAdd/ReadVariableOp2V
)while/lstm_cell_297/MatMul/ReadVariableOp)while/lstm_cell_297/MatMul/ReadVariableOp2Z
+while/lstm_cell_297/MatMul_1/ReadVariableOp+while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1813217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1813217___redundant_placeholder05
1while_while_cond_1813217___redundant_placeholder15
1while_while_cond_1813217___redundant_placeholder25
1while_while_cond_1813217___redundant_placeholder3
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
while_cond_1813074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1813074___redundant_placeholder05
1while_while_cond_1813074___redundant_placeholder15
1while_while_cond_1813074___redundant_placeholder25
1while_while_cond_1813074___redundant_placeholder3
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1809243

inputs(
lstm_cell_297_1809161:	?(
lstm_cell_297_1809163:	d?$
lstm_cell_297_1809165:	?
identity??%lstm_cell_297/StatefulPartitionedCall?while;
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
%lstm_cell_297/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_297_1809161lstm_cell_297_1809163lstm_cell_297_1809165*
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1809115n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_297_1809161lstm_cell_297_1809163lstm_cell_297_1809165*
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
while_body_1809174*
condR
while_cond_1809173*K
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
NoOpNoOp&^lstm_cell_297/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_297/StatefulPartitionedCall%lstm_cell_297/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1810532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1810532___redundant_placeholder05
1while_while_cond_1810532___redundant_placeholder15
1while_while_cond_1810532___redundant_placeholder25
1while_while_cond_1810532___redundant_placeholder3
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

lstm_473_while_body_1811980.
*lstm_473_while_lstm_473_while_loop_counter4
0lstm_473_while_lstm_473_while_maximum_iterations
lstm_473_while_placeholder 
lstm_473_while_placeholder_1 
lstm_473_while_placeholder_2 
lstm_473_while_placeholder_3-
)lstm_473_while_lstm_473_strided_slice_1_0i
elstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0:2(Q
?lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(L
>lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0:(
lstm_473_while_identity
lstm_473_while_identity_1
lstm_473_while_identity_2
lstm_473_while_identity_3
lstm_473_while_identity_4
lstm_473_while_identity_5+
'lstm_473_while_lstm_473_strided_slice_1g
clstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensorM
;lstm_473_while_lstm_cell_299_matmul_readvariableop_resource:2(O
=lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource:
(J
<lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource:(??3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp?2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp?4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp?
@lstm_473/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_473/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensor_0lstm_473_while_placeholderIlstm_473/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp=lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_473/while/lstm_cell_299/MatMulMatMul9lstm_473/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp?lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_473/while/lstm_cell_299/MatMul_1MatMullstm_473_while_placeholder_2<lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_473/while/lstm_cell_299/addAddV2-lstm_473/while/lstm_cell_299/MatMul:product:0/lstm_473/while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp>lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_473/while/lstm_cell_299/BiasAddBiasAdd$lstm_473/while/lstm_cell_299/add:z:0;lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_473/while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_473/while/lstm_cell_299/splitSplit5lstm_473/while/lstm_cell_299/split/split_dim:output:0-lstm_473/while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_473/while/lstm_cell_299/SigmoidSigmoid+lstm_473/while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_473/while/lstm_cell_299/Sigmoid_1Sigmoid+lstm_473/while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_473/while/lstm_cell_299/mulMul*lstm_473/while/lstm_cell_299/Sigmoid_1:y:0lstm_473_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_473/while/lstm_cell_299/ReluRelu+lstm_473/while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_473/while/lstm_cell_299/mul_1Mul(lstm_473/while/lstm_cell_299/Sigmoid:y:0/lstm_473/while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_473/while/lstm_cell_299/add_1AddV2$lstm_473/while/lstm_cell_299/mul:z:0&lstm_473/while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_473/while/lstm_cell_299/Sigmoid_2Sigmoid+lstm_473/while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_473/while/lstm_cell_299/Relu_1Relu&lstm_473/while/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_473/while/lstm_cell_299/mul_2Mul*lstm_473/while/lstm_cell_299/Sigmoid_2:y:01lstm_473/while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_473/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_473_while_placeholder_1lstm_473_while_placeholder&lstm_473/while/lstm_cell_299/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_473/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_473/while/addAddV2lstm_473_while_placeholderlstm_473/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_473/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_473/while/add_1AddV2*lstm_473_while_lstm_473_while_loop_counterlstm_473/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_473/while/IdentityIdentitylstm_473/while/add_1:z:0^lstm_473/while/NoOp*
T0*
_output_shapes
: ?
lstm_473/while/Identity_1Identity0lstm_473_while_lstm_473_while_maximum_iterations^lstm_473/while/NoOp*
T0*
_output_shapes
: t
lstm_473/while/Identity_2Identitylstm_473/while/add:z:0^lstm_473/while/NoOp*
T0*
_output_shapes
: ?
lstm_473/while/Identity_3IdentityClstm_473/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_473/while/NoOp*
T0*
_output_shapes
: ?
lstm_473/while/Identity_4Identity&lstm_473/while/lstm_cell_299/mul_2:z:0^lstm_473/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_473/while/Identity_5Identity&lstm_473/while/lstm_cell_299/add_1:z:0^lstm_473/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_473/while/NoOpNoOp4^lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp3^lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp5^lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_473_while_identity lstm_473/while/Identity:output:0"?
lstm_473_while_identity_1"lstm_473/while/Identity_1:output:0"?
lstm_473_while_identity_2"lstm_473/while/Identity_2:output:0"?
lstm_473_while_identity_3"lstm_473/while/Identity_3:output:0"?
lstm_473_while_identity_4"lstm_473/while/Identity_4:output:0"?
lstm_473_while_identity_5"lstm_473/while/Identity_5:output:0"T
'lstm_473_while_lstm_473_strided_slice_1)lstm_473_while_lstm_473_strided_slice_1_0"~
<lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource>lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0"?
=lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource?lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0"|
;lstm_473_while_lstm_cell_299_matmul_readvariableop_resource=lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0"?
clstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensorelstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp2h
2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp2l
4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1813548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_299_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_299_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_299_matmul_readvariableop_resource:2(F
4while_lstm_cell_299_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_299_biasadd_readvariableop_resource:(??*while/lstm_cell_299/BiasAdd/ReadVariableOp?)while/lstm_cell_299/MatMul/ReadVariableOp?+while/lstm_cell_299/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_299/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_299/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_299/addAddV2$while/lstm_cell_299/MatMul:product:0&while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_299/BiasAddBiasAddwhile/lstm_cell_299/add:z:02while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_299/splitSplit,while/lstm_cell_299/split/split_dim:output:0$while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_299/SigmoidSigmoid"while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_1Sigmoid"while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mulMul!while/lstm_cell_299/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_299/ReluRelu"while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_1Mulwhile/lstm_cell_299/Sigmoid:y:0&while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/add_1AddV2while/lstm_cell_299/mul:z:0while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_299/Sigmoid_2Sigmoid"while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_299/Relu_1Reluwhile/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_299/mul_2Mul!while/lstm_cell_299/Sigmoid_2:y:0(while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_299/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_299/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_299/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_299/BiasAdd/ReadVariableOp*^while/lstm_cell_299/MatMul/ReadVariableOp,^while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_299_biasadd_readvariableop_resource5while_lstm_cell_299_biasadd_readvariableop_resource_0"n
4while_lstm_cell_299_matmul_1_readvariableop_resource6while_lstm_cell_299_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_299_matmul_readvariableop_resource4while_lstm_cell_299_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_299/BiasAdd/ReadVariableOp*while/lstm_cell_299/BiasAdd/ReadVariableOp2V
)while/lstm_cell_299/MatMul/ReadVariableOp)while/lstm_cell_299/MatMul/ReadVariableOp2Z
+while/lstm_cell_299/MatMul_1/ReadVariableOp+while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1810316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1810316___redundant_placeholder05
1while_while_cond_1810316___redundant_placeholder15
1while_while_cond_1810316___redundant_placeholder25
1while_while_cond_1810316___redundant_placeholder3
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812686

inputs?
,lstm_cell_297_matmul_readvariableop_resource:	?A
.lstm_cell_297_matmul_1_readvariableop_resource:	d?<
-lstm_cell_297_biasadd_readvariableop_resource:	?
identity??$lstm_cell_297/BiasAdd/ReadVariableOp?#lstm_cell_297/MatMul/ReadVariableOp?%lstm_cell_297/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_297/MatMul/ReadVariableOpReadVariableOp,lstm_cell_297_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_297/MatMulMatMulstrided_slice_2:output:0+lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_297_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_297/MatMul_1MatMulzeros:output:0-lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_297/addAddV2lstm_cell_297/MatMul:product:0 lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_297_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_297/BiasAddBiasAddlstm_cell_297/add:z:0,lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_297/splitSplit&lstm_cell_297/split/split_dim:output:0lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_297/SigmoidSigmoidlstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_1Sigmoidlstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_297/mulMullstm_cell_297/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_297/ReluRelulstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_1Mullstm_cell_297/Sigmoid:y:0 lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_297/add_1AddV2lstm_cell_297/mul:z:0lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_297/Sigmoid_2Sigmoidlstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_297/Relu_1Relulstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_297/mul_2Mullstm_cell_297/Sigmoid_2:y:0"lstm_cell_297/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_297_matmul_readvariableop_resource.lstm_cell_297_matmul_1_readvariableop_resource-lstm_cell_297_biasadd_readvariableop_resource*
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
while_body_1812602*
condR
while_cond_1812601*K
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
NoOpNoOp%^lstm_cell_297/BiasAdd/ReadVariableOp$^lstm_cell_297/MatMul/ReadVariableOp&^lstm_cell_297/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_297/BiasAdd/ReadVariableOp$lstm_cell_297/BiasAdd/ReadVariableOp2J
#lstm_cell_297/MatMul/ReadVariableOp#lstm_cell_297/MatMul/ReadVariableOp2N
%lstm_cell_297/MatMul_1/ReadVariableOp%lstm_cell_297/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1809332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1809332___redundant_placeholder05
1while_while_cond_1809332___redundant_placeholder15
1while_while_cond_1809332___redundant_placeholder25
1while_while_cond_1809332___redundant_placeholder3
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
while_body_1808983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_297_1809007_0:	?0
while_lstm_cell_297_1809009_0:	d?,
while_lstm_cell_297_1809011_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_297_1809007:	?.
while_lstm_cell_297_1809009:	d?*
while_lstm_cell_297_1809011:	???+while/lstm_cell_297/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_297/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_297_1809007_0while_lstm_cell_297_1809009_0while_lstm_cell_297_1809011_0*
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1808969?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_297/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_297/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_297/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_297/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_297_1809007while_lstm_cell_297_1809007_0"<
while_lstm_cell_297_1809009while_lstm_cell_297_1809009_0"<
while_lstm_cell_297_1809011while_lstm_cell_297_1809011_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_297/StatefulPartitionedCall+while/lstm_cell_297/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_472_layer_call_fn_1812719

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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1810251s
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810617

inputs>
,lstm_cell_299_matmul_readvariableop_resource:2(@
.lstm_cell_299_matmul_1_readvariableop_resource:
(;
-lstm_cell_299_biasadd_readvariableop_resource:(
identity??$lstm_cell_299/BiasAdd/ReadVariableOp?#lstm_cell_299/MatMul/ReadVariableOp?%lstm_cell_299/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_299/MatMul/ReadVariableOpReadVariableOp,lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_299/MatMulMatMulstrided_slice_2:output:0+lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_299/MatMul_1MatMulzeros:output:0-lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_299/addAddV2lstm_cell_299/MatMul:product:0 lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_299/BiasAddBiasAddlstm_cell_299/add:z:0,lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_299/splitSplit&lstm_cell_299/split/split_dim:output:0lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_299/SigmoidSigmoidlstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_1Sigmoidlstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_299/mulMullstm_cell_299/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_299/ReluRelulstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_1Mullstm_cell_299/Sigmoid:y:0 lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_299/add_1AddV2lstm_cell_299/mul:z:0lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_2Sigmoidlstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_299/Relu_1Relulstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_2Mullstm_cell_299/Sigmoid_2:y:0"lstm_cell_299/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_299_matmul_readvariableop_resource.lstm_cell_299_matmul_1_readvariableop_resource-lstm_cell_299_biasadd_readvariableop_resource*
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
while_body_1810533*
condR
while_cond_1810532*K
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
NoOpNoOp%^lstm_cell_299/BiasAdd/ReadVariableOp$^lstm_cell_299/MatMul/ReadVariableOp&^lstm_cell_299/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_299/BiasAdd/ReadVariableOp$lstm_cell_299/BiasAdd/ReadVariableOp2J
#lstm_cell_299/MatMul/ReadVariableOp#lstm_cell_299/MatMul/ReadVariableOp2N
%lstm_cell_299/MatMul_1/ReadVariableOp%lstm_cell_299/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_473_while_body_1811553.
*lstm_473_while_lstm_473_while_loop_counter4
0lstm_473_while_lstm_473_while_maximum_iterations
lstm_473_while_placeholder 
lstm_473_while_placeholder_1 
lstm_473_while_placeholder_2 
lstm_473_while_placeholder_3-
)lstm_473_while_lstm_473_strided_slice_1_0i
elstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0:2(Q
?lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0:
(L
>lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0:(
lstm_473_while_identity
lstm_473_while_identity_1
lstm_473_while_identity_2
lstm_473_while_identity_3
lstm_473_while_identity_4
lstm_473_while_identity_5+
'lstm_473_while_lstm_473_strided_slice_1g
clstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensorM
;lstm_473_while_lstm_cell_299_matmul_readvariableop_resource:2(O
=lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource:
(J
<lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource:(??3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp?2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp?4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp?
@lstm_473/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_473/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensor_0lstm_473_while_placeholderIlstm_473/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOp=lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_473/while/lstm_cell_299/MatMulMatMul9lstm_473/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp?lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_473/while/lstm_cell_299/MatMul_1MatMullstm_473_while_placeholder_2<lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_473/while/lstm_cell_299/addAddV2-lstm_473/while/lstm_cell_299/MatMul:product:0/lstm_473/while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp>lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_473/while/lstm_cell_299/BiasAddBiasAdd$lstm_473/while/lstm_cell_299/add:z:0;lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_473/while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_473/while/lstm_cell_299/splitSplit5lstm_473/while/lstm_cell_299/split/split_dim:output:0-lstm_473/while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_473/while/lstm_cell_299/SigmoidSigmoid+lstm_473/while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_473/while/lstm_cell_299/Sigmoid_1Sigmoid+lstm_473/while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_473/while/lstm_cell_299/mulMul*lstm_473/while/lstm_cell_299/Sigmoid_1:y:0lstm_473_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_473/while/lstm_cell_299/ReluRelu+lstm_473/while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_473/while/lstm_cell_299/mul_1Mul(lstm_473/while/lstm_cell_299/Sigmoid:y:0/lstm_473/while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_473/while/lstm_cell_299/add_1AddV2$lstm_473/while/lstm_cell_299/mul:z:0&lstm_473/while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_473/while/lstm_cell_299/Sigmoid_2Sigmoid+lstm_473/while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_473/while/lstm_cell_299/Relu_1Relu&lstm_473/while/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_473/while/lstm_cell_299/mul_2Mul*lstm_473/while/lstm_cell_299/Sigmoid_2:y:01lstm_473/while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_473/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_473_while_placeholder_1lstm_473_while_placeholder&lstm_473/while/lstm_cell_299/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_473/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_473/while/addAddV2lstm_473_while_placeholderlstm_473/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_473/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_473/while/add_1AddV2*lstm_473_while_lstm_473_while_loop_counterlstm_473/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_473/while/IdentityIdentitylstm_473/while/add_1:z:0^lstm_473/while/NoOp*
T0*
_output_shapes
: ?
lstm_473/while/Identity_1Identity0lstm_473_while_lstm_473_while_maximum_iterations^lstm_473/while/NoOp*
T0*
_output_shapes
: t
lstm_473/while/Identity_2Identitylstm_473/while/add:z:0^lstm_473/while/NoOp*
T0*
_output_shapes
: ?
lstm_473/while/Identity_3IdentityClstm_473/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_473/while/NoOp*
T0*
_output_shapes
: ?
lstm_473/while/Identity_4Identity&lstm_473/while/lstm_cell_299/mul_2:z:0^lstm_473/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_473/while/Identity_5Identity&lstm_473/while/lstm_cell_299/add_1:z:0^lstm_473/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_473/while/NoOpNoOp4^lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp3^lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp5^lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_473_while_identity lstm_473/while/Identity:output:0"?
lstm_473_while_identity_1"lstm_473/while/Identity_1:output:0"?
lstm_473_while_identity_2"lstm_473/while/Identity_2:output:0"?
lstm_473_while_identity_3"lstm_473/while/Identity_3:output:0"?
lstm_473_while_identity_4"lstm_473/while/Identity_4:output:0"?
lstm_473_while_identity_5"lstm_473/while/Identity_5:output:0"T
'lstm_473_while_lstm_473_strided_slice_1)lstm_473_while_lstm_473_strided_slice_1_0"~
<lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource>lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0"?
=lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource?lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0"|
;lstm_473_while_lstm_cell_299_matmul_readvariableop_resource=lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0"?
clstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensorelstm_473_while_tensorarrayv2read_tensorlistgetitem_lstm_473_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp3lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp2h
2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp2lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp2l
4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp4lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_472_while_body_1811414.
*lstm_472_while_lstm_472_while_loop_counter4
0lstm_472_while_lstm_472_while_maximum_iterations
lstm_472_while_placeholder 
lstm_472_while_placeholder_1 
lstm_472_while_placeholder_2 
lstm_472_while_placeholder_3-
)lstm_472_while_lstm_472_strided_slice_1_0i
elstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0:	d?R
?lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?M
>lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
lstm_472_while_identity
lstm_472_while_identity_1
lstm_472_while_identity_2
lstm_472_while_identity_3
lstm_472_while_identity_4
lstm_472_while_identity_5+
'lstm_472_while_lstm_472_strided_slice_1g
clstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensorN
;lstm_472_while_lstm_cell_298_matmul_readvariableop_resource:	d?P
=lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource:	2?K
<lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource:	???3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp?2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp?4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp?
@lstm_472/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_472/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensor_0lstm_472_while_placeholderIlstm_472/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp=lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_472/while/lstm_cell_298/MatMulMatMul9lstm_472/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp?lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_472/while/lstm_cell_298/MatMul_1MatMullstm_472_while_placeholder_2<lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_472/while/lstm_cell_298/addAddV2-lstm_472/while/lstm_cell_298/MatMul:product:0/lstm_472/while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp>lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_472/while/lstm_cell_298/BiasAddBiasAdd$lstm_472/while/lstm_cell_298/add:z:0;lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_472/while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_472/while/lstm_cell_298/splitSplit5lstm_472/while/lstm_cell_298/split/split_dim:output:0-lstm_472/while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_472/while/lstm_cell_298/SigmoidSigmoid+lstm_472/while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_472/while/lstm_cell_298/Sigmoid_1Sigmoid+lstm_472/while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_472/while/lstm_cell_298/mulMul*lstm_472/while/lstm_cell_298/Sigmoid_1:y:0lstm_472_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_472/while/lstm_cell_298/ReluRelu+lstm_472/while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_472/while/lstm_cell_298/mul_1Mul(lstm_472/while/lstm_cell_298/Sigmoid:y:0/lstm_472/while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_472/while/lstm_cell_298/add_1AddV2$lstm_472/while/lstm_cell_298/mul:z:0&lstm_472/while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_472/while/lstm_cell_298/Sigmoid_2Sigmoid+lstm_472/while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_472/while/lstm_cell_298/Relu_1Relu&lstm_472/while/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_472/while/lstm_cell_298/mul_2Mul*lstm_472/while/lstm_cell_298/Sigmoid_2:y:01lstm_472/while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_472/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_472_while_placeholder_1lstm_472_while_placeholder&lstm_472/while/lstm_cell_298/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_472/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_472/while/addAddV2lstm_472_while_placeholderlstm_472/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_472/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_472/while/add_1AddV2*lstm_472_while_lstm_472_while_loop_counterlstm_472/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_472/while/IdentityIdentitylstm_472/while/add_1:z:0^lstm_472/while/NoOp*
T0*
_output_shapes
: ?
lstm_472/while/Identity_1Identity0lstm_472_while_lstm_472_while_maximum_iterations^lstm_472/while/NoOp*
T0*
_output_shapes
: t
lstm_472/while/Identity_2Identitylstm_472/while/add:z:0^lstm_472/while/NoOp*
T0*
_output_shapes
: ?
lstm_472/while/Identity_3IdentityClstm_472/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_472/while/NoOp*
T0*
_output_shapes
: ?
lstm_472/while/Identity_4Identity&lstm_472/while/lstm_cell_298/mul_2:z:0^lstm_472/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_472/while/Identity_5Identity&lstm_472/while/lstm_cell_298/add_1:z:0^lstm_472/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_472/while/NoOpNoOp4^lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp3^lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp5^lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_472_while_identity lstm_472/while/Identity:output:0"?
lstm_472_while_identity_1"lstm_472/while/Identity_1:output:0"?
lstm_472_while_identity_2"lstm_472/while/Identity_2:output:0"?
lstm_472_while_identity_3"lstm_472/while/Identity_3:output:0"?
lstm_472_while_identity_4"lstm_472/while/Identity_4:output:0"?
lstm_472_while_identity_5"lstm_472/while/Identity_5:output:0"T
'lstm_472_while_lstm_472_strided_slice_1)lstm_472_while_lstm_472_strided_slice_1_0"~
<lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource>lstm_472_while_lstm_cell_298_biasadd_readvariableop_resource_0"?
=lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource?lstm_472_while_lstm_cell_298_matmul_1_readvariableop_resource_0"|
;lstm_472_while_lstm_cell_298_matmul_readvariableop_resource=lstm_472_while_lstm_cell_298_matmul_readvariableop_resource_0"?
clstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensorelstm_472_while_tensorarrayv2read_tensorlistgetitem_lstm_472_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp3lstm_472/while/lstm_cell_298/BiasAdd/ReadVariableOp2h
2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp2lstm_472/while/lstm_cell_298/MatMul/ReadVariableOp2l
4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp4lstm_472/while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_157_lstm_471_while_body_1808534L
Hsequential_157_lstm_471_while_sequential_157_lstm_471_while_loop_counterR
Nsequential_157_lstm_471_while_sequential_157_lstm_471_while_maximum_iterations-
)sequential_157_lstm_471_while_placeholder/
+sequential_157_lstm_471_while_placeholder_1/
+sequential_157_lstm_471_while_placeholder_2/
+sequential_157_lstm_471_while_placeholder_3K
Gsequential_157_lstm_471_while_sequential_157_lstm_471_strided_slice_1_0?
?sequential_157_lstm_471_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_471_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_157_lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0:	?a
Nsequential_157_lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?\
Msequential_157_lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0:	?*
&sequential_157_lstm_471_while_identity,
(sequential_157_lstm_471_while_identity_1,
(sequential_157_lstm_471_while_identity_2,
(sequential_157_lstm_471_while_identity_3,
(sequential_157_lstm_471_while_identity_4,
(sequential_157_lstm_471_while_identity_5I
Esequential_157_lstm_471_while_sequential_157_lstm_471_strided_slice_1?
?sequential_157_lstm_471_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_471_tensorarrayunstack_tensorlistfromtensor]
Jsequential_157_lstm_471_while_lstm_cell_297_matmul_readvariableop_resource:	?_
Lsequential_157_lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource:	d?Z
Ksequential_157_lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource:	???Bsequential_157/lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp?Asequential_157/lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp?Csequential_157/lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp?
Osequential_157/lstm_471/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_157/lstm_471/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_157_lstm_471_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_471_tensorarrayunstack_tensorlistfromtensor_0)sequential_157_lstm_471_while_placeholderXsequential_157/lstm_471/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_157/lstm_471/while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOpLsequential_157_lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_157/lstm_471/while/lstm_cell_297/MatMulMatMulHsequential_157/lstm_471/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_157/lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_157/lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOpNsequential_157_lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_157/lstm_471/while/lstm_cell_297/MatMul_1MatMul+sequential_157_lstm_471_while_placeholder_2Ksequential_157/lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_157/lstm_471/while/lstm_cell_297/addAddV2<sequential_157/lstm_471/while/lstm_cell_297/MatMul:product:0>sequential_157/lstm_471/while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_157/lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOpMsequential_157_lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_157/lstm_471/while/lstm_cell_297/BiasAddBiasAdd3sequential_157/lstm_471/while/lstm_cell_297/add:z:0Jsequential_157/lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_157/lstm_471/while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_157/lstm_471/while/lstm_cell_297/splitSplitDsequential_157/lstm_471/while/lstm_cell_297/split/split_dim:output:0<sequential_157/lstm_471/while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_157/lstm_471/while/lstm_cell_297/SigmoidSigmoid:sequential_157/lstm_471/while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_157/lstm_471/while/lstm_cell_297/Sigmoid_1Sigmoid:sequential_157/lstm_471/while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_157/lstm_471/while/lstm_cell_297/mulMul9sequential_157/lstm_471/while/lstm_cell_297/Sigmoid_1:y:0+sequential_157_lstm_471_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_157/lstm_471/while/lstm_cell_297/ReluRelu:sequential_157/lstm_471/while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_157/lstm_471/while/lstm_cell_297/mul_1Mul7sequential_157/lstm_471/while/lstm_cell_297/Sigmoid:y:0>sequential_157/lstm_471/while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_157/lstm_471/while/lstm_cell_297/add_1AddV23sequential_157/lstm_471/while/lstm_cell_297/mul:z:05sequential_157/lstm_471/while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_157/lstm_471/while/lstm_cell_297/Sigmoid_2Sigmoid:sequential_157/lstm_471/while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_157/lstm_471/while/lstm_cell_297/Relu_1Relu5sequential_157/lstm_471/while/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_157/lstm_471/while/lstm_cell_297/mul_2Mul9sequential_157/lstm_471/while/lstm_cell_297/Sigmoid_2:y:0@sequential_157/lstm_471/while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_157/lstm_471/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_157_lstm_471_while_placeholder_1)sequential_157_lstm_471_while_placeholder5sequential_157/lstm_471/while/lstm_cell_297/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_157/lstm_471/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_157/lstm_471/while/addAddV2)sequential_157_lstm_471_while_placeholder,sequential_157/lstm_471/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_157/lstm_471/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_157/lstm_471/while/add_1AddV2Hsequential_157_lstm_471_while_sequential_157_lstm_471_while_loop_counter.sequential_157/lstm_471/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_157/lstm_471/while/IdentityIdentity'sequential_157/lstm_471/while/add_1:z:0#^sequential_157/lstm_471/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_471/while/Identity_1IdentityNsequential_157_lstm_471_while_sequential_157_lstm_471_while_maximum_iterations#^sequential_157/lstm_471/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_471/while/Identity_2Identity%sequential_157/lstm_471/while/add:z:0#^sequential_157/lstm_471/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_471/while/Identity_3IdentityRsequential_157/lstm_471/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_157/lstm_471/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_471/while/Identity_4Identity5sequential_157/lstm_471/while/lstm_cell_297/mul_2:z:0#^sequential_157/lstm_471/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_157/lstm_471/while/Identity_5Identity5sequential_157/lstm_471/while/lstm_cell_297/add_1:z:0#^sequential_157/lstm_471/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_157/lstm_471/while/NoOpNoOpC^sequential_157/lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOpB^sequential_157/lstm_471/while/lstm_cell_297/MatMul/ReadVariableOpD^sequential_157/lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_157_lstm_471_while_identity/sequential_157/lstm_471/while/Identity:output:0"]
(sequential_157_lstm_471_while_identity_11sequential_157/lstm_471/while/Identity_1:output:0"]
(sequential_157_lstm_471_while_identity_21sequential_157/lstm_471/while/Identity_2:output:0"]
(sequential_157_lstm_471_while_identity_31sequential_157/lstm_471/while/Identity_3:output:0"]
(sequential_157_lstm_471_while_identity_41sequential_157/lstm_471/while/Identity_4:output:0"]
(sequential_157_lstm_471_while_identity_51sequential_157/lstm_471/while/Identity_5:output:0"?
Ksequential_157_lstm_471_while_lstm_cell_297_biasadd_readvariableop_resourceMsequential_157_lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0"?
Lsequential_157_lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resourceNsequential_157_lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0"?
Jsequential_157_lstm_471_while_lstm_cell_297_matmul_readvariableop_resourceLsequential_157_lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0"?
Esequential_157_lstm_471_while_sequential_157_lstm_471_strided_slice_1Gsequential_157_lstm_471_while_sequential_157_lstm_471_strided_slice_1_0"?
?sequential_157_lstm_471_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_471_tensorarrayunstack_tensorlistfromtensor?sequential_157_lstm_471_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_471_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_157/lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOpBsequential_157/lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp2?
Asequential_157/lstm_471/while/lstm_cell_297/MatMul/ReadVariableOpAsequential_157/lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp2?
Csequential_157/lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOpCsequential_157/lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_297_layer_call_fn_1813971

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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1809115o
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
while_body_1812602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_297_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_297_matmul_readvariableop_resource:	?G
4while_lstm_cell_297_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_297_biasadd_readvariableop_resource:	???*while/lstm_cell_297/BiasAdd/ReadVariableOp?)while/lstm_cell_297/MatMul/ReadVariableOp?+while/lstm_cell_297/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_297/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_297/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_297/addAddV2$while/lstm_cell_297/MatMul:product:0&while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_297/BiasAddBiasAddwhile/lstm_cell_297/add:z:02while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_297/splitSplit,while/lstm_cell_297/split/split_dim:output:0$while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_297/SigmoidSigmoid"while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_1Sigmoid"while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mulMul!while/lstm_cell_297/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_297/ReluRelu"while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_1Mulwhile/lstm_cell_297/Sigmoid:y:0&while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/add_1AddV2while/lstm_cell_297/mul:z:0while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_297/Sigmoid_2Sigmoid"while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_297/Relu_1Reluwhile/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_297/mul_2Mul!while/lstm_cell_297/Sigmoid_2:y:0(while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_297/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_297/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_297/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_297/BiasAdd/ReadVariableOp*^while/lstm_cell_297/MatMul/ReadVariableOp,^while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_297_biasadd_readvariableop_resource5while_lstm_cell_297_biasadd_readvariableop_resource_0"n
4while_lstm_cell_297_matmul_1_readvariableop_resource6while_lstm_cell_297_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_297_matmul_readvariableop_resource4while_lstm_cell_297_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_297/BiasAdd/ReadVariableOp*while/lstm_cell_297/BiasAdd/ReadVariableOp2V
)while/lstm_cell_297/MatMul/ReadVariableOp)while/lstm_cell_297/MatMul/ReadVariableOp2Z
+while/lstm_cell_297/MatMul_1/ReadVariableOp+while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1814199

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
*__inference_lstm_471_layer_call_fn_1812081
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1809052|
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1809115

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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813775

inputs>
,lstm_cell_299_matmul_readvariableop_resource:2(@
.lstm_cell_299_matmul_1_readvariableop_resource:
(;
-lstm_cell_299_biasadd_readvariableop_resource:(
identity??$lstm_cell_299/BiasAdd/ReadVariableOp?#lstm_cell_299/MatMul/ReadVariableOp?%lstm_cell_299/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_299/MatMul/ReadVariableOpReadVariableOp,lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_299/MatMulMatMulstrided_slice_2:output:0+lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_299/MatMul_1MatMulzeros:output:0-lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_299/addAddV2lstm_cell_299/MatMul:product:0 lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_299/BiasAddBiasAddlstm_cell_299/add:z:0,lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_299/splitSplit&lstm_cell_299/split/split_dim:output:0lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_299/SigmoidSigmoidlstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_1Sigmoidlstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_299/mulMullstm_cell_299/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_299/ReluRelulstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_1Mullstm_cell_299/Sigmoid:y:0 lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_299/add_1AddV2lstm_cell_299/mul:z:0lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_2Sigmoidlstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_299/Relu_1Relulstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_2Mullstm_cell_299/Sigmoid_2:y:0"lstm_cell_299/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_299_matmul_readvariableop_resource.lstm_cell_299_matmul_1_readvariableop_resource-lstm_cell_299_biasadd_readvariableop_resource*
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
while_body_1813691*
condR
while_cond_1813690*K
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
NoOpNoOp%^lstm_cell_299/BiasAdd/ReadVariableOp$^lstm_cell_299/MatMul/ReadVariableOp&^lstm_cell_299/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_299/BiasAdd/ReadVariableOp$lstm_cell_299/BiasAdd/ReadVariableOp2J
#lstm_cell_299/MatMul/ReadVariableOp#lstm_cell_299/MatMul/ReadVariableOp2N
%lstm_cell_299/MatMul_1/ReadVariableOp%lstm_cell_299/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_471_while_body_1811275.
*lstm_471_while_lstm_471_while_loop_counter4
0lstm_471_while_lstm_471_while_maximum_iterations
lstm_471_while_placeholder 
lstm_471_while_placeholder_1 
lstm_471_while_placeholder_2 
lstm_471_while_placeholder_3-
)lstm_471_while_lstm_471_strided_slice_1_0i
elstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0:	?R
?lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0:	d?M
>lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0:	?
lstm_471_while_identity
lstm_471_while_identity_1
lstm_471_while_identity_2
lstm_471_while_identity_3
lstm_471_while_identity_4
lstm_471_while_identity_5+
'lstm_471_while_lstm_471_strided_slice_1g
clstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensorN
;lstm_471_while_lstm_cell_297_matmul_readvariableop_resource:	?P
=lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource:	d?K
<lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource:	???3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp?2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp?4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp?
@lstm_471/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_471/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensor_0lstm_471_while_placeholderIlstm_471/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOpReadVariableOp=lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_471/while/lstm_cell_297/MatMulMatMul9lstm_471/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOpReadVariableOp?lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_471/while/lstm_cell_297/MatMul_1MatMullstm_471_while_placeholder_2<lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_471/while/lstm_cell_297/addAddV2-lstm_471/while/lstm_cell_297/MatMul:product:0/lstm_471/while/lstm_cell_297/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOpReadVariableOp>lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_471/while/lstm_cell_297/BiasAddBiasAdd$lstm_471/while/lstm_cell_297/add:z:0;lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_471/while/lstm_cell_297/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_471/while/lstm_cell_297/splitSplit5lstm_471/while/lstm_cell_297/split/split_dim:output:0-lstm_471/while/lstm_cell_297/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_471/while/lstm_cell_297/SigmoidSigmoid+lstm_471/while/lstm_cell_297/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_471/while/lstm_cell_297/Sigmoid_1Sigmoid+lstm_471/while/lstm_cell_297/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_471/while/lstm_cell_297/mulMul*lstm_471/while/lstm_cell_297/Sigmoid_1:y:0lstm_471_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_471/while/lstm_cell_297/ReluRelu+lstm_471/while/lstm_cell_297/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_471/while/lstm_cell_297/mul_1Mul(lstm_471/while/lstm_cell_297/Sigmoid:y:0/lstm_471/while/lstm_cell_297/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_471/while/lstm_cell_297/add_1AddV2$lstm_471/while/lstm_cell_297/mul:z:0&lstm_471/while/lstm_cell_297/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_471/while/lstm_cell_297/Sigmoid_2Sigmoid+lstm_471/while/lstm_cell_297/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_471/while/lstm_cell_297/Relu_1Relu&lstm_471/while/lstm_cell_297/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_471/while/lstm_cell_297/mul_2Mul*lstm_471/while/lstm_cell_297/Sigmoid_2:y:01lstm_471/while/lstm_cell_297/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_471/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_471_while_placeholder_1lstm_471_while_placeholder&lstm_471/while/lstm_cell_297/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_471/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_471/while/addAddV2lstm_471_while_placeholderlstm_471/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_471/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_471/while/add_1AddV2*lstm_471_while_lstm_471_while_loop_counterlstm_471/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_471/while/IdentityIdentitylstm_471/while/add_1:z:0^lstm_471/while/NoOp*
T0*
_output_shapes
: ?
lstm_471/while/Identity_1Identity0lstm_471_while_lstm_471_while_maximum_iterations^lstm_471/while/NoOp*
T0*
_output_shapes
: t
lstm_471/while/Identity_2Identitylstm_471/while/add:z:0^lstm_471/while/NoOp*
T0*
_output_shapes
: ?
lstm_471/while/Identity_3IdentityClstm_471/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_471/while/NoOp*
T0*
_output_shapes
: ?
lstm_471/while/Identity_4Identity&lstm_471/while/lstm_cell_297/mul_2:z:0^lstm_471/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_471/while/Identity_5Identity&lstm_471/while/lstm_cell_297/add_1:z:0^lstm_471/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_471/while/NoOpNoOp4^lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp3^lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp5^lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_471_while_identity lstm_471/while/Identity:output:0"?
lstm_471_while_identity_1"lstm_471/while/Identity_1:output:0"?
lstm_471_while_identity_2"lstm_471/while/Identity_2:output:0"?
lstm_471_while_identity_3"lstm_471/while/Identity_3:output:0"?
lstm_471_while_identity_4"lstm_471/while/Identity_4:output:0"?
lstm_471_while_identity_5"lstm_471/while/Identity_5:output:0"T
'lstm_471_while_lstm_471_strided_slice_1)lstm_471_while_lstm_471_strided_slice_1_0"~
<lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource>lstm_471_while_lstm_cell_297_biasadd_readvariableop_resource_0"?
=lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource?lstm_471_while_lstm_cell_297_matmul_1_readvariableop_resource_0"|
;lstm_471_while_lstm_cell_297_matmul_readvariableop_resource=lstm_471_while_lstm_cell_297_matmul_readvariableop_resource_0"?
clstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensorelstm_471_while_tensorarrayv2read_tensorlistgetitem_lstm_471_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp3lstm_471/while/lstm_cell_297/BiasAdd/ReadVariableOp2h
2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp2lstm_471/while/lstm_cell_297/MatMul/ReadVariableOp2l
4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp4lstm_471/while/lstm_cell_297/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_473_layer_call_fn_1813346

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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1810617o
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
lstm_473_while_cond_1811979.
*lstm_473_while_lstm_473_while_loop_counter4
0lstm_473_while_lstm_473_while_maximum_iterations
lstm_473_while_placeholder 
lstm_473_while_placeholder_1 
lstm_473_while_placeholder_2 
lstm_473_while_placeholder_30
,lstm_473_while_less_lstm_473_strided_slice_1G
Clstm_473_while_lstm_473_while_cond_1811979___redundant_placeholder0G
Clstm_473_while_lstm_473_while_cond_1811979___redundant_placeholder1G
Clstm_473_while_lstm_473_while_cond_1811979___redundant_placeholder2G
Clstm_473_while_lstm_473_while_cond_1811979___redundant_placeholder3
lstm_473_while_identity
?
lstm_473/while/LessLesslstm_473_while_placeholder,lstm_473_while_less_lstm_473_strided_slice_1*
T0*
_output_shapes
: ]
lstm_473/while/IdentityIdentitylstm_473/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_473_while_identity lstm_473/while/Identity:output:0*(
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
 __inference__traced_save_1814374
file_prefix/
+savev2_dense_157_kernel_read_readvariableop-
)savev2_dense_157_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_471_lstm_cell_471_kernel_read_readvariableopF
Bsavev2_lstm_471_lstm_cell_471_recurrent_kernel_read_readvariableop:
6savev2_lstm_471_lstm_cell_471_bias_read_readvariableop<
8savev2_lstm_472_lstm_cell_472_kernel_read_readvariableopF
Bsavev2_lstm_472_lstm_cell_472_recurrent_kernel_read_readvariableop:
6savev2_lstm_472_lstm_cell_472_bias_read_readvariableop<
8savev2_lstm_473_lstm_cell_473_kernel_read_readvariableopF
Bsavev2_lstm_473_lstm_cell_473_recurrent_kernel_read_readvariableop:
6savev2_lstm_473_lstm_cell_473_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_157_kernel_m_read_readvariableop4
0savev2_adam_dense_157_bias_m_read_readvariableopC
?savev2_adam_lstm_471_lstm_cell_471_kernel_m_read_readvariableopM
Isavev2_adam_lstm_471_lstm_cell_471_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_471_lstm_cell_471_bias_m_read_readvariableopC
?savev2_adam_lstm_472_lstm_cell_472_kernel_m_read_readvariableopM
Isavev2_adam_lstm_472_lstm_cell_472_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_472_lstm_cell_472_bias_m_read_readvariableopC
?savev2_adam_lstm_473_lstm_cell_473_kernel_m_read_readvariableopM
Isavev2_adam_lstm_473_lstm_cell_473_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_473_lstm_cell_473_bias_m_read_readvariableop6
2savev2_adam_dense_157_kernel_v_read_readvariableop4
0savev2_adam_dense_157_bias_v_read_readvariableopC
?savev2_adam_lstm_471_lstm_cell_471_kernel_v_read_readvariableopM
Isavev2_adam_lstm_471_lstm_cell_471_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_471_lstm_cell_471_bias_v_read_readvariableopC
?savev2_adam_lstm_472_lstm_cell_472_kernel_v_read_readvariableopM
Isavev2_adam_lstm_472_lstm_cell_472_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_472_lstm_cell_472_bias_v_read_readvariableopC
?savev2_adam_lstm_473_lstm_cell_473_kernel_v_read_readvariableopM
Isavev2_adam_lstm_473_lstm_cell_473_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_473_lstm_cell_473_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_157_kernel_read_readvariableop)savev2_dense_157_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_471_lstm_cell_471_kernel_read_readvariableopBsavev2_lstm_471_lstm_cell_471_recurrent_kernel_read_readvariableop6savev2_lstm_471_lstm_cell_471_bias_read_readvariableop8savev2_lstm_472_lstm_cell_472_kernel_read_readvariableopBsavev2_lstm_472_lstm_cell_472_recurrent_kernel_read_readvariableop6savev2_lstm_472_lstm_cell_472_bias_read_readvariableop8savev2_lstm_473_lstm_cell_473_kernel_read_readvariableopBsavev2_lstm_473_lstm_cell_473_recurrent_kernel_read_readvariableop6savev2_lstm_473_lstm_cell_473_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_157_kernel_m_read_readvariableop0savev2_adam_dense_157_bias_m_read_readvariableop?savev2_adam_lstm_471_lstm_cell_471_kernel_m_read_readvariableopIsavev2_adam_lstm_471_lstm_cell_471_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_471_lstm_cell_471_bias_m_read_readvariableop?savev2_adam_lstm_472_lstm_cell_472_kernel_m_read_readvariableopIsavev2_adam_lstm_472_lstm_cell_472_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_472_lstm_cell_472_bias_m_read_readvariableop?savev2_adam_lstm_473_lstm_cell_473_kernel_m_read_readvariableopIsavev2_adam_lstm_473_lstm_cell_473_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_473_lstm_cell_473_bias_m_read_readvariableop2savev2_adam_dense_157_kernel_v_read_readvariableop0savev2_adam_dense_157_bias_v_read_readvariableop?savev2_adam_lstm_471_lstm_cell_471_kernel_v_read_readvariableopIsavev2_adam_lstm_471_lstm_cell_471_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_471_lstm_cell_471_bias_v_read_readvariableop?savev2_adam_lstm_472_lstm_cell_472_kernel_v_read_readvariableopIsavev2_adam_lstm_472_lstm_cell_472_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_472_lstm_cell_472_bias_v_read_readvariableop?savev2_adam_lstm_473_lstm_cell_473_kernel_v_read_readvariableopIsavev2_adam_lstm_473_lstm_cell_473_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_473_lstm_cell_473_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_1813937

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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813016
inputs_0?
,lstm_cell_298_matmul_readvariableop_resource:	d?A
.lstm_cell_298_matmul_1_readvariableop_resource:	2?<
-lstm_cell_298_biasadd_readvariableop_resource:	?
identity??$lstm_cell_298/BiasAdd/ReadVariableOp?#lstm_cell_298/MatMul/ReadVariableOp?%lstm_cell_298/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_298/MatMul/ReadVariableOpReadVariableOp,lstm_cell_298_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_298/MatMulMatMulstrided_slice_2:output:0+lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_298_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_298/MatMul_1MatMulzeros:output:0-lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_298/addAddV2lstm_cell_298/MatMul:product:0 lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_298_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_298/BiasAddBiasAddlstm_cell_298/add:z:0,lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_298/splitSplit&lstm_cell_298/split/split_dim:output:0lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_298/SigmoidSigmoidlstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_1Sigmoidlstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_298/mulMullstm_cell_298/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_298/ReluRelulstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_1Mullstm_cell_298/Sigmoid:y:0 lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_298/add_1AddV2lstm_cell_298/mul:z:0lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_298/Sigmoid_2Sigmoidlstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_298/Relu_1Relulstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_298/mul_2Mullstm_cell_298/Sigmoid_2:y:0"lstm_cell_298/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_298_matmul_readvariableop_resource.lstm_cell_298_matmul_1_readvariableop_resource-lstm_cell_298_biasadd_readvariableop_resource*
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
while_body_1812932*
condR
while_cond_1812931*K
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
NoOpNoOp%^lstm_cell_298/BiasAdd/ReadVariableOp$^lstm_cell_298/MatMul/ReadVariableOp&^lstm_cell_298/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_298/BiasAdd/ReadVariableOp$lstm_cell_298/BiasAdd/ReadVariableOp2J
#lstm_cell_298/MatMul/ReadVariableOp#lstm_cell_298/MatMul/ReadVariableOp2N
%lstm_cell_298/MatMul_1/ReadVariableOp%lstm_cell_298/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_157_layer_call_fn_1811189

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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1810426o
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

?
lstm_472_while_cond_1811840.
*lstm_472_while_lstm_472_while_loop_counter4
0lstm_472_while_lstm_472_while_maximum_iterations
lstm_472_while_placeholder 
lstm_472_while_placeholder_1 
lstm_472_while_placeholder_2 
lstm_472_while_placeholder_30
,lstm_472_while_less_lstm_472_strided_slice_1G
Clstm_472_while_lstm_472_while_cond_1811840___redundant_placeholder0G
Clstm_472_while_lstm_472_while_cond_1811840___redundant_placeholder1G
Clstm_472_while_lstm_472_while_cond_1811840___redundant_placeholder2G
Clstm_472_while_lstm_472_while_cond_1811840___redundant_placeholder3
lstm_472_while_identity
?
lstm_472/while/LessLesslstm_472_while_placeholder,lstm_472_while_less_lstm_472_strided_slice_1*
T0*
_output_shapes
: ]
lstm_472/while/IdentityIdentitylstm_472/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_472_while_identity lstm_472/while/Identity:output:0*(
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1814231

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
?T
?
*sequential_157_lstm_473_while_body_1808812L
Hsequential_157_lstm_473_while_sequential_157_lstm_473_while_loop_counterR
Nsequential_157_lstm_473_while_sequential_157_lstm_473_while_maximum_iterations-
)sequential_157_lstm_473_while_placeholder/
+sequential_157_lstm_473_while_placeholder_1/
+sequential_157_lstm_473_while_placeholder_2/
+sequential_157_lstm_473_while_placeholder_3K
Gsequential_157_lstm_473_while_sequential_157_lstm_473_strided_slice_1_0?
?sequential_157_lstm_473_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_473_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_157_lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0:2(`
Nsequential_157_lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0:
([
Msequential_157_lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0:(*
&sequential_157_lstm_473_while_identity,
(sequential_157_lstm_473_while_identity_1,
(sequential_157_lstm_473_while_identity_2,
(sequential_157_lstm_473_while_identity_3,
(sequential_157_lstm_473_while_identity_4,
(sequential_157_lstm_473_while_identity_5I
Esequential_157_lstm_473_while_sequential_157_lstm_473_strided_slice_1?
?sequential_157_lstm_473_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_473_tensorarrayunstack_tensorlistfromtensor\
Jsequential_157_lstm_473_while_lstm_cell_299_matmul_readvariableop_resource:2(^
Lsequential_157_lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource:
(Y
Ksequential_157_lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource:(??Bsequential_157/lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp?Asequential_157/lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp?Csequential_157/lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp?
Osequential_157/lstm_473/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_157/lstm_473/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_157_lstm_473_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_473_tensorarrayunstack_tensorlistfromtensor_0)sequential_157_lstm_473_while_placeholderXsequential_157/lstm_473/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_157/lstm_473/while/lstm_cell_299/MatMul/ReadVariableOpReadVariableOpLsequential_157_lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_157/lstm_473/while/lstm_cell_299/MatMulMatMulHsequential_157/lstm_473/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_157/lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_157/lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOpNsequential_157_lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_157/lstm_473/while/lstm_cell_299/MatMul_1MatMul+sequential_157_lstm_473_while_placeholder_2Ksequential_157/lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_157/lstm_473/while/lstm_cell_299/addAddV2<sequential_157/lstm_473/while/lstm_cell_299/MatMul:product:0>sequential_157/lstm_473/while/lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_157/lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOpMsequential_157_lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_157/lstm_473/while/lstm_cell_299/BiasAddBiasAdd3sequential_157/lstm_473/while/lstm_cell_299/add:z:0Jsequential_157/lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_157/lstm_473/while/lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_157/lstm_473/while/lstm_cell_299/splitSplitDsequential_157/lstm_473/while/lstm_cell_299/split/split_dim:output:0<sequential_157/lstm_473/while/lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_157/lstm_473/while/lstm_cell_299/SigmoidSigmoid:sequential_157/lstm_473/while/lstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_157/lstm_473/while/lstm_cell_299/Sigmoid_1Sigmoid:sequential_157/lstm_473/while/lstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_157/lstm_473/while/lstm_cell_299/mulMul9sequential_157/lstm_473/while/lstm_cell_299/Sigmoid_1:y:0+sequential_157_lstm_473_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_157/lstm_473/while/lstm_cell_299/ReluRelu:sequential_157/lstm_473/while/lstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_157/lstm_473/while/lstm_cell_299/mul_1Mul7sequential_157/lstm_473/while/lstm_cell_299/Sigmoid:y:0>sequential_157/lstm_473/while/lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_157/lstm_473/while/lstm_cell_299/add_1AddV23sequential_157/lstm_473/while/lstm_cell_299/mul:z:05sequential_157/lstm_473/while/lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_157/lstm_473/while/lstm_cell_299/Sigmoid_2Sigmoid:sequential_157/lstm_473/while/lstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_157/lstm_473/while/lstm_cell_299/Relu_1Relu5sequential_157/lstm_473/while/lstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_157/lstm_473/while/lstm_cell_299/mul_2Mul9sequential_157/lstm_473/while/lstm_cell_299/Sigmoid_2:y:0@sequential_157/lstm_473/while/lstm_cell_299/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_157/lstm_473/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_157_lstm_473_while_placeholder_1)sequential_157_lstm_473_while_placeholder5sequential_157/lstm_473/while/lstm_cell_299/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_157/lstm_473/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_157/lstm_473/while/addAddV2)sequential_157_lstm_473_while_placeholder,sequential_157/lstm_473/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_157/lstm_473/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_157/lstm_473/while/add_1AddV2Hsequential_157_lstm_473_while_sequential_157_lstm_473_while_loop_counter.sequential_157/lstm_473/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_157/lstm_473/while/IdentityIdentity'sequential_157/lstm_473/while/add_1:z:0#^sequential_157/lstm_473/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_473/while/Identity_1IdentityNsequential_157_lstm_473_while_sequential_157_lstm_473_while_maximum_iterations#^sequential_157/lstm_473/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_473/while/Identity_2Identity%sequential_157/lstm_473/while/add:z:0#^sequential_157/lstm_473/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_473/while/Identity_3IdentityRsequential_157/lstm_473/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_157/lstm_473/while/NoOp*
T0*
_output_shapes
: ?
(sequential_157/lstm_473/while/Identity_4Identity5sequential_157/lstm_473/while/lstm_cell_299/mul_2:z:0#^sequential_157/lstm_473/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_157/lstm_473/while/Identity_5Identity5sequential_157/lstm_473/while/lstm_cell_299/add_1:z:0#^sequential_157/lstm_473/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_157/lstm_473/while/NoOpNoOpC^sequential_157/lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOpB^sequential_157/lstm_473/while/lstm_cell_299/MatMul/ReadVariableOpD^sequential_157/lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_157_lstm_473_while_identity/sequential_157/lstm_473/while/Identity:output:0"]
(sequential_157_lstm_473_while_identity_11sequential_157/lstm_473/while/Identity_1:output:0"]
(sequential_157_lstm_473_while_identity_21sequential_157/lstm_473/while/Identity_2:output:0"]
(sequential_157_lstm_473_while_identity_31sequential_157/lstm_473/while/Identity_3:output:0"]
(sequential_157_lstm_473_while_identity_41sequential_157/lstm_473/while/Identity_4:output:0"]
(sequential_157_lstm_473_while_identity_51sequential_157/lstm_473/while/Identity_5:output:0"?
Ksequential_157_lstm_473_while_lstm_cell_299_biasadd_readvariableop_resourceMsequential_157_lstm_473_while_lstm_cell_299_biasadd_readvariableop_resource_0"?
Lsequential_157_lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resourceNsequential_157_lstm_473_while_lstm_cell_299_matmul_1_readvariableop_resource_0"?
Jsequential_157_lstm_473_while_lstm_cell_299_matmul_readvariableop_resourceLsequential_157_lstm_473_while_lstm_cell_299_matmul_readvariableop_resource_0"?
Esequential_157_lstm_473_while_sequential_157_lstm_473_strided_slice_1Gsequential_157_lstm_473_while_sequential_157_lstm_473_strided_slice_1_0"?
?sequential_157_lstm_473_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_473_tensorarrayunstack_tensorlistfromtensor?sequential_157_lstm_473_while_tensorarrayv2read_tensorlistgetitem_sequential_157_lstm_473_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_157/lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOpBsequential_157/lstm_473/while/lstm_cell_299/BiasAdd/ReadVariableOp2?
Asequential_157/lstm_473/while/lstm_cell_299/MatMul/ReadVariableOpAsequential_157/lstm_473/while/lstm_cell_299/MatMul/ReadVariableOp2?
Csequential_157/lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOpCsequential_157/lstm_473/while/lstm_cell_299/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1813833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1813833___redundant_placeholder05
1while_while_cond_1813833___redundant_placeholder15
1while_while_cond_1813833___redundant_placeholder25
1while_while_cond_1813833___redundant_placeholder3
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813918

inputs>
,lstm_cell_299_matmul_readvariableop_resource:2(@
.lstm_cell_299_matmul_1_readvariableop_resource:
(;
-lstm_cell_299_biasadd_readvariableop_resource:(
identity??$lstm_cell_299/BiasAdd/ReadVariableOp?#lstm_cell_299/MatMul/ReadVariableOp?%lstm_cell_299/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_299/MatMul/ReadVariableOpReadVariableOp,lstm_cell_299_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_299/MatMulMatMulstrided_slice_2:output:0+lstm_cell_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_299/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_299_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_299/MatMul_1MatMulzeros:output:0-lstm_cell_299/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_299/addAddV2lstm_cell_299/MatMul:product:0 lstm_cell_299/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_299/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_299_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_299/BiasAddBiasAddlstm_cell_299/add:z:0,lstm_cell_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_299/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_299/splitSplit&lstm_cell_299/split/split_dim:output:0lstm_cell_299/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_299/SigmoidSigmoidlstm_cell_299/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_1Sigmoidlstm_cell_299/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_299/mulMullstm_cell_299/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_299/ReluRelulstm_cell_299/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_1Mullstm_cell_299/Sigmoid:y:0 lstm_cell_299/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_299/add_1AddV2lstm_cell_299/mul:z:0lstm_cell_299/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_299/Sigmoid_2Sigmoidlstm_cell_299/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_299/Relu_1Relulstm_cell_299/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_299/mul_2Mullstm_cell_299/Sigmoid_2:y:0"lstm_cell_299/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_299_matmul_readvariableop_resource.lstm_cell_299_matmul_1_readvariableop_resource-lstm_cell_299_biasadd_readvariableop_resource*
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
while_body_1813834*
condR
while_cond_1813833*K
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
NoOpNoOp%^lstm_cell_299/BiasAdd/ReadVariableOp$^lstm_cell_299/MatMul/ReadVariableOp&^lstm_cell_299/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_299/BiasAdd/ReadVariableOp$lstm_cell_299/BiasAdd/ReadVariableOp2J
#lstm_cell_299/MatMul/ReadVariableOp#lstm_cell_299/MatMul/ReadVariableOp2N
%lstm_cell_299/MatMul_1/ReadVariableOp%lstm_cell_299/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1809173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1809173___redundant_placeholder05
1while_while_cond_1809173___redundant_placeholder15
1while_while_cond_1809173___redundant_placeholder25
1while_while_cond_1809173___redundant_placeholder3
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
lstm_472_while_cond_1811413.
*lstm_472_while_lstm_472_while_loop_counter4
0lstm_472_while_lstm_472_while_maximum_iterations
lstm_472_while_placeholder 
lstm_472_while_placeholder_1 
lstm_472_while_placeholder_2 
lstm_472_while_placeholder_30
,lstm_472_while_less_lstm_472_strided_slice_1G
Clstm_472_while_lstm_472_while_cond_1811413___redundant_placeholder0G
Clstm_472_while_lstm_472_while_cond_1811413___redundant_placeholder1G
Clstm_472_while_lstm_472_while_cond_1811413___redundant_placeholder2G
Clstm_472_while_lstm_472_while_cond_1811413___redundant_placeholder3
lstm_472_while_identity
?
lstm_472/while/LessLesslstm_472_while_placeholder,lstm_472_while_less_lstm_472_strided_slice_1*
T0*
_output_shapes
: ]
lstm_472/while/IdentityIdentitylstm_472/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_472_while_identity lstm_472/while/Identity:output:0*(
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
while_body_1810698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_298_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_298_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_298_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_298_matmul_readvariableop_resource:	d?G
4while_lstm_cell_298_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_298_biasadd_readvariableop_resource:	???*while/lstm_cell_298/BiasAdd/ReadVariableOp?)while/lstm_cell_298/MatMul/ReadVariableOp?+while/lstm_cell_298/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_298/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_298_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_298/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_298/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_298_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_298/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_298/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_298/addAddV2$while/lstm_cell_298/MatMul:product:0&while/lstm_cell_298/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_298/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_298_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_298/BiasAddBiasAddwhile/lstm_cell_298/add:z:02while/lstm_cell_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_298/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_298/splitSplit,while/lstm_cell_298/split/split_dim:output:0$while/lstm_cell_298/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_298/SigmoidSigmoid"while/lstm_cell_298/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_1Sigmoid"while/lstm_cell_298/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mulMul!while/lstm_cell_298/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_298/ReluRelu"while/lstm_cell_298/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_1Mulwhile/lstm_cell_298/Sigmoid:y:0&while/lstm_cell_298/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/add_1AddV2while/lstm_cell_298/mul:z:0while/lstm_cell_298/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_298/Sigmoid_2Sigmoid"while/lstm_cell_298/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_298/Relu_1Reluwhile/lstm_cell_298/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_298/mul_2Mul!while/lstm_cell_298/Sigmoid_2:y:0(while/lstm_cell_298/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_298/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_298/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_298/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_298/BiasAdd/ReadVariableOp*^while/lstm_cell_298/MatMul/ReadVariableOp,^while/lstm_cell_298/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_298_biasadd_readvariableop_resource5while_lstm_cell_298_biasadd_readvariableop_resource_0"n
4while_lstm_cell_298_matmul_1_readvariableop_resource6while_lstm_cell_298_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_298_matmul_readvariableop_resource4while_lstm_cell_298_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_298/BiasAdd/ReadVariableOp*while/lstm_cell_298/BiasAdd/ReadVariableOp2V
)while/lstm_cell_298/MatMul/ReadVariableOp)while/lstm_cell_298/MatMul/ReadVariableOp2Z
+while/lstm_cell_298/MatMul_1/ReadVariableOp+while/lstm_cell_298/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1809593

inputs(
lstm_cell_298_1809511:	d?(
lstm_cell_298_1809513:	2?$
lstm_cell_298_1809515:	?
identity??%lstm_cell_298/StatefulPartitionedCall?while;
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
%lstm_cell_298/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_298_1809511lstm_cell_298_1809513lstm_cell_298_1809515*
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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809465n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_298_1809511lstm_cell_298_1809513lstm_cell_298_1809515*
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
while_body_1809524*
condR
while_cond_1809523*K
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
NoOpNoOp&^lstm_cell_298/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_298/StatefulPartitionedCall%lstm_cell_298/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_472_layer_call_and_return_conditional_losses_1809402

inputs(
lstm_cell_298_1809320:	d?(
lstm_cell_298_1809322:	2?$
lstm_cell_298_1809324:	?
identity??%lstm_cell_298/StatefulPartitionedCall?while;
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
%lstm_cell_298/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_298_1809320lstm_cell_298_1809322lstm_cell_298_1809324*
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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1809319n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_298_1809320lstm_cell_298_1809322lstm_cell_298_1809324*
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
while_body_1809333*
condR
while_cond_1809332*K
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
NoOpNoOp&^lstm_cell_298/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_298/StatefulPartitionedCall%lstm_cell_298/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_471_layer_call_fn_1812103

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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1810101s
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
while_body_1809683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_299_1809707_0:2(/
while_lstm_cell_299_1809709_0:
(+
while_lstm_cell_299_1809711_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_299_1809707:2(-
while_lstm_cell_299_1809709:
()
while_lstm_cell_299_1809711:(??+while/lstm_cell_299/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_299/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_299_1809707_0while_lstm_cell_299_1809709_0while_lstm_cell_299_1809711_0*
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1809669?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_299/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_299/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_299/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_299/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_299_1809707while_lstm_cell_299_1809707_0"<
while_lstm_cell_299_1809709while_lstm_cell_299_1809709_0"<
while_lstm_cell_299_1809711while_lstm_cell_299_1809711_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_299/StatefulPartitionedCall+while/lstm_cell_299/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1814003

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
?
*sequential_157_lstm_473_while_cond_1808811L
Hsequential_157_lstm_473_while_sequential_157_lstm_473_while_loop_counterR
Nsequential_157_lstm_473_while_sequential_157_lstm_473_while_maximum_iterations-
)sequential_157_lstm_473_while_placeholder/
+sequential_157_lstm_473_while_placeholder_1/
+sequential_157_lstm_473_while_placeholder_2/
+sequential_157_lstm_473_while_placeholder_3N
Jsequential_157_lstm_473_while_less_sequential_157_lstm_473_strided_slice_1e
asequential_157_lstm_473_while_sequential_157_lstm_473_while_cond_1808811___redundant_placeholder0e
asequential_157_lstm_473_while_sequential_157_lstm_473_while_cond_1808811___redundant_placeholder1e
asequential_157_lstm_473_while_sequential_157_lstm_473_while_cond_1808811___redundant_placeholder2e
asequential_157_lstm_473_while_sequential_157_lstm_473_while_cond_1808811___redundant_placeholder3*
&sequential_157_lstm_473_while_identity
?
"sequential_157/lstm_473/while/LessLess)sequential_157_lstm_473_while_placeholderJsequential_157_lstm_473_while_less_sequential_157_lstm_473_strided_slice_1*
T0*
_output_shapes
: {
&sequential_157/lstm_473/while/IdentityIdentity&sequential_157/lstm_473/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_157_lstm_473_while_identity/sequential_157/lstm_473/while/Identity:output:0*(
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
lstm_471_input;
 serving_default_lstm_471_input:0?????????=
	dense_1570
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
2dense_157/kernel
:2dense_157/bias
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
0:.	?2lstm_471/lstm_cell_471/kernel
::8	d?2'lstm_471/lstm_cell_471/recurrent_kernel
*:(?2lstm_471/lstm_cell_471/bias
0:.	d?2lstm_472/lstm_cell_472/kernel
::8	2?2'lstm_472/lstm_cell_472/recurrent_kernel
*:(?2lstm_472/lstm_cell_472/bias
/:-2(2lstm_473/lstm_cell_473/kernel
9:7
(2'lstm_473/lstm_cell_473/recurrent_kernel
):'(2lstm_473/lstm_cell_473/bias
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
2Adam/dense_157/kernel/m
!:2Adam/dense_157/bias/m
5:3	?2$Adam/lstm_471/lstm_cell_471/kernel/m
?:=	d?2.Adam/lstm_471/lstm_cell_471/recurrent_kernel/m
/:-?2"Adam/lstm_471/lstm_cell_471/bias/m
5:3	d?2$Adam/lstm_472/lstm_cell_472/kernel/m
?:=	2?2.Adam/lstm_472/lstm_cell_472/recurrent_kernel/m
/:-?2"Adam/lstm_472/lstm_cell_472/bias/m
4:22(2$Adam/lstm_473/lstm_cell_473/kernel/m
>:<
(2.Adam/lstm_473/lstm_cell_473/recurrent_kernel/m
.:,(2"Adam/lstm_473/lstm_cell_473/bias/m
':%
2Adam/dense_157/kernel/v
!:2Adam/dense_157/bias/v
5:3	?2$Adam/lstm_471/lstm_cell_471/kernel/v
?:=	d?2.Adam/lstm_471/lstm_cell_471/recurrent_kernel/v
/:-?2"Adam/lstm_471/lstm_cell_471/bias/v
5:3	d?2$Adam/lstm_472/lstm_cell_472/kernel/v
?:=	2?2.Adam/lstm_472/lstm_cell_472/recurrent_kernel/v
/:-?2"Adam/lstm_472/lstm_cell_472/bias/v
4:22(2$Adam/lstm_473/lstm_cell_473/kernel/v
>:<
(2.Adam/lstm_473/lstm_cell_473/recurrent_kernel/v
.:,(2"Adam/lstm_473/lstm_cell_473/bias/v
?2?
0__inference_sequential_157_layer_call_fn_1810451
0__inference_sequential_157_layer_call_fn_1811189
0__inference_sequential_157_layer_call_fn_1811216
0__inference_sequential_157_layer_call_fn_1811067?
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811643
K__inference_sequential_157_layer_call_and_return_conditional_losses_1812070
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811097
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811127?
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
"__inference__wrapped_model_1808902lstm_471_input"?
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
*__inference_lstm_471_layer_call_fn_1812081
*__inference_lstm_471_layer_call_fn_1812092
*__inference_lstm_471_layer_call_fn_1812103
*__inference_lstm_471_layer_call_fn_1812114?
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812257
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812400
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812543
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812686?
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
*__inference_lstm_472_layer_call_fn_1812697
*__inference_lstm_472_layer_call_fn_1812708
*__inference_lstm_472_layer_call_fn_1812719
*__inference_lstm_472_layer_call_fn_1812730?
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1812873
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813016
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813159
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813302?
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
*__inference_lstm_473_layer_call_fn_1813313
*__inference_lstm_473_layer_call_fn_1813324
*__inference_lstm_473_layer_call_fn_1813335
*__inference_lstm_473_layer_call_fn_1813346?
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813489
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813632
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813775
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813918?
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
+__inference_dense_157_layer_call_fn_1813927?
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
F__inference_dense_157_layer_call_and_return_conditional_losses_1813937?
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
%__inference_signature_wrapper_1811162lstm_471_input"?
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
/__inference_lstm_cell_297_layer_call_fn_1813954
/__inference_lstm_cell_297_layer_call_fn_1813971?
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1814003
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1814035?
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
/__inference_lstm_cell_298_layer_call_fn_1814052
/__inference_lstm_cell_298_layer_call_fn_1814069?
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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1814101
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1814133?
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
/__inference_lstm_cell_299_layer_call_fn_1814150
/__inference_lstm_cell_299_layer_call_fn_1814167?
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1814199
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1814231?
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
"__inference__wrapped_model_1808902?-./012345!";?8
1?.
,?)
lstm_471_input?????????
? "5?2
0
	dense_157#? 
	dense_157??????????
F__inference_dense_157_layer_call_and_return_conditional_losses_1813937\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_157_layer_call_fn_1813927O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812257?-./O?L
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812400?-./O?L
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812543q-./??<
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
E__inference_lstm_471_layer_call_and_return_conditional_losses_1812686q-./??<
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
*__inference_lstm_471_layer_call_fn_1812081}-./O?L
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
*__inference_lstm_471_layer_call_fn_1812092}-./O?L
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
*__inference_lstm_471_layer_call_fn_1812103d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_471_layer_call_fn_1812114d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_472_layer_call_and_return_conditional_losses_1812873?012O?L
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813016?012O?L
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813159q012??<
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
E__inference_lstm_472_layer_call_and_return_conditional_losses_1813302q012??<
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
*__inference_lstm_472_layer_call_fn_1812697}012O?L
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
*__inference_lstm_472_layer_call_fn_1812708}012O?L
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
*__inference_lstm_472_layer_call_fn_1812719d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_472_layer_call_fn_1812730d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813489}345O?L
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813632}345O?L
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813775m345??<
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
E__inference_lstm_473_layer_call_and_return_conditional_losses_1813918m345??<
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
*__inference_lstm_473_layer_call_fn_1813313p345O?L
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
*__inference_lstm_473_layer_call_fn_1813324p345O?L
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
*__inference_lstm_473_layer_call_fn_1813335`345??<
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
*__inference_lstm_473_layer_call_fn_1813346`345??<
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1814003?-./??}
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
J__inference_lstm_cell_297_layer_call_and_return_conditional_losses_1814035?-./??}
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
/__inference_lstm_cell_297_layer_call_fn_1813954?-./??}
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
/__inference_lstm_cell_297_layer_call_fn_1813971?-./??}
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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1814101?012??}
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
J__inference_lstm_cell_298_layer_call_and_return_conditional_losses_1814133?012??}
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
/__inference_lstm_cell_298_layer_call_fn_1814052?012??}
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
/__inference_lstm_cell_298_layer_call_fn_1814069?012??}
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1814199?345??}
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
J__inference_lstm_cell_299_layer_call_and_return_conditional_losses_1814231?345??}
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
/__inference_lstm_cell_299_layer_call_fn_1814150?345??}
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
/__inference_lstm_cell_299_layer_call_fn_1814167?345??}
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811097y-./012345!"C?@
9?6
,?)
lstm_471_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811127y-./012345!"C?@
9?6
,?)
lstm_471_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_157_layer_call_and_return_conditional_losses_1811643q-./012345!";?8
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
K__inference_sequential_157_layer_call_and_return_conditional_losses_1812070q-./012345!";?8
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
0__inference_sequential_157_layer_call_fn_1810451l-./012345!"C?@
9?6
,?)
lstm_471_input?????????
p 

 
? "???????????
0__inference_sequential_157_layer_call_fn_1811067l-./012345!"C?@
9?6
,?)
lstm_471_input?????????
p

 
? "???????????
0__inference_sequential_157_layer_call_fn_1811189d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_157_layer_call_fn_1811216d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1811162?-./012345!"M?J
? 
C?@
>
lstm_471_input,?)
lstm_471_input?????????"5?2
0
	dense_157#? 
	dense_157?????????