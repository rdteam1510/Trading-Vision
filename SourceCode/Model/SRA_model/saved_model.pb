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
dense_175/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_175/kernel
u
$dense_175/kernel/Read/ReadVariableOpReadVariableOpdense_175/kernel*
_output_shapes

:
*
dtype0
t
dense_175/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_175/bias
m
"dense_175/bias/Read/ReadVariableOpReadVariableOpdense_175/bias*
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
lstm_525/lstm_cell_525/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_525/lstm_cell_525/kernel
?
1lstm_525/lstm_cell_525/kernel/Read/ReadVariableOpReadVariableOplstm_525/lstm_cell_525/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_525/lstm_cell_525/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_525/lstm_cell_525/recurrent_kernel
?
;lstm_525/lstm_cell_525/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_525/lstm_cell_525/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_525/lstm_cell_525/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_525/lstm_cell_525/bias
?
/lstm_525/lstm_cell_525/bias/Read/ReadVariableOpReadVariableOplstm_525/lstm_cell_525/bias*
_output_shapes	
:?*
dtype0
?
lstm_526/lstm_cell_526/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_526/lstm_cell_526/kernel
?
1lstm_526/lstm_cell_526/kernel/Read/ReadVariableOpReadVariableOplstm_526/lstm_cell_526/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_526/lstm_cell_526/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_526/lstm_cell_526/recurrent_kernel
?
;lstm_526/lstm_cell_526/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_526/lstm_cell_526/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_526/lstm_cell_526/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_526/lstm_cell_526/bias
?
/lstm_526/lstm_cell_526/bias/Read/ReadVariableOpReadVariableOplstm_526/lstm_cell_526/bias*
_output_shapes	
:?*
dtype0
?
lstm_527/lstm_cell_527/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_527/lstm_cell_527/kernel
?
1lstm_527/lstm_cell_527/kernel/Read/ReadVariableOpReadVariableOplstm_527/lstm_cell_527/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_527/lstm_cell_527/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_527/lstm_cell_527/recurrent_kernel
?
;lstm_527/lstm_cell_527/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_527/lstm_cell_527/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_527/lstm_cell_527/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_527/lstm_cell_527/bias
?
/lstm_527/lstm_cell_527/bias/Read/ReadVariableOpReadVariableOplstm_527/lstm_cell_527/bias*
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
Adam/dense_175/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_175/kernel/m
?
+Adam/dense_175/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_175/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_175/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_175/bias/m
{
)Adam/dense_175/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_175/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_525/lstm_cell_525/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_525/lstm_cell_525/kernel/m
?
8Adam/lstm_525/lstm_cell_525/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_525/lstm_cell_525/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_525/lstm_cell_525/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_525/lstm_cell_525/recurrent_kernel/m
?
BAdam/lstm_525/lstm_cell_525/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_525/lstm_cell_525/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_525/lstm_cell_525/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_525/lstm_cell_525/bias/m
?
6Adam/lstm_525/lstm_cell_525/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_525/lstm_cell_525/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_526/lstm_cell_526/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_526/lstm_cell_526/kernel/m
?
8Adam/lstm_526/lstm_cell_526/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_526/lstm_cell_526/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_526/lstm_cell_526/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_526/lstm_cell_526/recurrent_kernel/m
?
BAdam/lstm_526/lstm_cell_526/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_526/lstm_cell_526/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_526/lstm_cell_526/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_526/lstm_cell_526/bias/m
?
6Adam/lstm_526/lstm_cell_526/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_526/lstm_cell_526/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_527/lstm_cell_527/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_527/lstm_cell_527/kernel/m
?
8Adam/lstm_527/lstm_cell_527/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_527/lstm_cell_527/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_527/lstm_cell_527/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_527/lstm_cell_527/recurrent_kernel/m
?
BAdam/lstm_527/lstm_cell_527/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_527/lstm_cell_527/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_527/lstm_cell_527/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_527/lstm_cell_527/bias/m
?
6Adam/lstm_527/lstm_cell_527/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_527/lstm_cell_527/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_175/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_175/kernel/v
?
+Adam/dense_175/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_175/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_175/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_175/bias/v
{
)Adam/dense_175/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_175/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_525/lstm_cell_525/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_525/lstm_cell_525/kernel/v
?
8Adam/lstm_525/lstm_cell_525/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_525/lstm_cell_525/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_525/lstm_cell_525/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_525/lstm_cell_525/recurrent_kernel/v
?
BAdam/lstm_525/lstm_cell_525/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_525/lstm_cell_525/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_525/lstm_cell_525/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_525/lstm_cell_525/bias/v
?
6Adam/lstm_525/lstm_cell_525/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_525/lstm_cell_525/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_526/lstm_cell_526/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_526/lstm_cell_526/kernel/v
?
8Adam/lstm_526/lstm_cell_526/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_526/lstm_cell_526/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_526/lstm_cell_526/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_526/lstm_cell_526/recurrent_kernel/v
?
BAdam/lstm_526/lstm_cell_526/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_526/lstm_cell_526/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_526/lstm_cell_526/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_526/lstm_cell_526/bias/v
?
6Adam/lstm_526/lstm_cell_526/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_526/lstm_cell_526/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_527/lstm_cell_527/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_527/lstm_cell_527/kernel/v
?
8Adam/lstm_527/lstm_cell_527/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_527/lstm_cell_527/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_527/lstm_cell_527/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_527/lstm_cell_527/recurrent_kernel/v
?
BAdam/lstm_527/lstm_cell_527/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_527/lstm_cell_527/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_527/lstm_cell_527/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_527/lstm_cell_527/bias/v
?
6Adam/lstm_527/lstm_cell_527/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_527/lstm_cell_527/bias/v*
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
VARIABLE_VALUEdense_175/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_175/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_525/lstm_cell_525/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_525/lstm_cell_525/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_525/lstm_cell_525/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_526/lstm_cell_526/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_526/lstm_cell_526/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_526/lstm_cell_526/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_527/lstm_cell_527/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_527/lstm_cell_527/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_527/lstm_cell_527/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_175/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_175/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_525/lstm_cell_525/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_525/lstm_cell_525/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_525/lstm_cell_525/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_526/lstm_cell_526/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_526/lstm_cell_526/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_526/lstm_cell_526/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_527/lstm_cell_527/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_527/lstm_cell_527/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_527/lstm_cell_527/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_175/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_175/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_525/lstm_cell_525/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_525/lstm_cell_525/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_525/lstm_cell_525/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_526/lstm_cell_526/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_526/lstm_cell_526/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_526/lstm_cell_526/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_527/lstm_cell_527/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_527/lstm_cell_527/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_527/lstm_cell_527/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_525_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_525_inputlstm_525/lstm_cell_525/kernel'lstm_525/lstm_cell_525/recurrent_kernellstm_525/lstm_cell_525/biaslstm_526/lstm_cell_526/kernel'lstm_526/lstm_cell_526/recurrent_kernellstm_526/lstm_cell_526/biaslstm_527/lstm_cell_527/kernel'lstm_527/lstm_cell_527/recurrent_kernellstm_527/lstm_cell_527/biasdense_175/kerneldense_175/bias*
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
%__inference_signature_wrapper_3481180
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_175/kernel/Read/ReadVariableOp"dense_175/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_525/lstm_cell_525/kernel/Read/ReadVariableOp;lstm_525/lstm_cell_525/recurrent_kernel/Read/ReadVariableOp/lstm_525/lstm_cell_525/bias/Read/ReadVariableOp1lstm_526/lstm_cell_526/kernel/Read/ReadVariableOp;lstm_526/lstm_cell_526/recurrent_kernel/Read/ReadVariableOp/lstm_526/lstm_cell_526/bias/Read/ReadVariableOp1lstm_527/lstm_cell_527/kernel/Read/ReadVariableOp;lstm_527/lstm_cell_527/recurrent_kernel/Read/ReadVariableOp/lstm_527/lstm_cell_527/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_175/kernel/m/Read/ReadVariableOp)Adam/dense_175/bias/m/Read/ReadVariableOp8Adam/lstm_525/lstm_cell_525/kernel/m/Read/ReadVariableOpBAdam/lstm_525/lstm_cell_525/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_525/lstm_cell_525/bias/m/Read/ReadVariableOp8Adam/lstm_526/lstm_cell_526/kernel/m/Read/ReadVariableOpBAdam/lstm_526/lstm_cell_526/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_526/lstm_cell_526/bias/m/Read/ReadVariableOp8Adam/lstm_527/lstm_cell_527/kernel/m/Read/ReadVariableOpBAdam/lstm_527/lstm_cell_527/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_527/lstm_cell_527/bias/m/Read/ReadVariableOp+Adam/dense_175/kernel/v/Read/ReadVariableOp)Adam/dense_175/bias/v/Read/ReadVariableOp8Adam/lstm_525/lstm_cell_525/kernel/v/Read/ReadVariableOpBAdam/lstm_525/lstm_cell_525/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_525/lstm_cell_525/bias/v/Read/ReadVariableOp8Adam/lstm_526/lstm_cell_526/kernel/v/Read/ReadVariableOpBAdam/lstm_526/lstm_cell_526/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_526/lstm_cell_526/bias/v/Read/ReadVariableOp8Adam/lstm_527/lstm_cell_527/kernel/v/Read/ReadVariableOpBAdam/lstm_527/lstm_cell_527/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_527/lstm_cell_527/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3484392
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_175/kerneldense_175/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_525/lstm_cell_525/kernel'lstm_525/lstm_cell_525/recurrent_kernellstm_525/lstm_cell_525/biaslstm_526/lstm_cell_526/kernel'lstm_526/lstm_cell_526/recurrent_kernellstm_526/lstm_cell_526/biaslstm_527/lstm_cell_527/kernel'lstm_527/lstm_cell_527/recurrent_kernellstm_527/lstm_cell_527/biastotalcountAdam/dense_175/kernel/mAdam/dense_175/bias/m$Adam/lstm_525/lstm_cell_525/kernel/m.Adam/lstm_525/lstm_cell_525/recurrent_kernel/m"Adam/lstm_525/lstm_cell_525/bias/m$Adam/lstm_526/lstm_cell_526/kernel/m.Adam/lstm_526/lstm_cell_526/recurrent_kernel/m"Adam/lstm_526/lstm_cell_526/bias/m$Adam/lstm_527/lstm_cell_527/kernel/m.Adam/lstm_527/lstm_cell_527/recurrent_kernel/m"Adam/lstm_527/lstm_cell_527/bias/mAdam/dense_175/kernel/vAdam/dense_175/bias/v$Adam/lstm_525/lstm_cell_525/kernel/v.Adam/lstm_525/lstm_cell_525/recurrent_kernel/v"Adam/lstm_525/lstm_cell_525/bias/v$Adam/lstm_526/lstm_cell_526/kernel/v.Adam/lstm_526/lstm_cell_526/recurrent_kernel/v"Adam/lstm_526/lstm_cell_526/bias/v$Adam/lstm_527/lstm_cell_527/kernel/v.Adam/lstm_527/lstm_cell_527/recurrent_kernel/v"Adam/lstm_527/lstm_cell_527/bias/v*4
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
#__inference__traced_restore_3484522??+
?
?
*sequential_175_lstm_526_while_cond_3478690L
Hsequential_175_lstm_526_while_sequential_175_lstm_526_while_loop_counterR
Nsequential_175_lstm_526_while_sequential_175_lstm_526_while_maximum_iterations-
)sequential_175_lstm_526_while_placeholder/
+sequential_175_lstm_526_while_placeholder_1/
+sequential_175_lstm_526_while_placeholder_2/
+sequential_175_lstm_526_while_placeholder_3N
Jsequential_175_lstm_526_while_less_sequential_175_lstm_526_strided_slice_1e
asequential_175_lstm_526_while_sequential_175_lstm_526_while_cond_3478690___redundant_placeholder0e
asequential_175_lstm_526_while_sequential_175_lstm_526_while_cond_3478690___redundant_placeholder1e
asequential_175_lstm_526_while_sequential_175_lstm_526_while_cond_3478690___redundant_placeholder2e
asequential_175_lstm_526_while_sequential_175_lstm_526_while_cond_3478690___redundant_placeholder3*
&sequential_175_lstm_526_while_identity
?
"sequential_175/lstm_526/while/LessLess)sequential_175_lstm_526_while_placeholderJsequential_175_lstm_526_while_less_sequential_175_lstm_526_strided_slice_1*
T0*
_output_shapes
: {
&sequential_175/lstm_526/while/IdentityIdentity&sequential_175/lstm_526/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_175_lstm_526_while_identity/sequential_175/lstm_526/while/Identity:output:0*(
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483177

inputs?
,lstm_cell_574_matmul_readvariableop_resource:	d?A
.lstm_cell_574_matmul_1_readvariableop_resource:	2?<
-lstm_cell_574_biasadd_readvariableop_resource:	?
identity??$lstm_cell_574/BiasAdd/ReadVariableOp?#lstm_cell_574/MatMul/ReadVariableOp?%lstm_cell_574/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_574/MatMul/ReadVariableOpReadVariableOp,lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_574/MatMulMatMulstrided_slice_2:output:0+lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_574/MatMul_1MatMulzeros:output:0-lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_574/addAddV2lstm_cell_574/MatMul:product:0 lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_574/BiasAddBiasAddlstm_cell_574/add:z:0,lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_574/splitSplit&lstm_cell_574/split/split_dim:output:0lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_574/SigmoidSigmoidlstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_1Sigmoidlstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_574/mulMullstm_cell_574/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_574/ReluRelulstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_1Mullstm_cell_574/Sigmoid:y:0 lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_574/add_1AddV2lstm_cell_574/mul:z:0lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_2Sigmoidlstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_574/Relu_1Relulstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_2Mullstm_cell_574/Sigmoid_2:y:0"lstm_cell_574/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_574_matmul_readvariableop_resource.lstm_cell_574_matmul_1_readvariableop_resource-lstm_cell_574_biasadd_readvariableop_resource*
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
while_body_3483093*
condR
while_cond_3483092*K
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
NoOpNoOp%^lstm_cell_574/BiasAdd/ReadVariableOp$^lstm_cell_574/MatMul/ReadVariableOp&^lstm_cell_574/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_574/BiasAdd/ReadVariableOp$lstm_cell_574/BiasAdd/ReadVariableOp2J
#lstm_cell_574/MatMul/ReadVariableOp#lstm_cell_574/MatMul/ReadVariableOp2N
%lstm_cell_574/MatMul_1/ReadVariableOp%lstm_cell_574/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3483851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3483851___redundant_placeholder05
1while_while_cond_3483851___redundant_placeholder15
1while_while_cond_3483851___redundant_placeholder25
1while_while_cond_3483851___redundant_placeholder3
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
/__inference_lstm_cell_574_layer_call_fn_3484070

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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479337o
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
?T
?
*sequential_175_lstm_527_while_body_3478830L
Hsequential_175_lstm_527_while_sequential_175_lstm_527_while_loop_counterR
Nsequential_175_lstm_527_while_sequential_175_lstm_527_while_maximum_iterations-
)sequential_175_lstm_527_while_placeholder/
+sequential_175_lstm_527_while_placeholder_1/
+sequential_175_lstm_527_while_placeholder_2/
+sequential_175_lstm_527_while_placeholder_3K
Gsequential_175_lstm_527_while_sequential_175_lstm_527_strided_slice_1_0?
?sequential_175_lstm_527_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_527_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_175_lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0:2(`
Nsequential_175_lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0:
([
Msequential_175_lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0:(*
&sequential_175_lstm_527_while_identity,
(sequential_175_lstm_527_while_identity_1,
(sequential_175_lstm_527_while_identity_2,
(sequential_175_lstm_527_while_identity_3,
(sequential_175_lstm_527_while_identity_4,
(sequential_175_lstm_527_while_identity_5I
Esequential_175_lstm_527_while_sequential_175_lstm_527_strided_slice_1?
?sequential_175_lstm_527_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_527_tensorarrayunstack_tensorlistfromtensor\
Jsequential_175_lstm_527_while_lstm_cell_575_matmul_readvariableop_resource:2(^
Lsequential_175_lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource:
(Y
Ksequential_175_lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource:(??Bsequential_175/lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp?Asequential_175/lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp?Csequential_175/lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp?
Osequential_175/lstm_527/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_175/lstm_527/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_175_lstm_527_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_527_tensorarrayunstack_tensorlistfromtensor_0)sequential_175_lstm_527_while_placeholderXsequential_175/lstm_527/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_175/lstm_527/while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOpLsequential_175_lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_175/lstm_527/while/lstm_cell_575/MatMulMatMulHsequential_175/lstm_527/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_175/lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_175/lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOpNsequential_175_lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_175/lstm_527/while/lstm_cell_575/MatMul_1MatMul+sequential_175_lstm_527_while_placeholder_2Ksequential_175/lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_175/lstm_527/while/lstm_cell_575/addAddV2<sequential_175/lstm_527/while/lstm_cell_575/MatMul:product:0>sequential_175/lstm_527/while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_175/lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOpMsequential_175_lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_175/lstm_527/while/lstm_cell_575/BiasAddBiasAdd3sequential_175/lstm_527/while/lstm_cell_575/add:z:0Jsequential_175/lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_175/lstm_527/while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_175/lstm_527/while/lstm_cell_575/splitSplitDsequential_175/lstm_527/while/lstm_cell_575/split/split_dim:output:0<sequential_175/lstm_527/while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_175/lstm_527/while/lstm_cell_575/SigmoidSigmoid:sequential_175/lstm_527/while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_175/lstm_527/while/lstm_cell_575/Sigmoid_1Sigmoid:sequential_175/lstm_527/while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_175/lstm_527/while/lstm_cell_575/mulMul9sequential_175/lstm_527/while/lstm_cell_575/Sigmoid_1:y:0+sequential_175_lstm_527_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_175/lstm_527/while/lstm_cell_575/ReluRelu:sequential_175/lstm_527/while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_175/lstm_527/while/lstm_cell_575/mul_1Mul7sequential_175/lstm_527/while/lstm_cell_575/Sigmoid:y:0>sequential_175/lstm_527/while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_175/lstm_527/while/lstm_cell_575/add_1AddV23sequential_175/lstm_527/while/lstm_cell_575/mul:z:05sequential_175/lstm_527/while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_175/lstm_527/while/lstm_cell_575/Sigmoid_2Sigmoid:sequential_175/lstm_527/while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_175/lstm_527/while/lstm_cell_575/Relu_1Relu5sequential_175/lstm_527/while/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_175/lstm_527/while/lstm_cell_575/mul_2Mul9sequential_175/lstm_527/while/lstm_cell_575/Sigmoid_2:y:0@sequential_175/lstm_527/while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_175/lstm_527/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_175_lstm_527_while_placeholder_1)sequential_175_lstm_527_while_placeholder5sequential_175/lstm_527/while/lstm_cell_575/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_175/lstm_527/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_175/lstm_527/while/addAddV2)sequential_175_lstm_527_while_placeholder,sequential_175/lstm_527/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_175/lstm_527/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_175/lstm_527/while/add_1AddV2Hsequential_175_lstm_527_while_sequential_175_lstm_527_while_loop_counter.sequential_175/lstm_527/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_175/lstm_527/while/IdentityIdentity'sequential_175/lstm_527/while/add_1:z:0#^sequential_175/lstm_527/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_527/while/Identity_1IdentityNsequential_175_lstm_527_while_sequential_175_lstm_527_while_maximum_iterations#^sequential_175/lstm_527/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_527/while/Identity_2Identity%sequential_175/lstm_527/while/add:z:0#^sequential_175/lstm_527/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_527/while/Identity_3IdentityRsequential_175/lstm_527/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_175/lstm_527/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_527/while/Identity_4Identity5sequential_175/lstm_527/while/lstm_cell_575/mul_2:z:0#^sequential_175/lstm_527/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_175/lstm_527/while/Identity_5Identity5sequential_175/lstm_527/while/lstm_cell_575/add_1:z:0#^sequential_175/lstm_527/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_175/lstm_527/while/NoOpNoOpC^sequential_175/lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOpB^sequential_175/lstm_527/while/lstm_cell_575/MatMul/ReadVariableOpD^sequential_175/lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_175_lstm_527_while_identity/sequential_175/lstm_527/while/Identity:output:0"]
(sequential_175_lstm_527_while_identity_11sequential_175/lstm_527/while/Identity_1:output:0"]
(sequential_175_lstm_527_while_identity_21sequential_175/lstm_527/while/Identity_2:output:0"]
(sequential_175_lstm_527_while_identity_31sequential_175/lstm_527/while/Identity_3:output:0"]
(sequential_175_lstm_527_while_identity_41sequential_175/lstm_527/while/Identity_4:output:0"]
(sequential_175_lstm_527_while_identity_51sequential_175/lstm_527/while/Identity_5:output:0"?
Ksequential_175_lstm_527_while_lstm_cell_575_biasadd_readvariableop_resourceMsequential_175_lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0"?
Lsequential_175_lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resourceNsequential_175_lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0"?
Jsequential_175_lstm_527_while_lstm_cell_575_matmul_readvariableop_resourceLsequential_175_lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0"?
Esequential_175_lstm_527_while_sequential_175_lstm_527_strided_slice_1Gsequential_175_lstm_527_while_sequential_175_lstm_527_strided_slice_1_0"?
?sequential_175_lstm_527_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_527_tensorarrayunstack_tensorlistfromtensor?sequential_175_lstm_527_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_527_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_175/lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOpBsequential_175/lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp2?
Asequential_175/lstm_527/while/lstm_cell_575/MatMul/ReadVariableOpAsequential_175/lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp2?
Csequential_175/lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOpCsequential_175/lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3482477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_573_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_573_matmul_readvariableop_resource:	?G
4while_lstm_cell_573_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_573_biasadd_readvariableop_resource:	???*while/lstm_cell_573/BiasAdd/ReadVariableOp?)while/lstm_cell_573/MatMul/ReadVariableOp?+while/lstm_cell_573/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_573/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_573/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_573/addAddV2$while/lstm_cell_573/MatMul:product:0&while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_573/BiasAddBiasAddwhile/lstm_cell_573/add:z:02while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_573/splitSplit,while/lstm_cell_573/split/split_dim:output:0$while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_573/SigmoidSigmoid"while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_1Sigmoid"while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mulMul!while/lstm_cell_573/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_573/ReluRelu"while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_1Mulwhile/lstm_cell_573/Sigmoid:y:0&while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/add_1AddV2while/lstm_cell_573/mul:z:0while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_2Sigmoid"while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_573/Relu_1Reluwhile/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_2Mul!while/lstm_cell_573/Sigmoid_2:y:0(while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_573/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_573/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_573/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_573/BiasAdd/ReadVariableOp*^while/lstm_cell_573/MatMul/ReadVariableOp,^while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_573_biasadd_readvariableop_resource5while_lstm_cell_573_biasadd_readvariableop_resource_0"n
4while_lstm_cell_573_matmul_1_readvariableop_resource6while_lstm_cell_573_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_573_matmul_readvariableop_resource4while_lstm_cell_573_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_573/BiasAdd/ReadVariableOp*while/lstm_cell_573/BiasAdd/ReadVariableOp2V
)while/lstm_cell_573/MatMul/ReadVariableOp)while/lstm_cell_573/MatMul/ReadVariableOp2Z
+while/lstm_cell_573/MatMul_1/ReadVariableOp+while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_525_while_body_3481293.
*lstm_525_while_lstm_525_while_loop_counter4
0lstm_525_while_lstm_525_while_maximum_iterations
lstm_525_while_placeholder 
lstm_525_while_placeholder_1 
lstm_525_while_placeholder_2 
lstm_525_while_placeholder_3-
)lstm_525_while_lstm_525_strided_slice_1_0i
elstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0:	?R
?lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?M
>lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
lstm_525_while_identity
lstm_525_while_identity_1
lstm_525_while_identity_2
lstm_525_while_identity_3
lstm_525_while_identity_4
lstm_525_while_identity_5+
'lstm_525_while_lstm_525_strided_slice_1g
clstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensorN
;lstm_525_while_lstm_cell_573_matmul_readvariableop_resource:	?P
=lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource:	d?K
<lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource:	???3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp?2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp?4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp?
@lstm_525/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_525/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensor_0lstm_525_while_placeholderIlstm_525/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp=lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_525/while/lstm_cell_573/MatMulMatMul9lstm_525/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp?lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_525/while/lstm_cell_573/MatMul_1MatMullstm_525_while_placeholder_2<lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_525/while/lstm_cell_573/addAddV2-lstm_525/while/lstm_cell_573/MatMul:product:0/lstm_525/while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp>lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_525/while/lstm_cell_573/BiasAddBiasAdd$lstm_525/while/lstm_cell_573/add:z:0;lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_525/while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_525/while/lstm_cell_573/splitSplit5lstm_525/while/lstm_cell_573/split/split_dim:output:0-lstm_525/while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_525/while/lstm_cell_573/SigmoidSigmoid+lstm_525/while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_525/while/lstm_cell_573/Sigmoid_1Sigmoid+lstm_525/while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_525/while/lstm_cell_573/mulMul*lstm_525/while/lstm_cell_573/Sigmoid_1:y:0lstm_525_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_525/while/lstm_cell_573/ReluRelu+lstm_525/while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_525/while/lstm_cell_573/mul_1Mul(lstm_525/while/lstm_cell_573/Sigmoid:y:0/lstm_525/while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_525/while/lstm_cell_573/add_1AddV2$lstm_525/while/lstm_cell_573/mul:z:0&lstm_525/while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_525/while/lstm_cell_573/Sigmoid_2Sigmoid+lstm_525/while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_525/while/lstm_cell_573/Relu_1Relu&lstm_525/while/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_525/while/lstm_cell_573/mul_2Mul*lstm_525/while/lstm_cell_573/Sigmoid_2:y:01lstm_525/while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_525/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_525_while_placeholder_1lstm_525_while_placeholder&lstm_525/while/lstm_cell_573/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_525/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_525/while/addAddV2lstm_525_while_placeholderlstm_525/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_525/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_525/while/add_1AddV2*lstm_525_while_lstm_525_while_loop_counterlstm_525/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_525/while/IdentityIdentitylstm_525/while/add_1:z:0^lstm_525/while/NoOp*
T0*
_output_shapes
: ?
lstm_525/while/Identity_1Identity0lstm_525_while_lstm_525_while_maximum_iterations^lstm_525/while/NoOp*
T0*
_output_shapes
: t
lstm_525/while/Identity_2Identitylstm_525/while/add:z:0^lstm_525/while/NoOp*
T0*
_output_shapes
: ?
lstm_525/while/Identity_3IdentityClstm_525/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_525/while/NoOp*
T0*
_output_shapes
: ?
lstm_525/while/Identity_4Identity&lstm_525/while/lstm_cell_573/mul_2:z:0^lstm_525/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_525/while/Identity_5Identity&lstm_525/while/lstm_cell_573/add_1:z:0^lstm_525/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_525/while/NoOpNoOp4^lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp3^lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp5^lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_525_while_identity lstm_525/while/Identity:output:0"?
lstm_525_while_identity_1"lstm_525/while/Identity_1:output:0"?
lstm_525_while_identity_2"lstm_525/while/Identity_2:output:0"?
lstm_525_while_identity_3"lstm_525/while/Identity_3:output:0"?
lstm_525_while_identity_4"lstm_525/while/Identity_4:output:0"?
lstm_525_while_identity_5"lstm_525/while/Identity_5:output:0"T
'lstm_525_while_lstm_525_strided_slice_1)lstm_525_while_lstm_525_strided_slice_1_0"~
<lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource>lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0"?
=lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource?lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0"|
;lstm_525_while_lstm_cell_573_matmul_readvariableop_resource=lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0"?
clstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensorelstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp2h
2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp2l
4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3482476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3482476___redundant_placeholder05
1while_while_cond_3482476___redundant_placeholder15
1while_while_cond_3482476___redundant_placeholder25
1while_while_cond_3482476___redundant_placeholder3
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
while_cond_3479000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3479000___redundant_placeholder05
1while_while_cond_3479000___redundant_placeholder15
1while_while_cond_3479000___redundant_placeholder25
1while_while_cond_3479000___redundant_placeholder3
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
while_cond_3482619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3482619___redundant_placeholder05
1while_while_cond_3482619___redundant_placeholder15
1while_while_cond_3482619___redundant_placeholder25
1while_while_cond_3482619___redundant_placeholder3
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
while_cond_3483422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3483422___redundant_placeholder05
1while_while_cond_3483422___redundant_placeholder15
1while_while_cond_3483422___redundant_placeholder25
1while_while_cond_3483422___redundant_placeholder3
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
F__inference_dense_175_layer_call_and_return_conditional_losses_3483955

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
#__inference__traced_restore_3484522
file_prefix3
!assignvariableop_dense_175_kernel:
/
!assignvariableop_1_dense_175_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_525_lstm_cell_525_kernel:	?M
:assignvariableop_8_lstm_525_lstm_cell_525_recurrent_kernel:	d?=
.assignvariableop_9_lstm_525_lstm_cell_525_bias:	?D
1assignvariableop_10_lstm_526_lstm_cell_526_kernel:	d?N
;assignvariableop_11_lstm_526_lstm_cell_526_recurrent_kernel:	2?>
/assignvariableop_12_lstm_526_lstm_cell_526_bias:	?C
1assignvariableop_13_lstm_527_lstm_cell_527_kernel:2(M
;assignvariableop_14_lstm_527_lstm_cell_527_recurrent_kernel:
(=
/assignvariableop_15_lstm_527_lstm_cell_527_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_175_kernel_m:
7
)assignvariableop_19_adam_dense_175_bias_m:K
8assignvariableop_20_adam_lstm_525_lstm_cell_525_kernel_m:	?U
Bassignvariableop_21_adam_lstm_525_lstm_cell_525_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_525_lstm_cell_525_bias_m:	?K
8assignvariableop_23_adam_lstm_526_lstm_cell_526_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_526_lstm_cell_526_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_526_lstm_cell_526_bias_m:	?J
8assignvariableop_26_adam_lstm_527_lstm_cell_527_kernel_m:2(T
Bassignvariableop_27_adam_lstm_527_lstm_cell_527_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_527_lstm_cell_527_bias_m:(=
+assignvariableop_29_adam_dense_175_kernel_v:
7
)assignvariableop_30_adam_dense_175_bias_v:K
8assignvariableop_31_adam_lstm_525_lstm_cell_525_kernel_v:	?U
Bassignvariableop_32_adam_lstm_525_lstm_cell_525_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_525_lstm_cell_525_bias_v:	?K
8assignvariableop_34_adam_lstm_526_lstm_cell_526_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_526_lstm_cell_526_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_526_lstm_cell_526_bias_v:	?J
8assignvariableop_37_adam_lstm_527_lstm_cell_527_kernel_v:2(T
Bassignvariableop_38_adam_lstm_527_lstm_cell_527_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_527_lstm_cell_527_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_175_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_175_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_525_lstm_cell_525_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_525_lstm_cell_525_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_525_lstm_cell_525_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_526_lstm_cell_526_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_526_lstm_cell_526_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_526_lstm_cell_526_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_527_lstm_cell_527_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_527_lstm_cell_527_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_527_lstm_cell_527_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_175_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_175_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_525_lstm_cell_525_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_525_lstm_cell_525_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_525_lstm_cell_525_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_526_lstm_cell_526_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_526_lstm_cell_526_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_526_lstm_cell_526_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_527_lstm_cell_527_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_527_lstm_cell_527_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_527_lstm_cell_527_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_175_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_175_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_525_lstm_cell_525_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_525_lstm_cell_525_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_525_lstm_cell_525_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_526_lstm_cell_526_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_526_lstm_cell_526_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_526_lstm_cell_526_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_527_lstm_cell_527_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_527_lstm_cell_527_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_527_lstm_cell_527_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_3482190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3482190___redundant_placeholder05
1while_while_cond_3482190___redundant_placeholder15
1while_while_cond_3482190___redundant_placeholder25
1while_while_cond_3482190___redundant_placeholder3
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483034
inputs_0?
,lstm_cell_574_matmul_readvariableop_resource:	d?A
.lstm_cell_574_matmul_1_readvariableop_resource:	2?<
-lstm_cell_574_biasadd_readvariableop_resource:	?
identity??$lstm_cell_574/BiasAdd/ReadVariableOp?#lstm_cell_574/MatMul/ReadVariableOp?%lstm_cell_574/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_574/MatMul/ReadVariableOpReadVariableOp,lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_574/MatMulMatMulstrided_slice_2:output:0+lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_574/MatMul_1MatMulzeros:output:0-lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_574/addAddV2lstm_cell_574/MatMul:product:0 lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_574/BiasAddBiasAddlstm_cell_574/add:z:0,lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_574/splitSplit&lstm_cell_574/split/split_dim:output:0lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_574/SigmoidSigmoidlstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_1Sigmoidlstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_574/mulMullstm_cell_574/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_574/ReluRelulstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_1Mullstm_cell_574/Sigmoid:y:0 lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_574/add_1AddV2lstm_cell_574/mul:z:0lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_2Sigmoidlstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_574/Relu_1Relulstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_2Mullstm_cell_574/Sigmoid_2:y:0"lstm_cell_574/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_574_matmul_readvariableop_resource.lstm_cell_574_matmul_1_readvariableop_resource-lstm_cell_574_biasadd_readvariableop_resource*
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
while_body_3482950*
condR
while_cond_3482949*K
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
NoOpNoOp%^lstm_cell_574/BiasAdd/ReadVariableOp$^lstm_cell_574/MatMul/ReadVariableOp&^lstm_cell_574/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_574/BiasAdd/ReadVariableOp$lstm_cell_574/BiasAdd/ReadVariableOp2J
#lstm_cell_574/MatMul/ReadVariableOp#lstm_cell_574/MatMul/ReadVariableOp2N
%lstm_cell_574/MatMul_1/ReadVariableOp%lstm_cell_574/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_3484392
file_prefix/
+savev2_dense_175_kernel_read_readvariableop-
)savev2_dense_175_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_525_lstm_cell_525_kernel_read_readvariableopF
Bsavev2_lstm_525_lstm_cell_525_recurrent_kernel_read_readvariableop:
6savev2_lstm_525_lstm_cell_525_bias_read_readvariableop<
8savev2_lstm_526_lstm_cell_526_kernel_read_readvariableopF
Bsavev2_lstm_526_lstm_cell_526_recurrent_kernel_read_readvariableop:
6savev2_lstm_526_lstm_cell_526_bias_read_readvariableop<
8savev2_lstm_527_lstm_cell_527_kernel_read_readvariableopF
Bsavev2_lstm_527_lstm_cell_527_recurrent_kernel_read_readvariableop:
6savev2_lstm_527_lstm_cell_527_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_175_kernel_m_read_readvariableop4
0savev2_adam_dense_175_bias_m_read_readvariableopC
?savev2_adam_lstm_525_lstm_cell_525_kernel_m_read_readvariableopM
Isavev2_adam_lstm_525_lstm_cell_525_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_525_lstm_cell_525_bias_m_read_readvariableopC
?savev2_adam_lstm_526_lstm_cell_526_kernel_m_read_readvariableopM
Isavev2_adam_lstm_526_lstm_cell_526_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_526_lstm_cell_526_bias_m_read_readvariableopC
?savev2_adam_lstm_527_lstm_cell_527_kernel_m_read_readvariableopM
Isavev2_adam_lstm_527_lstm_cell_527_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_527_lstm_cell_527_bias_m_read_readvariableop6
2savev2_adam_dense_175_kernel_v_read_readvariableop4
0savev2_adam_dense_175_bias_v_read_readvariableopC
?savev2_adam_lstm_525_lstm_cell_525_kernel_v_read_readvariableopM
Isavev2_adam_lstm_525_lstm_cell_525_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_525_lstm_cell_525_bias_v_read_readvariableopC
?savev2_adam_lstm_526_lstm_cell_526_kernel_v_read_readvariableopM
Isavev2_adam_lstm_526_lstm_cell_526_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_526_lstm_cell_526_bias_v_read_readvariableopC
?savev2_adam_lstm_527_lstm_cell_527_kernel_v_read_readvariableopM
Isavev2_adam_lstm_527_lstm_cell_527_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_527_lstm_cell_527_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_175_kernel_read_readvariableop)savev2_dense_175_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_525_lstm_cell_525_kernel_read_readvariableopBsavev2_lstm_525_lstm_cell_525_recurrent_kernel_read_readvariableop6savev2_lstm_525_lstm_cell_525_bias_read_readvariableop8savev2_lstm_526_lstm_cell_526_kernel_read_readvariableopBsavev2_lstm_526_lstm_cell_526_recurrent_kernel_read_readvariableop6savev2_lstm_526_lstm_cell_526_bias_read_readvariableop8savev2_lstm_527_lstm_cell_527_kernel_read_readvariableopBsavev2_lstm_527_lstm_cell_527_recurrent_kernel_read_readvariableop6savev2_lstm_527_lstm_cell_527_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_175_kernel_m_read_readvariableop0savev2_adam_dense_175_bias_m_read_readvariableop?savev2_adam_lstm_525_lstm_cell_525_kernel_m_read_readvariableopIsavev2_adam_lstm_525_lstm_cell_525_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_525_lstm_cell_525_bias_m_read_readvariableop?savev2_adam_lstm_526_lstm_cell_526_kernel_m_read_readvariableopIsavev2_adam_lstm_526_lstm_cell_526_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_526_lstm_cell_526_bias_m_read_readvariableop?savev2_adam_lstm_527_lstm_cell_527_kernel_m_read_readvariableopIsavev2_adam_lstm_527_lstm_cell_527_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_527_lstm_cell_527_bias_m_read_readvariableop2savev2_adam_dense_175_kernel_v_read_readvariableop0savev2_adam_dense_175_bias_v_read_readvariableop?savev2_adam_lstm_525_lstm_cell_525_kernel_v_read_readvariableopIsavev2_adam_lstm_525_lstm_cell_525_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_525_lstm_cell_525_bias_v_read_readvariableop?savev2_adam_lstm_526_lstm_cell_526_kernel_v_read_readvariableopIsavev2_adam_lstm_526_lstm_cell_526_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_526_lstm_cell_526_bias_v_read_readvariableop?savev2_adam_lstm_527_lstm_cell_527_kernel_v_read_readvariableopIsavev2_adam_lstm_527_lstm_cell_527_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_527_lstm_cell_527_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_3482333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3482333___redundant_placeholder05
1while_while_cond_3482333___redundant_placeholder15
1while_while_cond_3482333___redundant_placeholder25
1while_while_cond_3482333___redundant_placeholder3
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
+__inference_dense_175_layer_call_fn_3483945

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
F__inference_dense_175_layer_call_and_return_conditional_losses_3480437o
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479833

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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480965

inputs?
,lstm_cell_573_matmul_readvariableop_resource:	?A
.lstm_cell_573_matmul_1_readvariableop_resource:	d?<
-lstm_cell_573_biasadd_readvariableop_resource:	?
identity??$lstm_cell_573/BiasAdd/ReadVariableOp?#lstm_cell_573/MatMul/ReadVariableOp?%lstm_cell_573/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_573/MatMul/ReadVariableOpReadVariableOp,lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_573/MatMulMatMulstrided_slice_2:output:0+lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_573/MatMul_1MatMulzeros:output:0-lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_573/addAddV2lstm_cell_573/MatMul:product:0 lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_573/BiasAddBiasAddlstm_cell_573/add:z:0,lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_573/splitSplit&lstm_cell_573/split/split_dim:output:0lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_573/SigmoidSigmoidlstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_1Sigmoidlstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_573/mulMullstm_cell_573/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_573/ReluRelulstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_1Mullstm_cell_573/Sigmoid:y:0 lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_573/add_1AddV2lstm_cell_573/mul:z:0lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_2Sigmoidlstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_573/Relu_1Relulstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_2Mullstm_cell_573/Sigmoid_2:y:0"lstm_cell_573/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_573_matmul_readvariableop_resource.lstm_cell_573_matmul_1_readvariableop_resource-lstm_cell_573_biasadd_readvariableop_resource*
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
while_body_3480881*
condR
while_cond_3480880*K
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
NoOpNoOp%^lstm_cell_573/BiasAdd/ReadVariableOp$^lstm_cell_573/MatMul/ReadVariableOp&^lstm_cell_573/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_573/BiasAdd/ReadVariableOp$lstm_cell_573/BiasAdd/ReadVariableOp2J
#lstm_cell_573/MatMul/ReadVariableOp#lstm_cell_573/MatMul/ReadVariableOp2N
%lstm_cell_573/MatMul_1/ReadVariableOp%lstm_cell_573/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482704

inputs?
,lstm_cell_573_matmul_readvariableop_resource:	?A
.lstm_cell_573_matmul_1_readvariableop_resource:	d?<
-lstm_cell_573_biasadd_readvariableop_resource:	?
identity??$lstm_cell_573/BiasAdd/ReadVariableOp?#lstm_cell_573/MatMul/ReadVariableOp?%lstm_cell_573/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_573/MatMul/ReadVariableOpReadVariableOp,lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_573/MatMulMatMulstrided_slice_2:output:0+lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_573/MatMul_1MatMulzeros:output:0-lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_573/addAddV2lstm_cell_573/MatMul:product:0 lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_573/BiasAddBiasAddlstm_cell_573/add:z:0,lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_573/splitSplit&lstm_cell_573/split/split_dim:output:0lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_573/SigmoidSigmoidlstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_1Sigmoidlstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_573/mulMullstm_cell_573/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_573/ReluRelulstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_1Mullstm_cell_573/Sigmoid:y:0 lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_573/add_1AddV2lstm_cell_573/mul:z:0lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_2Sigmoidlstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_573/Relu_1Relulstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_2Mullstm_cell_573/Sigmoid_2:y:0"lstm_cell_573/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_573_matmul_readvariableop_resource.lstm_cell_573_matmul_1_readvariableop_resource-lstm_cell_573_biasadd_readvariableop_resource*
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
while_body_3482620*
condR
while_cond_3482619*K
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
NoOpNoOp%^lstm_cell_573/BiasAdd/ReadVariableOp$^lstm_cell_573/MatMul/ReadVariableOp&^lstm_cell_573/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_573/BiasAdd/ReadVariableOp$lstm_cell_573/BiasAdd/ReadVariableOp2J
#lstm_cell_573/MatMul/ReadVariableOp#lstm_cell_573/MatMul/ReadVariableOp2N
%lstm_cell_573/MatMul_1/ReadVariableOp%lstm_cell_573/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3482949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3482949___redundant_placeholder05
1while_while_cond_3482949___redundant_placeholder15
1while_while_cond_3482949___redundant_placeholder25
1while_while_cond_3482949___redundant_placeholder3
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479337

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
lstm_525_while_cond_3481719.
*lstm_525_while_lstm_525_while_loop_counter4
0lstm_525_while_lstm_525_while_maximum_iterations
lstm_525_while_placeholder 
lstm_525_while_placeholder_1 
lstm_525_while_placeholder_2 
lstm_525_while_placeholder_30
,lstm_525_while_less_lstm_525_strided_slice_1G
Clstm_525_while_lstm_525_while_cond_3481719___redundant_placeholder0G
Clstm_525_while_lstm_525_while_cond_3481719___redundant_placeholder1G
Clstm_525_while_lstm_525_while_cond_3481719___redundant_placeholder2G
Clstm_525_while_lstm_525_while_cond_3481719___redundant_placeholder3
lstm_525_while_identity
?
lstm_525/while/LessLesslstm_525_while_placeholder,lstm_525_while_less_lstm_525_strided_slice_1*
T0*
_output_shapes
: ]
lstm_525/while/IdentityIdentitylstm_525/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_525_while_identity lstm_525/while/Identity:output:0*(
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
while_body_3480035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_573_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_573_matmul_readvariableop_resource:	?G
4while_lstm_cell_573_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_573_biasadd_readvariableop_resource:	???*while/lstm_cell_573/BiasAdd/ReadVariableOp?)while/lstm_cell_573/MatMul/ReadVariableOp?+while/lstm_cell_573/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_573/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_573/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_573/addAddV2$while/lstm_cell_573/MatMul:product:0&while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_573/BiasAddBiasAddwhile/lstm_cell_573/add:z:02while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_573/splitSplit,while/lstm_cell_573/split/split_dim:output:0$while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_573/SigmoidSigmoid"while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_1Sigmoid"while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mulMul!while/lstm_cell_573/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_573/ReluRelu"while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_1Mulwhile/lstm_cell_573/Sigmoid:y:0&while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/add_1AddV2while/lstm_cell_573/mul:z:0while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_2Sigmoid"while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_573/Relu_1Reluwhile/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_2Mul!while/lstm_cell_573/Sigmoid_2:y:0(while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_573/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_573/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_573/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_573/BiasAdd/ReadVariableOp*^while/lstm_cell_573/MatMul/ReadVariableOp,^while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_573_biasadd_readvariableop_resource5while_lstm_cell_573_biasadd_readvariableop_resource_0"n
4while_lstm_cell_573_matmul_1_readvariableop_resource6while_lstm_cell_573_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_573_matmul_readvariableop_resource4while_lstm_cell_573_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_573/BiasAdd/ReadVariableOp*while/lstm_cell_573/BiasAdd/ReadVariableOp2V
)while/lstm_cell_573/MatMul/ReadVariableOp)while/lstm_cell_573/MatMul/ReadVariableOp2Z
+while/lstm_cell_573/MatMul_1/ReadVariableOp+while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480119

inputs?
,lstm_cell_573_matmul_readvariableop_resource:	?A
.lstm_cell_573_matmul_1_readvariableop_resource:	d?<
-lstm_cell_573_biasadd_readvariableop_resource:	?
identity??$lstm_cell_573/BiasAdd/ReadVariableOp?#lstm_cell_573/MatMul/ReadVariableOp?%lstm_cell_573/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_573/MatMul/ReadVariableOpReadVariableOp,lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_573/MatMulMatMulstrided_slice_2:output:0+lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_573/MatMul_1MatMulzeros:output:0-lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_573/addAddV2lstm_cell_573/MatMul:product:0 lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_573/BiasAddBiasAddlstm_cell_573/add:z:0,lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_573/splitSplit&lstm_cell_573/split/split_dim:output:0lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_573/SigmoidSigmoidlstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_1Sigmoidlstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_573/mulMullstm_cell_573/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_573/ReluRelulstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_1Mullstm_cell_573/Sigmoid:y:0 lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_573/add_1AddV2lstm_cell_573/mul:z:0lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_2Sigmoidlstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_573/Relu_1Relulstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_2Mullstm_cell_573/Sigmoid_2:y:0"lstm_cell_573/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_573_matmul_readvariableop_resource.lstm_cell_573_matmul_1_readvariableop_resource-lstm_cell_573_biasadd_readvariableop_resource*
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
while_body_3480035*
condR
while_cond_3480034*K
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
NoOpNoOp%^lstm_cell_573/BiasAdd/ReadVariableOp$^lstm_cell_573/MatMul/ReadVariableOp&^lstm_cell_573/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_573/BiasAdd/ReadVariableOp$lstm_cell_573/BiasAdd/ReadVariableOp2J
#lstm_cell_573/MatMul/ReadVariableOp#lstm_cell_573/MatMul/ReadVariableOp2N
%lstm_cell_573/MatMul_1/ReadVariableOp%lstm_cell_573/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_526_while_body_3481859.
*lstm_526_while_lstm_526_while_loop_counter4
0lstm_526_while_lstm_526_while_maximum_iterations
lstm_526_while_placeholder 
lstm_526_while_placeholder_1 
lstm_526_while_placeholder_2 
lstm_526_while_placeholder_3-
)lstm_526_while_lstm_526_strided_slice_1_0i
elstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0:	d?R
?lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?M
>lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
lstm_526_while_identity
lstm_526_while_identity_1
lstm_526_while_identity_2
lstm_526_while_identity_3
lstm_526_while_identity_4
lstm_526_while_identity_5+
'lstm_526_while_lstm_526_strided_slice_1g
clstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensorN
;lstm_526_while_lstm_cell_574_matmul_readvariableop_resource:	d?P
=lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource:	2?K
<lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource:	???3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp?2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp?4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp?
@lstm_526/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_526/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensor_0lstm_526_while_placeholderIlstm_526/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp=lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_526/while/lstm_cell_574/MatMulMatMul9lstm_526/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp?lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_526/while/lstm_cell_574/MatMul_1MatMullstm_526_while_placeholder_2<lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_526/while/lstm_cell_574/addAddV2-lstm_526/while/lstm_cell_574/MatMul:product:0/lstm_526/while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp>lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_526/while/lstm_cell_574/BiasAddBiasAdd$lstm_526/while/lstm_cell_574/add:z:0;lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_526/while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_526/while/lstm_cell_574/splitSplit5lstm_526/while/lstm_cell_574/split/split_dim:output:0-lstm_526/while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_526/while/lstm_cell_574/SigmoidSigmoid+lstm_526/while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_526/while/lstm_cell_574/Sigmoid_1Sigmoid+lstm_526/while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_526/while/lstm_cell_574/mulMul*lstm_526/while/lstm_cell_574/Sigmoid_1:y:0lstm_526_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_526/while/lstm_cell_574/ReluRelu+lstm_526/while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_526/while/lstm_cell_574/mul_1Mul(lstm_526/while/lstm_cell_574/Sigmoid:y:0/lstm_526/while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_526/while/lstm_cell_574/add_1AddV2$lstm_526/while/lstm_cell_574/mul:z:0&lstm_526/while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_526/while/lstm_cell_574/Sigmoid_2Sigmoid+lstm_526/while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_526/while/lstm_cell_574/Relu_1Relu&lstm_526/while/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_526/while/lstm_cell_574/mul_2Mul*lstm_526/while/lstm_cell_574/Sigmoid_2:y:01lstm_526/while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_526/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_526_while_placeholder_1lstm_526_while_placeholder&lstm_526/while/lstm_cell_574/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_526/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_526/while/addAddV2lstm_526_while_placeholderlstm_526/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_526/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_526/while/add_1AddV2*lstm_526_while_lstm_526_while_loop_counterlstm_526/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_526/while/IdentityIdentitylstm_526/while/add_1:z:0^lstm_526/while/NoOp*
T0*
_output_shapes
: ?
lstm_526/while/Identity_1Identity0lstm_526_while_lstm_526_while_maximum_iterations^lstm_526/while/NoOp*
T0*
_output_shapes
: t
lstm_526/while/Identity_2Identitylstm_526/while/add:z:0^lstm_526/while/NoOp*
T0*
_output_shapes
: ?
lstm_526/while/Identity_3IdentityClstm_526/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_526/while/NoOp*
T0*
_output_shapes
: ?
lstm_526/while/Identity_4Identity&lstm_526/while/lstm_cell_574/mul_2:z:0^lstm_526/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_526/while/Identity_5Identity&lstm_526/while/lstm_cell_574/add_1:z:0^lstm_526/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_526/while/NoOpNoOp4^lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp3^lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp5^lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_526_while_identity lstm_526/while/Identity:output:0"?
lstm_526_while_identity_1"lstm_526/while/Identity_1:output:0"?
lstm_526_while_identity_2"lstm_526/while/Identity_2:output:0"?
lstm_526_while_identity_3"lstm_526/while/Identity_3:output:0"?
lstm_526_while_identity_4"lstm_526/while/Identity_4:output:0"?
lstm_526_while_identity_5"lstm_526/while/Identity_5:output:0"T
'lstm_526_while_lstm_526_strided_slice_1)lstm_526_while_lstm_526_strided_slice_1_0"~
<lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource>lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0"?
=lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource?lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0"|
;lstm_526_while_lstm_cell_574_matmul_readvariableop_resource=lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0"?
clstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensorelstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp2h
2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp2l
4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3482334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_573_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_573_matmul_readvariableop_resource:	?G
4while_lstm_cell_573_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_573_biasadd_readvariableop_resource:	???*while/lstm_cell_573/BiasAdd/ReadVariableOp?)while/lstm_cell_573/MatMul/ReadVariableOp?+while/lstm_cell_573/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_573/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_573/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_573/addAddV2$while/lstm_cell_573/MatMul:product:0&while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_573/BiasAddBiasAddwhile/lstm_cell_573/add:z:02while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_573/splitSplit,while/lstm_cell_573/split/split_dim:output:0$while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_573/SigmoidSigmoid"while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_1Sigmoid"while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mulMul!while/lstm_cell_573/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_573/ReluRelu"while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_1Mulwhile/lstm_cell_573/Sigmoid:y:0&while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/add_1AddV2while/lstm_cell_573/mul:z:0while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_2Sigmoid"while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_573/Relu_1Reluwhile/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_2Mul!while/lstm_cell_573/Sigmoid_2:y:0(while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_573/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_573/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_573/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_573/BiasAdd/ReadVariableOp*^while/lstm_cell_573/MatMul/ReadVariableOp,^while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_573_biasadd_readvariableop_resource5while_lstm_cell_573_biasadd_readvariableop_resource_0"n
4while_lstm_cell_573_matmul_1_readvariableop_resource6while_lstm_cell_573_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_573_matmul_readvariableop_resource4while_lstm_cell_573_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_573/BiasAdd/ReadVariableOp*while/lstm_cell_573/BiasAdd/ReadVariableOp2V
)while/lstm_cell_573/MatMul/ReadVariableOp)while/lstm_cell_573/MatMul/ReadVariableOp2Z
+while/lstm_cell_573/MatMul_1/ReadVariableOp+while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3483566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_575_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_575_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_575_matmul_readvariableop_resource:2(F
4while_lstm_cell_575_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_575_biasadd_readvariableop_resource:(??*while/lstm_cell_575/BiasAdd/ReadVariableOp?)while/lstm_cell_575/MatMul/ReadVariableOp?+while/lstm_cell_575/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_575/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_575/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_575/addAddV2$while/lstm_cell_575/MatMul:product:0&while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_575/BiasAddBiasAddwhile/lstm_cell_575/add:z:02while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_575/splitSplit,while/lstm_cell_575/split/split_dim:output:0$while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_575/SigmoidSigmoid"while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_1Sigmoid"while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mulMul!while/lstm_cell_575/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_575/ReluRelu"while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_1Mulwhile/lstm_cell_575/Sigmoid:y:0&while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/add_1AddV2while/lstm_cell_575/mul:z:0while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_2Sigmoid"while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_575/Relu_1Reluwhile/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_2Mul!while/lstm_cell_575/Sigmoid_2:y:0(while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_575/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_575/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_575/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_575/BiasAdd/ReadVariableOp*^while/lstm_cell_575/MatMul/ReadVariableOp,^while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_575_biasadd_readvariableop_resource5while_lstm_cell_575_biasadd_readvariableop_resource_0"n
4while_lstm_cell_575_matmul_1_readvariableop_resource6while_lstm_cell_575_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_575_matmul_readvariableop_resource4while_lstm_cell_575_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_575/BiasAdd/ReadVariableOp*while/lstm_cell_575/BiasAdd/ReadVariableOp2V
)while/lstm_cell_575/MatMul/ReadVariableOp)while/lstm_cell_575/MatMul/ReadVariableOp2Z
+while/lstm_cell_575/MatMul_1/ReadVariableOp+while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3480185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_574_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_574_matmul_readvariableop_resource:	d?G
4while_lstm_cell_574_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_574_biasadd_readvariableop_resource:	???*while/lstm_cell_574/BiasAdd/ReadVariableOp?)while/lstm_cell_574/MatMul/ReadVariableOp?+while/lstm_cell_574/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_574/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_574/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_574/addAddV2$while/lstm_cell_574/MatMul:product:0&while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_574/BiasAddBiasAddwhile/lstm_cell_574/add:z:02while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_574/splitSplit,while/lstm_cell_574/split/split_dim:output:0$while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_574/SigmoidSigmoid"while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_1Sigmoid"while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mulMul!while/lstm_cell_574/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_574/ReluRelu"while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_1Mulwhile/lstm_cell_574/Sigmoid:y:0&while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/add_1AddV2while/lstm_cell_574/mul:z:0while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_2Sigmoid"while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_574/Relu_1Reluwhile/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_2Mul!while/lstm_cell_574/Sigmoid_2:y:0(while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_574/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_574/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_574/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_574/BiasAdd/ReadVariableOp*^while/lstm_cell_574/MatMul/ReadVariableOp,^while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_574_biasadd_readvariableop_resource5while_lstm_cell_574_biasadd_readvariableop_resource_0"n
4while_lstm_cell_574_matmul_1_readvariableop_resource6while_lstm_cell_574_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_574_matmul_readvariableop_resource4while_lstm_cell_574_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_574/BiasAdd/ReadVariableOp*while/lstm_cell_574/BiasAdd/ReadVariableOp2V
)while/lstm_cell_574/MatMul/ReadVariableOp)while/lstm_cell_574/MatMul/ReadVariableOp2Z
+while/lstm_cell_574/MatMul_1/ReadVariableOp+while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_526_while_cond_3481858.
*lstm_526_while_lstm_526_while_loop_counter4
0lstm_526_while_lstm_526_while_maximum_iterations
lstm_526_while_placeholder 
lstm_526_while_placeholder_1 
lstm_526_while_placeholder_2 
lstm_526_while_placeholder_30
,lstm_526_while_less_lstm_526_strided_slice_1G
Clstm_526_while_lstm_526_while_cond_3481858___redundant_placeholder0G
Clstm_526_while_lstm_526_while_cond_3481858___redundant_placeholder1G
Clstm_526_while_lstm_526_while_cond_3481858___redundant_placeholder2G
Clstm_526_while_lstm_526_while_cond_3481858___redundant_placeholder3
lstm_526_while_identity
?
lstm_526/while/LessLesslstm_526_while_placeholder,lstm_526_while_less_lstm_526_strided_slice_1*
T0*
_output_shapes
: ]
lstm_526/while/IdentityIdentitylstm_526/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_526_while_identity lstm_526/while/Identity:output:0*(
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3479611

inputs(
lstm_cell_574_3479529:	d?(
lstm_cell_574_3479531:	2?$
lstm_cell_574_3479533:	?
identity??%lstm_cell_574/StatefulPartitionedCall?while;
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
%lstm_cell_574/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_574_3479529lstm_cell_574_3479531lstm_cell_574_3479533*
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479483n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_574_3479529lstm_cell_574_3479531lstm_cell_574_3479533*
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
while_body_3479542*
condR
while_cond_3479541*K
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
NoOpNoOp&^lstm_cell_574/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_574/StatefulPartitionedCall%lstm_cell_574/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_175_layer_call_and_return_conditional_losses_3480437

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
?
*__inference_lstm_525_layer_call_fn_3482110
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3479261|
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
?
E__inference_lstm_525_layer_call_and_return_conditional_losses_3479261

inputs(
lstm_cell_573_3479179:	?(
lstm_cell_573_3479181:	d?$
lstm_cell_573_3479183:	?
identity??%lstm_cell_573/StatefulPartitionedCall?while;
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
%lstm_cell_573/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_573_3479179lstm_cell_573_3479181lstm_cell_573_3479183*
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3479133n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_573_3479179lstm_cell_573_3479181lstm_cell_573_3479183*
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
while_body_3479192*
condR
while_cond_3479191*K
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
NoOpNoOp&^lstm_cell_573/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_573/StatefulPartitionedCall%lstm_cell_573/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3483092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3483092___redundant_placeholder05
1while_while_cond_3483092___redundant_placeholder15
1while_while_cond_3483092___redundant_placeholder25
1while_while_cond_3483092___redundant_placeholder3
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
/__inference_lstm_cell_575_layer_call_fn_3484185

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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479833o
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
while_body_3480551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_575_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_575_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_575_matmul_readvariableop_resource:2(F
4while_lstm_cell_575_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_575_biasadd_readvariableop_resource:(??*while/lstm_cell_575/BiasAdd/ReadVariableOp?)while/lstm_cell_575/MatMul/ReadVariableOp?+while/lstm_cell_575/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_575/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_575/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_575/addAddV2$while/lstm_cell_575/MatMul:product:0&while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_575/BiasAddBiasAddwhile/lstm_cell_575/add:z:02while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_575/splitSplit,while/lstm_cell_575/split/split_dim:output:0$while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_575/SigmoidSigmoid"while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_1Sigmoid"while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mulMul!while/lstm_cell_575/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_575/ReluRelu"while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_1Mulwhile/lstm_cell_575/Sigmoid:y:0&while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/add_1AddV2while/lstm_cell_575/mul:z:0while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_2Sigmoid"while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_575/Relu_1Reluwhile/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_2Mul!while/lstm_cell_575/Sigmoid_2:y:0(while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_575/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_575/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_575/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_575/BiasAdd/ReadVariableOp*^while/lstm_cell_575/MatMul/ReadVariableOp,^while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_575_biasadd_readvariableop_resource5while_lstm_cell_575_biasadd_readvariableop_resource_0"n
4while_lstm_cell_575_matmul_1_readvariableop_resource6while_lstm_cell_575_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_575_matmul_readvariableop_resource4while_lstm_cell_575_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_575/BiasAdd/ReadVariableOp*while/lstm_cell_575/BiasAdd/ReadVariableOp2V
)while/lstm_cell_575/MatMul/ReadVariableOp)while/lstm_cell_575/MatMul/ReadVariableOp2Z
+while/lstm_cell_575/MatMul_1/ReadVariableOp+while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_175_lstm_525_while_cond_3478551L
Hsequential_175_lstm_525_while_sequential_175_lstm_525_while_loop_counterR
Nsequential_175_lstm_525_while_sequential_175_lstm_525_while_maximum_iterations-
)sequential_175_lstm_525_while_placeholder/
+sequential_175_lstm_525_while_placeholder_1/
+sequential_175_lstm_525_while_placeholder_2/
+sequential_175_lstm_525_while_placeholder_3N
Jsequential_175_lstm_525_while_less_sequential_175_lstm_525_strided_slice_1e
asequential_175_lstm_525_while_sequential_175_lstm_525_while_cond_3478551___redundant_placeholder0e
asequential_175_lstm_525_while_sequential_175_lstm_525_while_cond_3478551___redundant_placeholder1e
asequential_175_lstm_525_while_sequential_175_lstm_525_while_cond_3478551___redundant_placeholder2e
asequential_175_lstm_525_while_sequential_175_lstm_525_while_cond_3478551___redundant_placeholder3*
&sequential_175_lstm_525_while_identity
?
"sequential_175/lstm_525/while/LessLess)sequential_175_lstm_525_while_placeholderJsequential_175_lstm_525_while_less_sequential_175_lstm_525_strided_slice_1*
T0*
_output_shapes
: {
&sequential_175/lstm_525/while/IdentityIdentity&sequential_175/lstm_525/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_175_lstm_525_while_identity/sequential_175/lstm_525/while/Identity:output:0*(
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
0__inference_sequential_175_layer_call_fn_3481207

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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3480444o
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3479133

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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3484217

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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482275
inputs_0?
,lstm_cell_573_matmul_readvariableop_resource:	?A
.lstm_cell_573_matmul_1_readvariableop_resource:	d?<
-lstm_cell_573_biasadd_readvariableop_resource:	?
identity??$lstm_cell_573/BiasAdd/ReadVariableOp?#lstm_cell_573/MatMul/ReadVariableOp?%lstm_cell_573/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_573/MatMul/ReadVariableOpReadVariableOp,lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_573/MatMulMatMulstrided_slice_2:output:0+lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_573/MatMul_1MatMulzeros:output:0-lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_573/addAddV2lstm_cell_573/MatMul:product:0 lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_573/BiasAddBiasAddlstm_cell_573/add:z:0,lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_573/splitSplit&lstm_cell_573/split/split_dim:output:0lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_573/SigmoidSigmoidlstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_1Sigmoidlstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_573/mulMullstm_cell_573/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_573/ReluRelulstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_1Mullstm_cell_573/Sigmoid:y:0 lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_573/add_1AddV2lstm_cell_573/mul:z:0lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_2Sigmoidlstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_573/Relu_1Relulstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_2Mullstm_cell_573/Sigmoid_2:y:0"lstm_cell_573/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_573_matmul_readvariableop_resource.lstm_cell_573_matmul_1_readvariableop_resource-lstm_cell_573_biasadd_readvariableop_resource*
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
while_body_3482191*
condR
while_cond_3482190*K
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
NoOpNoOp%^lstm_cell_573/BiasAdd/ReadVariableOp$^lstm_cell_573/MatMul/ReadVariableOp&^lstm_cell_573/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_573/BiasAdd/ReadVariableOp$lstm_cell_573/BiasAdd/ReadVariableOp2J
#lstm_cell_573/MatMul/ReadVariableOp#lstm_cell_573/MatMul/ReadVariableOp2N
%lstm_cell_573/MatMul_1/ReadVariableOp%lstm_cell_573/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3483423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_575_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_575_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_575_matmul_readvariableop_resource:2(F
4while_lstm_cell_575_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_575_biasadd_readvariableop_resource:(??*while/lstm_cell_575/BiasAdd/ReadVariableOp?)while/lstm_cell_575/MatMul/ReadVariableOp?+while/lstm_cell_575/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_575/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_575/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_575/addAddV2$while/lstm_cell_575/MatMul:product:0&while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_575/BiasAddBiasAddwhile/lstm_cell_575/add:z:02while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_575/splitSplit,while/lstm_cell_575/split/split_dim:output:0$while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_575/SigmoidSigmoid"while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_1Sigmoid"while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mulMul!while/lstm_cell_575/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_575/ReluRelu"while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_1Mulwhile/lstm_cell_575/Sigmoid:y:0&while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/add_1AddV2while/lstm_cell_575/mul:z:0while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_2Sigmoid"while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_575/Relu_1Reluwhile/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_2Mul!while/lstm_cell_575/Sigmoid_2:y:0(while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_575/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_575/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_575/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_575/BiasAdd/ReadVariableOp*^while/lstm_cell_575/MatMul/ReadVariableOp,^while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_575_biasadd_readvariableop_resource5while_lstm_cell_575_biasadd_readvariableop_resource_0"n
4while_lstm_cell_575_matmul_1_readvariableop_resource6while_lstm_cell_575_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_575_matmul_readvariableop_resource4while_lstm_cell_575_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_575/BiasAdd/ReadVariableOp*while/lstm_cell_575/BiasAdd/ReadVariableOp2V
)while/lstm_cell_575/MatMul/ReadVariableOp)while/lstm_cell_575/MatMul/ReadVariableOp2Z
+while/lstm_cell_575/MatMul_1/ReadVariableOp+while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_526_layer_call_fn_3482726
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3479611|
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
*__inference_lstm_525_layer_call_fn_3482121

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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480119s
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
while_cond_3480334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3480334___redundant_placeholder05
1while_while_cond_3480334___redundant_placeholder15
1while_while_cond_3480334___redundant_placeholder25
1while_while_cond_3480334___redundant_placeholder3
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
while_cond_3483708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3483708___redundant_placeholder05
1while_while_cond_3483708___redundant_placeholder15
1while_while_cond_3483708___redundant_placeholder25
1while_while_cond_3483708___redundant_placeholder3
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
*__inference_lstm_527_layer_call_fn_3483342
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3479961o
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483320

inputs?
,lstm_cell_574_matmul_readvariableop_resource:	d?A
.lstm_cell_574_matmul_1_readvariableop_resource:	2?<
-lstm_cell_574_biasadd_readvariableop_resource:	?
identity??$lstm_cell_574/BiasAdd/ReadVariableOp?#lstm_cell_574/MatMul/ReadVariableOp?%lstm_cell_574/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_574/MatMul/ReadVariableOpReadVariableOp,lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_574/MatMulMatMulstrided_slice_2:output:0+lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_574/MatMul_1MatMulzeros:output:0-lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_574/addAddV2lstm_cell_574/MatMul:product:0 lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_574/BiasAddBiasAddlstm_cell_574/add:z:0,lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_574/splitSplit&lstm_cell_574/split/split_dim:output:0lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_574/SigmoidSigmoidlstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_1Sigmoidlstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_574/mulMullstm_cell_574/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_574/ReluRelulstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_1Mullstm_cell_574/Sigmoid:y:0 lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_574/add_1AddV2lstm_cell_574/mul:z:0lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_2Sigmoidlstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_574/Relu_1Relulstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_2Mullstm_cell_574/Sigmoid_2:y:0"lstm_cell_574/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_574_matmul_readvariableop_resource.lstm_cell_574_matmul_1_readvariableop_resource-lstm_cell_574_biasadd_readvariableop_resource*
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
while_body_3483236*
condR
while_cond_3483235*K
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
NoOpNoOp%^lstm_cell_574/BiasAdd/ReadVariableOp$^lstm_cell_574/MatMul/ReadVariableOp&^lstm_cell_574/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_574/BiasAdd/ReadVariableOp$lstm_cell_574/BiasAdd/ReadVariableOp2J
#lstm_cell_574/MatMul/ReadVariableOp#lstm_cell_574/MatMul/ReadVariableOp2N
%lstm_cell_574/MatMul_1/ReadVariableOp%lstm_cell_574/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?T
?
*sequential_175_lstm_525_while_body_3478552L
Hsequential_175_lstm_525_while_sequential_175_lstm_525_while_loop_counterR
Nsequential_175_lstm_525_while_sequential_175_lstm_525_while_maximum_iterations-
)sequential_175_lstm_525_while_placeholder/
+sequential_175_lstm_525_while_placeholder_1/
+sequential_175_lstm_525_while_placeholder_2/
+sequential_175_lstm_525_while_placeholder_3K
Gsequential_175_lstm_525_while_sequential_175_lstm_525_strided_slice_1_0?
?sequential_175_lstm_525_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_525_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_175_lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0:	?a
Nsequential_175_lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?\
Msequential_175_lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0:	?*
&sequential_175_lstm_525_while_identity,
(sequential_175_lstm_525_while_identity_1,
(sequential_175_lstm_525_while_identity_2,
(sequential_175_lstm_525_while_identity_3,
(sequential_175_lstm_525_while_identity_4,
(sequential_175_lstm_525_while_identity_5I
Esequential_175_lstm_525_while_sequential_175_lstm_525_strided_slice_1?
?sequential_175_lstm_525_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_525_tensorarrayunstack_tensorlistfromtensor]
Jsequential_175_lstm_525_while_lstm_cell_573_matmul_readvariableop_resource:	?_
Lsequential_175_lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource:	d?Z
Ksequential_175_lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource:	???Bsequential_175/lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp?Asequential_175/lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp?Csequential_175/lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp?
Osequential_175/lstm_525/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_175/lstm_525/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_175_lstm_525_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_525_tensorarrayunstack_tensorlistfromtensor_0)sequential_175_lstm_525_while_placeholderXsequential_175/lstm_525/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_175/lstm_525/while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOpLsequential_175_lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_175/lstm_525/while/lstm_cell_573/MatMulMatMulHsequential_175/lstm_525/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_175/lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_175/lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOpNsequential_175_lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_175/lstm_525/while/lstm_cell_573/MatMul_1MatMul+sequential_175_lstm_525_while_placeholder_2Ksequential_175/lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_175/lstm_525/while/lstm_cell_573/addAddV2<sequential_175/lstm_525/while/lstm_cell_573/MatMul:product:0>sequential_175/lstm_525/while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_175/lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOpMsequential_175_lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_175/lstm_525/while/lstm_cell_573/BiasAddBiasAdd3sequential_175/lstm_525/while/lstm_cell_573/add:z:0Jsequential_175/lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_175/lstm_525/while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_175/lstm_525/while/lstm_cell_573/splitSplitDsequential_175/lstm_525/while/lstm_cell_573/split/split_dim:output:0<sequential_175/lstm_525/while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_175/lstm_525/while/lstm_cell_573/SigmoidSigmoid:sequential_175/lstm_525/while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_175/lstm_525/while/lstm_cell_573/Sigmoid_1Sigmoid:sequential_175/lstm_525/while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_175/lstm_525/while/lstm_cell_573/mulMul9sequential_175/lstm_525/while/lstm_cell_573/Sigmoid_1:y:0+sequential_175_lstm_525_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_175/lstm_525/while/lstm_cell_573/ReluRelu:sequential_175/lstm_525/while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_175/lstm_525/while/lstm_cell_573/mul_1Mul7sequential_175/lstm_525/while/lstm_cell_573/Sigmoid:y:0>sequential_175/lstm_525/while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_175/lstm_525/while/lstm_cell_573/add_1AddV23sequential_175/lstm_525/while/lstm_cell_573/mul:z:05sequential_175/lstm_525/while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_175/lstm_525/while/lstm_cell_573/Sigmoid_2Sigmoid:sequential_175/lstm_525/while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_175/lstm_525/while/lstm_cell_573/Relu_1Relu5sequential_175/lstm_525/while/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_175/lstm_525/while/lstm_cell_573/mul_2Mul9sequential_175/lstm_525/while/lstm_cell_573/Sigmoid_2:y:0@sequential_175/lstm_525/while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_175/lstm_525/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_175_lstm_525_while_placeholder_1)sequential_175_lstm_525_while_placeholder5sequential_175/lstm_525/while/lstm_cell_573/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_175/lstm_525/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_175/lstm_525/while/addAddV2)sequential_175_lstm_525_while_placeholder,sequential_175/lstm_525/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_175/lstm_525/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_175/lstm_525/while/add_1AddV2Hsequential_175_lstm_525_while_sequential_175_lstm_525_while_loop_counter.sequential_175/lstm_525/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_175/lstm_525/while/IdentityIdentity'sequential_175/lstm_525/while/add_1:z:0#^sequential_175/lstm_525/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_525/while/Identity_1IdentityNsequential_175_lstm_525_while_sequential_175_lstm_525_while_maximum_iterations#^sequential_175/lstm_525/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_525/while/Identity_2Identity%sequential_175/lstm_525/while/add:z:0#^sequential_175/lstm_525/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_525/while/Identity_3IdentityRsequential_175/lstm_525/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_175/lstm_525/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_525/while/Identity_4Identity5sequential_175/lstm_525/while/lstm_cell_573/mul_2:z:0#^sequential_175/lstm_525/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_175/lstm_525/while/Identity_5Identity5sequential_175/lstm_525/while/lstm_cell_573/add_1:z:0#^sequential_175/lstm_525/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_175/lstm_525/while/NoOpNoOpC^sequential_175/lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOpB^sequential_175/lstm_525/while/lstm_cell_573/MatMul/ReadVariableOpD^sequential_175/lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_175_lstm_525_while_identity/sequential_175/lstm_525/while/Identity:output:0"]
(sequential_175_lstm_525_while_identity_11sequential_175/lstm_525/while/Identity_1:output:0"]
(sequential_175_lstm_525_while_identity_21sequential_175/lstm_525/while/Identity_2:output:0"]
(sequential_175_lstm_525_while_identity_31sequential_175/lstm_525/while/Identity_3:output:0"]
(sequential_175_lstm_525_while_identity_41sequential_175/lstm_525/while/Identity_4:output:0"]
(sequential_175_lstm_525_while_identity_51sequential_175/lstm_525/while/Identity_5:output:0"?
Ksequential_175_lstm_525_while_lstm_cell_573_biasadd_readvariableop_resourceMsequential_175_lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0"?
Lsequential_175_lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resourceNsequential_175_lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0"?
Jsequential_175_lstm_525_while_lstm_cell_573_matmul_readvariableop_resourceLsequential_175_lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0"?
Esequential_175_lstm_525_while_sequential_175_lstm_525_strided_slice_1Gsequential_175_lstm_525_while_sequential_175_lstm_525_strided_slice_1_0"?
?sequential_175_lstm_525_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_525_tensorarrayunstack_tensorlistfromtensor?sequential_175_lstm_525_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_525_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_175/lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOpBsequential_175/lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp2?
Asequential_175/lstm_525/while/lstm_cell_573/MatMul/ReadVariableOpAsequential_175/lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp2?
Csequential_175/lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOpCsequential_175/lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3482950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_574_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_574_matmul_readvariableop_resource:	d?G
4while_lstm_cell_574_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_574_biasadd_readvariableop_resource:	???*while/lstm_cell_574/BiasAdd/ReadVariableOp?)while/lstm_cell_574/MatMul/ReadVariableOp?+while/lstm_cell_574/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_574/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_574/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_574/addAddV2$while/lstm_cell_574/MatMul:product:0&while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_574/BiasAddBiasAddwhile/lstm_cell_574/add:z:02while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_574/splitSplit,while/lstm_cell_574/split/split_dim:output:0$while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_574/SigmoidSigmoid"while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_1Sigmoid"while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mulMul!while/lstm_cell_574/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_574/ReluRelu"while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_1Mulwhile/lstm_cell_574/Sigmoid:y:0&while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/add_1AddV2while/lstm_cell_574/mul:z:0while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_2Sigmoid"while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_574/Relu_1Reluwhile/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_2Mul!while/lstm_cell_574/Sigmoid_2:y:0(while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_574/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_574/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_574/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_574/BiasAdd/ReadVariableOp*^while/lstm_cell_574/MatMul/ReadVariableOp,^while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_574_biasadd_readvariableop_resource5while_lstm_cell_574_biasadd_readvariableop_resource_0"n
4while_lstm_cell_574_matmul_1_readvariableop_resource6while_lstm_cell_574_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_574_matmul_readvariableop_resource4while_lstm_cell_574_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_574/BiasAdd/ReadVariableOp*while/lstm_cell_574/BiasAdd/ReadVariableOp2V
)while/lstm_cell_574/MatMul/ReadVariableOp)while/lstm_cell_574/MatMul/ReadVariableOp2Z
+while/lstm_cell_574/MatMul_1/ReadVariableOp+while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_527_layer_call_fn_3483364

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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480635o
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
?
?
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3484021

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
?
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481115
lstm_525_input#
lstm_525_3481088:	?#
lstm_525_3481090:	d?
lstm_525_3481092:	?#
lstm_526_3481095:	d?#
lstm_526_3481097:	2?
lstm_526_3481099:	?"
lstm_527_3481102:2("
lstm_527_3481104:
(
lstm_527_3481106:(#
dense_175_3481109:

dense_175_3481111:
identity??!dense_175/StatefulPartitionedCall? lstm_525/StatefulPartitionedCall? lstm_526/StatefulPartitionedCall? lstm_527/StatefulPartitionedCall?
 lstm_525/StatefulPartitionedCallStatefulPartitionedCalllstm_525_inputlstm_525_3481088lstm_525_3481090lstm_525_3481092*
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480119?
 lstm_526/StatefulPartitionedCallStatefulPartitionedCall)lstm_525/StatefulPartitionedCall:output:0lstm_526_3481095lstm_526_3481097lstm_526_3481099*
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480269?
 lstm_527/StatefulPartitionedCallStatefulPartitionedCall)lstm_526/StatefulPartitionedCall:output:0lstm_527_3481102lstm_527_3481104lstm_527_3481106*
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480419?
!dense_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_527/StatefulPartitionedCall:output:0dense_175_3481109dense_175_3481111*
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
F__inference_dense_175_layer_call_and_return_conditional_losses_3480437y
IdentityIdentity*dense_175/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_175/StatefulPartitionedCall!^lstm_525/StatefulPartitionedCall!^lstm_526/StatefulPartitionedCall!^lstm_527/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_175/StatefulPartitionedCall!dense_175/StatefulPartitionedCall2D
 lstm_525/StatefulPartitionedCall lstm_525/StatefulPartitionedCall2D
 lstm_526/StatefulPartitionedCall lstm_526/StatefulPartitionedCall2D
 lstm_527/StatefulPartitionedCall lstm_527/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_525_input
?#
?
while_body_3479351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_574_3479375_0:	d?0
while_lstm_cell_574_3479377_0:	2?,
while_lstm_cell_574_3479379_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_574_3479375:	d?.
while_lstm_cell_574_3479377:	2?*
while_lstm_cell_574_3479379:	???+while/lstm_cell_574/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_574/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_574_3479375_0while_lstm_cell_574_3479377_0while_lstm_cell_574_3479379_0*
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479337?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_574/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_574/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_574/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_574/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_574_3479375while_lstm_cell_574_3479375_0"<
while_lstm_cell_574_3479377while_lstm_cell_574_3479377_0"<
while_lstm_cell_574_3479379while_lstm_cell_574_3479379_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_574/StatefulPartitionedCall+while/lstm_cell_574/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_527_layer_call_fn_3483331
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3479770o
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
?K
?
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483650
inputs_0>
,lstm_cell_575_matmul_readvariableop_resource:2(@
.lstm_cell_575_matmul_1_readvariableop_resource:
(;
-lstm_cell_575_biasadd_readvariableop_resource:(
identity??$lstm_cell_575/BiasAdd/ReadVariableOp?#lstm_cell_575/MatMul/ReadVariableOp?%lstm_cell_575/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_575/MatMul/ReadVariableOpReadVariableOp,lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_575/MatMulMatMulstrided_slice_2:output:0+lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_575/MatMul_1MatMulzeros:output:0-lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_575/addAddV2lstm_cell_575/MatMul:product:0 lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_575/BiasAddBiasAddlstm_cell_575/add:z:0,lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_575/splitSplit&lstm_cell_575/split/split_dim:output:0lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_575/SigmoidSigmoidlstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_1Sigmoidlstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_575/mulMullstm_cell_575/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_575/ReluRelulstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_1Mullstm_cell_575/Sigmoid:y:0 lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_575/add_1AddV2lstm_cell_575/mul:z:0lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_2Sigmoidlstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_575/Relu_1Relulstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_2Mullstm_cell_575/Sigmoid_2:y:0"lstm_cell_575/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_575_matmul_readvariableop_resource.lstm_cell_575_matmul_1_readvariableop_resource-lstm_cell_575_biasadd_readvariableop_resource*
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
while_body_3483566*
condR
while_cond_3483565*K
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
NoOpNoOp%^lstm_cell_575/BiasAdd/ReadVariableOp$^lstm_cell_575/MatMul/ReadVariableOp&^lstm_cell_575/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_575/BiasAdd/ReadVariableOp$lstm_cell_575/BiasAdd/ReadVariableOp2J
#lstm_cell_575/MatMul/ReadVariableOp#lstm_cell_575/MatMul/ReadVariableOp2N
%lstm_cell_575/MatMul_1/ReadVariableOp%lstm_cell_575/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_573_layer_call_fn_3483972

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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3478987o
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
?#
?
while_body_3479192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_573_3479216_0:	?0
while_lstm_cell_573_3479218_0:	d?,
while_lstm_cell_573_3479220_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_573_3479216:	?.
while_lstm_cell_573_3479218:	d?*
while_lstm_cell_573_3479220:	???+while/lstm_cell_573/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_573/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_573_3479216_0while_lstm_cell_573_3479218_0while_lstm_cell_573_3479220_0*
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3479133?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_573/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_573/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_573/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_573/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_573_3479216while_lstm_cell_573_3479216_0"<
while_lstm_cell_573_3479218while_lstm_cell_573_3479218_0"<
while_lstm_cell_573_3479220while_lstm_cell_573_3479220_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_573/StatefulPartitionedCall+while/lstm_cell_573/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3479700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3479700___redundant_placeholder05
1while_while_cond_3479700___redundant_placeholder15
1while_while_cond_3479700___redundant_placeholder25
1while_while_cond_3479700___redundant_placeholder3
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3479420

inputs(
lstm_cell_574_3479338:	d?(
lstm_cell_574_3479340:	2?$
lstm_cell_574_3479342:	?
identity??%lstm_cell_574/StatefulPartitionedCall?while;
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
%lstm_cell_574/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_574_3479338lstm_cell_574_3479340lstm_cell_574_3479342*
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479337n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_574_3479338lstm_cell_574_3479340lstm_cell_574_3479342*
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
while_body_3479351*
condR
while_cond_3479350*K
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
NoOpNoOp&^lstm_cell_574/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_574/StatefulPartitionedCall%lstm_cell_574/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481033

inputs#
lstm_525_3481006:	?#
lstm_525_3481008:	d?
lstm_525_3481010:	?#
lstm_526_3481013:	d?#
lstm_526_3481015:	2?
lstm_526_3481017:	?"
lstm_527_3481020:2("
lstm_527_3481022:
(
lstm_527_3481024:(#
dense_175_3481027:

dense_175_3481029:
identity??!dense_175/StatefulPartitionedCall? lstm_525/StatefulPartitionedCall? lstm_526/StatefulPartitionedCall? lstm_527/StatefulPartitionedCall?
 lstm_525/StatefulPartitionedCallStatefulPartitionedCallinputslstm_525_3481006lstm_525_3481008lstm_525_3481010*
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480965?
 lstm_526/StatefulPartitionedCallStatefulPartitionedCall)lstm_525/StatefulPartitionedCall:output:0lstm_526_3481013lstm_526_3481015lstm_526_3481017*
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480800?
 lstm_527/StatefulPartitionedCallStatefulPartitionedCall)lstm_526/StatefulPartitionedCall:output:0lstm_527_3481020lstm_527_3481022lstm_527_3481024*
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480635?
!dense_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_527/StatefulPartitionedCall:output:0dense_175_3481027dense_175_3481029*
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
F__inference_dense_175_layer_call_and_return_conditional_losses_3480437y
IdentityIdentity*dense_175/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_175/StatefulPartitionedCall!^lstm_525/StatefulPartitionedCall!^lstm_526/StatefulPartitionedCall!^lstm_527/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_175/StatefulPartitionedCall!dense_175/StatefulPartitionedCall2D
 lstm_525/StatefulPartitionedCall lstm_525/StatefulPartitionedCall2D
 lstm_526/StatefulPartitionedCall lstm_526/StatefulPartitionedCall2D
 lstm_527/StatefulPartitionedCall lstm_527/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481145
lstm_525_input#
lstm_525_3481118:	?#
lstm_525_3481120:	d?
lstm_525_3481122:	?#
lstm_526_3481125:	d?#
lstm_526_3481127:	2?
lstm_526_3481129:	?"
lstm_527_3481132:2("
lstm_527_3481134:
(
lstm_527_3481136:(#
dense_175_3481139:

dense_175_3481141:
identity??!dense_175/StatefulPartitionedCall? lstm_525/StatefulPartitionedCall? lstm_526/StatefulPartitionedCall? lstm_527/StatefulPartitionedCall?
 lstm_525/StatefulPartitionedCallStatefulPartitionedCalllstm_525_inputlstm_525_3481118lstm_525_3481120lstm_525_3481122*
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480965?
 lstm_526/StatefulPartitionedCallStatefulPartitionedCall)lstm_525/StatefulPartitionedCall:output:0lstm_526_3481125lstm_526_3481127lstm_526_3481129*
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480800?
 lstm_527/StatefulPartitionedCallStatefulPartitionedCall)lstm_526/StatefulPartitionedCall:output:0lstm_527_3481132lstm_527_3481134lstm_527_3481136*
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480635?
!dense_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_527/StatefulPartitionedCall:output:0dense_175_3481139dense_175_3481141*
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
F__inference_dense_175_layer_call_and_return_conditional_losses_3480437y
IdentityIdentity*dense_175/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_175/StatefulPartitionedCall!^lstm_525/StatefulPartitionedCall!^lstm_526/StatefulPartitionedCall!^lstm_527/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_175/StatefulPartitionedCall!dense_175/StatefulPartitionedCall2D
 lstm_525/StatefulPartitionedCall lstm_525/StatefulPartitionedCall2D
 lstm_526/StatefulPartitionedCall lstm_526/StatefulPartitionedCall2D
 lstm_527/StatefulPartitionedCall lstm_527/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_525_input
??
?
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481661

inputsH
5lstm_525_lstm_cell_573_matmul_readvariableop_resource:	?J
7lstm_525_lstm_cell_573_matmul_1_readvariableop_resource:	d?E
6lstm_525_lstm_cell_573_biasadd_readvariableop_resource:	?H
5lstm_526_lstm_cell_574_matmul_readvariableop_resource:	d?J
7lstm_526_lstm_cell_574_matmul_1_readvariableop_resource:	2?E
6lstm_526_lstm_cell_574_biasadd_readvariableop_resource:	?G
5lstm_527_lstm_cell_575_matmul_readvariableop_resource:2(I
7lstm_527_lstm_cell_575_matmul_1_readvariableop_resource:
(D
6lstm_527_lstm_cell_575_biasadd_readvariableop_resource:(:
(dense_175_matmul_readvariableop_resource:
7
)dense_175_biasadd_readvariableop_resource:
identity?? dense_175/BiasAdd/ReadVariableOp?dense_175/MatMul/ReadVariableOp?-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp?,lstm_525/lstm_cell_573/MatMul/ReadVariableOp?.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp?lstm_525/while?-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp?,lstm_526/lstm_cell_574/MatMul/ReadVariableOp?.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp?lstm_526/while?-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp?,lstm_527/lstm_cell_575/MatMul/ReadVariableOp?.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp?lstm_527/whileD
lstm_525/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_sliceStridedSlicelstm_525/Shape:output:0%lstm_525/strided_slice/stack:output:0'lstm_525/strided_slice/stack_1:output:0'lstm_525/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_525/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_525/zeros/packedPacklstm_525/strided_slice:output:0 lstm_525/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_525/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_525/zerosFilllstm_525/zeros/packed:output:0lstm_525/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_525/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_525/zeros_1/packedPacklstm_525/strided_slice:output:0"lstm_525/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_525/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_525/zeros_1Fill lstm_525/zeros_1/packed:output:0lstm_525/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_525/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_525/transpose	Transposeinputs lstm_525/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_525/Shape_1Shapelstm_525/transpose:y:0*
T0*
_output_shapes
:h
lstm_525/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_525/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_525/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_slice_1StridedSlicelstm_525/Shape_1:output:0'lstm_525/strided_slice_1/stack:output:0)lstm_525/strided_slice_1/stack_1:output:0)lstm_525/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_525/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_525/TensorArrayV2TensorListReserve-lstm_525/TensorArrayV2/element_shape:output:0!lstm_525/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_525/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_525/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_525/transpose:y:0Glstm_525/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_525/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_525/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_525/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_slice_2StridedSlicelstm_525/transpose:y:0'lstm_525/strided_slice_2/stack:output:0)lstm_525/strided_slice_2/stack_1:output:0)lstm_525/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_525/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp5lstm_525_lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_525/lstm_cell_573/MatMulMatMul!lstm_525/strided_slice_2:output:04lstm_525/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp7lstm_525_lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_525/lstm_cell_573/MatMul_1MatMullstm_525/zeros:output:06lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_525/lstm_cell_573/addAddV2'lstm_525/lstm_cell_573/MatMul:product:0)lstm_525/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp6lstm_525_lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_525/lstm_cell_573/BiasAddBiasAddlstm_525/lstm_cell_573/add:z:05lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_525/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_525/lstm_cell_573/splitSplit/lstm_525/lstm_cell_573/split/split_dim:output:0'lstm_525/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_525/lstm_cell_573/SigmoidSigmoid%lstm_525/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_525/lstm_cell_573/Sigmoid_1Sigmoid%lstm_525/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/mulMul$lstm_525/lstm_cell_573/Sigmoid_1:y:0lstm_525/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_525/lstm_cell_573/ReluRelu%lstm_525/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/mul_1Mul"lstm_525/lstm_cell_573/Sigmoid:y:0)lstm_525/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/add_1AddV2lstm_525/lstm_cell_573/mul:z:0 lstm_525/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_525/lstm_cell_573/Sigmoid_2Sigmoid%lstm_525/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_525/lstm_cell_573/Relu_1Relu lstm_525/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/mul_2Mul$lstm_525/lstm_cell_573/Sigmoid_2:y:0+lstm_525/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_525/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_525/TensorArrayV2_1TensorListReserve/lstm_525/TensorArrayV2_1/element_shape:output:0!lstm_525/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_525/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_525/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_525/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_525/whileWhile$lstm_525/while/loop_counter:output:0*lstm_525/while/maximum_iterations:output:0lstm_525/time:output:0!lstm_525/TensorArrayV2_1:handle:0lstm_525/zeros:output:0lstm_525/zeros_1:output:0!lstm_525/strided_slice_1:output:0@lstm_525/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_525_lstm_cell_573_matmul_readvariableop_resource7lstm_525_lstm_cell_573_matmul_1_readvariableop_resource6lstm_525_lstm_cell_573_biasadd_readvariableop_resource*
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
lstm_525_while_body_3481293*'
condR
lstm_525_while_cond_3481292*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_525/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_525/TensorArrayV2Stack/TensorListStackTensorListStacklstm_525/while:output:3Blstm_525/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_525/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_525/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_525/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_slice_3StridedSlice4lstm_525/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_525/strided_slice_3/stack:output:0)lstm_525/strided_slice_3/stack_1:output:0)lstm_525/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_525/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_525/transpose_1	Transpose4lstm_525/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_525/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_525/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_526/ShapeShapelstm_525/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_526/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_526/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_526/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_sliceStridedSlicelstm_526/Shape:output:0%lstm_526/strided_slice/stack:output:0'lstm_526/strided_slice/stack_1:output:0'lstm_526/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_526/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_526/zeros/packedPacklstm_526/strided_slice:output:0 lstm_526/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_526/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_526/zerosFilllstm_526/zeros/packed:output:0lstm_526/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_526/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_526/zeros_1/packedPacklstm_526/strided_slice:output:0"lstm_526/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_526/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_526/zeros_1Fill lstm_526/zeros_1/packed:output:0lstm_526/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_526/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_526/transpose	Transposelstm_525/transpose_1:y:0 lstm_526/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_526/Shape_1Shapelstm_526/transpose:y:0*
T0*
_output_shapes
:h
lstm_526/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_526/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_526/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_slice_1StridedSlicelstm_526/Shape_1:output:0'lstm_526/strided_slice_1/stack:output:0)lstm_526/strided_slice_1/stack_1:output:0)lstm_526/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_526/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_526/TensorArrayV2TensorListReserve-lstm_526/TensorArrayV2/element_shape:output:0!lstm_526/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_526/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_526/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_526/transpose:y:0Glstm_526/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_526/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_526/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_526/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_slice_2StridedSlicelstm_526/transpose:y:0'lstm_526/strided_slice_2/stack:output:0)lstm_526/strided_slice_2/stack_1:output:0)lstm_526/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_526/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp5lstm_526_lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_526/lstm_cell_574/MatMulMatMul!lstm_526/strided_slice_2:output:04lstm_526/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp7lstm_526_lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_526/lstm_cell_574/MatMul_1MatMullstm_526/zeros:output:06lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_526/lstm_cell_574/addAddV2'lstm_526/lstm_cell_574/MatMul:product:0)lstm_526/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp6lstm_526_lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_526/lstm_cell_574/BiasAddBiasAddlstm_526/lstm_cell_574/add:z:05lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_526/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_526/lstm_cell_574/splitSplit/lstm_526/lstm_cell_574/split/split_dim:output:0'lstm_526/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_526/lstm_cell_574/SigmoidSigmoid%lstm_526/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_526/lstm_cell_574/Sigmoid_1Sigmoid%lstm_526/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/mulMul$lstm_526/lstm_cell_574/Sigmoid_1:y:0lstm_526/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_526/lstm_cell_574/ReluRelu%lstm_526/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/mul_1Mul"lstm_526/lstm_cell_574/Sigmoid:y:0)lstm_526/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/add_1AddV2lstm_526/lstm_cell_574/mul:z:0 lstm_526/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_526/lstm_cell_574/Sigmoid_2Sigmoid%lstm_526/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_526/lstm_cell_574/Relu_1Relu lstm_526/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/mul_2Mul$lstm_526/lstm_cell_574/Sigmoid_2:y:0+lstm_526/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_526/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_526/TensorArrayV2_1TensorListReserve/lstm_526/TensorArrayV2_1/element_shape:output:0!lstm_526/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_526/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_526/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_526/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_526/whileWhile$lstm_526/while/loop_counter:output:0*lstm_526/while/maximum_iterations:output:0lstm_526/time:output:0!lstm_526/TensorArrayV2_1:handle:0lstm_526/zeros:output:0lstm_526/zeros_1:output:0!lstm_526/strided_slice_1:output:0@lstm_526/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_526_lstm_cell_574_matmul_readvariableop_resource7lstm_526_lstm_cell_574_matmul_1_readvariableop_resource6lstm_526_lstm_cell_574_biasadd_readvariableop_resource*
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
lstm_526_while_body_3481432*'
condR
lstm_526_while_cond_3481431*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_526/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_526/TensorArrayV2Stack/TensorListStackTensorListStacklstm_526/while:output:3Blstm_526/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_526/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_526/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_526/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_slice_3StridedSlice4lstm_526/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_526/strided_slice_3/stack:output:0)lstm_526/strided_slice_3/stack_1:output:0)lstm_526/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_526/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_526/transpose_1	Transpose4lstm_526/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_526/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_526/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_527/ShapeShapelstm_526/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_527/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_527/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_527/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_sliceStridedSlicelstm_527/Shape:output:0%lstm_527/strided_slice/stack:output:0'lstm_527/strided_slice/stack_1:output:0'lstm_527/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_527/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_527/zeros/packedPacklstm_527/strided_slice:output:0 lstm_527/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_527/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_527/zerosFilllstm_527/zeros/packed:output:0lstm_527/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_527/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_527/zeros_1/packedPacklstm_527/strided_slice:output:0"lstm_527/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_527/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_527/zeros_1Fill lstm_527/zeros_1/packed:output:0lstm_527/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_527/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_527/transpose	Transposelstm_526/transpose_1:y:0 lstm_527/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_527/Shape_1Shapelstm_527/transpose:y:0*
T0*
_output_shapes
:h
lstm_527/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_527/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_527/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_slice_1StridedSlicelstm_527/Shape_1:output:0'lstm_527/strided_slice_1/stack:output:0)lstm_527/strided_slice_1/stack_1:output:0)lstm_527/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_527/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_527/TensorArrayV2TensorListReserve-lstm_527/TensorArrayV2/element_shape:output:0!lstm_527/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_527/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_527/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_527/transpose:y:0Glstm_527/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_527/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_527/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_527/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_slice_2StridedSlicelstm_527/transpose:y:0'lstm_527/strided_slice_2/stack:output:0)lstm_527/strided_slice_2/stack_1:output:0)lstm_527/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_527/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp5lstm_527_lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_527/lstm_cell_575/MatMulMatMul!lstm_527/strided_slice_2:output:04lstm_527/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp7lstm_527_lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_527/lstm_cell_575/MatMul_1MatMullstm_527/zeros:output:06lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_527/lstm_cell_575/addAddV2'lstm_527/lstm_cell_575/MatMul:product:0)lstm_527/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp6lstm_527_lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_527/lstm_cell_575/BiasAddBiasAddlstm_527/lstm_cell_575/add:z:05lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_527/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_527/lstm_cell_575/splitSplit/lstm_527/lstm_cell_575/split/split_dim:output:0'lstm_527/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_527/lstm_cell_575/SigmoidSigmoid%lstm_527/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_527/lstm_cell_575/Sigmoid_1Sigmoid%lstm_527/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/mulMul$lstm_527/lstm_cell_575/Sigmoid_1:y:0lstm_527/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_527/lstm_cell_575/ReluRelu%lstm_527/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/mul_1Mul"lstm_527/lstm_cell_575/Sigmoid:y:0)lstm_527/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/add_1AddV2lstm_527/lstm_cell_575/mul:z:0 lstm_527/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_527/lstm_cell_575/Sigmoid_2Sigmoid%lstm_527/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_527/lstm_cell_575/Relu_1Relu lstm_527/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/mul_2Mul$lstm_527/lstm_cell_575/Sigmoid_2:y:0+lstm_527/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_527/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_527/TensorArrayV2_1TensorListReserve/lstm_527/TensorArrayV2_1/element_shape:output:0!lstm_527/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_527/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_527/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_527/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_527/whileWhile$lstm_527/while/loop_counter:output:0*lstm_527/while/maximum_iterations:output:0lstm_527/time:output:0!lstm_527/TensorArrayV2_1:handle:0lstm_527/zeros:output:0lstm_527/zeros_1:output:0!lstm_527/strided_slice_1:output:0@lstm_527/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_527_lstm_cell_575_matmul_readvariableop_resource7lstm_527_lstm_cell_575_matmul_1_readvariableop_resource6lstm_527_lstm_cell_575_biasadd_readvariableop_resource*
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
lstm_527_while_body_3481571*'
condR
lstm_527_while_cond_3481570*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_527/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_527/TensorArrayV2Stack/TensorListStackTensorListStacklstm_527/while:output:3Blstm_527/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_527/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_527/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_527/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_slice_3StridedSlice4lstm_527/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_527/strided_slice_3/stack:output:0)lstm_527/strided_slice_3/stack_1:output:0)lstm_527/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_527/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_527/transpose_1	Transpose4lstm_527/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_527/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_527/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_175/MatMul/ReadVariableOpReadVariableOp(dense_175_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_175/MatMulMatMul!lstm_527/strided_slice_3:output:0'dense_175/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_175/BiasAdd/ReadVariableOpReadVariableOp)dense_175_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_175/BiasAddBiasAdddense_175/MatMul:product:0(dense_175/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_175/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_175/BiasAdd/ReadVariableOp ^dense_175/MatMul/ReadVariableOp.^lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp-^lstm_525/lstm_cell_573/MatMul/ReadVariableOp/^lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp^lstm_525/while.^lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp-^lstm_526/lstm_cell_574/MatMul/ReadVariableOp/^lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp^lstm_526/while.^lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp-^lstm_527/lstm_cell_575/MatMul/ReadVariableOp/^lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp^lstm_527/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_175/BiasAdd/ReadVariableOp dense_175/BiasAdd/ReadVariableOp2B
dense_175/MatMul/ReadVariableOpdense_175/MatMul/ReadVariableOp2^
-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp2\
,lstm_525/lstm_cell_573/MatMul/ReadVariableOp,lstm_525/lstm_cell_573/MatMul/ReadVariableOp2`
.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp2 
lstm_525/whilelstm_525/while2^
-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp2\
,lstm_526/lstm_cell_574/MatMul/ReadVariableOp,lstm_526/lstm_cell_574/MatMul/ReadVariableOp2`
.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp2 
lstm_526/whilelstm_526/while2^
-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp2\
,lstm_527/lstm_cell_575/MatMul/ReadVariableOp,lstm_527/lstm_cell_575/MatMul/ReadVariableOp2`
.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp2 
lstm_527/whilelstm_527/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_527_layer_call_and_return_conditional_losses_3479770

inputs'
lstm_cell_575_3479688:2('
lstm_cell_575_3479690:
(#
lstm_cell_575_3479692:(
identity??%lstm_cell_575/StatefulPartitionedCall?while;
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
%lstm_cell_575/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_575_3479688lstm_cell_575_3479690lstm_cell_575_3479692*
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479687n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_575_3479688lstm_cell_575_3479690lstm_cell_575_3479692*
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
while_body_3479701*
condR
while_cond_3479700*K
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
NoOpNoOp&^lstm_cell_575/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_575/StatefulPartitionedCall%lstm_cell_575/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3480715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3480715___redundant_placeholder05
1while_while_cond_3480715___redundant_placeholder15
1while_while_cond_3480715___redundant_placeholder25
1while_while_cond_3480715___redundant_placeholder3
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
while_body_3482191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_573_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_573_matmul_readvariableop_resource:	?G
4while_lstm_cell_573_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_573_biasadd_readvariableop_resource:	???*while/lstm_cell_573/BiasAdd/ReadVariableOp?)while/lstm_cell_573/MatMul/ReadVariableOp?+while/lstm_cell_573/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_573/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_573/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_573/addAddV2$while/lstm_cell_573/MatMul:product:0&while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_573/BiasAddBiasAddwhile/lstm_cell_573/add:z:02while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_573/splitSplit,while/lstm_cell_573/split/split_dim:output:0$while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_573/SigmoidSigmoid"while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_1Sigmoid"while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mulMul!while/lstm_cell_573/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_573/ReluRelu"while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_1Mulwhile/lstm_cell_573/Sigmoid:y:0&while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/add_1AddV2while/lstm_cell_573/mul:z:0while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_2Sigmoid"while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_573/Relu_1Reluwhile/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_2Mul!while/lstm_cell_573/Sigmoid_2:y:0(while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_573/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_573/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_573/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_573/BiasAdd/ReadVariableOp*^while/lstm_cell_573/MatMul/ReadVariableOp,^while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_573_biasadd_readvariableop_resource5while_lstm_cell_573_biasadd_readvariableop_resource_0"n
4while_lstm_cell_573_matmul_1_readvariableop_resource6while_lstm_cell_573_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_573_matmul_readvariableop_resource4while_lstm_cell_573_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_573/BiasAdd/ReadVariableOp*while/lstm_cell_573/BiasAdd/ReadVariableOp2V
)while/lstm_cell_573/MatMul/ReadVariableOp)while/lstm_cell_573/MatMul/ReadVariableOp2Z
+while/lstm_cell_573/MatMul_1/ReadVariableOp+while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480635

inputs>
,lstm_cell_575_matmul_readvariableop_resource:2(@
.lstm_cell_575_matmul_1_readvariableop_resource:
(;
-lstm_cell_575_biasadd_readvariableop_resource:(
identity??$lstm_cell_575/BiasAdd/ReadVariableOp?#lstm_cell_575/MatMul/ReadVariableOp?%lstm_cell_575/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_575/MatMul/ReadVariableOpReadVariableOp,lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_575/MatMulMatMulstrided_slice_2:output:0+lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_575/MatMul_1MatMulzeros:output:0-lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_575/addAddV2lstm_cell_575/MatMul:product:0 lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_575/BiasAddBiasAddlstm_cell_575/add:z:0,lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_575/splitSplit&lstm_cell_575/split/split_dim:output:0lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_575/SigmoidSigmoidlstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_1Sigmoidlstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_575/mulMullstm_cell_575/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_575/ReluRelulstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_1Mullstm_cell_575/Sigmoid:y:0 lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_575/add_1AddV2lstm_cell_575/mul:z:0lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_2Sigmoidlstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_575/Relu_1Relulstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_2Mullstm_cell_575/Sigmoid_2:y:0"lstm_cell_575/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_575_matmul_readvariableop_resource.lstm_cell_575_matmul_1_readvariableop_resource-lstm_cell_575_biasadd_readvariableop_resource*
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
while_body_3480551*
condR
while_cond_3480550*K
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
NoOpNoOp%^lstm_cell_575/BiasAdd/ReadVariableOp$^lstm_cell_575/MatMul/ReadVariableOp&^lstm_cell_575/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_575/BiasAdd/ReadVariableOp$lstm_cell_575/BiasAdd/ReadVariableOp2J
#lstm_cell_575/MatMul/ReadVariableOp#lstm_cell_575/MatMul/ReadVariableOp2N
%lstm_cell_575/MatMul_1/ReadVariableOp%lstm_cell_575/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3480550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3480550___redundant_placeholder05
1while_while_cond_3480550___redundant_placeholder15
1while_while_cond_3480550___redundant_placeholder25
1while_while_cond_3480550___redundant_placeholder3
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
while_body_3479701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_575_3479725_0:2(/
while_lstm_cell_575_3479727_0:
(+
while_lstm_cell_575_3479729_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_575_3479725:2(-
while_lstm_cell_575_3479727:
()
while_lstm_cell_575_3479729:(??+while/lstm_cell_575/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_575/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_575_3479725_0while_lstm_cell_575_3479727_0while_lstm_cell_575_3479729_0*
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479687?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_575/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_575/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_575/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_575/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_575_3479725while_lstm_cell_575_3479725_0"<
while_lstm_cell_575_3479727while_lstm_cell_575_3479727_0"<
while_lstm_cell_575_3479729while_lstm_cell_575_3479729_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_575/StatefulPartitionedCall+while/lstm_cell_575/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3480184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3480184___redundant_placeholder05
1while_while_cond_3480184___redundant_placeholder15
1while_while_cond_3480184___redundant_placeholder25
1while_while_cond_3480184___redundant_placeholder3
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
0__inference_sequential_175_layer_call_fn_3480469
lstm_525_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_525_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3480444o
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
_user_specified_namelstm_525_input
?
?
/__inference_lstm_cell_574_layer_call_fn_3484087

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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479483o
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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3482088

inputsH
5lstm_525_lstm_cell_573_matmul_readvariableop_resource:	?J
7lstm_525_lstm_cell_573_matmul_1_readvariableop_resource:	d?E
6lstm_525_lstm_cell_573_biasadd_readvariableop_resource:	?H
5lstm_526_lstm_cell_574_matmul_readvariableop_resource:	d?J
7lstm_526_lstm_cell_574_matmul_1_readvariableop_resource:	2?E
6lstm_526_lstm_cell_574_biasadd_readvariableop_resource:	?G
5lstm_527_lstm_cell_575_matmul_readvariableop_resource:2(I
7lstm_527_lstm_cell_575_matmul_1_readvariableop_resource:
(D
6lstm_527_lstm_cell_575_biasadd_readvariableop_resource:(:
(dense_175_matmul_readvariableop_resource:
7
)dense_175_biasadd_readvariableop_resource:
identity?? dense_175/BiasAdd/ReadVariableOp?dense_175/MatMul/ReadVariableOp?-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp?,lstm_525/lstm_cell_573/MatMul/ReadVariableOp?.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp?lstm_525/while?-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp?,lstm_526/lstm_cell_574/MatMul/ReadVariableOp?.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp?lstm_526/while?-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp?,lstm_527/lstm_cell_575/MatMul/ReadVariableOp?.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp?lstm_527/whileD
lstm_525/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_sliceStridedSlicelstm_525/Shape:output:0%lstm_525/strided_slice/stack:output:0'lstm_525/strided_slice/stack_1:output:0'lstm_525/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_525/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_525/zeros/packedPacklstm_525/strided_slice:output:0 lstm_525/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_525/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_525/zerosFilllstm_525/zeros/packed:output:0lstm_525/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_525/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_525/zeros_1/packedPacklstm_525/strided_slice:output:0"lstm_525/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_525/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_525/zeros_1Fill lstm_525/zeros_1/packed:output:0lstm_525/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_525/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_525/transpose	Transposeinputs lstm_525/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_525/Shape_1Shapelstm_525/transpose:y:0*
T0*
_output_shapes
:h
lstm_525/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_525/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_525/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_slice_1StridedSlicelstm_525/Shape_1:output:0'lstm_525/strided_slice_1/stack:output:0)lstm_525/strided_slice_1/stack_1:output:0)lstm_525/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_525/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_525/TensorArrayV2TensorListReserve-lstm_525/TensorArrayV2/element_shape:output:0!lstm_525/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_525/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_525/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_525/transpose:y:0Glstm_525/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_525/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_525/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_525/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_slice_2StridedSlicelstm_525/transpose:y:0'lstm_525/strided_slice_2/stack:output:0)lstm_525/strided_slice_2/stack_1:output:0)lstm_525/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_525/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp5lstm_525_lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_525/lstm_cell_573/MatMulMatMul!lstm_525/strided_slice_2:output:04lstm_525/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp7lstm_525_lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_525/lstm_cell_573/MatMul_1MatMullstm_525/zeros:output:06lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_525/lstm_cell_573/addAddV2'lstm_525/lstm_cell_573/MatMul:product:0)lstm_525/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp6lstm_525_lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_525/lstm_cell_573/BiasAddBiasAddlstm_525/lstm_cell_573/add:z:05lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_525/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_525/lstm_cell_573/splitSplit/lstm_525/lstm_cell_573/split/split_dim:output:0'lstm_525/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_525/lstm_cell_573/SigmoidSigmoid%lstm_525/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_525/lstm_cell_573/Sigmoid_1Sigmoid%lstm_525/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/mulMul$lstm_525/lstm_cell_573/Sigmoid_1:y:0lstm_525/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_525/lstm_cell_573/ReluRelu%lstm_525/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/mul_1Mul"lstm_525/lstm_cell_573/Sigmoid:y:0)lstm_525/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/add_1AddV2lstm_525/lstm_cell_573/mul:z:0 lstm_525/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_525/lstm_cell_573/Sigmoid_2Sigmoid%lstm_525/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_525/lstm_cell_573/Relu_1Relu lstm_525/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_525/lstm_cell_573/mul_2Mul$lstm_525/lstm_cell_573/Sigmoid_2:y:0+lstm_525/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_525/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_525/TensorArrayV2_1TensorListReserve/lstm_525/TensorArrayV2_1/element_shape:output:0!lstm_525/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_525/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_525/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_525/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_525/whileWhile$lstm_525/while/loop_counter:output:0*lstm_525/while/maximum_iterations:output:0lstm_525/time:output:0!lstm_525/TensorArrayV2_1:handle:0lstm_525/zeros:output:0lstm_525/zeros_1:output:0!lstm_525/strided_slice_1:output:0@lstm_525/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_525_lstm_cell_573_matmul_readvariableop_resource7lstm_525_lstm_cell_573_matmul_1_readvariableop_resource6lstm_525_lstm_cell_573_biasadd_readvariableop_resource*
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
lstm_525_while_body_3481720*'
condR
lstm_525_while_cond_3481719*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_525/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_525/TensorArrayV2Stack/TensorListStackTensorListStacklstm_525/while:output:3Blstm_525/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_525/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_525/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_525/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_525/strided_slice_3StridedSlice4lstm_525/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_525/strided_slice_3/stack:output:0)lstm_525/strided_slice_3/stack_1:output:0)lstm_525/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_525/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_525/transpose_1	Transpose4lstm_525/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_525/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_525/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_526/ShapeShapelstm_525/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_526/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_526/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_526/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_sliceStridedSlicelstm_526/Shape:output:0%lstm_526/strided_slice/stack:output:0'lstm_526/strided_slice/stack_1:output:0'lstm_526/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_526/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_526/zeros/packedPacklstm_526/strided_slice:output:0 lstm_526/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_526/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_526/zerosFilllstm_526/zeros/packed:output:0lstm_526/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_526/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_526/zeros_1/packedPacklstm_526/strided_slice:output:0"lstm_526/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_526/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_526/zeros_1Fill lstm_526/zeros_1/packed:output:0lstm_526/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_526/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_526/transpose	Transposelstm_525/transpose_1:y:0 lstm_526/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_526/Shape_1Shapelstm_526/transpose:y:0*
T0*
_output_shapes
:h
lstm_526/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_526/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_526/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_slice_1StridedSlicelstm_526/Shape_1:output:0'lstm_526/strided_slice_1/stack:output:0)lstm_526/strided_slice_1/stack_1:output:0)lstm_526/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_526/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_526/TensorArrayV2TensorListReserve-lstm_526/TensorArrayV2/element_shape:output:0!lstm_526/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_526/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_526/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_526/transpose:y:0Glstm_526/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_526/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_526/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_526/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_slice_2StridedSlicelstm_526/transpose:y:0'lstm_526/strided_slice_2/stack:output:0)lstm_526/strided_slice_2/stack_1:output:0)lstm_526/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_526/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp5lstm_526_lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_526/lstm_cell_574/MatMulMatMul!lstm_526/strided_slice_2:output:04lstm_526/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp7lstm_526_lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_526/lstm_cell_574/MatMul_1MatMullstm_526/zeros:output:06lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_526/lstm_cell_574/addAddV2'lstm_526/lstm_cell_574/MatMul:product:0)lstm_526/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp6lstm_526_lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_526/lstm_cell_574/BiasAddBiasAddlstm_526/lstm_cell_574/add:z:05lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_526/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_526/lstm_cell_574/splitSplit/lstm_526/lstm_cell_574/split/split_dim:output:0'lstm_526/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_526/lstm_cell_574/SigmoidSigmoid%lstm_526/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_526/lstm_cell_574/Sigmoid_1Sigmoid%lstm_526/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/mulMul$lstm_526/lstm_cell_574/Sigmoid_1:y:0lstm_526/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_526/lstm_cell_574/ReluRelu%lstm_526/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/mul_1Mul"lstm_526/lstm_cell_574/Sigmoid:y:0)lstm_526/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/add_1AddV2lstm_526/lstm_cell_574/mul:z:0 lstm_526/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_526/lstm_cell_574/Sigmoid_2Sigmoid%lstm_526/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_526/lstm_cell_574/Relu_1Relu lstm_526/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_526/lstm_cell_574/mul_2Mul$lstm_526/lstm_cell_574/Sigmoid_2:y:0+lstm_526/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_526/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_526/TensorArrayV2_1TensorListReserve/lstm_526/TensorArrayV2_1/element_shape:output:0!lstm_526/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_526/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_526/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_526/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_526/whileWhile$lstm_526/while/loop_counter:output:0*lstm_526/while/maximum_iterations:output:0lstm_526/time:output:0!lstm_526/TensorArrayV2_1:handle:0lstm_526/zeros:output:0lstm_526/zeros_1:output:0!lstm_526/strided_slice_1:output:0@lstm_526/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_526_lstm_cell_574_matmul_readvariableop_resource7lstm_526_lstm_cell_574_matmul_1_readvariableop_resource6lstm_526_lstm_cell_574_biasadd_readvariableop_resource*
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
lstm_526_while_body_3481859*'
condR
lstm_526_while_cond_3481858*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_526/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_526/TensorArrayV2Stack/TensorListStackTensorListStacklstm_526/while:output:3Blstm_526/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_526/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_526/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_526/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_526/strided_slice_3StridedSlice4lstm_526/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_526/strided_slice_3/stack:output:0)lstm_526/strided_slice_3/stack_1:output:0)lstm_526/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_526/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_526/transpose_1	Transpose4lstm_526/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_526/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_526/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_527/ShapeShapelstm_526/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_527/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_527/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_527/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_sliceStridedSlicelstm_527/Shape:output:0%lstm_527/strided_slice/stack:output:0'lstm_527/strided_slice/stack_1:output:0'lstm_527/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_527/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_527/zeros/packedPacklstm_527/strided_slice:output:0 lstm_527/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_527/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_527/zerosFilllstm_527/zeros/packed:output:0lstm_527/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_527/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_527/zeros_1/packedPacklstm_527/strided_slice:output:0"lstm_527/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_527/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_527/zeros_1Fill lstm_527/zeros_1/packed:output:0lstm_527/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_527/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_527/transpose	Transposelstm_526/transpose_1:y:0 lstm_527/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_527/Shape_1Shapelstm_527/transpose:y:0*
T0*
_output_shapes
:h
lstm_527/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_527/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_527/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_slice_1StridedSlicelstm_527/Shape_1:output:0'lstm_527/strided_slice_1/stack:output:0)lstm_527/strided_slice_1/stack_1:output:0)lstm_527/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_527/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_527/TensorArrayV2TensorListReserve-lstm_527/TensorArrayV2/element_shape:output:0!lstm_527/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_527/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_527/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_527/transpose:y:0Glstm_527/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_527/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_527/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_527/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_slice_2StridedSlicelstm_527/transpose:y:0'lstm_527/strided_slice_2/stack:output:0)lstm_527/strided_slice_2/stack_1:output:0)lstm_527/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_527/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp5lstm_527_lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_527/lstm_cell_575/MatMulMatMul!lstm_527/strided_slice_2:output:04lstm_527/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp7lstm_527_lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_527/lstm_cell_575/MatMul_1MatMullstm_527/zeros:output:06lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_527/lstm_cell_575/addAddV2'lstm_527/lstm_cell_575/MatMul:product:0)lstm_527/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp6lstm_527_lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_527/lstm_cell_575/BiasAddBiasAddlstm_527/lstm_cell_575/add:z:05lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_527/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_527/lstm_cell_575/splitSplit/lstm_527/lstm_cell_575/split/split_dim:output:0'lstm_527/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_527/lstm_cell_575/SigmoidSigmoid%lstm_527/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_527/lstm_cell_575/Sigmoid_1Sigmoid%lstm_527/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/mulMul$lstm_527/lstm_cell_575/Sigmoid_1:y:0lstm_527/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_527/lstm_cell_575/ReluRelu%lstm_527/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/mul_1Mul"lstm_527/lstm_cell_575/Sigmoid:y:0)lstm_527/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/add_1AddV2lstm_527/lstm_cell_575/mul:z:0 lstm_527/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_527/lstm_cell_575/Sigmoid_2Sigmoid%lstm_527/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_527/lstm_cell_575/Relu_1Relu lstm_527/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_527/lstm_cell_575/mul_2Mul$lstm_527/lstm_cell_575/Sigmoid_2:y:0+lstm_527/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_527/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_527/TensorArrayV2_1TensorListReserve/lstm_527/TensorArrayV2_1/element_shape:output:0!lstm_527/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_527/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_527/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_527/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_527/whileWhile$lstm_527/while/loop_counter:output:0*lstm_527/while/maximum_iterations:output:0lstm_527/time:output:0!lstm_527/TensorArrayV2_1:handle:0lstm_527/zeros:output:0lstm_527/zeros_1:output:0!lstm_527/strided_slice_1:output:0@lstm_527/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_527_lstm_cell_575_matmul_readvariableop_resource7lstm_527_lstm_cell_575_matmul_1_readvariableop_resource6lstm_527_lstm_cell_575_biasadd_readvariableop_resource*
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
lstm_527_while_body_3481998*'
condR
lstm_527_while_cond_3481997*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_527/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_527/TensorArrayV2Stack/TensorListStackTensorListStacklstm_527/while:output:3Blstm_527/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_527/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_527/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_527/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_527/strided_slice_3StridedSlice4lstm_527/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_527/strided_slice_3/stack:output:0)lstm_527/strided_slice_3/stack_1:output:0)lstm_527/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_527/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_527/transpose_1	Transpose4lstm_527/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_527/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_527/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_175/MatMul/ReadVariableOpReadVariableOp(dense_175_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_175/MatMulMatMul!lstm_527/strided_slice_3:output:0'dense_175/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_175/BiasAdd/ReadVariableOpReadVariableOp)dense_175_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_175/BiasAddBiasAdddense_175/MatMul:product:0(dense_175/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_175/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_175/BiasAdd/ReadVariableOp ^dense_175/MatMul/ReadVariableOp.^lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp-^lstm_525/lstm_cell_573/MatMul/ReadVariableOp/^lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp^lstm_525/while.^lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp-^lstm_526/lstm_cell_574/MatMul/ReadVariableOp/^lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp^lstm_526/while.^lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp-^lstm_527/lstm_cell_575/MatMul/ReadVariableOp/^lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp^lstm_527/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_175/BiasAdd/ReadVariableOp dense_175/BiasAdd/ReadVariableOp2B
dense_175/MatMul/ReadVariableOpdense_175/MatMul/ReadVariableOp2^
-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp-lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp2\
,lstm_525/lstm_cell_573/MatMul/ReadVariableOp,lstm_525/lstm_cell_573/MatMul/ReadVariableOp2`
.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp.lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp2 
lstm_525/whilelstm_525/while2^
-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp-lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp2\
,lstm_526/lstm_cell_574/MatMul/ReadVariableOp,lstm_526/lstm_cell_574/MatMul/ReadVariableOp2`
.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp.lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp2 
lstm_526/whilelstm_526/while2^
-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp-lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp2\
,lstm_527/lstm_cell_575/MatMul/ReadVariableOp,lstm_527/lstm_cell_575/MatMul/ReadVariableOp2`
.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp.lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp2 
lstm_527/whilelstm_527/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_573_layer_call_fn_3483989

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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3479133o
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
?C
?

lstm_525_while_body_3481720.
*lstm_525_while_lstm_525_while_loop_counter4
0lstm_525_while_lstm_525_while_maximum_iterations
lstm_525_while_placeholder 
lstm_525_while_placeholder_1 
lstm_525_while_placeholder_2 
lstm_525_while_placeholder_3-
)lstm_525_while_lstm_525_strided_slice_1_0i
elstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0:	?R
?lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?M
>lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
lstm_525_while_identity
lstm_525_while_identity_1
lstm_525_while_identity_2
lstm_525_while_identity_3
lstm_525_while_identity_4
lstm_525_while_identity_5+
'lstm_525_while_lstm_525_strided_slice_1g
clstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensorN
;lstm_525_while_lstm_cell_573_matmul_readvariableop_resource:	?P
=lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource:	d?K
<lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource:	???3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp?2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp?4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp?
@lstm_525/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_525/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensor_0lstm_525_while_placeholderIlstm_525/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp=lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_525/while/lstm_cell_573/MatMulMatMul9lstm_525/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp?lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_525/while/lstm_cell_573/MatMul_1MatMullstm_525_while_placeholder_2<lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_525/while/lstm_cell_573/addAddV2-lstm_525/while/lstm_cell_573/MatMul:product:0/lstm_525/while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp>lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_525/while/lstm_cell_573/BiasAddBiasAdd$lstm_525/while/lstm_cell_573/add:z:0;lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_525/while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_525/while/lstm_cell_573/splitSplit5lstm_525/while/lstm_cell_573/split/split_dim:output:0-lstm_525/while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_525/while/lstm_cell_573/SigmoidSigmoid+lstm_525/while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_525/while/lstm_cell_573/Sigmoid_1Sigmoid+lstm_525/while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_525/while/lstm_cell_573/mulMul*lstm_525/while/lstm_cell_573/Sigmoid_1:y:0lstm_525_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_525/while/lstm_cell_573/ReluRelu+lstm_525/while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_525/while/lstm_cell_573/mul_1Mul(lstm_525/while/lstm_cell_573/Sigmoid:y:0/lstm_525/while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_525/while/lstm_cell_573/add_1AddV2$lstm_525/while/lstm_cell_573/mul:z:0&lstm_525/while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_525/while/lstm_cell_573/Sigmoid_2Sigmoid+lstm_525/while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_525/while/lstm_cell_573/Relu_1Relu&lstm_525/while/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_525/while/lstm_cell_573/mul_2Mul*lstm_525/while/lstm_cell_573/Sigmoid_2:y:01lstm_525/while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_525/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_525_while_placeholder_1lstm_525_while_placeholder&lstm_525/while/lstm_cell_573/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_525/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_525/while/addAddV2lstm_525_while_placeholderlstm_525/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_525/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_525/while/add_1AddV2*lstm_525_while_lstm_525_while_loop_counterlstm_525/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_525/while/IdentityIdentitylstm_525/while/add_1:z:0^lstm_525/while/NoOp*
T0*
_output_shapes
: ?
lstm_525/while/Identity_1Identity0lstm_525_while_lstm_525_while_maximum_iterations^lstm_525/while/NoOp*
T0*
_output_shapes
: t
lstm_525/while/Identity_2Identitylstm_525/while/add:z:0^lstm_525/while/NoOp*
T0*
_output_shapes
: ?
lstm_525/while/Identity_3IdentityClstm_525/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_525/while/NoOp*
T0*
_output_shapes
: ?
lstm_525/while/Identity_4Identity&lstm_525/while/lstm_cell_573/mul_2:z:0^lstm_525/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_525/while/Identity_5Identity&lstm_525/while/lstm_cell_573/add_1:z:0^lstm_525/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_525/while/NoOpNoOp4^lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp3^lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp5^lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_525_while_identity lstm_525/while/Identity:output:0"?
lstm_525_while_identity_1"lstm_525/while/Identity_1:output:0"?
lstm_525_while_identity_2"lstm_525/while/Identity_2:output:0"?
lstm_525_while_identity_3"lstm_525/while/Identity_3:output:0"?
lstm_525_while_identity_4"lstm_525/while/Identity_4:output:0"?
lstm_525_while_identity_5"lstm_525/while/Identity_5:output:0"T
'lstm_525_while_lstm_525_strided_slice_1)lstm_525_while_lstm_525_strided_slice_1_0"~
<lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource>lstm_525_while_lstm_cell_573_biasadd_readvariableop_resource_0"?
=lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource?lstm_525_while_lstm_cell_573_matmul_1_readvariableop_resource_0"|
;lstm_525_while_lstm_cell_573_matmul_readvariableop_resource=lstm_525_while_lstm_cell_573_matmul_readvariableop_resource_0"?
clstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensorelstm_525_while_tensorarrayv2read_tensorlistgetitem_lstm_525_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp3lstm_525/while/lstm_cell_573/BiasAdd/ReadVariableOp2h
2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp2lstm_525/while/lstm_cell_573/MatMul/ReadVariableOp2l
4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp4lstm_525/while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_3478920
lstm_525_inputW
Dsequential_175_lstm_525_lstm_cell_573_matmul_readvariableop_resource:	?Y
Fsequential_175_lstm_525_lstm_cell_573_matmul_1_readvariableop_resource:	d?T
Esequential_175_lstm_525_lstm_cell_573_biasadd_readvariableop_resource:	?W
Dsequential_175_lstm_526_lstm_cell_574_matmul_readvariableop_resource:	d?Y
Fsequential_175_lstm_526_lstm_cell_574_matmul_1_readvariableop_resource:	2?T
Esequential_175_lstm_526_lstm_cell_574_biasadd_readvariableop_resource:	?V
Dsequential_175_lstm_527_lstm_cell_575_matmul_readvariableop_resource:2(X
Fsequential_175_lstm_527_lstm_cell_575_matmul_1_readvariableop_resource:
(S
Esequential_175_lstm_527_lstm_cell_575_biasadd_readvariableop_resource:(I
7sequential_175_dense_175_matmul_readvariableop_resource:
F
8sequential_175_dense_175_biasadd_readvariableop_resource:
identity??/sequential_175/dense_175/BiasAdd/ReadVariableOp?.sequential_175/dense_175/MatMul/ReadVariableOp?<sequential_175/lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp?;sequential_175/lstm_525/lstm_cell_573/MatMul/ReadVariableOp?=sequential_175/lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp?sequential_175/lstm_525/while?<sequential_175/lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp?;sequential_175/lstm_526/lstm_cell_574/MatMul/ReadVariableOp?=sequential_175/lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp?sequential_175/lstm_526/while?<sequential_175/lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp?;sequential_175/lstm_527/lstm_cell_575/MatMul/ReadVariableOp?=sequential_175/lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp?sequential_175/lstm_527/while[
sequential_175/lstm_525/ShapeShapelstm_525_input*
T0*
_output_shapes
:u
+sequential_175/lstm_525/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_175/lstm_525/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_175/lstm_525/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_175/lstm_525/strided_sliceStridedSlice&sequential_175/lstm_525/Shape:output:04sequential_175/lstm_525/strided_slice/stack:output:06sequential_175/lstm_525/strided_slice/stack_1:output:06sequential_175/lstm_525/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_175/lstm_525/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_175/lstm_525/zeros/packedPack.sequential_175/lstm_525/strided_slice:output:0/sequential_175/lstm_525/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_175/lstm_525/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_175/lstm_525/zerosFill-sequential_175/lstm_525/zeros/packed:output:0,sequential_175/lstm_525/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_175/lstm_525/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_175/lstm_525/zeros_1/packedPack.sequential_175/lstm_525/strided_slice:output:01sequential_175/lstm_525/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_175/lstm_525/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_175/lstm_525/zeros_1Fill/sequential_175/lstm_525/zeros_1/packed:output:0.sequential_175/lstm_525/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_175/lstm_525/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_175/lstm_525/transpose	Transposelstm_525_input/sequential_175/lstm_525/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_175/lstm_525/Shape_1Shape%sequential_175/lstm_525/transpose:y:0*
T0*
_output_shapes
:w
-sequential_175/lstm_525/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_525/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_175/lstm_525/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_525/strided_slice_1StridedSlice(sequential_175/lstm_525/Shape_1:output:06sequential_175/lstm_525/strided_slice_1/stack:output:08sequential_175/lstm_525/strided_slice_1/stack_1:output:08sequential_175/lstm_525/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_175/lstm_525/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_175/lstm_525/TensorArrayV2TensorListReserve<sequential_175/lstm_525/TensorArrayV2/element_shape:output:00sequential_175/lstm_525/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_175/lstm_525/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_175/lstm_525/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_175/lstm_525/transpose:y:0Vsequential_175/lstm_525/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_175/lstm_525/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_525/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_175/lstm_525/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_525/strided_slice_2StridedSlice%sequential_175/lstm_525/transpose:y:06sequential_175/lstm_525/strided_slice_2/stack:output:08sequential_175/lstm_525/strided_slice_2/stack_1:output:08sequential_175/lstm_525/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_175/lstm_525/lstm_cell_573/MatMul/ReadVariableOpReadVariableOpDsequential_175_lstm_525_lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_175/lstm_525/lstm_cell_573/MatMulMatMul0sequential_175/lstm_525/strided_slice_2:output:0Csequential_175/lstm_525/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_175/lstm_525/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOpFsequential_175_lstm_525_lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_175/lstm_525/lstm_cell_573/MatMul_1MatMul&sequential_175/lstm_525/zeros:output:0Esequential_175/lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_175/lstm_525/lstm_cell_573/addAddV26sequential_175/lstm_525/lstm_cell_573/MatMul:product:08sequential_175/lstm_525/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_175/lstm_525/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOpEsequential_175_lstm_525_lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_175/lstm_525/lstm_cell_573/BiasAddBiasAdd-sequential_175/lstm_525/lstm_cell_573/add:z:0Dsequential_175/lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_175/lstm_525/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_175/lstm_525/lstm_cell_573/splitSplit>sequential_175/lstm_525/lstm_cell_573/split/split_dim:output:06sequential_175/lstm_525/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_175/lstm_525/lstm_cell_573/SigmoidSigmoid4sequential_175/lstm_525/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_175/lstm_525/lstm_cell_573/Sigmoid_1Sigmoid4sequential_175/lstm_525/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_175/lstm_525/lstm_cell_573/mulMul3sequential_175/lstm_525/lstm_cell_573/Sigmoid_1:y:0(sequential_175/lstm_525/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_175/lstm_525/lstm_cell_573/ReluRelu4sequential_175/lstm_525/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_175/lstm_525/lstm_cell_573/mul_1Mul1sequential_175/lstm_525/lstm_cell_573/Sigmoid:y:08sequential_175/lstm_525/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_175/lstm_525/lstm_cell_573/add_1AddV2-sequential_175/lstm_525/lstm_cell_573/mul:z:0/sequential_175/lstm_525/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_175/lstm_525/lstm_cell_573/Sigmoid_2Sigmoid4sequential_175/lstm_525/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_175/lstm_525/lstm_cell_573/Relu_1Relu/sequential_175/lstm_525/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_175/lstm_525/lstm_cell_573/mul_2Mul3sequential_175/lstm_525/lstm_cell_573/Sigmoid_2:y:0:sequential_175/lstm_525/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_175/lstm_525/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_175/lstm_525/TensorArrayV2_1TensorListReserve>sequential_175/lstm_525/TensorArrayV2_1/element_shape:output:00sequential_175/lstm_525/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_175/lstm_525/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_175/lstm_525/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_175/lstm_525/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_175/lstm_525/whileWhile3sequential_175/lstm_525/while/loop_counter:output:09sequential_175/lstm_525/while/maximum_iterations:output:0%sequential_175/lstm_525/time:output:00sequential_175/lstm_525/TensorArrayV2_1:handle:0&sequential_175/lstm_525/zeros:output:0(sequential_175/lstm_525/zeros_1:output:00sequential_175/lstm_525/strided_slice_1:output:0Osequential_175/lstm_525/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_175_lstm_525_lstm_cell_573_matmul_readvariableop_resourceFsequential_175_lstm_525_lstm_cell_573_matmul_1_readvariableop_resourceEsequential_175_lstm_525_lstm_cell_573_biasadd_readvariableop_resource*
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
*sequential_175_lstm_525_while_body_3478552*6
cond.R,
*sequential_175_lstm_525_while_cond_3478551*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_175/lstm_525/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_175/lstm_525/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_175/lstm_525/while:output:3Qsequential_175/lstm_525/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_175/lstm_525/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_175/lstm_525/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_525/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_525/strided_slice_3StridedSliceCsequential_175/lstm_525/TensorArrayV2Stack/TensorListStack:tensor:06sequential_175/lstm_525/strided_slice_3/stack:output:08sequential_175/lstm_525/strided_slice_3/stack_1:output:08sequential_175/lstm_525/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_175/lstm_525/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_175/lstm_525/transpose_1	TransposeCsequential_175/lstm_525/TensorArrayV2Stack/TensorListStack:tensor:01sequential_175/lstm_525/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_175/lstm_525/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_175/lstm_526/ShapeShape'sequential_175/lstm_525/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_175/lstm_526/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_175/lstm_526/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_175/lstm_526/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_175/lstm_526/strided_sliceStridedSlice&sequential_175/lstm_526/Shape:output:04sequential_175/lstm_526/strided_slice/stack:output:06sequential_175/lstm_526/strided_slice/stack_1:output:06sequential_175/lstm_526/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_175/lstm_526/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_175/lstm_526/zeros/packedPack.sequential_175/lstm_526/strided_slice:output:0/sequential_175/lstm_526/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_175/lstm_526/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_175/lstm_526/zerosFill-sequential_175/lstm_526/zeros/packed:output:0,sequential_175/lstm_526/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_175/lstm_526/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_175/lstm_526/zeros_1/packedPack.sequential_175/lstm_526/strided_slice:output:01sequential_175/lstm_526/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_175/lstm_526/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_175/lstm_526/zeros_1Fill/sequential_175/lstm_526/zeros_1/packed:output:0.sequential_175/lstm_526/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_175/lstm_526/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_175/lstm_526/transpose	Transpose'sequential_175/lstm_525/transpose_1:y:0/sequential_175/lstm_526/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_175/lstm_526/Shape_1Shape%sequential_175/lstm_526/transpose:y:0*
T0*
_output_shapes
:w
-sequential_175/lstm_526/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_526/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_175/lstm_526/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_526/strided_slice_1StridedSlice(sequential_175/lstm_526/Shape_1:output:06sequential_175/lstm_526/strided_slice_1/stack:output:08sequential_175/lstm_526/strided_slice_1/stack_1:output:08sequential_175/lstm_526/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_175/lstm_526/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_175/lstm_526/TensorArrayV2TensorListReserve<sequential_175/lstm_526/TensorArrayV2/element_shape:output:00sequential_175/lstm_526/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_175/lstm_526/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_175/lstm_526/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_175/lstm_526/transpose:y:0Vsequential_175/lstm_526/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_175/lstm_526/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_526/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_175/lstm_526/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_526/strided_slice_2StridedSlice%sequential_175/lstm_526/transpose:y:06sequential_175/lstm_526/strided_slice_2/stack:output:08sequential_175/lstm_526/strided_slice_2/stack_1:output:08sequential_175/lstm_526/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_175/lstm_526/lstm_cell_574/MatMul/ReadVariableOpReadVariableOpDsequential_175_lstm_526_lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_175/lstm_526/lstm_cell_574/MatMulMatMul0sequential_175/lstm_526/strided_slice_2:output:0Csequential_175/lstm_526/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_175/lstm_526/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOpFsequential_175_lstm_526_lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_175/lstm_526/lstm_cell_574/MatMul_1MatMul&sequential_175/lstm_526/zeros:output:0Esequential_175/lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_175/lstm_526/lstm_cell_574/addAddV26sequential_175/lstm_526/lstm_cell_574/MatMul:product:08sequential_175/lstm_526/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_175/lstm_526/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOpEsequential_175_lstm_526_lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_175/lstm_526/lstm_cell_574/BiasAddBiasAdd-sequential_175/lstm_526/lstm_cell_574/add:z:0Dsequential_175/lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_175/lstm_526/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_175/lstm_526/lstm_cell_574/splitSplit>sequential_175/lstm_526/lstm_cell_574/split/split_dim:output:06sequential_175/lstm_526/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_175/lstm_526/lstm_cell_574/SigmoidSigmoid4sequential_175/lstm_526/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_175/lstm_526/lstm_cell_574/Sigmoid_1Sigmoid4sequential_175/lstm_526/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_175/lstm_526/lstm_cell_574/mulMul3sequential_175/lstm_526/lstm_cell_574/Sigmoid_1:y:0(sequential_175/lstm_526/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_175/lstm_526/lstm_cell_574/ReluRelu4sequential_175/lstm_526/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_175/lstm_526/lstm_cell_574/mul_1Mul1sequential_175/lstm_526/lstm_cell_574/Sigmoid:y:08sequential_175/lstm_526/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_175/lstm_526/lstm_cell_574/add_1AddV2-sequential_175/lstm_526/lstm_cell_574/mul:z:0/sequential_175/lstm_526/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_175/lstm_526/lstm_cell_574/Sigmoid_2Sigmoid4sequential_175/lstm_526/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_175/lstm_526/lstm_cell_574/Relu_1Relu/sequential_175/lstm_526/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_175/lstm_526/lstm_cell_574/mul_2Mul3sequential_175/lstm_526/lstm_cell_574/Sigmoid_2:y:0:sequential_175/lstm_526/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_175/lstm_526/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_175/lstm_526/TensorArrayV2_1TensorListReserve>sequential_175/lstm_526/TensorArrayV2_1/element_shape:output:00sequential_175/lstm_526/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_175/lstm_526/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_175/lstm_526/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_175/lstm_526/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_175/lstm_526/whileWhile3sequential_175/lstm_526/while/loop_counter:output:09sequential_175/lstm_526/while/maximum_iterations:output:0%sequential_175/lstm_526/time:output:00sequential_175/lstm_526/TensorArrayV2_1:handle:0&sequential_175/lstm_526/zeros:output:0(sequential_175/lstm_526/zeros_1:output:00sequential_175/lstm_526/strided_slice_1:output:0Osequential_175/lstm_526/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_175_lstm_526_lstm_cell_574_matmul_readvariableop_resourceFsequential_175_lstm_526_lstm_cell_574_matmul_1_readvariableop_resourceEsequential_175_lstm_526_lstm_cell_574_biasadd_readvariableop_resource*
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
*sequential_175_lstm_526_while_body_3478691*6
cond.R,
*sequential_175_lstm_526_while_cond_3478690*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_175/lstm_526/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_175/lstm_526/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_175/lstm_526/while:output:3Qsequential_175/lstm_526/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_175/lstm_526/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_175/lstm_526/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_526/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_526/strided_slice_3StridedSliceCsequential_175/lstm_526/TensorArrayV2Stack/TensorListStack:tensor:06sequential_175/lstm_526/strided_slice_3/stack:output:08sequential_175/lstm_526/strided_slice_3/stack_1:output:08sequential_175/lstm_526/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_175/lstm_526/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_175/lstm_526/transpose_1	TransposeCsequential_175/lstm_526/TensorArrayV2Stack/TensorListStack:tensor:01sequential_175/lstm_526/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_175/lstm_526/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_175/lstm_527/ShapeShape'sequential_175/lstm_526/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_175/lstm_527/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_175/lstm_527/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_175/lstm_527/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_175/lstm_527/strided_sliceStridedSlice&sequential_175/lstm_527/Shape:output:04sequential_175/lstm_527/strided_slice/stack:output:06sequential_175/lstm_527/strided_slice/stack_1:output:06sequential_175/lstm_527/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_175/lstm_527/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_175/lstm_527/zeros/packedPack.sequential_175/lstm_527/strided_slice:output:0/sequential_175/lstm_527/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_175/lstm_527/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_175/lstm_527/zerosFill-sequential_175/lstm_527/zeros/packed:output:0,sequential_175/lstm_527/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_175/lstm_527/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_175/lstm_527/zeros_1/packedPack.sequential_175/lstm_527/strided_slice:output:01sequential_175/lstm_527/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_175/lstm_527/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_175/lstm_527/zeros_1Fill/sequential_175/lstm_527/zeros_1/packed:output:0.sequential_175/lstm_527/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_175/lstm_527/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_175/lstm_527/transpose	Transpose'sequential_175/lstm_526/transpose_1:y:0/sequential_175/lstm_527/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_175/lstm_527/Shape_1Shape%sequential_175/lstm_527/transpose:y:0*
T0*
_output_shapes
:w
-sequential_175/lstm_527/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_527/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_175/lstm_527/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_527/strided_slice_1StridedSlice(sequential_175/lstm_527/Shape_1:output:06sequential_175/lstm_527/strided_slice_1/stack:output:08sequential_175/lstm_527/strided_slice_1/stack_1:output:08sequential_175/lstm_527/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_175/lstm_527/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_175/lstm_527/TensorArrayV2TensorListReserve<sequential_175/lstm_527/TensorArrayV2/element_shape:output:00sequential_175/lstm_527/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_175/lstm_527/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_175/lstm_527/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_175/lstm_527/transpose:y:0Vsequential_175/lstm_527/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_175/lstm_527/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_527/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_175/lstm_527/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_527/strided_slice_2StridedSlice%sequential_175/lstm_527/transpose:y:06sequential_175/lstm_527/strided_slice_2/stack:output:08sequential_175/lstm_527/strided_slice_2/stack_1:output:08sequential_175/lstm_527/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_175/lstm_527/lstm_cell_575/MatMul/ReadVariableOpReadVariableOpDsequential_175_lstm_527_lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_175/lstm_527/lstm_cell_575/MatMulMatMul0sequential_175/lstm_527/strided_slice_2:output:0Csequential_175/lstm_527/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_175/lstm_527/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOpFsequential_175_lstm_527_lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_175/lstm_527/lstm_cell_575/MatMul_1MatMul&sequential_175/lstm_527/zeros:output:0Esequential_175/lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_175/lstm_527/lstm_cell_575/addAddV26sequential_175/lstm_527/lstm_cell_575/MatMul:product:08sequential_175/lstm_527/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_175/lstm_527/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOpEsequential_175_lstm_527_lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_175/lstm_527/lstm_cell_575/BiasAddBiasAdd-sequential_175/lstm_527/lstm_cell_575/add:z:0Dsequential_175/lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_175/lstm_527/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_175/lstm_527/lstm_cell_575/splitSplit>sequential_175/lstm_527/lstm_cell_575/split/split_dim:output:06sequential_175/lstm_527/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_175/lstm_527/lstm_cell_575/SigmoidSigmoid4sequential_175/lstm_527/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_175/lstm_527/lstm_cell_575/Sigmoid_1Sigmoid4sequential_175/lstm_527/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_175/lstm_527/lstm_cell_575/mulMul3sequential_175/lstm_527/lstm_cell_575/Sigmoid_1:y:0(sequential_175/lstm_527/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_175/lstm_527/lstm_cell_575/ReluRelu4sequential_175/lstm_527/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_175/lstm_527/lstm_cell_575/mul_1Mul1sequential_175/lstm_527/lstm_cell_575/Sigmoid:y:08sequential_175/lstm_527/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_175/lstm_527/lstm_cell_575/add_1AddV2-sequential_175/lstm_527/lstm_cell_575/mul:z:0/sequential_175/lstm_527/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_175/lstm_527/lstm_cell_575/Sigmoid_2Sigmoid4sequential_175/lstm_527/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_175/lstm_527/lstm_cell_575/Relu_1Relu/sequential_175/lstm_527/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_175/lstm_527/lstm_cell_575/mul_2Mul3sequential_175/lstm_527/lstm_cell_575/Sigmoid_2:y:0:sequential_175/lstm_527/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_175/lstm_527/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_175/lstm_527/TensorArrayV2_1TensorListReserve>sequential_175/lstm_527/TensorArrayV2_1/element_shape:output:00sequential_175/lstm_527/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_175/lstm_527/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_175/lstm_527/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_175/lstm_527/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_175/lstm_527/whileWhile3sequential_175/lstm_527/while/loop_counter:output:09sequential_175/lstm_527/while/maximum_iterations:output:0%sequential_175/lstm_527/time:output:00sequential_175/lstm_527/TensorArrayV2_1:handle:0&sequential_175/lstm_527/zeros:output:0(sequential_175/lstm_527/zeros_1:output:00sequential_175/lstm_527/strided_slice_1:output:0Osequential_175/lstm_527/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_175_lstm_527_lstm_cell_575_matmul_readvariableop_resourceFsequential_175_lstm_527_lstm_cell_575_matmul_1_readvariableop_resourceEsequential_175_lstm_527_lstm_cell_575_biasadd_readvariableop_resource*
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
*sequential_175_lstm_527_while_body_3478830*6
cond.R,
*sequential_175_lstm_527_while_cond_3478829*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_175/lstm_527/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_175/lstm_527/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_175/lstm_527/while:output:3Qsequential_175/lstm_527/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_175/lstm_527/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_175/lstm_527/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_175/lstm_527/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_175/lstm_527/strided_slice_3StridedSliceCsequential_175/lstm_527/TensorArrayV2Stack/TensorListStack:tensor:06sequential_175/lstm_527/strided_slice_3/stack:output:08sequential_175/lstm_527/strided_slice_3/stack_1:output:08sequential_175/lstm_527/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_175/lstm_527/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_175/lstm_527/transpose_1	TransposeCsequential_175/lstm_527/TensorArrayV2Stack/TensorListStack:tensor:01sequential_175/lstm_527/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_175/lstm_527/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_175/dense_175/MatMul/ReadVariableOpReadVariableOp7sequential_175_dense_175_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_175/dense_175/MatMulMatMul0sequential_175/lstm_527/strided_slice_3:output:06sequential_175/dense_175/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_175/dense_175/BiasAdd/ReadVariableOpReadVariableOp8sequential_175_dense_175_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_175/dense_175/BiasAddBiasAdd)sequential_175/dense_175/MatMul:product:07sequential_175/dense_175/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_175/dense_175/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_175/dense_175/BiasAdd/ReadVariableOp/^sequential_175/dense_175/MatMul/ReadVariableOp=^sequential_175/lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp<^sequential_175/lstm_525/lstm_cell_573/MatMul/ReadVariableOp>^sequential_175/lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp^sequential_175/lstm_525/while=^sequential_175/lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp<^sequential_175/lstm_526/lstm_cell_574/MatMul/ReadVariableOp>^sequential_175/lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp^sequential_175/lstm_526/while=^sequential_175/lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp<^sequential_175/lstm_527/lstm_cell_575/MatMul/ReadVariableOp>^sequential_175/lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp^sequential_175/lstm_527/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_175/dense_175/BiasAdd/ReadVariableOp/sequential_175/dense_175/BiasAdd/ReadVariableOp2`
.sequential_175/dense_175/MatMul/ReadVariableOp.sequential_175/dense_175/MatMul/ReadVariableOp2|
<sequential_175/lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp<sequential_175/lstm_525/lstm_cell_573/BiasAdd/ReadVariableOp2z
;sequential_175/lstm_525/lstm_cell_573/MatMul/ReadVariableOp;sequential_175/lstm_525/lstm_cell_573/MatMul/ReadVariableOp2~
=sequential_175/lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp=sequential_175/lstm_525/lstm_cell_573/MatMul_1/ReadVariableOp2>
sequential_175/lstm_525/whilesequential_175/lstm_525/while2|
<sequential_175/lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp<sequential_175/lstm_526/lstm_cell_574/BiasAdd/ReadVariableOp2z
;sequential_175/lstm_526/lstm_cell_574/MatMul/ReadVariableOp;sequential_175/lstm_526/lstm_cell_574/MatMul/ReadVariableOp2~
=sequential_175/lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp=sequential_175/lstm_526/lstm_cell_574/MatMul_1/ReadVariableOp2>
sequential_175/lstm_526/whilesequential_175/lstm_526/while2|
<sequential_175/lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp<sequential_175/lstm_527/lstm_cell_575/BiasAdd/ReadVariableOp2z
;sequential_175/lstm_527/lstm_cell_575/MatMul/ReadVariableOp;sequential_175/lstm_527/lstm_cell_575/MatMul/ReadVariableOp2~
=sequential_175/lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp=sequential_175/lstm_527/lstm_cell_575/MatMul_1/ReadVariableOp2>
sequential_175/lstm_527/whilesequential_175/lstm_527/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_525_input
?
?
*__inference_lstm_526_layer_call_fn_3482715
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3479420|
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
while_cond_3479891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3479891___redundant_placeholder05
1while_while_cond_3479891___redundant_placeholder15
1while_while_cond_3479891___redundant_placeholder25
1while_while_cond_3479891___redundant_placeholder3
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
while_cond_3479541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3479541___redundant_placeholder05
1while_while_cond_3479541___redundant_placeholder15
1while_while_cond_3479541___redundant_placeholder25
1while_while_cond_3479541___redundant_placeholder3
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
?T
?
*sequential_175_lstm_526_while_body_3478691L
Hsequential_175_lstm_526_while_sequential_175_lstm_526_while_loop_counterR
Nsequential_175_lstm_526_while_sequential_175_lstm_526_while_maximum_iterations-
)sequential_175_lstm_526_while_placeholder/
+sequential_175_lstm_526_while_placeholder_1/
+sequential_175_lstm_526_while_placeholder_2/
+sequential_175_lstm_526_while_placeholder_3K
Gsequential_175_lstm_526_while_sequential_175_lstm_526_strided_slice_1_0?
?sequential_175_lstm_526_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_526_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_175_lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0:	d?a
Nsequential_175_lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?\
Msequential_175_lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0:	?*
&sequential_175_lstm_526_while_identity,
(sequential_175_lstm_526_while_identity_1,
(sequential_175_lstm_526_while_identity_2,
(sequential_175_lstm_526_while_identity_3,
(sequential_175_lstm_526_while_identity_4,
(sequential_175_lstm_526_while_identity_5I
Esequential_175_lstm_526_while_sequential_175_lstm_526_strided_slice_1?
?sequential_175_lstm_526_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_526_tensorarrayunstack_tensorlistfromtensor]
Jsequential_175_lstm_526_while_lstm_cell_574_matmul_readvariableop_resource:	d?_
Lsequential_175_lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource:	2?Z
Ksequential_175_lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource:	???Bsequential_175/lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp?Asequential_175/lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp?Csequential_175/lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp?
Osequential_175/lstm_526/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_175/lstm_526/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_175_lstm_526_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_526_tensorarrayunstack_tensorlistfromtensor_0)sequential_175_lstm_526_while_placeholderXsequential_175/lstm_526/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_175/lstm_526/while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOpLsequential_175_lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_175/lstm_526/while/lstm_cell_574/MatMulMatMulHsequential_175/lstm_526/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_175/lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_175/lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOpNsequential_175_lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_175/lstm_526/while/lstm_cell_574/MatMul_1MatMul+sequential_175_lstm_526_while_placeholder_2Ksequential_175/lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_175/lstm_526/while/lstm_cell_574/addAddV2<sequential_175/lstm_526/while/lstm_cell_574/MatMul:product:0>sequential_175/lstm_526/while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_175/lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOpMsequential_175_lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_175/lstm_526/while/lstm_cell_574/BiasAddBiasAdd3sequential_175/lstm_526/while/lstm_cell_574/add:z:0Jsequential_175/lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_175/lstm_526/while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_175/lstm_526/while/lstm_cell_574/splitSplitDsequential_175/lstm_526/while/lstm_cell_574/split/split_dim:output:0<sequential_175/lstm_526/while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_175/lstm_526/while/lstm_cell_574/SigmoidSigmoid:sequential_175/lstm_526/while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_175/lstm_526/while/lstm_cell_574/Sigmoid_1Sigmoid:sequential_175/lstm_526/while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_175/lstm_526/while/lstm_cell_574/mulMul9sequential_175/lstm_526/while/lstm_cell_574/Sigmoid_1:y:0+sequential_175_lstm_526_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_175/lstm_526/while/lstm_cell_574/ReluRelu:sequential_175/lstm_526/while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_175/lstm_526/while/lstm_cell_574/mul_1Mul7sequential_175/lstm_526/while/lstm_cell_574/Sigmoid:y:0>sequential_175/lstm_526/while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_175/lstm_526/while/lstm_cell_574/add_1AddV23sequential_175/lstm_526/while/lstm_cell_574/mul:z:05sequential_175/lstm_526/while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_175/lstm_526/while/lstm_cell_574/Sigmoid_2Sigmoid:sequential_175/lstm_526/while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_175/lstm_526/while/lstm_cell_574/Relu_1Relu5sequential_175/lstm_526/while/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_175/lstm_526/while/lstm_cell_574/mul_2Mul9sequential_175/lstm_526/while/lstm_cell_574/Sigmoid_2:y:0@sequential_175/lstm_526/while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_175/lstm_526/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_175_lstm_526_while_placeholder_1)sequential_175_lstm_526_while_placeholder5sequential_175/lstm_526/while/lstm_cell_574/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_175/lstm_526/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_175/lstm_526/while/addAddV2)sequential_175_lstm_526_while_placeholder,sequential_175/lstm_526/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_175/lstm_526/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_175/lstm_526/while/add_1AddV2Hsequential_175_lstm_526_while_sequential_175_lstm_526_while_loop_counter.sequential_175/lstm_526/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_175/lstm_526/while/IdentityIdentity'sequential_175/lstm_526/while/add_1:z:0#^sequential_175/lstm_526/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_526/while/Identity_1IdentityNsequential_175_lstm_526_while_sequential_175_lstm_526_while_maximum_iterations#^sequential_175/lstm_526/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_526/while/Identity_2Identity%sequential_175/lstm_526/while/add:z:0#^sequential_175/lstm_526/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_526/while/Identity_3IdentityRsequential_175/lstm_526/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_175/lstm_526/while/NoOp*
T0*
_output_shapes
: ?
(sequential_175/lstm_526/while/Identity_4Identity5sequential_175/lstm_526/while/lstm_cell_574/mul_2:z:0#^sequential_175/lstm_526/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_175/lstm_526/while/Identity_5Identity5sequential_175/lstm_526/while/lstm_cell_574/add_1:z:0#^sequential_175/lstm_526/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_175/lstm_526/while/NoOpNoOpC^sequential_175/lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOpB^sequential_175/lstm_526/while/lstm_cell_574/MatMul/ReadVariableOpD^sequential_175/lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_175_lstm_526_while_identity/sequential_175/lstm_526/while/Identity:output:0"]
(sequential_175_lstm_526_while_identity_11sequential_175/lstm_526/while/Identity_1:output:0"]
(sequential_175_lstm_526_while_identity_21sequential_175/lstm_526/while/Identity_2:output:0"]
(sequential_175_lstm_526_while_identity_31sequential_175/lstm_526/while/Identity_3:output:0"]
(sequential_175_lstm_526_while_identity_41sequential_175/lstm_526/while/Identity_4:output:0"]
(sequential_175_lstm_526_while_identity_51sequential_175/lstm_526/while/Identity_5:output:0"?
Ksequential_175_lstm_526_while_lstm_cell_574_biasadd_readvariableop_resourceMsequential_175_lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0"?
Lsequential_175_lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resourceNsequential_175_lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0"?
Jsequential_175_lstm_526_while_lstm_cell_574_matmul_readvariableop_resourceLsequential_175_lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0"?
Esequential_175_lstm_526_while_sequential_175_lstm_526_strided_slice_1Gsequential_175_lstm_526_while_sequential_175_lstm_526_strided_slice_1_0"?
?sequential_175_lstm_526_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_526_tensorarrayunstack_tensorlistfromtensor?sequential_175_lstm_526_while_tensorarrayv2read_tensorlistgetitem_sequential_175_lstm_526_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_175/lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOpBsequential_175/lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp2?
Asequential_175/lstm_526/while/lstm_cell_574/MatMul/ReadVariableOpAsequential_175/lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp2?
Csequential_175/lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOpCsequential_175/lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479687

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
*__inference_lstm_526_layer_call_fn_3482737

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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480269s
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
lstm_526_while_cond_3481431.
*lstm_526_while_lstm_526_while_loop_counter4
0lstm_526_while_lstm_526_while_maximum_iterations
lstm_526_while_placeholder 
lstm_526_while_placeholder_1 
lstm_526_while_placeholder_2 
lstm_526_while_placeholder_30
,lstm_526_while_less_lstm_526_strided_slice_1G
Clstm_526_while_lstm_526_while_cond_3481431___redundant_placeholder0G
Clstm_526_while_lstm_526_while_cond_3481431___redundant_placeholder1G
Clstm_526_while_lstm_526_while_cond_3481431___redundant_placeholder2G
Clstm_526_while_lstm_526_while_cond_3481431___redundant_placeholder3
lstm_526_while_identity
?
lstm_526/while/LessLesslstm_526_while_placeholder,lstm_526_while_less_lstm_526_strided_slice_1*
T0*
_output_shapes
: ]
lstm_526/while/IdentityIdentitylstm_526/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_526_while_identity lstm_526/while/Identity:output:0*(
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
lstm_527_while_cond_3481997.
*lstm_527_while_lstm_527_while_loop_counter4
0lstm_527_while_lstm_527_while_maximum_iterations
lstm_527_while_placeholder 
lstm_527_while_placeholder_1 
lstm_527_while_placeholder_2 
lstm_527_while_placeholder_30
,lstm_527_while_less_lstm_527_strided_slice_1G
Clstm_527_while_lstm_527_while_cond_3481997___redundant_placeholder0G
Clstm_527_while_lstm_527_while_cond_3481997___redundant_placeholder1G
Clstm_527_while_lstm_527_while_cond_3481997___redundant_placeholder2G
Clstm_527_while_lstm_527_while_cond_3481997___redundant_placeholder3
lstm_527_while_identity
?
lstm_527/while/LessLesslstm_527_while_placeholder,lstm_527_while_less_lstm_527_strided_slice_1*
T0*
_output_shapes
: ]
lstm_527/while/IdentityIdentitylstm_527/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_527_while_identity lstm_527/while/Identity:output:0*(
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
*sequential_175_lstm_527_while_cond_3478829L
Hsequential_175_lstm_527_while_sequential_175_lstm_527_while_loop_counterR
Nsequential_175_lstm_527_while_sequential_175_lstm_527_while_maximum_iterations-
)sequential_175_lstm_527_while_placeholder/
+sequential_175_lstm_527_while_placeholder_1/
+sequential_175_lstm_527_while_placeholder_2/
+sequential_175_lstm_527_while_placeholder_3N
Jsequential_175_lstm_527_while_less_sequential_175_lstm_527_strided_slice_1e
asequential_175_lstm_527_while_sequential_175_lstm_527_while_cond_3478829___redundant_placeholder0e
asequential_175_lstm_527_while_sequential_175_lstm_527_while_cond_3478829___redundant_placeholder1e
asequential_175_lstm_527_while_sequential_175_lstm_527_while_cond_3478829___redundant_placeholder2e
asequential_175_lstm_527_while_sequential_175_lstm_527_while_cond_3478829___redundant_placeholder3*
&sequential_175_lstm_527_while_identity
?
"sequential_175/lstm_527/while/LessLess)sequential_175_lstm_527_while_placeholderJsequential_175_lstm_527_while_less_sequential_175_lstm_527_strided_slice_1*
T0*
_output_shapes
: {
&sequential_175/lstm_527/while/IdentityIdentity&sequential_175/lstm_527/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_175_lstm_527_while_identity/sequential_175/lstm_527/while/Identity:output:0*(
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
*__inference_lstm_525_layer_call_fn_3482099
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3479070|
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
while_body_3483236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_574_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_574_matmul_readvariableop_resource:	d?G
4while_lstm_cell_574_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_574_biasadd_readvariableop_resource:	???*while/lstm_cell_574/BiasAdd/ReadVariableOp?)while/lstm_cell_574/MatMul/ReadVariableOp?+while/lstm_cell_574/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_574/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_574/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_574/addAddV2$while/lstm_cell_574/MatMul:product:0&while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_574/BiasAddBiasAddwhile/lstm_cell_574/add:z:02while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_574/splitSplit,while/lstm_cell_574/split/split_dim:output:0$while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_574/SigmoidSigmoid"while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_1Sigmoid"while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mulMul!while/lstm_cell_574/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_574/ReluRelu"while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_1Mulwhile/lstm_cell_574/Sigmoid:y:0&while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/add_1AddV2while/lstm_cell_574/mul:z:0while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_2Sigmoid"while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_574/Relu_1Reluwhile/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_2Mul!while/lstm_cell_574/Sigmoid_2:y:0(while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_574/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_574/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_574/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_574/BiasAdd/ReadVariableOp*^while/lstm_cell_574/MatMul/ReadVariableOp,^while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_574_biasadd_readvariableop_resource5while_lstm_cell_574_biasadd_readvariableop_resource_0"n
4while_lstm_cell_574_matmul_1_readvariableop_resource6while_lstm_cell_574_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_574_matmul_readvariableop_resource4while_lstm_cell_574_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_574/BiasAdd/ReadVariableOp*while/lstm_cell_574/BiasAdd/ReadVariableOp2V
)while/lstm_cell_574/MatMul/ReadVariableOp)while/lstm_cell_574/MatMul/ReadVariableOp2Z
+while/lstm_cell_574/MatMul_1/ReadVariableOp+while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3483709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_575_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_575_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_575_matmul_readvariableop_resource:2(F
4while_lstm_cell_575_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_575_biasadd_readvariableop_resource:(??*while/lstm_cell_575/BiasAdd/ReadVariableOp?)while/lstm_cell_575/MatMul/ReadVariableOp?+while/lstm_cell_575/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_575/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_575/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_575/addAddV2$while/lstm_cell_575/MatMul:product:0&while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_575/BiasAddBiasAddwhile/lstm_cell_575/add:z:02while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_575/splitSplit,while/lstm_cell_575/split/split_dim:output:0$while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_575/SigmoidSigmoid"while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_1Sigmoid"while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mulMul!while/lstm_cell_575/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_575/ReluRelu"while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_1Mulwhile/lstm_cell_575/Sigmoid:y:0&while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/add_1AddV2while/lstm_cell_575/mul:z:0while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_2Sigmoid"while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_575/Relu_1Reluwhile/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_2Mul!while/lstm_cell_575/Sigmoid_2:y:0(while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_575/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_575/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_575/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_575/BiasAdd/ReadVariableOp*^while/lstm_cell_575/MatMul/ReadVariableOp,^while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_575_biasadd_readvariableop_resource5while_lstm_cell_575_biasadd_readvariableop_resource_0"n
4while_lstm_cell_575_matmul_1_readvariableop_resource6while_lstm_cell_575_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_575_matmul_readvariableop_resource4while_lstm_cell_575_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_575/BiasAdd/ReadVariableOp*while/lstm_cell_575/BiasAdd/ReadVariableOp2V
)while/lstm_cell_575/MatMul/ReadVariableOp)while/lstm_cell_575/MatMul/ReadVariableOp2Z
+while/lstm_cell_575/MatMul_1/ReadVariableOp+while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3480444

inputs#
lstm_525_3480120:	?#
lstm_525_3480122:	d?
lstm_525_3480124:	?#
lstm_526_3480270:	d?#
lstm_526_3480272:	2?
lstm_526_3480274:	?"
lstm_527_3480420:2("
lstm_527_3480422:
(
lstm_527_3480424:(#
dense_175_3480438:

dense_175_3480440:
identity??!dense_175/StatefulPartitionedCall? lstm_525/StatefulPartitionedCall? lstm_526/StatefulPartitionedCall? lstm_527/StatefulPartitionedCall?
 lstm_525/StatefulPartitionedCallStatefulPartitionedCallinputslstm_525_3480120lstm_525_3480122lstm_525_3480124*
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480119?
 lstm_526/StatefulPartitionedCallStatefulPartitionedCall)lstm_525/StatefulPartitionedCall:output:0lstm_526_3480270lstm_526_3480272lstm_526_3480274*
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480269?
 lstm_527/StatefulPartitionedCallStatefulPartitionedCall)lstm_526/StatefulPartitionedCall:output:0lstm_527_3480420lstm_527_3480422lstm_527_3480424*
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480419?
!dense_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_527/StatefulPartitionedCall:output:0dense_175_3480438dense_175_3480440*
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
F__inference_dense_175_layer_call_and_return_conditional_losses_3480437y
IdentityIdentity*dense_175/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_175/StatefulPartitionedCall!^lstm_525/StatefulPartitionedCall!^lstm_526/StatefulPartitionedCall!^lstm_527/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_175/StatefulPartitionedCall!dense_175/StatefulPartitionedCall2D
 lstm_525/StatefulPartitionedCall lstm_525/StatefulPartitionedCall2D
 lstm_526/StatefulPartitionedCall lstm_526/StatefulPartitionedCall2D
 lstm_527/StatefulPartitionedCall lstm_527/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3480335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_575_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_575_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_575_matmul_readvariableop_resource:2(F
4while_lstm_cell_575_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_575_biasadd_readvariableop_resource:(??*while/lstm_cell_575/BiasAdd/ReadVariableOp?)while/lstm_cell_575/MatMul/ReadVariableOp?+while/lstm_cell_575/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_575/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_575/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_575/addAddV2$while/lstm_cell_575/MatMul:product:0&while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_575/BiasAddBiasAddwhile/lstm_cell_575/add:z:02while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_575/splitSplit,while/lstm_cell_575/split/split_dim:output:0$while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_575/SigmoidSigmoid"while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_1Sigmoid"while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mulMul!while/lstm_cell_575/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_575/ReluRelu"while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_1Mulwhile/lstm_cell_575/Sigmoid:y:0&while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/add_1AddV2while/lstm_cell_575/mul:z:0while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_2Sigmoid"while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_575/Relu_1Reluwhile/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_2Mul!while/lstm_cell_575/Sigmoid_2:y:0(while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_575/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_575/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_575/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_575/BiasAdd/ReadVariableOp*^while/lstm_cell_575/MatMul/ReadVariableOp,^while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_575_biasadd_readvariableop_resource5while_lstm_cell_575_biasadd_readvariableop_resource_0"n
4while_lstm_cell_575_matmul_1_readvariableop_resource6while_lstm_cell_575_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_575_matmul_readvariableop_resource4while_lstm_cell_575_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_575/BiasAdd/ReadVariableOp*while/lstm_cell_575/BiasAdd/ReadVariableOp2V
)while/lstm_cell_575/MatMul/ReadVariableOp)while/lstm_cell_575/MatMul/ReadVariableOp2Z
+while/lstm_cell_575/MatMul_1/ReadVariableOp+while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483793

inputs>
,lstm_cell_575_matmul_readvariableop_resource:2(@
.lstm_cell_575_matmul_1_readvariableop_resource:
(;
-lstm_cell_575_biasadd_readvariableop_resource:(
identity??$lstm_cell_575/BiasAdd/ReadVariableOp?#lstm_cell_575/MatMul/ReadVariableOp?%lstm_cell_575/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_575/MatMul/ReadVariableOpReadVariableOp,lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_575/MatMulMatMulstrided_slice_2:output:0+lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_575/MatMul_1MatMulzeros:output:0-lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_575/addAddV2lstm_cell_575/MatMul:product:0 lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_575/BiasAddBiasAddlstm_cell_575/add:z:0,lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_575/splitSplit&lstm_cell_575/split/split_dim:output:0lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_575/SigmoidSigmoidlstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_1Sigmoidlstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_575/mulMullstm_cell_575/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_575/ReluRelulstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_1Mullstm_cell_575/Sigmoid:y:0 lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_575/add_1AddV2lstm_cell_575/mul:z:0lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_2Sigmoidlstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_575/Relu_1Relulstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_2Mullstm_cell_575/Sigmoid_2:y:0"lstm_cell_575/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_575_matmul_readvariableop_resource.lstm_cell_575_matmul_1_readvariableop_resource-lstm_cell_575_biasadd_readvariableop_resource*
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
while_body_3483709*
condR
while_cond_3483708*K
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
NoOpNoOp%^lstm_cell_575/BiasAdd/ReadVariableOp$^lstm_cell_575/MatMul/ReadVariableOp&^lstm_cell_575/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_575/BiasAdd/ReadVariableOp$lstm_cell_575/BiasAdd/ReadVariableOp2J
#lstm_cell_575/MatMul/ReadVariableOp#lstm_cell_575/MatMul/ReadVariableOp2N
%lstm_cell_575/MatMul_1/ReadVariableOp%lstm_cell_575/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3480034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3480034___redundant_placeholder05
1while_while_cond_3480034___redundant_placeholder15
1while_while_cond_3480034___redundant_placeholder25
1while_while_cond_3480034___redundant_placeholder3
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

lstm_526_while_body_3481432.
*lstm_526_while_lstm_526_while_loop_counter4
0lstm_526_while_lstm_526_while_maximum_iterations
lstm_526_while_placeholder 
lstm_526_while_placeholder_1 
lstm_526_while_placeholder_2 
lstm_526_while_placeholder_3-
)lstm_526_while_lstm_526_strided_slice_1_0i
elstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0:	d?R
?lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?M
>lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
lstm_526_while_identity
lstm_526_while_identity_1
lstm_526_while_identity_2
lstm_526_while_identity_3
lstm_526_while_identity_4
lstm_526_while_identity_5+
'lstm_526_while_lstm_526_strided_slice_1g
clstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensorN
;lstm_526_while_lstm_cell_574_matmul_readvariableop_resource:	d?P
=lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource:	2?K
<lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource:	???3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp?2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp?4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp?
@lstm_526/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_526/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensor_0lstm_526_while_placeholderIlstm_526/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp=lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_526/while/lstm_cell_574/MatMulMatMul9lstm_526/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp?lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_526/while/lstm_cell_574/MatMul_1MatMullstm_526_while_placeholder_2<lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_526/while/lstm_cell_574/addAddV2-lstm_526/while/lstm_cell_574/MatMul:product:0/lstm_526/while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp>lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_526/while/lstm_cell_574/BiasAddBiasAdd$lstm_526/while/lstm_cell_574/add:z:0;lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_526/while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_526/while/lstm_cell_574/splitSplit5lstm_526/while/lstm_cell_574/split/split_dim:output:0-lstm_526/while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_526/while/lstm_cell_574/SigmoidSigmoid+lstm_526/while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_526/while/lstm_cell_574/Sigmoid_1Sigmoid+lstm_526/while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_526/while/lstm_cell_574/mulMul*lstm_526/while/lstm_cell_574/Sigmoid_1:y:0lstm_526_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_526/while/lstm_cell_574/ReluRelu+lstm_526/while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_526/while/lstm_cell_574/mul_1Mul(lstm_526/while/lstm_cell_574/Sigmoid:y:0/lstm_526/while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_526/while/lstm_cell_574/add_1AddV2$lstm_526/while/lstm_cell_574/mul:z:0&lstm_526/while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_526/while/lstm_cell_574/Sigmoid_2Sigmoid+lstm_526/while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_526/while/lstm_cell_574/Relu_1Relu&lstm_526/while/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_526/while/lstm_cell_574/mul_2Mul*lstm_526/while/lstm_cell_574/Sigmoid_2:y:01lstm_526/while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_526/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_526_while_placeholder_1lstm_526_while_placeholder&lstm_526/while/lstm_cell_574/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_526/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_526/while/addAddV2lstm_526_while_placeholderlstm_526/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_526/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_526/while/add_1AddV2*lstm_526_while_lstm_526_while_loop_counterlstm_526/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_526/while/IdentityIdentitylstm_526/while/add_1:z:0^lstm_526/while/NoOp*
T0*
_output_shapes
: ?
lstm_526/while/Identity_1Identity0lstm_526_while_lstm_526_while_maximum_iterations^lstm_526/while/NoOp*
T0*
_output_shapes
: t
lstm_526/while/Identity_2Identitylstm_526/while/add:z:0^lstm_526/while/NoOp*
T0*
_output_shapes
: ?
lstm_526/while/Identity_3IdentityClstm_526/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_526/while/NoOp*
T0*
_output_shapes
: ?
lstm_526/while/Identity_4Identity&lstm_526/while/lstm_cell_574/mul_2:z:0^lstm_526/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_526/while/Identity_5Identity&lstm_526/while/lstm_cell_574/add_1:z:0^lstm_526/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_526/while/NoOpNoOp4^lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp3^lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp5^lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_526_while_identity lstm_526/while/Identity:output:0"?
lstm_526_while_identity_1"lstm_526/while/Identity_1:output:0"?
lstm_526_while_identity_2"lstm_526/while/Identity_2:output:0"?
lstm_526_while_identity_3"lstm_526/while/Identity_3:output:0"?
lstm_526_while_identity_4"lstm_526/while/Identity_4:output:0"?
lstm_526_while_identity_5"lstm_526/while/Identity_5:output:0"T
'lstm_526_while_lstm_526_strided_slice_1)lstm_526_while_lstm_526_strided_slice_1_0"~
<lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource>lstm_526_while_lstm_cell_574_biasadd_readvariableop_resource_0"?
=lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource?lstm_526_while_lstm_cell_574_matmul_1_readvariableop_resource_0"|
;lstm_526_while_lstm_cell_574_matmul_readvariableop_resource=lstm_526_while_lstm_cell_574_matmul_readvariableop_resource_0"?
clstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensorelstm_526_while_tensorarrayv2read_tensorlistgetitem_lstm_526_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp3lstm_526/while/lstm_cell_574/BiasAdd/ReadVariableOp2h
2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp2lstm_526/while/lstm_cell_574/MatMul/ReadVariableOp2l
4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp4lstm_526/while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483507
inputs_0>
,lstm_cell_575_matmul_readvariableop_resource:2(@
.lstm_cell_575_matmul_1_readvariableop_resource:
(;
-lstm_cell_575_biasadd_readvariableop_resource:(
identity??$lstm_cell_575/BiasAdd/ReadVariableOp?#lstm_cell_575/MatMul/ReadVariableOp?%lstm_cell_575/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_575/MatMul/ReadVariableOpReadVariableOp,lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_575/MatMulMatMulstrided_slice_2:output:0+lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_575/MatMul_1MatMulzeros:output:0-lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_575/addAddV2lstm_cell_575/MatMul:product:0 lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_575/BiasAddBiasAddlstm_cell_575/add:z:0,lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_575/splitSplit&lstm_cell_575/split/split_dim:output:0lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_575/SigmoidSigmoidlstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_1Sigmoidlstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_575/mulMullstm_cell_575/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_575/ReluRelulstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_1Mullstm_cell_575/Sigmoid:y:0 lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_575/add_1AddV2lstm_cell_575/mul:z:0lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_2Sigmoidlstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_575/Relu_1Relulstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_2Mullstm_cell_575/Sigmoid_2:y:0"lstm_cell_575/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_575_matmul_readvariableop_resource.lstm_cell_575_matmul_1_readvariableop_resource-lstm_cell_575_biasadd_readvariableop_resource*
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
while_body_3483423*
condR
while_cond_3483422*K
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
NoOpNoOp%^lstm_cell_575/BiasAdd/ReadVariableOp$^lstm_cell_575/MatMul/ReadVariableOp&^lstm_cell_575/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_575/BiasAdd/ReadVariableOp$lstm_cell_575/BiasAdd/ReadVariableOp2J
#lstm_cell_575/MatMul/ReadVariableOp#lstm_cell_575/MatMul/ReadVariableOp2N
%lstm_cell_575/MatMul_1/ReadVariableOp%lstm_cell_575/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_526_layer_call_and_return_conditional_losses_3482891
inputs_0?
,lstm_cell_574_matmul_readvariableop_resource:	d?A
.lstm_cell_574_matmul_1_readvariableop_resource:	2?<
-lstm_cell_574_biasadd_readvariableop_resource:	?
identity??$lstm_cell_574/BiasAdd/ReadVariableOp?#lstm_cell_574/MatMul/ReadVariableOp?%lstm_cell_574/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_574/MatMul/ReadVariableOpReadVariableOp,lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_574/MatMulMatMulstrided_slice_2:output:0+lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_574/MatMul_1MatMulzeros:output:0-lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_574/addAddV2lstm_cell_574/MatMul:product:0 lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_574/BiasAddBiasAddlstm_cell_574/add:z:0,lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_574/splitSplit&lstm_cell_574/split/split_dim:output:0lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_574/SigmoidSigmoidlstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_1Sigmoidlstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_574/mulMullstm_cell_574/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_574/ReluRelulstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_1Mullstm_cell_574/Sigmoid:y:0 lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_574/add_1AddV2lstm_cell_574/mul:z:0lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_2Sigmoidlstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_574/Relu_1Relulstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_2Mullstm_cell_574/Sigmoid_2:y:0"lstm_cell_574/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_574_matmul_readvariableop_resource.lstm_cell_574_matmul_1_readvariableop_resource-lstm_cell_574_biasadd_readvariableop_resource*
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
while_body_3482807*
condR
while_cond_3482806*K
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
NoOpNoOp%^lstm_cell_574/BiasAdd/ReadVariableOp$^lstm_cell_574/MatMul/ReadVariableOp&^lstm_cell_574/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_574/BiasAdd/ReadVariableOp$lstm_cell_574/BiasAdd/ReadVariableOp2J
#lstm_cell_574/MatMul/ReadVariableOp#lstm_cell_574/MatMul/ReadVariableOp2N
%lstm_cell_574/MatMul_1/ReadVariableOp%lstm_cell_574/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3484249

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
*__inference_lstm_527_layer_call_fn_3483353

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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480419o
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
while_cond_3483235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3483235___redundant_placeholder05
1while_while_cond_3483235___redundant_placeholder15
1while_while_cond_3483235___redundant_placeholder25
1while_while_cond_3483235___redundant_placeholder3
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479483

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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3484053

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
lstm_525_while_cond_3481292.
*lstm_525_while_lstm_525_while_loop_counter4
0lstm_525_while_lstm_525_while_maximum_iterations
lstm_525_while_placeholder 
lstm_525_while_placeholder_1 
lstm_525_while_placeholder_2 
lstm_525_while_placeholder_30
,lstm_525_while_less_lstm_525_strided_slice_1G
Clstm_525_while_lstm_525_while_cond_3481292___redundant_placeholder0G
Clstm_525_while_lstm_525_while_cond_3481292___redundant_placeholder1G
Clstm_525_while_lstm_525_while_cond_3481292___redundant_placeholder2G
Clstm_525_while_lstm_525_while_cond_3481292___redundant_placeholder3
lstm_525_while_identity
?
lstm_525/while/LessLesslstm_525_while_placeholder,lstm_525_while_less_lstm_525_strided_slice_1*
T0*
_output_shapes
: ]
lstm_525/while/IdentityIdentitylstm_525/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_525_while_identity lstm_525/while/Identity:output:0*(
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
%__inference_signature_wrapper_3481180
lstm_525_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_525_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3478920o
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
_user_specified_namelstm_525_input
?
?
while_cond_3480880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3480880___redundant_placeholder05
1while_while_cond_3480880___redundant_placeholder15
1while_while_cond_3480880___redundant_placeholder25
1while_while_cond_3480880___redundant_placeholder3
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
while_body_3479001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_573_3479025_0:	?0
while_lstm_cell_573_3479027_0:	d?,
while_lstm_cell_573_3479029_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_573_3479025:	?.
while_lstm_cell_573_3479027:	d?*
while_lstm_cell_573_3479029:	???+while/lstm_cell_573/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_573/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_573_3479025_0while_lstm_cell_573_3479027_0while_lstm_cell_573_3479029_0*
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3478987?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_573/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_573/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_573/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_573/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_573_3479025while_lstm_cell_573_3479025_0"<
while_lstm_cell_573_3479027while_lstm_cell_573_3479027_0"<
while_lstm_cell_573_3479029while_lstm_cell_573_3479029_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_573/StatefulPartitionedCall+while/lstm_cell_573/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3479350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3479350___redundant_placeholder05
1while_while_cond_3479350___redundant_placeholder15
1while_while_cond_3479350___redundant_placeholder25
1while_while_cond_3479350___redundant_placeholder3
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
while_cond_3482806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3482806___redundant_placeholder05
1while_while_cond_3482806___redundant_placeholder15
1while_while_cond_3482806___redundant_placeholder25
1while_while_cond_3482806___redundant_placeholder3
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
while_body_3482807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_574_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_574_matmul_readvariableop_resource:	d?G
4while_lstm_cell_574_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_574_biasadd_readvariableop_resource:	???*while/lstm_cell_574/BiasAdd/ReadVariableOp?)while/lstm_cell_574/MatMul/ReadVariableOp?+while/lstm_cell_574/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_574/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_574/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_574/addAddV2$while/lstm_cell_574/MatMul:product:0&while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_574/BiasAddBiasAddwhile/lstm_cell_574/add:z:02while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_574/splitSplit,while/lstm_cell_574/split/split_dim:output:0$while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_574/SigmoidSigmoid"while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_1Sigmoid"while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mulMul!while/lstm_cell_574/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_574/ReluRelu"while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_1Mulwhile/lstm_cell_574/Sigmoid:y:0&while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/add_1AddV2while/lstm_cell_574/mul:z:0while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_2Sigmoid"while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_574/Relu_1Reluwhile/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_2Mul!while/lstm_cell_574/Sigmoid_2:y:0(while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_574/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_574/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_574/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_574/BiasAdd/ReadVariableOp*^while/lstm_cell_574/MatMul/ReadVariableOp,^while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_574_biasadd_readvariableop_resource5while_lstm_cell_574_biasadd_readvariableop_resource_0"n
4while_lstm_cell_574_matmul_1_readvariableop_resource6while_lstm_cell_574_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_574_matmul_readvariableop_resource4while_lstm_cell_574_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_574/BiasAdd/ReadVariableOp*while/lstm_cell_574/BiasAdd/ReadVariableOp2V
)while/lstm_cell_574/MatMul/ReadVariableOp)while/lstm_cell_574/MatMul/ReadVariableOp2Z
+while/lstm_cell_574/MatMul_1/ReadVariableOp+while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3483852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_575_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_575_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_575_matmul_readvariableop_resource:2(F
4while_lstm_cell_575_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_575_biasadd_readvariableop_resource:(??*while/lstm_cell_575/BiasAdd/ReadVariableOp?)while/lstm_cell_575/MatMul/ReadVariableOp?+while/lstm_cell_575/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_575/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_575/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_575/addAddV2$while/lstm_cell_575/MatMul:product:0&while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_575/BiasAddBiasAddwhile/lstm_cell_575/add:z:02while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_575/splitSplit,while/lstm_cell_575/split/split_dim:output:0$while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_575/SigmoidSigmoid"while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_1Sigmoid"while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mulMul!while/lstm_cell_575/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_575/ReluRelu"while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_1Mulwhile/lstm_cell_575/Sigmoid:y:0&while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/add_1AddV2while/lstm_cell_575/mul:z:0while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_575/Sigmoid_2Sigmoid"while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_575/Relu_1Reluwhile/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_575/mul_2Mul!while/lstm_cell_575/Sigmoid_2:y:0(while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_575/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_575/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_575/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_575/BiasAdd/ReadVariableOp*^while/lstm_cell_575/MatMul/ReadVariableOp,^while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_575_biasadd_readvariableop_resource5while_lstm_cell_575_biasadd_readvariableop_resource_0"n
4while_lstm_cell_575_matmul_1_readvariableop_resource6while_lstm_cell_575_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_575_matmul_readvariableop_resource4while_lstm_cell_575_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_575/BiasAdd/ReadVariableOp*while/lstm_cell_575/BiasAdd/ReadVariableOp2V
)while/lstm_cell_575/MatMul/ReadVariableOp)while/lstm_cell_575/MatMul/ReadVariableOp2Z
+while/lstm_cell_575/MatMul_1/ReadVariableOp+while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_527_while_body_3481571.
*lstm_527_while_lstm_527_while_loop_counter4
0lstm_527_while_lstm_527_while_maximum_iterations
lstm_527_while_placeholder 
lstm_527_while_placeholder_1 
lstm_527_while_placeholder_2 
lstm_527_while_placeholder_3-
)lstm_527_while_lstm_527_strided_slice_1_0i
elstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0:2(Q
?lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(L
>lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0:(
lstm_527_while_identity
lstm_527_while_identity_1
lstm_527_while_identity_2
lstm_527_while_identity_3
lstm_527_while_identity_4
lstm_527_while_identity_5+
'lstm_527_while_lstm_527_strided_slice_1g
clstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensorM
;lstm_527_while_lstm_cell_575_matmul_readvariableop_resource:2(O
=lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource:
(J
<lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource:(??3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp?2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp?4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp?
@lstm_527/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_527/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensor_0lstm_527_while_placeholderIlstm_527/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp=lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_527/while/lstm_cell_575/MatMulMatMul9lstm_527/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp?lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_527/while/lstm_cell_575/MatMul_1MatMullstm_527_while_placeholder_2<lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_527/while/lstm_cell_575/addAddV2-lstm_527/while/lstm_cell_575/MatMul:product:0/lstm_527/while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp>lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_527/while/lstm_cell_575/BiasAddBiasAdd$lstm_527/while/lstm_cell_575/add:z:0;lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_527/while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_527/while/lstm_cell_575/splitSplit5lstm_527/while/lstm_cell_575/split/split_dim:output:0-lstm_527/while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_527/while/lstm_cell_575/SigmoidSigmoid+lstm_527/while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_527/while/lstm_cell_575/Sigmoid_1Sigmoid+lstm_527/while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_527/while/lstm_cell_575/mulMul*lstm_527/while/lstm_cell_575/Sigmoid_1:y:0lstm_527_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_527/while/lstm_cell_575/ReluRelu+lstm_527/while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_527/while/lstm_cell_575/mul_1Mul(lstm_527/while/lstm_cell_575/Sigmoid:y:0/lstm_527/while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_527/while/lstm_cell_575/add_1AddV2$lstm_527/while/lstm_cell_575/mul:z:0&lstm_527/while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_527/while/lstm_cell_575/Sigmoid_2Sigmoid+lstm_527/while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_527/while/lstm_cell_575/Relu_1Relu&lstm_527/while/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_527/while/lstm_cell_575/mul_2Mul*lstm_527/while/lstm_cell_575/Sigmoid_2:y:01lstm_527/while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_527/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_527_while_placeholder_1lstm_527_while_placeholder&lstm_527/while/lstm_cell_575/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_527/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_527/while/addAddV2lstm_527_while_placeholderlstm_527/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_527/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_527/while/add_1AddV2*lstm_527_while_lstm_527_while_loop_counterlstm_527/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_527/while/IdentityIdentitylstm_527/while/add_1:z:0^lstm_527/while/NoOp*
T0*
_output_shapes
: ?
lstm_527/while/Identity_1Identity0lstm_527_while_lstm_527_while_maximum_iterations^lstm_527/while/NoOp*
T0*
_output_shapes
: t
lstm_527/while/Identity_2Identitylstm_527/while/add:z:0^lstm_527/while/NoOp*
T0*
_output_shapes
: ?
lstm_527/while/Identity_3IdentityClstm_527/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_527/while/NoOp*
T0*
_output_shapes
: ?
lstm_527/while/Identity_4Identity&lstm_527/while/lstm_cell_575/mul_2:z:0^lstm_527/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_527/while/Identity_5Identity&lstm_527/while/lstm_cell_575/add_1:z:0^lstm_527/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_527/while/NoOpNoOp4^lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp3^lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp5^lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_527_while_identity lstm_527/while/Identity:output:0"?
lstm_527_while_identity_1"lstm_527/while/Identity_1:output:0"?
lstm_527_while_identity_2"lstm_527/while/Identity_2:output:0"?
lstm_527_while_identity_3"lstm_527/while/Identity_3:output:0"?
lstm_527_while_identity_4"lstm_527/while/Identity_4:output:0"?
lstm_527_while_identity_5"lstm_527/while/Identity_5:output:0"T
'lstm_527_while_lstm_527_strided_slice_1)lstm_527_while_lstm_527_strided_slice_1_0"~
<lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource>lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0"?
=lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource?lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0"|
;lstm_527_while_lstm_cell_575_matmul_readvariableop_resource=lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0"?
clstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensorelstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp2h
2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp2l
4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_575_layer_call_fn_3484168

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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479687o
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3480419

inputs>
,lstm_cell_575_matmul_readvariableop_resource:2(@
.lstm_cell_575_matmul_1_readvariableop_resource:
(;
-lstm_cell_575_biasadd_readvariableop_resource:(
identity??$lstm_cell_575/BiasAdd/ReadVariableOp?#lstm_cell_575/MatMul/ReadVariableOp?%lstm_cell_575/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_575/MatMul/ReadVariableOpReadVariableOp,lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_575/MatMulMatMulstrided_slice_2:output:0+lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_575/MatMul_1MatMulzeros:output:0-lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_575/addAddV2lstm_cell_575/MatMul:product:0 lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_575/BiasAddBiasAddlstm_cell_575/add:z:0,lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_575/splitSplit&lstm_cell_575/split/split_dim:output:0lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_575/SigmoidSigmoidlstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_1Sigmoidlstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_575/mulMullstm_cell_575/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_575/ReluRelulstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_1Mullstm_cell_575/Sigmoid:y:0 lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_575/add_1AddV2lstm_cell_575/mul:z:0lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_2Sigmoidlstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_575/Relu_1Relulstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_2Mullstm_cell_575/Sigmoid_2:y:0"lstm_cell_575/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_575_matmul_readvariableop_resource.lstm_cell_575_matmul_1_readvariableop_resource-lstm_cell_575_biasadd_readvariableop_resource*
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
while_body_3480335*
condR
while_cond_3480334*K
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
NoOpNoOp%^lstm_cell_575/BiasAdd/ReadVariableOp$^lstm_cell_575/MatMul/ReadVariableOp&^lstm_cell_575/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_575/BiasAdd/ReadVariableOp$lstm_cell_575/BiasAdd/ReadVariableOp2J
#lstm_cell_575/MatMul/ReadVariableOp#lstm_cell_575/MatMul/ReadVariableOp2N
%lstm_cell_575/MatMul_1/ReadVariableOp%lstm_cell_575/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482561

inputs?
,lstm_cell_573_matmul_readvariableop_resource:	?A
.lstm_cell_573_matmul_1_readvariableop_resource:	d?<
-lstm_cell_573_biasadd_readvariableop_resource:	?
identity??$lstm_cell_573/BiasAdd/ReadVariableOp?#lstm_cell_573/MatMul/ReadVariableOp?%lstm_cell_573/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_573/MatMul/ReadVariableOpReadVariableOp,lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_573/MatMulMatMulstrided_slice_2:output:0+lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_573/MatMul_1MatMulzeros:output:0-lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_573/addAddV2lstm_cell_573/MatMul:product:0 lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_573/BiasAddBiasAddlstm_cell_573/add:z:0,lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_573/splitSplit&lstm_cell_573/split/split_dim:output:0lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_573/SigmoidSigmoidlstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_1Sigmoidlstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_573/mulMullstm_cell_573/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_573/ReluRelulstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_1Mullstm_cell_573/Sigmoid:y:0 lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_573/add_1AddV2lstm_cell_573/mul:z:0lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_2Sigmoidlstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_573/Relu_1Relulstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_2Mullstm_cell_573/Sigmoid_2:y:0"lstm_cell_573/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_573_matmul_readvariableop_resource.lstm_cell_573_matmul_1_readvariableop_resource-lstm_cell_573_biasadd_readvariableop_resource*
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
while_body_3482477*
condR
while_cond_3482476*K
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
NoOpNoOp%^lstm_cell_573/BiasAdd/ReadVariableOp$^lstm_cell_573/MatMul/ReadVariableOp&^lstm_cell_573/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_573/BiasAdd/ReadVariableOp$lstm_cell_573/BiasAdd/ReadVariableOp2J
#lstm_cell_573/MatMul/ReadVariableOp#lstm_cell_573/MatMul/ReadVariableOp2N
%lstm_cell_573/MatMul_1/ReadVariableOp%lstm_cell_573/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_527_layer_call_and_return_conditional_losses_3479961

inputs'
lstm_cell_575_3479879:2('
lstm_cell_575_3479881:
(#
lstm_cell_575_3479883:(
identity??%lstm_cell_575/StatefulPartitionedCall?while;
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
%lstm_cell_575/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_575_3479879lstm_cell_575_3479881lstm_cell_575_3479883*
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479833n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_575_3479879lstm_cell_575_3479881lstm_cell_575_3479883*
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
while_body_3479892*
condR
while_cond_3479891*K
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
NoOpNoOp&^lstm_cell_575/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_575/StatefulPartitionedCall%lstm_cell_575/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_3479892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_575_3479916_0:2(/
while_lstm_cell_575_3479918_0:
(+
while_lstm_cell_575_3479920_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_575_3479916:2(-
while_lstm_cell_575_3479918:
()
while_lstm_cell_575_3479920:(??+while/lstm_cell_575/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_575/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_575_3479916_0while_lstm_cell_575_3479918_0while_lstm_cell_575_3479920_0*
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3479833?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_575/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_575/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_575/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_575/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_575_3479916while_lstm_cell_575_3479916_0"<
while_lstm_cell_575_3479918while_lstm_cell_575_3479918_0"<
while_lstm_cell_575_3479920while_lstm_cell_575_3479920_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_575/StatefulPartitionedCall+while/lstm_cell_575/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_527_while_body_3481998.
*lstm_527_while_lstm_527_while_loop_counter4
0lstm_527_while_lstm_527_while_maximum_iterations
lstm_527_while_placeholder 
lstm_527_while_placeholder_1 
lstm_527_while_placeholder_2 
lstm_527_while_placeholder_3-
)lstm_527_while_lstm_527_strided_slice_1_0i
elstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0:2(Q
?lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0:
(L
>lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0:(
lstm_527_while_identity
lstm_527_while_identity_1
lstm_527_while_identity_2
lstm_527_while_identity_3
lstm_527_while_identity_4
lstm_527_while_identity_5+
'lstm_527_while_lstm_527_strided_slice_1g
clstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensorM
;lstm_527_while_lstm_cell_575_matmul_readvariableop_resource:2(O
=lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource:
(J
<lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource:(??3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp?2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp?4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp?
@lstm_527/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_527/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensor_0lstm_527_while_placeholderIlstm_527/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOpReadVariableOp=lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_527/while/lstm_cell_575/MatMulMatMul9lstm_527/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp?lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_527/while/lstm_cell_575/MatMul_1MatMullstm_527_while_placeholder_2<lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_527/while/lstm_cell_575/addAddV2-lstm_527/while/lstm_cell_575/MatMul:product:0/lstm_527/while/lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp>lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_527/while/lstm_cell_575/BiasAddBiasAdd$lstm_527/while/lstm_cell_575/add:z:0;lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_527/while/lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_527/while/lstm_cell_575/splitSplit5lstm_527/while/lstm_cell_575/split/split_dim:output:0-lstm_527/while/lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_527/while/lstm_cell_575/SigmoidSigmoid+lstm_527/while/lstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_527/while/lstm_cell_575/Sigmoid_1Sigmoid+lstm_527/while/lstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_527/while/lstm_cell_575/mulMul*lstm_527/while/lstm_cell_575/Sigmoid_1:y:0lstm_527_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_527/while/lstm_cell_575/ReluRelu+lstm_527/while/lstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_527/while/lstm_cell_575/mul_1Mul(lstm_527/while/lstm_cell_575/Sigmoid:y:0/lstm_527/while/lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_527/while/lstm_cell_575/add_1AddV2$lstm_527/while/lstm_cell_575/mul:z:0&lstm_527/while/lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_527/while/lstm_cell_575/Sigmoid_2Sigmoid+lstm_527/while/lstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_527/while/lstm_cell_575/Relu_1Relu&lstm_527/while/lstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_527/while/lstm_cell_575/mul_2Mul*lstm_527/while/lstm_cell_575/Sigmoid_2:y:01lstm_527/while/lstm_cell_575/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_527/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_527_while_placeholder_1lstm_527_while_placeholder&lstm_527/while/lstm_cell_575/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_527/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_527/while/addAddV2lstm_527_while_placeholderlstm_527/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_527/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_527/while/add_1AddV2*lstm_527_while_lstm_527_while_loop_counterlstm_527/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_527/while/IdentityIdentitylstm_527/while/add_1:z:0^lstm_527/while/NoOp*
T0*
_output_shapes
: ?
lstm_527/while/Identity_1Identity0lstm_527_while_lstm_527_while_maximum_iterations^lstm_527/while/NoOp*
T0*
_output_shapes
: t
lstm_527/while/Identity_2Identitylstm_527/while/add:z:0^lstm_527/while/NoOp*
T0*
_output_shapes
: ?
lstm_527/while/Identity_3IdentityClstm_527/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_527/while/NoOp*
T0*
_output_shapes
: ?
lstm_527/while/Identity_4Identity&lstm_527/while/lstm_cell_575/mul_2:z:0^lstm_527/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_527/while/Identity_5Identity&lstm_527/while/lstm_cell_575/add_1:z:0^lstm_527/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_527/while/NoOpNoOp4^lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp3^lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp5^lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_527_while_identity lstm_527/while/Identity:output:0"?
lstm_527_while_identity_1"lstm_527/while/Identity_1:output:0"?
lstm_527_while_identity_2"lstm_527/while/Identity_2:output:0"?
lstm_527_while_identity_3"lstm_527/while/Identity_3:output:0"?
lstm_527_while_identity_4"lstm_527/while/Identity_4:output:0"?
lstm_527_while_identity_5"lstm_527/while/Identity_5:output:0"T
'lstm_527_while_lstm_527_strided_slice_1)lstm_527_while_lstm_527_strided_slice_1_0"~
<lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource>lstm_527_while_lstm_cell_575_biasadd_readvariableop_resource_0"?
=lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource?lstm_527_while_lstm_cell_575_matmul_1_readvariableop_resource_0"|
;lstm_527_while_lstm_cell_575_matmul_readvariableop_resource=lstm_527_while_lstm_cell_575_matmul_readvariableop_resource_0"?
clstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensorelstm_527_while_tensorarrayv2read_tensorlistgetitem_lstm_527_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp3lstm_527/while/lstm_cell_575/BiasAdd/ReadVariableOp2h
2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp2lstm_527/while/lstm_cell_575/MatMul/ReadVariableOp2l
4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp4lstm_527/while/lstm_cell_575/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3483093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_574_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_574_matmul_readvariableop_resource:	d?G
4while_lstm_cell_574_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_574_biasadd_readvariableop_resource:	???*while/lstm_cell_574/BiasAdd/ReadVariableOp?)while/lstm_cell_574/MatMul/ReadVariableOp?+while/lstm_cell_574/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_574/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_574/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_574/addAddV2$while/lstm_cell_574/MatMul:product:0&while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_574/BiasAddBiasAddwhile/lstm_cell_574/add:z:02while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_574/splitSplit,while/lstm_cell_574/split/split_dim:output:0$while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_574/SigmoidSigmoid"while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_1Sigmoid"while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mulMul!while/lstm_cell_574/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_574/ReluRelu"while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_1Mulwhile/lstm_cell_574/Sigmoid:y:0&while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/add_1AddV2while/lstm_cell_574/mul:z:0while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_2Sigmoid"while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_574/Relu_1Reluwhile/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_2Mul!while/lstm_cell_574/Sigmoid_2:y:0(while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_574/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_574/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_574/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_574/BiasAdd/ReadVariableOp*^while/lstm_cell_574/MatMul/ReadVariableOp,^while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_574_biasadd_readvariableop_resource5while_lstm_cell_574_biasadd_readvariableop_resource_0"n
4while_lstm_cell_574_matmul_1_readvariableop_resource6while_lstm_cell_574_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_574_matmul_readvariableop_resource4while_lstm_cell_574_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_574/BiasAdd/ReadVariableOp*while/lstm_cell_574/BiasAdd/ReadVariableOp2V
)while/lstm_cell_574/MatMul/ReadVariableOp)while/lstm_cell_574/MatMul/ReadVariableOp2Z
+while/lstm_cell_574/MatMul_1/ReadVariableOp+while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_175_layer_call_fn_3481085
lstm_525_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_525_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481033o
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
_user_specified_namelstm_525_input
?J
?
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480269

inputs?
,lstm_cell_574_matmul_readvariableop_resource:	d?A
.lstm_cell_574_matmul_1_readvariableop_resource:	2?<
-lstm_cell_574_biasadd_readvariableop_resource:	?
identity??$lstm_cell_574/BiasAdd/ReadVariableOp?#lstm_cell_574/MatMul/ReadVariableOp?%lstm_cell_574/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_574/MatMul/ReadVariableOpReadVariableOp,lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_574/MatMulMatMulstrided_slice_2:output:0+lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_574/MatMul_1MatMulzeros:output:0-lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_574/addAddV2lstm_cell_574/MatMul:product:0 lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_574/BiasAddBiasAddlstm_cell_574/add:z:0,lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_574/splitSplit&lstm_cell_574/split/split_dim:output:0lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_574/SigmoidSigmoidlstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_1Sigmoidlstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_574/mulMullstm_cell_574/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_574/ReluRelulstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_1Mullstm_cell_574/Sigmoid:y:0 lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_574/add_1AddV2lstm_cell_574/mul:z:0lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_2Sigmoidlstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_574/Relu_1Relulstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_2Mullstm_cell_574/Sigmoid_2:y:0"lstm_cell_574/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_574_matmul_readvariableop_resource.lstm_cell_574_matmul_1_readvariableop_resource-lstm_cell_574_biasadd_readvariableop_resource*
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
while_body_3480185*
condR
while_cond_3480184*K
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
NoOpNoOp%^lstm_cell_574/BiasAdd/ReadVariableOp$^lstm_cell_574/MatMul/ReadVariableOp&^lstm_cell_574/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_574/BiasAdd/ReadVariableOp$lstm_cell_574/BiasAdd/ReadVariableOp2J
#lstm_cell_574/MatMul/ReadVariableOp#lstm_cell_574/MatMul/ReadVariableOp2N
%lstm_cell_574/MatMul_1/ReadVariableOp%lstm_cell_574/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3482620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_573_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_573_matmul_readvariableop_resource:	?G
4while_lstm_cell_573_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_573_biasadd_readvariableop_resource:	???*while/lstm_cell_573/BiasAdd/ReadVariableOp?)while/lstm_cell_573/MatMul/ReadVariableOp?+while/lstm_cell_573/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_573/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_573/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_573/addAddV2$while/lstm_cell_573/MatMul:product:0&while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_573/BiasAddBiasAddwhile/lstm_cell_573/add:z:02while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_573/splitSplit,while/lstm_cell_573/split/split_dim:output:0$while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_573/SigmoidSigmoid"while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_1Sigmoid"while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mulMul!while/lstm_cell_573/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_573/ReluRelu"while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_1Mulwhile/lstm_cell_573/Sigmoid:y:0&while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/add_1AddV2while/lstm_cell_573/mul:z:0while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_2Sigmoid"while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_573/Relu_1Reluwhile/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_2Mul!while/lstm_cell_573/Sigmoid_2:y:0(while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_573/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_573/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_573/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_573/BiasAdd/ReadVariableOp*^while/lstm_cell_573/MatMul/ReadVariableOp,^while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_573_biasadd_readvariableop_resource5while_lstm_cell_573_biasadd_readvariableop_resource_0"n
4while_lstm_cell_573_matmul_1_readvariableop_resource6while_lstm_cell_573_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_573_matmul_readvariableop_resource4while_lstm_cell_573_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_573/BiasAdd/ReadVariableOp*while/lstm_cell_573/BiasAdd/ReadVariableOp2V
)while/lstm_cell_573/MatMul/ReadVariableOp)while/lstm_cell_573/MatMul/ReadVariableOp2Z
+while/lstm_cell_573/MatMul_1/ReadVariableOp+while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_525_layer_call_fn_3482132

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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3480965s
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

?
lstm_527_while_cond_3481570.
*lstm_527_while_lstm_527_while_loop_counter4
0lstm_527_while_lstm_527_while_maximum_iterations
lstm_527_while_placeholder 
lstm_527_while_placeholder_1 
lstm_527_while_placeholder_2 
lstm_527_while_placeholder_30
,lstm_527_while_less_lstm_527_strided_slice_1G
Clstm_527_while_lstm_527_while_cond_3481570___redundant_placeholder0G
Clstm_527_while_lstm_527_while_cond_3481570___redundant_placeholder1G
Clstm_527_while_lstm_527_while_cond_3481570___redundant_placeholder2G
Clstm_527_while_lstm_527_while_cond_3481570___redundant_placeholder3
lstm_527_while_identity
?
lstm_527/while/LessLesslstm_527_while_placeholder,lstm_527_while_less_lstm_527_strided_slice_1*
T0*
_output_shapes
: ]
lstm_527/while/IdentityIdentitylstm_527/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_527_while_identity lstm_527/while/Identity:output:0*(
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3484119

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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482418
inputs_0?
,lstm_cell_573_matmul_readvariableop_resource:	?A
.lstm_cell_573_matmul_1_readvariableop_resource:	d?<
-lstm_cell_573_biasadd_readvariableop_resource:	?
identity??$lstm_cell_573/BiasAdd/ReadVariableOp?#lstm_cell_573/MatMul/ReadVariableOp?%lstm_cell_573/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_573/MatMul/ReadVariableOpReadVariableOp,lstm_cell_573_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_573/MatMulMatMulstrided_slice_2:output:0+lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_573_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_573/MatMul_1MatMulzeros:output:0-lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_573/addAddV2lstm_cell_573/MatMul:product:0 lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_573_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_573/BiasAddBiasAddlstm_cell_573/add:z:0,lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_573/splitSplit&lstm_cell_573/split/split_dim:output:0lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_573/SigmoidSigmoidlstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_1Sigmoidlstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_573/mulMullstm_cell_573/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_573/ReluRelulstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_1Mullstm_cell_573/Sigmoid:y:0 lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_573/add_1AddV2lstm_cell_573/mul:z:0lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_573/Sigmoid_2Sigmoidlstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_573/Relu_1Relulstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_573/mul_2Mullstm_cell_573/Sigmoid_2:y:0"lstm_cell_573/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_573_matmul_readvariableop_resource.lstm_cell_573_matmul_1_readvariableop_resource-lstm_cell_573_biasadd_readvariableop_resource*
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
while_body_3482334*
condR
while_cond_3482333*K
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
NoOpNoOp%^lstm_cell_573/BiasAdd/ReadVariableOp$^lstm_cell_573/MatMul/ReadVariableOp&^lstm_cell_573/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_573/BiasAdd/ReadVariableOp$lstm_cell_573/BiasAdd/ReadVariableOp2J
#lstm_cell_573/MatMul/ReadVariableOp#lstm_cell_573/MatMul/ReadVariableOp2N
%lstm_cell_573/MatMul_1/ReadVariableOp%lstm_cell_573/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3480716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_574_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_574_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_574_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_574_matmul_readvariableop_resource:	d?G
4while_lstm_cell_574_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_574_biasadd_readvariableop_resource:	???*while/lstm_cell_574/BiasAdd/ReadVariableOp?)while/lstm_cell_574/MatMul/ReadVariableOp?+while/lstm_cell_574/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_574/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_574_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_574/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_574_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_574/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_574/addAddV2$while/lstm_cell_574/MatMul:product:0&while/lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_574_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_574/BiasAddBiasAddwhile/lstm_cell_574/add:z:02while/lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_574/splitSplit,while/lstm_cell_574/split/split_dim:output:0$while/lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_574/SigmoidSigmoid"while/lstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_1Sigmoid"while/lstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mulMul!while/lstm_cell_574/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_574/ReluRelu"while/lstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_1Mulwhile/lstm_cell_574/Sigmoid:y:0&while/lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/add_1AddV2while/lstm_cell_574/mul:z:0while/lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_574/Sigmoid_2Sigmoid"while/lstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_574/Relu_1Reluwhile/lstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_574/mul_2Mul!while/lstm_cell_574/Sigmoid_2:y:0(while/lstm_cell_574/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_574/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_574/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_574/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_574/BiasAdd/ReadVariableOp*^while/lstm_cell_574/MatMul/ReadVariableOp,^while/lstm_cell_574/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_574_biasadd_readvariableop_resource5while_lstm_cell_574_biasadd_readvariableop_resource_0"n
4while_lstm_cell_574_matmul_1_readvariableop_resource6while_lstm_cell_574_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_574_matmul_readvariableop_resource4while_lstm_cell_574_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_574/BiasAdd/ReadVariableOp*while/lstm_cell_574/BiasAdd/ReadVariableOp2V
)while/lstm_cell_574/MatMul/ReadVariableOp)while/lstm_cell_574/MatMul/ReadVariableOp2Z
+while/lstm_cell_574/MatMul_1/ReadVariableOp+while/lstm_cell_574/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3480881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_573_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_573_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_573_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_573_matmul_readvariableop_resource:	?G
4while_lstm_cell_573_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_573_biasadd_readvariableop_resource:	???*while/lstm_cell_573/BiasAdd/ReadVariableOp?)while/lstm_cell_573/MatMul/ReadVariableOp?+while/lstm_cell_573/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_573/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_573_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_573/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_573/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_573/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_573_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_573/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_573/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_573/addAddV2$while/lstm_cell_573/MatMul:product:0&while/lstm_cell_573/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_573/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_573_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_573/BiasAddBiasAddwhile/lstm_cell_573/add:z:02while/lstm_cell_573/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_573/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_573/splitSplit,while/lstm_cell_573/split/split_dim:output:0$while/lstm_cell_573/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_573/SigmoidSigmoid"while/lstm_cell_573/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_1Sigmoid"while/lstm_cell_573/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mulMul!while/lstm_cell_573/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_573/ReluRelu"while/lstm_cell_573/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_1Mulwhile/lstm_cell_573/Sigmoid:y:0&while/lstm_cell_573/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/add_1AddV2while/lstm_cell_573/mul:z:0while/lstm_cell_573/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_573/Sigmoid_2Sigmoid"while/lstm_cell_573/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_573/Relu_1Reluwhile/lstm_cell_573/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_573/mul_2Mul!while/lstm_cell_573/Sigmoid_2:y:0(while/lstm_cell_573/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_573/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_573/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_573/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_573/BiasAdd/ReadVariableOp*^while/lstm_cell_573/MatMul/ReadVariableOp,^while/lstm_cell_573/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_573_biasadd_readvariableop_resource5while_lstm_cell_573_biasadd_readvariableop_resource_0"n
4while_lstm_cell_573_matmul_1_readvariableop_resource6while_lstm_cell_573_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_573_matmul_readvariableop_resource4while_lstm_cell_573_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_573/BiasAdd/ReadVariableOp*while/lstm_cell_573/BiasAdd/ReadVariableOp2V
)while/lstm_cell_573/MatMul/ReadVariableOp)while/lstm_cell_573/MatMul/ReadVariableOp2Z
+while/lstm_cell_573/MatMul_1/ReadVariableOp+while/lstm_cell_573/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_526_layer_call_fn_3482748

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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480800s
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
while_cond_3483565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3483565___redundant_placeholder05
1while_while_cond_3483565___redundant_placeholder15
1while_while_cond_3483565___redundant_placeholder25
1while_while_cond_3483565___redundant_placeholder3
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483936

inputs>
,lstm_cell_575_matmul_readvariableop_resource:2(@
.lstm_cell_575_matmul_1_readvariableop_resource:
(;
-lstm_cell_575_biasadd_readvariableop_resource:(
identity??$lstm_cell_575/BiasAdd/ReadVariableOp?#lstm_cell_575/MatMul/ReadVariableOp?%lstm_cell_575/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_575/MatMul/ReadVariableOpReadVariableOp,lstm_cell_575_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_575/MatMulMatMulstrided_slice_2:output:0+lstm_cell_575/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_575/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_575_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_575/MatMul_1MatMulzeros:output:0-lstm_cell_575/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_575/addAddV2lstm_cell_575/MatMul:product:0 lstm_cell_575/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_575/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_575_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_575/BiasAddBiasAddlstm_cell_575/add:z:0,lstm_cell_575/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_575/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_575/splitSplit&lstm_cell_575/split/split_dim:output:0lstm_cell_575/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_575/SigmoidSigmoidlstm_cell_575/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_1Sigmoidlstm_cell_575/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_575/mulMullstm_cell_575/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_575/ReluRelulstm_cell_575/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_1Mullstm_cell_575/Sigmoid:y:0 lstm_cell_575/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_575/add_1AddV2lstm_cell_575/mul:z:0lstm_cell_575/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_575/Sigmoid_2Sigmoidlstm_cell_575/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_575/Relu_1Relulstm_cell_575/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_575/mul_2Mullstm_cell_575/Sigmoid_2:y:0"lstm_cell_575/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_575_matmul_readvariableop_resource.lstm_cell_575_matmul_1_readvariableop_resource-lstm_cell_575_biasadd_readvariableop_resource*
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
while_body_3483852*
condR
while_cond_3483851*K
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
NoOpNoOp%^lstm_cell_575/BiasAdd/ReadVariableOp$^lstm_cell_575/MatMul/ReadVariableOp&^lstm_cell_575/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_575/BiasAdd/ReadVariableOp$lstm_cell_575/BiasAdd/ReadVariableOp2J
#lstm_cell_575/MatMul/ReadVariableOp#lstm_cell_575/MatMul/ReadVariableOp2N
%lstm_cell_575/MatMul_1/ReadVariableOp%lstm_cell_575/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_525_layer_call_and_return_conditional_losses_3479070

inputs(
lstm_cell_573_3478988:	?(
lstm_cell_573_3478990:	d?$
lstm_cell_573_3478992:	?
identity??%lstm_cell_573/StatefulPartitionedCall?while;
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
%lstm_cell_573/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_573_3478988lstm_cell_573_3478990lstm_cell_573_3478992*
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3478987n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_573_3478988lstm_cell_573_3478990lstm_cell_573_3478992*
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
while_body_3479001*
condR
while_cond_3479000*K
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
NoOpNoOp&^lstm_cell_573/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_573/StatefulPartitionedCall%lstm_cell_573/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3478987

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
while_cond_3479191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3479191___redundant_placeholder05
1while_while_cond_3479191___redundant_placeholder15
1while_while_cond_3479191___redundant_placeholder25
1while_while_cond_3479191___redundant_placeholder3
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3480800

inputs?
,lstm_cell_574_matmul_readvariableop_resource:	d?A
.lstm_cell_574_matmul_1_readvariableop_resource:	2?<
-lstm_cell_574_biasadd_readvariableop_resource:	?
identity??$lstm_cell_574/BiasAdd/ReadVariableOp?#lstm_cell_574/MatMul/ReadVariableOp?%lstm_cell_574/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_574/MatMul/ReadVariableOpReadVariableOp,lstm_cell_574_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_574/MatMulMatMulstrided_slice_2:output:0+lstm_cell_574/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_574/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_574_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_574/MatMul_1MatMulzeros:output:0-lstm_cell_574/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_574/addAddV2lstm_cell_574/MatMul:product:0 lstm_cell_574/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_574/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_574_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_574/BiasAddBiasAddlstm_cell_574/add:z:0,lstm_cell_574/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_574/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_574/splitSplit&lstm_cell_574/split/split_dim:output:0lstm_cell_574/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_574/SigmoidSigmoidlstm_cell_574/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_1Sigmoidlstm_cell_574/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_574/mulMullstm_cell_574/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_574/ReluRelulstm_cell_574/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_1Mullstm_cell_574/Sigmoid:y:0 lstm_cell_574/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_574/add_1AddV2lstm_cell_574/mul:z:0lstm_cell_574/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_574/Sigmoid_2Sigmoidlstm_cell_574/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_574/Relu_1Relulstm_cell_574/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_574/mul_2Mullstm_cell_574/Sigmoid_2:y:0"lstm_cell_574/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_574_matmul_readvariableop_resource.lstm_cell_574_matmul_1_readvariableop_resource-lstm_cell_574_biasadd_readvariableop_resource*
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
while_body_3480716*
condR
while_cond_3480715*K
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
NoOpNoOp%^lstm_cell_574/BiasAdd/ReadVariableOp$^lstm_cell_574/MatMul/ReadVariableOp&^lstm_cell_574/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_574/BiasAdd/ReadVariableOp$lstm_cell_574/BiasAdd/ReadVariableOp2J
#lstm_cell_574/MatMul/ReadVariableOp#lstm_cell_574/MatMul/ReadVariableOp2N
%lstm_cell_574/MatMul_1/ReadVariableOp%lstm_cell_574/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3484151

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
while_body_3479542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_574_3479566_0:	d?0
while_lstm_cell_574_3479568_0:	2?,
while_lstm_cell_574_3479570_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_574_3479566:	d?.
while_lstm_cell_574_3479568:	2?*
while_lstm_cell_574_3479570:	???+while/lstm_cell_574/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_574/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_574_3479566_0while_lstm_cell_574_3479568_0while_lstm_cell_574_3479570_0*
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3479483?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_574/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_574/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_574/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_574/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_574_3479566while_lstm_cell_574_3479566_0"<
while_lstm_cell_574_3479568while_lstm_cell_574_3479568_0"<
while_lstm_cell_574_3479570while_lstm_cell_574_3479570_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_574/StatefulPartitionedCall+while/lstm_cell_574/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_175_layer_call_fn_3481234

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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481033o
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
lstm_525_input;
 serving_default_lstm_525_input:0?????????=
	dense_1750
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
2dense_175/kernel
:2dense_175/bias
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
0:.	?2lstm_525/lstm_cell_525/kernel
::8	d?2'lstm_525/lstm_cell_525/recurrent_kernel
*:(?2lstm_525/lstm_cell_525/bias
0:.	d?2lstm_526/lstm_cell_526/kernel
::8	2?2'lstm_526/lstm_cell_526/recurrent_kernel
*:(?2lstm_526/lstm_cell_526/bias
/:-2(2lstm_527/lstm_cell_527/kernel
9:7
(2'lstm_527/lstm_cell_527/recurrent_kernel
):'(2lstm_527/lstm_cell_527/bias
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
2Adam/dense_175/kernel/m
!:2Adam/dense_175/bias/m
5:3	?2$Adam/lstm_525/lstm_cell_525/kernel/m
?:=	d?2.Adam/lstm_525/lstm_cell_525/recurrent_kernel/m
/:-?2"Adam/lstm_525/lstm_cell_525/bias/m
5:3	d?2$Adam/lstm_526/lstm_cell_526/kernel/m
?:=	2?2.Adam/lstm_526/lstm_cell_526/recurrent_kernel/m
/:-?2"Adam/lstm_526/lstm_cell_526/bias/m
4:22(2$Adam/lstm_527/lstm_cell_527/kernel/m
>:<
(2.Adam/lstm_527/lstm_cell_527/recurrent_kernel/m
.:,(2"Adam/lstm_527/lstm_cell_527/bias/m
':%
2Adam/dense_175/kernel/v
!:2Adam/dense_175/bias/v
5:3	?2$Adam/lstm_525/lstm_cell_525/kernel/v
?:=	d?2.Adam/lstm_525/lstm_cell_525/recurrent_kernel/v
/:-?2"Adam/lstm_525/lstm_cell_525/bias/v
5:3	d?2$Adam/lstm_526/lstm_cell_526/kernel/v
?:=	2?2.Adam/lstm_526/lstm_cell_526/recurrent_kernel/v
/:-?2"Adam/lstm_526/lstm_cell_526/bias/v
4:22(2$Adam/lstm_527/lstm_cell_527/kernel/v
>:<
(2.Adam/lstm_527/lstm_cell_527/recurrent_kernel/v
.:,(2"Adam/lstm_527/lstm_cell_527/bias/v
?2?
0__inference_sequential_175_layer_call_fn_3480469
0__inference_sequential_175_layer_call_fn_3481207
0__inference_sequential_175_layer_call_fn_3481234
0__inference_sequential_175_layer_call_fn_3481085?
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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481661
K__inference_sequential_175_layer_call_and_return_conditional_losses_3482088
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481115
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481145?
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
"__inference__wrapped_model_3478920lstm_525_input"?
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
*__inference_lstm_525_layer_call_fn_3482099
*__inference_lstm_525_layer_call_fn_3482110
*__inference_lstm_525_layer_call_fn_3482121
*__inference_lstm_525_layer_call_fn_3482132?
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482275
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482418
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482561
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482704?
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
*__inference_lstm_526_layer_call_fn_3482715
*__inference_lstm_526_layer_call_fn_3482726
*__inference_lstm_526_layer_call_fn_3482737
*__inference_lstm_526_layer_call_fn_3482748?
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3482891
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483034
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483177
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483320?
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
*__inference_lstm_527_layer_call_fn_3483331
*__inference_lstm_527_layer_call_fn_3483342
*__inference_lstm_527_layer_call_fn_3483353
*__inference_lstm_527_layer_call_fn_3483364?
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483507
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483650
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483793
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483936?
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
+__inference_dense_175_layer_call_fn_3483945?
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
F__inference_dense_175_layer_call_and_return_conditional_losses_3483955?
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
%__inference_signature_wrapper_3481180lstm_525_input"?
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
/__inference_lstm_cell_573_layer_call_fn_3483972
/__inference_lstm_cell_573_layer_call_fn_3483989?
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3484021
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3484053?
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
/__inference_lstm_cell_574_layer_call_fn_3484070
/__inference_lstm_cell_574_layer_call_fn_3484087?
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3484119
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3484151?
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
/__inference_lstm_cell_575_layer_call_fn_3484168
/__inference_lstm_cell_575_layer_call_fn_3484185?
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3484217
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3484249?
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
"__inference__wrapped_model_3478920?-./012345!";?8
1?.
,?)
lstm_525_input?????????
? "5?2
0
	dense_175#? 
	dense_175??????????
F__inference_dense_175_layer_call_and_return_conditional_losses_3483955\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_175_layer_call_fn_3483945O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482275?-./O?L
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482418?-./O?L
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482561q-./??<
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
E__inference_lstm_525_layer_call_and_return_conditional_losses_3482704q-./??<
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
*__inference_lstm_525_layer_call_fn_3482099}-./O?L
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
*__inference_lstm_525_layer_call_fn_3482110}-./O?L
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
*__inference_lstm_525_layer_call_fn_3482121d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_525_layer_call_fn_3482132d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_526_layer_call_and_return_conditional_losses_3482891?012O?L
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483034?012O?L
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483177q012??<
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
E__inference_lstm_526_layer_call_and_return_conditional_losses_3483320q012??<
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
*__inference_lstm_526_layer_call_fn_3482715}012O?L
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
*__inference_lstm_526_layer_call_fn_3482726}012O?L
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
*__inference_lstm_526_layer_call_fn_3482737d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_526_layer_call_fn_3482748d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483507}345O?L
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483650}345O?L
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483793m345??<
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
E__inference_lstm_527_layer_call_and_return_conditional_losses_3483936m345??<
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
*__inference_lstm_527_layer_call_fn_3483331p345O?L
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
*__inference_lstm_527_layer_call_fn_3483342p345O?L
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
*__inference_lstm_527_layer_call_fn_3483353`345??<
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
*__inference_lstm_527_layer_call_fn_3483364`345??<
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3484021?-./??}
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
J__inference_lstm_cell_573_layer_call_and_return_conditional_losses_3484053?-./??}
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
/__inference_lstm_cell_573_layer_call_fn_3483972?-./??}
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
/__inference_lstm_cell_573_layer_call_fn_3483989?-./??}
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3484119?012??}
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
J__inference_lstm_cell_574_layer_call_and_return_conditional_losses_3484151?012??}
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
/__inference_lstm_cell_574_layer_call_fn_3484070?012??}
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
/__inference_lstm_cell_574_layer_call_fn_3484087?012??}
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3484217?345??}
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
J__inference_lstm_cell_575_layer_call_and_return_conditional_losses_3484249?345??}
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
/__inference_lstm_cell_575_layer_call_fn_3484168?345??}
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
/__inference_lstm_cell_575_layer_call_fn_3484185?345??}
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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481115y-./012345!"C?@
9?6
,?)
lstm_525_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481145y-./012345!"C?@
9?6
,?)
lstm_525_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_175_layer_call_and_return_conditional_losses_3481661q-./012345!";?8
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
K__inference_sequential_175_layer_call_and_return_conditional_losses_3482088q-./012345!";?8
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
0__inference_sequential_175_layer_call_fn_3480469l-./012345!"C?@
9?6
,?)
lstm_525_input?????????
p 

 
? "???????????
0__inference_sequential_175_layer_call_fn_3481085l-./012345!"C?@
9?6
,?)
lstm_525_input?????????
p

 
? "???????????
0__inference_sequential_175_layer_call_fn_3481207d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_175_layer_call_fn_3481234d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3481180?-./012345!"M?J
? 
C?@
>
lstm_525_input,?)
lstm_525_input?????????"5?2
0
	dense_175#? 
	dense_175?????????