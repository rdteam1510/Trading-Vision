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
dense_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_164/kernel
u
$dense_164/kernel/Read/ReadVariableOpReadVariableOpdense_164/kernel*
_output_shapes

:
*
dtype0
t
dense_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_164/bias
m
"dense_164/bias/Read/ReadVariableOpReadVariableOpdense_164/bias*
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
lstm_492/lstm_cell_492/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_492/lstm_cell_492/kernel
?
1lstm_492/lstm_cell_492/kernel/Read/ReadVariableOpReadVariableOplstm_492/lstm_cell_492/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_492/lstm_cell_492/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_492/lstm_cell_492/recurrent_kernel
?
;lstm_492/lstm_cell_492/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_492/lstm_cell_492/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_492/lstm_cell_492/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_492/lstm_cell_492/bias
?
/lstm_492/lstm_cell_492/bias/Read/ReadVariableOpReadVariableOplstm_492/lstm_cell_492/bias*
_output_shapes	
:?*
dtype0
?
lstm_493/lstm_cell_493/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_493/lstm_cell_493/kernel
?
1lstm_493/lstm_cell_493/kernel/Read/ReadVariableOpReadVariableOplstm_493/lstm_cell_493/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_493/lstm_cell_493/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_493/lstm_cell_493/recurrent_kernel
?
;lstm_493/lstm_cell_493/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_493/lstm_cell_493/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_493/lstm_cell_493/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_493/lstm_cell_493/bias
?
/lstm_493/lstm_cell_493/bias/Read/ReadVariableOpReadVariableOplstm_493/lstm_cell_493/bias*
_output_shapes	
:?*
dtype0
?
lstm_494/lstm_cell_494/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_494/lstm_cell_494/kernel
?
1lstm_494/lstm_cell_494/kernel/Read/ReadVariableOpReadVariableOplstm_494/lstm_cell_494/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_494/lstm_cell_494/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_494/lstm_cell_494/recurrent_kernel
?
;lstm_494/lstm_cell_494/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_494/lstm_cell_494/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_494/lstm_cell_494/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_494/lstm_cell_494/bias
?
/lstm_494/lstm_cell_494/bias/Read/ReadVariableOpReadVariableOplstm_494/lstm_cell_494/bias*
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
Adam/dense_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_164/kernel/m
?
+Adam/dense_164/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_164/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_164/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_164/bias/m
{
)Adam/dense_164/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_164/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_492/lstm_cell_492/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_492/lstm_cell_492/kernel/m
?
8Adam/lstm_492/lstm_cell_492/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_492/lstm_cell_492/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_492/lstm_cell_492/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_492/lstm_cell_492/recurrent_kernel/m
?
BAdam/lstm_492/lstm_cell_492/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_492/lstm_cell_492/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_492/lstm_cell_492/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_492/lstm_cell_492/bias/m
?
6Adam/lstm_492/lstm_cell_492/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_492/lstm_cell_492/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_493/lstm_cell_493/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_493/lstm_cell_493/kernel/m
?
8Adam/lstm_493/lstm_cell_493/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_493/lstm_cell_493/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_493/lstm_cell_493/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_493/lstm_cell_493/recurrent_kernel/m
?
BAdam/lstm_493/lstm_cell_493/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_493/lstm_cell_493/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_493/lstm_cell_493/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_493/lstm_cell_493/bias/m
?
6Adam/lstm_493/lstm_cell_493/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_493/lstm_cell_493/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_494/lstm_cell_494/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_494/lstm_cell_494/kernel/m
?
8Adam/lstm_494/lstm_cell_494/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_494/lstm_cell_494/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_494/lstm_cell_494/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_494/lstm_cell_494/recurrent_kernel/m
?
BAdam/lstm_494/lstm_cell_494/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_494/lstm_cell_494/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_494/lstm_cell_494/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_494/lstm_cell_494/bias/m
?
6Adam/lstm_494/lstm_cell_494/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_494/lstm_cell_494/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_164/kernel/v
?
+Adam/dense_164/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_164/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_164/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_164/bias/v
{
)Adam/dense_164/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_164/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_492/lstm_cell_492/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_492/lstm_cell_492/kernel/v
?
8Adam/lstm_492/lstm_cell_492/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_492/lstm_cell_492/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_492/lstm_cell_492/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_492/lstm_cell_492/recurrent_kernel/v
?
BAdam/lstm_492/lstm_cell_492/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_492/lstm_cell_492/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_492/lstm_cell_492/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_492/lstm_cell_492/bias/v
?
6Adam/lstm_492/lstm_cell_492/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_492/lstm_cell_492/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_493/lstm_cell_493/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_493/lstm_cell_493/kernel/v
?
8Adam/lstm_493/lstm_cell_493/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_493/lstm_cell_493/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_493/lstm_cell_493/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_493/lstm_cell_493/recurrent_kernel/v
?
BAdam/lstm_493/lstm_cell_493/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_493/lstm_cell_493/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_493/lstm_cell_493/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_493/lstm_cell_493/bias/v
?
6Adam/lstm_493/lstm_cell_493/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_493/lstm_cell_493/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_494/lstm_cell_494/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_494/lstm_cell_494/kernel/v
?
8Adam/lstm_494/lstm_cell_494/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_494/lstm_cell_494/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_494/lstm_cell_494/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_494/lstm_cell_494/recurrent_kernel/v
?
BAdam/lstm_494/lstm_cell_494/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_494/lstm_cell_494/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_494/lstm_cell_494/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_494/lstm_cell_494/bias/v
?
6Adam/lstm_494/lstm_cell_494/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_494/lstm_cell_494/bias/v*
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
VARIABLE_VALUEdense_164/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_164/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_492/lstm_cell_492/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_492/lstm_cell_492/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_492/lstm_cell_492/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_493/lstm_cell_493/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_493/lstm_cell_493/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_493/lstm_cell_493/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_494/lstm_cell_494/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_494/lstm_cell_494/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_494/lstm_cell_494/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_164/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_164/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_492/lstm_cell_492/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_492/lstm_cell_492/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_492/lstm_cell_492/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_493/lstm_cell_493/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_493/lstm_cell_493/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_493/lstm_cell_493/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_494/lstm_cell_494/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_494/lstm_cell_494/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_494/lstm_cell_494/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_164/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_164/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_492/lstm_cell_492/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_492/lstm_cell_492/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_492/lstm_cell_492/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_493/lstm_cell_493/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_493/lstm_cell_493/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_493/lstm_cell_493/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_494/lstm_cell_494/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_494/lstm_cell_494/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_494/lstm_cell_494/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_492_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_492_inputlstm_492/lstm_cell_492/kernel'lstm_492/lstm_cell_492/recurrent_kernellstm_492/lstm_cell_492/biaslstm_493/lstm_cell_493/kernel'lstm_493/lstm_cell_493/recurrent_kernellstm_493/lstm_cell_493/biaslstm_494/lstm_cell_494/kernel'lstm_494/lstm_cell_494/recurrent_kernellstm_494/lstm_cell_494/biasdense_164/kerneldense_164/bias*
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
%__inference_signature_wrapper_2571662
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_164/kernel/Read/ReadVariableOp"dense_164/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_492/lstm_cell_492/kernel/Read/ReadVariableOp;lstm_492/lstm_cell_492/recurrent_kernel/Read/ReadVariableOp/lstm_492/lstm_cell_492/bias/Read/ReadVariableOp1lstm_493/lstm_cell_493/kernel/Read/ReadVariableOp;lstm_493/lstm_cell_493/recurrent_kernel/Read/ReadVariableOp/lstm_493/lstm_cell_493/bias/Read/ReadVariableOp1lstm_494/lstm_cell_494/kernel/Read/ReadVariableOp;lstm_494/lstm_cell_494/recurrent_kernel/Read/ReadVariableOp/lstm_494/lstm_cell_494/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_164/kernel/m/Read/ReadVariableOp)Adam/dense_164/bias/m/Read/ReadVariableOp8Adam/lstm_492/lstm_cell_492/kernel/m/Read/ReadVariableOpBAdam/lstm_492/lstm_cell_492/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_492/lstm_cell_492/bias/m/Read/ReadVariableOp8Adam/lstm_493/lstm_cell_493/kernel/m/Read/ReadVariableOpBAdam/lstm_493/lstm_cell_493/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_493/lstm_cell_493/bias/m/Read/ReadVariableOp8Adam/lstm_494/lstm_cell_494/kernel/m/Read/ReadVariableOpBAdam/lstm_494/lstm_cell_494/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_494/lstm_cell_494/bias/m/Read/ReadVariableOp+Adam/dense_164/kernel/v/Read/ReadVariableOp)Adam/dense_164/bias/v/Read/ReadVariableOp8Adam/lstm_492/lstm_cell_492/kernel/v/Read/ReadVariableOpBAdam/lstm_492/lstm_cell_492/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_492/lstm_cell_492/bias/v/Read/ReadVariableOp8Adam/lstm_493/lstm_cell_493/kernel/v/Read/ReadVariableOpBAdam/lstm_493/lstm_cell_493/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_493/lstm_cell_493/bias/v/Read/ReadVariableOp8Adam/lstm_494/lstm_cell_494/kernel/v/Read/ReadVariableOpBAdam/lstm_494/lstm_cell_494/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_494/lstm_cell_494/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2574874
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_164/kerneldense_164/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_492/lstm_cell_492/kernel'lstm_492/lstm_cell_492/recurrent_kernellstm_492/lstm_cell_492/biaslstm_493/lstm_cell_493/kernel'lstm_493/lstm_cell_493/recurrent_kernellstm_493/lstm_cell_493/biaslstm_494/lstm_cell_494/kernel'lstm_494/lstm_cell_494/recurrent_kernellstm_494/lstm_cell_494/biastotalcountAdam/dense_164/kernel/mAdam/dense_164/bias/m$Adam/lstm_492/lstm_cell_492/kernel/m.Adam/lstm_492/lstm_cell_492/recurrent_kernel/m"Adam/lstm_492/lstm_cell_492/bias/m$Adam/lstm_493/lstm_cell_493/kernel/m.Adam/lstm_493/lstm_cell_493/recurrent_kernel/m"Adam/lstm_493/lstm_cell_493/bias/m$Adam/lstm_494/lstm_cell_494/kernel/m.Adam/lstm_494/lstm_cell_494/recurrent_kernel/m"Adam/lstm_494/lstm_cell_494/bias/mAdam/dense_164/kernel/vAdam/dense_164/bias/v$Adam/lstm_492/lstm_cell_492/kernel/v.Adam/lstm_492/lstm_cell_492/recurrent_kernel/v"Adam/lstm_492/lstm_cell_492/bias/v$Adam/lstm_493/lstm_cell_493/kernel/v.Adam/lstm_493/lstm_cell_493/recurrent_kernel/v"Adam/lstm_493/lstm_cell_493/bias/v$Adam/lstm_494/lstm_cell_494/kernel/v.Adam/lstm_494/lstm_cell_494/recurrent_kernel/v"Adam/lstm_494/lstm_cell_494/bias/v*4
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
#__inference__traced_restore_2575004??+
?

?
lstm_494_while_cond_2572052.
*lstm_494_while_lstm_494_while_loop_counter4
0lstm_494_while_lstm_494_while_maximum_iterations
lstm_494_while_placeholder 
lstm_494_while_placeholder_1 
lstm_494_while_placeholder_2 
lstm_494_while_placeholder_30
,lstm_494_while_less_lstm_494_strided_slice_1G
Clstm_494_while_lstm_494_while_cond_2572052___redundant_placeholder0G
Clstm_494_while_lstm_494_while_cond_2572052___redundant_placeholder1G
Clstm_494_while_lstm_494_while_cond_2572052___redundant_placeholder2G
Clstm_494_while_lstm_494_while_cond_2572052___redundant_placeholder3
lstm_494_while_identity
?
lstm_494/while/LessLesslstm_494_while_placeholder,lstm_494_while_less_lstm_494_strided_slice_1*
T0*
_output_shapes
: ]
lstm_494/while/IdentityIdentitylstm_494/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_494_while_identity lstm_494/while/Identity:output:0*(
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2574633

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
?
*sequential_164_lstm_492_while_cond_2569033L
Hsequential_164_lstm_492_while_sequential_164_lstm_492_while_loop_counterR
Nsequential_164_lstm_492_while_sequential_164_lstm_492_while_maximum_iterations-
)sequential_164_lstm_492_while_placeholder/
+sequential_164_lstm_492_while_placeholder_1/
+sequential_164_lstm_492_while_placeholder_2/
+sequential_164_lstm_492_while_placeholder_3N
Jsequential_164_lstm_492_while_less_sequential_164_lstm_492_strided_slice_1e
asequential_164_lstm_492_while_sequential_164_lstm_492_while_cond_2569033___redundant_placeholder0e
asequential_164_lstm_492_while_sequential_164_lstm_492_while_cond_2569033___redundant_placeholder1e
asequential_164_lstm_492_while_sequential_164_lstm_492_while_cond_2569033___redundant_placeholder2e
asequential_164_lstm_492_while_sequential_164_lstm_492_while_cond_2569033___redundant_placeholder3*
&sequential_164_lstm_492_while_identity
?
"sequential_164/lstm_492/while/LessLess)sequential_164_lstm_492_while_placeholderJsequential_164_lstm_492_while_less_sequential_164_lstm_492_strided_slice_1*
T0*
_output_shapes
: {
&sequential_164/lstm_492/while/IdentityIdentity&sequential_164/lstm_492/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_164_lstm_492_while_identity/sequential_164/lstm_492/while/Identity:output:0*(
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
0__inference_sequential_164_layer_call_fn_2571716

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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571515o
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
*__inference_lstm_492_layer_call_fn_2572592
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2569743|
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
?
?
K__inference_sequential_164_layer_call_and_return_conditional_losses_2570926

inputs#
lstm_492_2570602:	?#
lstm_492_2570604:	d?
lstm_492_2570606:	?#
lstm_493_2570752:	d?#
lstm_493_2570754:	2?
lstm_493_2570756:	?"
lstm_494_2570902:2("
lstm_494_2570904:
(
lstm_494_2570906:(#
dense_164_2570920:

dense_164_2570922:
identity??!dense_164/StatefulPartitionedCall? lstm_492/StatefulPartitionedCall? lstm_493/StatefulPartitionedCall? lstm_494/StatefulPartitionedCall?
 lstm_492/StatefulPartitionedCallStatefulPartitionedCallinputslstm_492_2570602lstm_492_2570604lstm_492_2570606*
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2570601?
 lstm_493/StatefulPartitionedCallStatefulPartitionedCall)lstm_492/StatefulPartitionedCall:output:0lstm_493_2570752lstm_493_2570754lstm_493_2570756*
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2570751?
 lstm_494/StatefulPartitionedCallStatefulPartitionedCall)lstm_493/StatefulPartitionedCall:output:0lstm_494_2570902lstm_494_2570904lstm_494_2570906*
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570901?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_494/StatefulPartitionedCall:output:0dense_164_2570920dense_164_2570922*
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
F__inference_dense_164_layer_call_and_return_conditional_losses_2570919y
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_164/StatefulPartitionedCall!^lstm_492/StatefulPartitionedCall!^lstm_493/StatefulPartitionedCall!^lstm_494/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2D
 lstm_492/StatefulPartitionedCall lstm_492/StatefulPartitionedCall2D
 lstm_493/StatefulPartitionedCall lstm_493/StatefulPartitionedCall2D
 lstm_494/StatefulPartitionedCall lstm_494/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_2569402
lstm_492_inputW
Dsequential_164_lstm_492_lstm_cell_423_matmul_readvariableop_resource:	?Y
Fsequential_164_lstm_492_lstm_cell_423_matmul_1_readvariableop_resource:	d?T
Esequential_164_lstm_492_lstm_cell_423_biasadd_readvariableop_resource:	?W
Dsequential_164_lstm_493_lstm_cell_424_matmul_readvariableop_resource:	d?Y
Fsequential_164_lstm_493_lstm_cell_424_matmul_1_readvariableop_resource:	2?T
Esequential_164_lstm_493_lstm_cell_424_biasadd_readvariableop_resource:	?V
Dsequential_164_lstm_494_lstm_cell_425_matmul_readvariableop_resource:2(X
Fsequential_164_lstm_494_lstm_cell_425_matmul_1_readvariableop_resource:
(S
Esequential_164_lstm_494_lstm_cell_425_biasadd_readvariableop_resource:(I
7sequential_164_dense_164_matmul_readvariableop_resource:
F
8sequential_164_dense_164_biasadd_readvariableop_resource:
identity??/sequential_164/dense_164/BiasAdd/ReadVariableOp?.sequential_164/dense_164/MatMul/ReadVariableOp?<sequential_164/lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp?;sequential_164/lstm_492/lstm_cell_423/MatMul/ReadVariableOp?=sequential_164/lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp?sequential_164/lstm_492/while?<sequential_164/lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp?;sequential_164/lstm_493/lstm_cell_424/MatMul/ReadVariableOp?=sequential_164/lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp?sequential_164/lstm_493/while?<sequential_164/lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp?;sequential_164/lstm_494/lstm_cell_425/MatMul/ReadVariableOp?=sequential_164/lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp?sequential_164/lstm_494/while[
sequential_164/lstm_492/ShapeShapelstm_492_input*
T0*
_output_shapes
:u
+sequential_164/lstm_492/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_164/lstm_492/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_164/lstm_492/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_164/lstm_492/strided_sliceStridedSlice&sequential_164/lstm_492/Shape:output:04sequential_164/lstm_492/strided_slice/stack:output:06sequential_164/lstm_492/strided_slice/stack_1:output:06sequential_164/lstm_492/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_164/lstm_492/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_164/lstm_492/zeros/packedPack.sequential_164/lstm_492/strided_slice:output:0/sequential_164/lstm_492/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_164/lstm_492/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_164/lstm_492/zerosFill-sequential_164/lstm_492/zeros/packed:output:0,sequential_164/lstm_492/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_164/lstm_492/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_164/lstm_492/zeros_1/packedPack.sequential_164/lstm_492/strided_slice:output:01sequential_164/lstm_492/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_164/lstm_492/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_164/lstm_492/zeros_1Fill/sequential_164/lstm_492/zeros_1/packed:output:0.sequential_164/lstm_492/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_164/lstm_492/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_164/lstm_492/transpose	Transposelstm_492_input/sequential_164/lstm_492/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_164/lstm_492/Shape_1Shape%sequential_164/lstm_492/transpose:y:0*
T0*
_output_shapes
:w
-sequential_164/lstm_492/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_492/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_164/lstm_492/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_492/strided_slice_1StridedSlice(sequential_164/lstm_492/Shape_1:output:06sequential_164/lstm_492/strided_slice_1/stack:output:08sequential_164/lstm_492/strided_slice_1/stack_1:output:08sequential_164/lstm_492/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_164/lstm_492/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_164/lstm_492/TensorArrayV2TensorListReserve<sequential_164/lstm_492/TensorArrayV2/element_shape:output:00sequential_164/lstm_492/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_164/lstm_492/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_164/lstm_492/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_164/lstm_492/transpose:y:0Vsequential_164/lstm_492/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_164/lstm_492/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_492/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_164/lstm_492/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_492/strided_slice_2StridedSlice%sequential_164/lstm_492/transpose:y:06sequential_164/lstm_492/strided_slice_2/stack:output:08sequential_164/lstm_492/strided_slice_2/stack_1:output:08sequential_164/lstm_492/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_164/lstm_492/lstm_cell_423/MatMul/ReadVariableOpReadVariableOpDsequential_164_lstm_492_lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_164/lstm_492/lstm_cell_423/MatMulMatMul0sequential_164/lstm_492/strided_slice_2:output:0Csequential_164/lstm_492/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_164/lstm_492/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOpFsequential_164_lstm_492_lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_164/lstm_492/lstm_cell_423/MatMul_1MatMul&sequential_164/lstm_492/zeros:output:0Esequential_164/lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_164/lstm_492/lstm_cell_423/addAddV26sequential_164/lstm_492/lstm_cell_423/MatMul:product:08sequential_164/lstm_492/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_164/lstm_492/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOpEsequential_164_lstm_492_lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_164/lstm_492/lstm_cell_423/BiasAddBiasAdd-sequential_164/lstm_492/lstm_cell_423/add:z:0Dsequential_164/lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_164/lstm_492/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_164/lstm_492/lstm_cell_423/splitSplit>sequential_164/lstm_492/lstm_cell_423/split/split_dim:output:06sequential_164/lstm_492/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_164/lstm_492/lstm_cell_423/SigmoidSigmoid4sequential_164/lstm_492/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_164/lstm_492/lstm_cell_423/Sigmoid_1Sigmoid4sequential_164/lstm_492/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_164/lstm_492/lstm_cell_423/mulMul3sequential_164/lstm_492/lstm_cell_423/Sigmoid_1:y:0(sequential_164/lstm_492/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_164/lstm_492/lstm_cell_423/ReluRelu4sequential_164/lstm_492/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_164/lstm_492/lstm_cell_423/mul_1Mul1sequential_164/lstm_492/lstm_cell_423/Sigmoid:y:08sequential_164/lstm_492/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_164/lstm_492/lstm_cell_423/add_1AddV2-sequential_164/lstm_492/lstm_cell_423/mul:z:0/sequential_164/lstm_492/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_164/lstm_492/lstm_cell_423/Sigmoid_2Sigmoid4sequential_164/lstm_492/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_164/lstm_492/lstm_cell_423/Relu_1Relu/sequential_164/lstm_492/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_164/lstm_492/lstm_cell_423/mul_2Mul3sequential_164/lstm_492/lstm_cell_423/Sigmoid_2:y:0:sequential_164/lstm_492/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_164/lstm_492/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_164/lstm_492/TensorArrayV2_1TensorListReserve>sequential_164/lstm_492/TensorArrayV2_1/element_shape:output:00sequential_164/lstm_492/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_164/lstm_492/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_164/lstm_492/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_164/lstm_492/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_164/lstm_492/whileWhile3sequential_164/lstm_492/while/loop_counter:output:09sequential_164/lstm_492/while/maximum_iterations:output:0%sequential_164/lstm_492/time:output:00sequential_164/lstm_492/TensorArrayV2_1:handle:0&sequential_164/lstm_492/zeros:output:0(sequential_164/lstm_492/zeros_1:output:00sequential_164/lstm_492/strided_slice_1:output:0Osequential_164/lstm_492/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_164_lstm_492_lstm_cell_423_matmul_readvariableop_resourceFsequential_164_lstm_492_lstm_cell_423_matmul_1_readvariableop_resourceEsequential_164_lstm_492_lstm_cell_423_biasadd_readvariableop_resource*
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
*sequential_164_lstm_492_while_body_2569034*6
cond.R,
*sequential_164_lstm_492_while_cond_2569033*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_164/lstm_492/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_164/lstm_492/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_164/lstm_492/while:output:3Qsequential_164/lstm_492/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_164/lstm_492/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_164/lstm_492/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_492/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_492/strided_slice_3StridedSliceCsequential_164/lstm_492/TensorArrayV2Stack/TensorListStack:tensor:06sequential_164/lstm_492/strided_slice_3/stack:output:08sequential_164/lstm_492/strided_slice_3/stack_1:output:08sequential_164/lstm_492/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_164/lstm_492/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_164/lstm_492/transpose_1	TransposeCsequential_164/lstm_492/TensorArrayV2Stack/TensorListStack:tensor:01sequential_164/lstm_492/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_164/lstm_492/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_164/lstm_493/ShapeShape'sequential_164/lstm_492/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_164/lstm_493/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_164/lstm_493/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_164/lstm_493/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_164/lstm_493/strided_sliceStridedSlice&sequential_164/lstm_493/Shape:output:04sequential_164/lstm_493/strided_slice/stack:output:06sequential_164/lstm_493/strided_slice/stack_1:output:06sequential_164/lstm_493/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_164/lstm_493/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_164/lstm_493/zeros/packedPack.sequential_164/lstm_493/strided_slice:output:0/sequential_164/lstm_493/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_164/lstm_493/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_164/lstm_493/zerosFill-sequential_164/lstm_493/zeros/packed:output:0,sequential_164/lstm_493/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_164/lstm_493/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_164/lstm_493/zeros_1/packedPack.sequential_164/lstm_493/strided_slice:output:01sequential_164/lstm_493/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_164/lstm_493/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_164/lstm_493/zeros_1Fill/sequential_164/lstm_493/zeros_1/packed:output:0.sequential_164/lstm_493/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_164/lstm_493/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_164/lstm_493/transpose	Transpose'sequential_164/lstm_492/transpose_1:y:0/sequential_164/lstm_493/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_164/lstm_493/Shape_1Shape%sequential_164/lstm_493/transpose:y:0*
T0*
_output_shapes
:w
-sequential_164/lstm_493/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_493/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_164/lstm_493/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_493/strided_slice_1StridedSlice(sequential_164/lstm_493/Shape_1:output:06sequential_164/lstm_493/strided_slice_1/stack:output:08sequential_164/lstm_493/strided_slice_1/stack_1:output:08sequential_164/lstm_493/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_164/lstm_493/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_164/lstm_493/TensorArrayV2TensorListReserve<sequential_164/lstm_493/TensorArrayV2/element_shape:output:00sequential_164/lstm_493/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_164/lstm_493/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_164/lstm_493/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_164/lstm_493/transpose:y:0Vsequential_164/lstm_493/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_164/lstm_493/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_493/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_164/lstm_493/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_493/strided_slice_2StridedSlice%sequential_164/lstm_493/transpose:y:06sequential_164/lstm_493/strided_slice_2/stack:output:08sequential_164/lstm_493/strided_slice_2/stack_1:output:08sequential_164/lstm_493/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_164/lstm_493/lstm_cell_424/MatMul/ReadVariableOpReadVariableOpDsequential_164_lstm_493_lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_164/lstm_493/lstm_cell_424/MatMulMatMul0sequential_164/lstm_493/strided_slice_2:output:0Csequential_164/lstm_493/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_164/lstm_493/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOpFsequential_164_lstm_493_lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_164/lstm_493/lstm_cell_424/MatMul_1MatMul&sequential_164/lstm_493/zeros:output:0Esequential_164/lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_164/lstm_493/lstm_cell_424/addAddV26sequential_164/lstm_493/lstm_cell_424/MatMul:product:08sequential_164/lstm_493/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_164/lstm_493/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOpEsequential_164_lstm_493_lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_164/lstm_493/lstm_cell_424/BiasAddBiasAdd-sequential_164/lstm_493/lstm_cell_424/add:z:0Dsequential_164/lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_164/lstm_493/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_164/lstm_493/lstm_cell_424/splitSplit>sequential_164/lstm_493/lstm_cell_424/split/split_dim:output:06sequential_164/lstm_493/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_164/lstm_493/lstm_cell_424/SigmoidSigmoid4sequential_164/lstm_493/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_164/lstm_493/lstm_cell_424/Sigmoid_1Sigmoid4sequential_164/lstm_493/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_164/lstm_493/lstm_cell_424/mulMul3sequential_164/lstm_493/lstm_cell_424/Sigmoid_1:y:0(sequential_164/lstm_493/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_164/lstm_493/lstm_cell_424/ReluRelu4sequential_164/lstm_493/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_164/lstm_493/lstm_cell_424/mul_1Mul1sequential_164/lstm_493/lstm_cell_424/Sigmoid:y:08sequential_164/lstm_493/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_164/lstm_493/lstm_cell_424/add_1AddV2-sequential_164/lstm_493/lstm_cell_424/mul:z:0/sequential_164/lstm_493/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_164/lstm_493/lstm_cell_424/Sigmoid_2Sigmoid4sequential_164/lstm_493/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_164/lstm_493/lstm_cell_424/Relu_1Relu/sequential_164/lstm_493/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_164/lstm_493/lstm_cell_424/mul_2Mul3sequential_164/lstm_493/lstm_cell_424/Sigmoid_2:y:0:sequential_164/lstm_493/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_164/lstm_493/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_164/lstm_493/TensorArrayV2_1TensorListReserve>sequential_164/lstm_493/TensorArrayV2_1/element_shape:output:00sequential_164/lstm_493/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_164/lstm_493/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_164/lstm_493/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_164/lstm_493/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_164/lstm_493/whileWhile3sequential_164/lstm_493/while/loop_counter:output:09sequential_164/lstm_493/while/maximum_iterations:output:0%sequential_164/lstm_493/time:output:00sequential_164/lstm_493/TensorArrayV2_1:handle:0&sequential_164/lstm_493/zeros:output:0(sequential_164/lstm_493/zeros_1:output:00sequential_164/lstm_493/strided_slice_1:output:0Osequential_164/lstm_493/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_164_lstm_493_lstm_cell_424_matmul_readvariableop_resourceFsequential_164_lstm_493_lstm_cell_424_matmul_1_readvariableop_resourceEsequential_164_lstm_493_lstm_cell_424_biasadd_readvariableop_resource*
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
*sequential_164_lstm_493_while_body_2569173*6
cond.R,
*sequential_164_lstm_493_while_cond_2569172*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_164/lstm_493/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_164/lstm_493/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_164/lstm_493/while:output:3Qsequential_164/lstm_493/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_164/lstm_493/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_164/lstm_493/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_493/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_493/strided_slice_3StridedSliceCsequential_164/lstm_493/TensorArrayV2Stack/TensorListStack:tensor:06sequential_164/lstm_493/strided_slice_3/stack:output:08sequential_164/lstm_493/strided_slice_3/stack_1:output:08sequential_164/lstm_493/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_164/lstm_493/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_164/lstm_493/transpose_1	TransposeCsequential_164/lstm_493/TensorArrayV2Stack/TensorListStack:tensor:01sequential_164/lstm_493/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_164/lstm_493/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_164/lstm_494/ShapeShape'sequential_164/lstm_493/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_164/lstm_494/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_164/lstm_494/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_164/lstm_494/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_164/lstm_494/strided_sliceStridedSlice&sequential_164/lstm_494/Shape:output:04sequential_164/lstm_494/strided_slice/stack:output:06sequential_164/lstm_494/strided_slice/stack_1:output:06sequential_164/lstm_494/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_164/lstm_494/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_164/lstm_494/zeros/packedPack.sequential_164/lstm_494/strided_slice:output:0/sequential_164/lstm_494/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_164/lstm_494/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_164/lstm_494/zerosFill-sequential_164/lstm_494/zeros/packed:output:0,sequential_164/lstm_494/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_164/lstm_494/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_164/lstm_494/zeros_1/packedPack.sequential_164/lstm_494/strided_slice:output:01sequential_164/lstm_494/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_164/lstm_494/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_164/lstm_494/zeros_1Fill/sequential_164/lstm_494/zeros_1/packed:output:0.sequential_164/lstm_494/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_164/lstm_494/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_164/lstm_494/transpose	Transpose'sequential_164/lstm_493/transpose_1:y:0/sequential_164/lstm_494/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_164/lstm_494/Shape_1Shape%sequential_164/lstm_494/transpose:y:0*
T0*
_output_shapes
:w
-sequential_164/lstm_494/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_494/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_164/lstm_494/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_494/strided_slice_1StridedSlice(sequential_164/lstm_494/Shape_1:output:06sequential_164/lstm_494/strided_slice_1/stack:output:08sequential_164/lstm_494/strided_slice_1/stack_1:output:08sequential_164/lstm_494/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_164/lstm_494/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_164/lstm_494/TensorArrayV2TensorListReserve<sequential_164/lstm_494/TensorArrayV2/element_shape:output:00sequential_164/lstm_494/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_164/lstm_494/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_164/lstm_494/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_164/lstm_494/transpose:y:0Vsequential_164/lstm_494/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_164/lstm_494/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_494/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_164/lstm_494/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_494/strided_slice_2StridedSlice%sequential_164/lstm_494/transpose:y:06sequential_164/lstm_494/strided_slice_2/stack:output:08sequential_164/lstm_494/strided_slice_2/stack_1:output:08sequential_164/lstm_494/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_164/lstm_494/lstm_cell_425/MatMul/ReadVariableOpReadVariableOpDsequential_164_lstm_494_lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_164/lstm_494/lstm_cell_425/MatMulMatMul0sequential_164/lstm_494/strided_slice_2:output:0Csequential_164/lstm_494/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_164/lstm_494/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOpFsequential_164_lstm_494_lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_164/lstm_494/lstm_cell_425/MatMul_1MatMul&sequential_164/lstm_494/zeros:output:0Esequential_164/lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_164/lstm_494/lstm_cell_425/addAddV26sequential_164/lstm_494/lstm_cell_425/MatMul:product:08sequential_164/lstm_494/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_164/lstm_494/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOpEsequential_164_lstm_494_lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_164/lstm_494/lstm_cell_425/BiasAddBiasAdd-sequential_164/lstm_494/lstm_cell_425/add:z:0Dsequential_164/lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_164/lstm_494/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_164/lstm_494/lstm_cell_425/splitSplit>sequential_164/lstm_494/lstm_cell_425/split/split_dim:output:06sequential_164/lstm_494/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_164/lstm_494/lstm_cell_425/SigmoidSigmoid4sequential_164/lstm_494/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_164/lstm_494/lstm_cell_425/Sigmoid_1Sigmoid4sequential_164/lstm_494/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_164/lstm_494/lstm_cell_425/mulMul3sequential_164/lstm_494/lstm_cell_425/Sigmoid_1:y:0(sequential_164/lstm_494/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_164/lstm_494/lstm_cell_425/ReluRelu4sequential_164/lstm_494/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_164/lstm_494/lstm_cell_425/mul_1Mul1sequential_164/lstm_494/lstm_cell_425/Sigmoid:y:08sequential_164/lstm_494/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_164/lstm_494/lstm_cell_425/add_1AddV2-sequential_164/lstm_494/lstm_cell_425/mul:z:0/sequential_164/lstm_494/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_164/lstm_494/lstm_cell_425/Sigmoid_2Sigmoid4sequential_164/lstm_494/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_164/lstm_494/lstm_cell_425/Relu_1Relu/sequential_164/lstm_494/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_164/lstm_494/lstm_cell_425/mul_2Mul3sequential_164/lstm_494/lstm_cell_425/Sigmoid_2:y:0:sequential_164/lstm_494/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_164/lstm_494/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_164/lstm_494/TensorArrayV2_1TensorListReserve>sequential_164/lstm_494/TensorArrayV2_1/element_shape:output:00sequential_164/lstm_494/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_164/lstm_494/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_164/lstm_494/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_164/lstm_494/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_164/lstm_494/whileWhile3sequential_164/lstm_494/while/loop_counter:output:09sequential_164/lstm_494/while/maximum_iterations:output:0%sequential_164/lstm_494/time:output:00sequential_164/lstm_494/TensorArrayV2_1:handle:0&sequential_164/lstm_494/zeros:output:0(sequential_164/lstm_494/zeros_1:output:00sequential_164/lstm_494/strided_slice_1:output:0Osequential_164/lstm_494/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_164_lstm_494_lstm_cell_425_matmul_readvariableop_resourceFsequential_164_lstm_494_lstm_cell_425_matmul_1_readvariableop_resourceEsequential_164_lstm_494_lstm_cell_425_biasadd_readvariableop_resource*
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
*sequential_164_lstm_494_while_body_2569312*6
cond.R,
*sequential_164_lstm_494_while_cond_2569311*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_164/lstm_494/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_164/lstm_494/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_164/lstm_494/while:output:3Qsequential_164/lstm_494/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_164/lstm_494/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_164/lstm_494/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_164/lstm_494/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_164/lstm_494/strided_slice_3StridedSliceCsequential_164/lstm_494/TensorArrayV2Stack/TensorListStack:tensor:06sequential_164/lstm_494/strided_slice_3/stack:output:08sequential_164/lstm_494/strided_slice_3/stack_1:output:08sequential_164/lstm_494/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_164/lstm_494/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_164/lstm_494/transpose_1	TransposeCsequential_164/lstm_494/TensorArrayV2Stack/TensorListStack:tensor:01sequential_164/lstm_494/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_164/lstm_494/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_164/dense_164/MatMul/ReadVariableOpReadVariableOp7sequential_164_dense_164_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_164/dense_164/MatMulMatMul0sequential_164/lstm_494/strided_slice_3:output:06sequential_164/dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_164/dense_164/BiasAdd/ReadVariableOpReadVariableOp8sequential_164_dense_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_164/dense_164/BiasAddBiasAdd)sequential_164/dense_164/MatMul:product:07sequential_164/dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_164/dense_164/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_164/dense_164/BiasAdd/ReadVariableOp/^sequential_164/dense_164/MatMul/ReadVariableOp=^sequential_164/lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp<^sequential_164/lstm_492/lstm_cell_423/MatMul/ReadVariableOp>^sequential_164/lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp^sequential_164/lstm_492/while=^sequential_164/lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp<^sequential_164/lstm_493/lstm_cell_424/MatMul/ReadVariableOp>^sequential_164/lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp^sequential_164/lstm_493/while=^sequential_164/lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp<^sequential_164/lstm_494/lstm_cell_425/MatMul/ReadVariableOp>^sequential_164/lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp^sequential_164/lstm_494/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_164/dense_164/BiasAdd/ReadVariableOp/sequential_164/dense_164/BiasAdd/ReadVariableOp2`
.sequential_164/dense_164/MatMul/ReadVariableOp.sequential_164/dense_164/MatMul/ReadVariableOp2|
<sequential_164/lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp<sequential_164/lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp2z
;sequential_164/lstm_492/lstm_cell_423/MatMul/ReadVariableOp;sequential_164/lstm_492/lstm_cell_423/MatMul/ReadVariableOp2~
=sequential_164/lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp=sequential_164/lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp2>
sequential_164/lstm_492/whilesequential_164/lstm_492/while2|
<sequential_164/lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp<sequential_164/lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp2z
;sequential_164/lstm_493/lstm_cell_424/MatMul/ReadVariableOp;sequential_164/lstm_493/lstm_cell_424/MatMul/ReadVariableOp2~
=sequential_164/lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp=sequential_164/lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp2>
sequential_164/lstm_493/whilesequential_164/lstm_493/while2|
<sequential_164/lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp<sequential_164/lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp2z
;sequential_164/lstm_494/lstm_cell_425/MatMul/ReadVariableOp;sequential_164/lstm_494/lstm_cell_425/MatMul/ReadVariableOp2~
=sequential_164/lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp=sequential_164/lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp2>
sequential_164/lstm_494/whilesequential_164/lstm_494/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_492_input
?J
?
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573659

inputs?
,lstm_cell_424_matmul_readvariableop_resource:	d?A
.lstm_cell_424_matmul_1_readvariableop_resource:	2?<
-lstm_cell_424_biasadd_readvariableop_resource:	?
identity??$lstm_cell_424/BiasAdd/ReadVariableOp?#lstm_cell_424/MatMul/ReadVariableOp?%lstm_cell_424/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_424/MatMul/ReadVariableOpReadVariableOp,lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_424/MatMulMatMulstrided_slice_2:output:0+lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_424/MatMul_1MatMulzeros:output:0-lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_424/addAddV2lstm_cell_424/MatMul:product:0 lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_424/BiasAddBiasAddlstm_cell_424/add:z:0,lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_424/splitSplit&lstm_cell_424/split/split_dim:output:0lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_424/SigmoidSigmoidlstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_1Sigmoidlstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_424/mulMullstm_cell_424/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_424/ReluRelulstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_1Mullstm_cell_424/Sigmoid:y:0 lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_424/add_1AddV2lstm_cell_424/mul:z:0lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_2Sigmoidlstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_424/Relu_1Relulstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_2Mullstm_cell_424/Sigmoid_2:y:0"lstm_cell_424/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_424_matmul_readvariableop_resource.lstm_cell_424_matmul_1_readvariableop_resource-lstm_cell_424_biasadd_readvariableop_resource*
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
while_body_2573575*
condR
while_cond_2573574*K
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
NoOpNoOp%^lstm_cell_424/BiasAdd/ReadVariableOp$^lstm_cell_424/MatMul/ReadVariableOp&^lstm_cell_424/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_424/BiasAdd/ReadVariableOp$lstm_cell_424/BiasAdd/ReadVariableOp2J
#lstm_cell_424/MatMul/ReadVariableOp#lstm_cell_424/MatMul/ReadVariableOp2N
%lstm_cell_424/MatMul_1/ReadVariableOp%lstm_cell_424/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_2569674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_423_2569698_0:	?0
while_lstm_cell_423_2569700_0:	d?,
while_lstm_cell_423_2569702_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_423_2569698:	?.
while_lstm_cell_423_2569700:	d?*
while_lstm_cell_423_2569702:	???+while/lstm_cell_423/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_423/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_423_2569698_0while_lstm_cell_423_2569700_0while_lstm_cell_423_2569702_0*
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569615?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_423/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_423/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_423/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_423/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_423_2569698while_lstm_cell_423_2569698_0"<
while_lstm_cell_423_2569700while_lstm_cell_423_2569700_0"<
while_lstm_cell_423_2569702while_lstm_cell_423_2569702_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_423/StatefulPartitionedCall+while/lstm_cell_423/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2570373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2570373___redundant_placeholder05
1while_while_cond_2570373___redundant_placeholder15
1while_while_cond_2570373___redundant_placeholder25
1while_while_cond_2570373___redundant_placeholder3
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570901

inputs>
,lstm_cell_425_matmul_readvariableop_resource:2(@
.lstm_cell_425_matmul_1_readvariableop_resource:
(;
-lstm_cell_425_biasadd_readvariableop_resource:(
identity??$lstm_cell_425/BiasAdd/ReadVariableOp?#lstm_cell_425/MatMul/ReadVariableOp?%lstm_cell_425/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_425/MatMul/ReadVariableOpReadVariableOp,lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_425/MatMulMatMulstrided_slice_2:output:0+lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_425/MatMul_1MatMulzeros:output:0-lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_425/addAddV2lstm_cell_425/MatMul:product:0 lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_425/BiasAddBiasAddlstm_cell_425/add:z:0,lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_425/splitSplit&lstm_cell_425/split/split_dim:output:0lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_425/SigmoidSigmoidlstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_1Sigmoidlstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_425/mulMullstm_cell_425/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_425/ReluRelulstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_1Mullstm_cell_425/Sigmoid:y:0 lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_425/add_1AddV2lstm_cell_425/mul:z:0lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_2Sigmoidlstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_425/Relu_1Relulstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_2Mullstm_cell_425/Sigmoid_2:y:0"lstm_cell_425/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_425_matmul_readvariableop_resource.lstm_cell_425_matmul_1_readvariableop_resource-lstm_cell_425_biasadd_readvariableop_resource*
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
while_body_2570817*
condR
while_cond_2570816*K
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
NoOpNoOp%^lstm_cell_425/BiasAdd/ReadVariableOp$^lstm_cell_425/MatMul/ReadVariableOp&^lstm_cell_425/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_425/BiasAdd/ReadVariableOp$lstm_cell_425/BiasAdd/ReadVariableOp2J
#lstm_cell_425/MatMul/ReadVariableOp#lstm_cell_425/MatMul/ReadVariableOp2N
%lstm_cell_425/MatMul_1/ReadVariableOp%lstm_cell_425/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_2569833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_424_2569857_0:	d?0
while_lstm_cell_424_2569859_0:	2?,
while_lstm_cell_424_2569861_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_424_2569857:	d?.
while_lstm_cell_424_2569859:	2?*
while_lstm_cell_424_2569861:	???+while/lstm_cell_424/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_424/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_424_2569857_0while_lstm_cell_424_2569859_0while_lstm_cell_424_2569861_0*
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569819?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_424/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_424/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_424/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_424/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_424_2569857while_lstm_cell_424_2569857_0"<
while_lstm_cell_424_2569859while_lstm_cell_424_2569859_0"<
while_lstm_cell_424_2569861while_lstm_cell_424_2569861_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_424/StatefulPartitionedCall+while/lstm_cell_424/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_2571662
lstm_492_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_492_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2569402o
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
_user_specified_namelstm_492_input
?K
?
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573373
inputs_0?
,lstm_cell_424_matmul_readvariableop_resource:	d?A
.lstm_cell_424_matmul_1_readvariableop_resource:	2?<
-lstm_cell_424_biasadd_readvariableop_resource:	?
identity??$lstm_cell_424/BiasAdd/ReadVariableOp?#lstm_cell_424/MatMul/ReadVariableOp?%lstm_cell_424/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_424/MatMul/ReadVariableOpReadVariableOp,lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_424/MatMulMatMulstrided_slice_2:output:0+lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_424/MatMul_1MatMulzeros:output:0-lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_424/addAddV2lstm_cell_424/MatMul:product:0 lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_424/BiasAddBiasAddlstm_cell_424/add:z:0,lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_424/splitSplit&lstm_cell_424/split/split_dim:output:0lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_424/SigmoidSigmoidlstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_1Sigmoidlstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_424/mulMullstm_cell_424/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_424/ReluRelulstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_1Mullstm_cell_424/Sigmoid:y:0 lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_424/add_1AddV2lstm_cell_424/mul:z:0lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_2Sigmoidlstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_424/Relu_1Relulstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_2Mullstm_cell_424/Sigmoid_2:y:0"lstm_cell_424/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_424_matmul_readvariableop_resource.lstm_cell_424_matmul_1_readvariableop_resource-lstm_cell_424_biasadd_readvariableop_resource*
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
while_body_2573289*
condR
while_cond_2573288*K
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
NoOpNoOp%^lstm_cell_424/BiasAdd/ReadVariableOp$^lstm_cell_424/MatMul/ReadVariableOp&^lstm_cell_424/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_424/BiasAdd/ReadVariableOp$lstm_cell_424/BiasAdd/ReadVariableOp2J
#lstm_cell_424/MatMul/ReadVariableOp#lstm_cell_424/MatMul/ReadVariableOp2N
%lstm_cell_424/MatMul_1/ReadVariableOp%lstm_cell_424/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2569673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2569673___redundant_placeholder05
1while_while_cond_2569673___redundant_placeholder15
1while_while_cond_2569673___redundant_placeholder25
1while_while_cond_2569673___redundant_placeholder3
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2569743

inputs(
lstm_cell_423_2569661:	?(
lstm_cell_423_2569663:	d?$
lstm_cell_423_2569665:	?
identity??%lstm_cell_423/StatefulPartitionedCall?while;
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
%lstm_cell_423/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_423_2569661lstm_cell_423_2569663lstm_cell_423_2569665*
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569615n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_423_2569661lstm_cell_423_2569663lstm_cell_423_2569665*
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
while_body_2569674*
condR
while_cond_2569673*K
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
NoOpNoOp&^lstm_cell_423/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_423/StatefulPartitionedCall%lstm_cell_423/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2571197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2571197___redundant_placeholder05
1while_while_cond_2571197___redundant_placeholder15
1while_while_cond_2571197___redundant_placeholder25
1while_while_cond_2571197___redundant_placeholder3
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569615

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
?
/__inference_lstm_cell_424_layer_call_fn_2574569

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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569965o
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570315

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
?
?
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2574731

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
*sequential_164_lstm_493_while_cond_2569172L
Hsequential_164_lstm_493_while_sequential_164_lstm_493_while_loop_counterR
Nsequential_164_lstm_493_while_sequential_164_lstm_493_while_maximum_iterations-
)sequential_164_lstm_493_while_placeholder/
+sequential_164_lstm_493_while_placeholder_1/
+sequential_164_lstm_493_while_placeholder_2/
+sequential_164_lstm_493_while_placeholder_3N
Jsequential_164_lstm_493_while_less_sequential_164_lstm_493_strided_slice_1e
asequential_164_lstm_493_while_sequential_164_lstm_493_while_cond_2569172___redundant_placeholder0e
asequential_164_lstm_493_while_sequential_164_lstm_493_while_cond_2569172___redundant_placeholder1e
asequential_164_lstm_493_while_sequential_164_lstm_493_while_cond_2569172___redundant_placeholder2e
asequential_164_lstm_493_while_sequential_164_lstm_493_while_cond_2569172___redundant_placeholder3*
&sequential_164_lstm_493_while_identity
?
"sequential_164/lstm_493/while/LessLess)sequential_164_lstm_493_while_placeholderJsequential_164_lstm_493_while_less_sequential_164_lstm_493_strided_slice_1*
T0*
_output_shapes
: {
&sequential_164/lstm_493/while/IdentityIdentity&sequential_164/lstm_493/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_164_lstm_493_while_identity/sequential_164/lstm_493/while/Identity:output:0*(
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2569902

inputs(
lstm_cell_424_2569820:	d?(
lstm_cell_424_2569822:	2?$
lstm_cell_424_2569824:	?
identity??%lstm_cell_424/StatefulPartitionedCall?while;
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
%lstm_cell_424/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_424_2569820lstm_cell_424_2569822lstm_cell_424_2569824*
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569819n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_424_2569820lstm_cell_424_2569822lstm_cell_424_2569824*
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
while_body_2569833*
condR
while_cond_2569832*K
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
NoOpNoOp&^lstm_cell_424/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_424/StatefulPartitionedCall%lstm_cell_424/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_2574048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_425_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_425_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_425_matmul_readvariableop_resource:2(F
4while_lstm_cell_425_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_425_biasadd_readvariableop_resource:(??*while/lstm_cell_425/BiasAdd/ReadVariableOp?)while/lstm_cell_425/MatMul/ReadVariableOp?+while/lstm_cell_425/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_425/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_425/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_425/addAddV2$while/lstm_cell_425/MatMul:product:0&while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_425/BiasAddBiasAddwhile/lstm_cell_425/add:z:02while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_425/splitSplit,while/lstm_cell_425/split/split_dim:output:0$while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_425/SigmoidSigmoid"while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_1Sigmoid"while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mulMul!while/lstm_cell_425/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_425/ReluRelu"while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_1Mulwhile/lstm_cell_425/Sigmoid:y:0&while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/add_1AddV2while/lstm_cell_425/mul:z:0while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_2Sigmoid"while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_425/Relu_1Reluwhile/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_2Mul!while/lstm_cell_425/Sigmoid_2:y:0(while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_425/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_425/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_425/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_425/BiasAdd/ReadVariableOp*^while/lstm_cell_425/MatMul/ReadVariableOp,^while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_425_biasadd_readvariableop_resource5while_lstm_cell_425_biasadd_readvariableop_resource_0"n
4while_lstm_cell_425_matmul_1_readvariableop_resource6while_lstm_cell_425_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_425_matmul_readvariableop_resource4while_lstm_cell_425_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_425/BiasAdd/ReadVariableOp*while/lstm_cell_425/BiasAdd/ReadVariableOp2V
)while/lstm_cell_425/MatMul/ReadVariableOp)while/lstm_cell_425/MatMul/ReadVariableOp2Z
+while/lstm_cell_425/MatMul_1/ReadVariableOp+while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_423_layer_call_fn_2574454

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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569469o
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
while_body_2573432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_424_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_424_matmul_readvariableop_resource:	d?G
4while_lstm_cell_424_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_424_biasadd_readvariableop_resource:	???*while/lstm_cell_424/BiasAdd/ReadVariableOp?)while/lstm_cell_424/MatMul/ReadVariableOp?+while/lstm_cell_424/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_424/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_424/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_424/addAddV2$while/lstm_cell_424/MatMul:product:0&while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_424/BiasAddBiasAddwhile/lstm_cell_424/add:z:02while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_424/splitSplit,while/lstm_cell_424/split/split_dim:output:0$while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_424/SigmoidSigmoid"while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_1Sigmoid"while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mulMul!while/lstm_cell_424/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_424/ReluRelu"while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_1Mulwhile/lstm_cell_424/Sigmoid:y:0&while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/add_1AddV2while/lstm_cell_424/mul:z:0while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_2Sigmoid"while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_424/Relu_1Reluwhile/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_2Mul!while/lstm_cell_424/Sigmoid_2:y:0(while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_424/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_424/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_424/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_424/BiasAdd/ReadVariableOp*^while/lstm_cell_424/MatMul/ReadVariableOp,^while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_424_biasadd_readvariableop_resource5while_lstm_cell_424_biasadd_readvariableop_resource_0"n
4while_lstm_cell_424_matmul_1_readvariableop_resource6while_lstm_cell_424_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_424_matmul_readvariableop_resource4while_lstm_cell_424_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_424/BiasAdd/ReadVariableOp*while/lstm_cell_424/BiasAdd/ReadVariableOp2V
)while/lstm_cell_424/MatMul/ReadVariableOp)while/lstm_cell_424/MatMul/ReadVariableOp2Z
+while/lstm_cell_424/MatMul_1/ReadVariableOp+while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2571117

inputs>
,lstm_cell_425_matmul_readvariableop_resource:2(@
.lstm_cell_425_matmul_1_readvariableop_resource:
(;
-lstm_cell_425_biasadd_readvariableop_resource:(
identity??$lstm_cell_425/BiasAdd/ReadVariableOp?#lstm_cell_425/MatMul/ReadVariableOp?%lstm_cell_425/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_425/MatMul/ReadVariableOpReadVariableOp,lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_425/MatMulMatMulstrided_slice_2:output:0+lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_425/MatMul_1MatMulzeros:output:0-lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_425/addAddV2lstm_cell_425/MatMul:product:0 lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_425/BiasAddBiasAddlstm_cell_425/add:z:0,lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_425/splitSplit&lstm_cell_425/split/split_dim:output:0lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_425/SigmoidSigmoidlstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_1Sigmoidlstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_425/mulMullstm_cell_425/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_425/ReluRelulstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_1Mullstm_cell_425/Sigmoid:y:0 lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_425/add_1AddV2lstm_cell_425/mul:z:0lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_2Sigmoidlstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_425/Relu_1Relulstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_2Mullstm_cell_425/Sigmoid_2:y:0"lstm_cell_425/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_425_matmul_readvariableop_resource.lstm_cell_425_matmul_1_readvariableop_resource-lstm_cell_425_biasadd_readvariableop_resource*
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
while_body_2571033*
condR
while_cond_2571032*K
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
NoOpNoOp%^lstm_cell_425/BiasAdd/ReadVariableOp$^lstm_cell_425/MatMul/ReadVariableOp&^lstm_cell_425/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_425/BiasAdd/ReadVariableOp$lstm_cell_425/BiasAdd/ReadVariableOp2J
#lstm_cell_425/MatMul/ReadVariableOp#lstm_cell_425/MatMul/ReadVariableOp2N
%lstm_cell_425/MatMul_1/ReadVariableOp%lstm_cell_425/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_423_layer_call_fn_2574471

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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569615o
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
while_cond_2570023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2570023___redundant_placeholder05
1while_while_cond_2570023___redundant_placeholder15
1while_while_cond_2570023___redundant_placeholder25
1while_while_cond_2570023___redundant_placeholder3
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
*__inference_lstm_494_layer_call_fn_2573813
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570252o
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
while_body_2571033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_425_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_425_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_425_matmul_readvariableop_resource:2(F
4while_lstm_cell_425_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_425_biasadd_readvariableop_resource:(??*while/lstm_cell_425/BiasAdd/ReadVariableOp?)while/lstm_cell_425/MatMul/ReadVariableOp?+while/lstm_cell_425/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_425/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_425/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_425/addAddV2$while/lstm_cell_425/MatMul:product:0&while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_425/BiasAddBiasAddwhile/lstm_cell_425/add:z:02while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_425/splitSplit,while/lstm_cell_425/split/split_dim:output:0$while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_425/SigmoidSigmoid"while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_1Sigmoid"while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mulMul!while/lstm_cell_425/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_425/ReluRelu"while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_1Mulwhile/lstm_cell_425/Sigmoid:y:0&while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/add_1AddV2while/lstm_cell_425/mul:z:0while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_2Sigmoid"while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_425/Relu_1Reluwhile/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_2Mul!while/lstm_cell_425/Sigmoid_2:y:0(while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_425/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_425/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_425/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_425/BiasAdd/ReadVariableOp*^while/lstm_cell_425/MatMul/ReadVariableOp,^while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_425_biasadd_readvariableop_resource5while_lstm_cell_425_biasadd_readvariableop_resource_0"n
4while_lstm_cell_425_matmul_1_readvariableop_resource6while_lstm_cell_425_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_425_matmul_readvariableop_resource4while_lstm_cell_425_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_425/BiasAdd/ReadVariableOp*while/lstm_cell_425/BiasAdd/ReadVariableOp2V
)while/lstm_cell_425/MatMul/ReadVariableOp)while/lstm_cell_425/MatMul/ReadVariableOp2Z
+while/lstm_cell_425/MatMul_1/ReadVariableOp+while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_424_layer_call_fn_2574552

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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569819o
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
?
*sequential_164_lstm_494_while_cond_2569311L
Hsequential_164_lstm_494_while_sequential_164_lstm_494_while_loop_counterR
Nsequential_164_lstm_494_while_sequential_164_lstm_494_while_maximum_iterations-
)sequential_164_lstm_494_while_placeholder/
+sequential_164_lstm_494_while_placeholder_1/
+sequential_164_lstm_494_while_placeholder_2/
+sequential_164_lstm_494_while_placeholder_3N
Jsequential_164_lstm_494_while_less_sequential_164_lstm_494_strided_slice_1e
asequential_164_lstm_494_while_sequential_164_lstm_494_while_cond_2569311___redundant_placeholder0e
asequential_164_lstm_494_while_sequential_164_lstm_494_while_cond_2569311___redundant_placeholder1e
asequential_164_lstm_494_while_sequential_164_lstm_494_while_cond_2569311___redundant_placeholder2e
asequential_164_lstm_494_while_sequential_164_lstm_494_while_cond_2569311___redundant_placeholder3*
&sequential_164_lstm_494_while_identity
?
"sequential_164/lstm_494/while/LessLess)sequential_164_lstm_494_while_placeholderJsequential_164_lstm_494_while_less_sequential_164_lstm_494_strided_slice_1*
T0*
_output_shapes
: {
&sequential_164/lstm_494/while/IdentityIdentity&sequential_164/lstm_494/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_164_lstm_494_while_identity/sequential_164/lstm_494/while/Identity:output:0*(
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
?
?
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571515

inputs#
lstm_492_2571488:	?#
lstm_492_2571490:	d?
lstm_492_2571492:	?#
lstm_493_2571495:	d?#
lstm_493_2571497:	2?
lstm_493_2571499:	?"
lstm_494_2571502:2("
lstm_494_2571504:
(
lstm_494_2571506:(#
dense_164_2571509:

dense_164_2571511:
identity??!dense_164/StatefulPartitionedCall? lstm_492/StatefulPartitionedCall? lstm_493/StatefulPartitionedCall? lstm_494/StatefulPartitionedCall?
 lstm_492/StatefulPartitionedCallStatefulPartitionedCallinputslstm_492_2571488lstm_492_2571490lstm_492_2571492*
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2571447?
 lstm_493/StatefulPartitionedCallStatefulPartitionedCall)lstm_492/StatefulPartitionedCall:output:0lstm_493_2571495lstm_493_2571497lstm_493_2571499*
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2571282?
 lstm_494/StatefulPartitionedCallStatefulPartitionedCall)lstm_493/StatefulPartitionedCall:output:0lstm_494_2571502lstm_494_2571504lstm_494_2571506*
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2571117?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_494/StatefulPartitionedCall:output:0dense_164_2571509dense_164_2571511*
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
F__inference_dense_164_layer_call_and_return_conditional_losses_2570919y
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_164/StatefulPartitionedCall!^lstm_492/StatefulPartitionedCall!^lstm_493/StatefulPartitionedCall!^lstm_494/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2D
 lstm_492/StatefulPartitionedCall lstm_492/StatefulPartitionedCall2D
 lstm_493/StatefulPartitionedCall lstm_493/StatefulPartitionedCall2D
 lstm_494/StatefulPartitionedCall lstm_494/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2570516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2570516___redundant_placeholder05
1while_while_cond_2570516___redundant_placeholder15
1while_while_cond_2570516___redundant_placeholder25
1while_while_cond_2570516___redundant_placeholder3
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
F__inference_dense_164_layer_call_and_return_conditional_losses_2574437

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

lstm_492_while_body_2571775.
*lstm_492_while_lstm_492_while_loop_counter4
0lstm_492_while_lstm_492_while_maximum_iterations
lstm_492_while_placeholder 
lstm_492_while_placeholder_1 
lstm_492_while_placeholder_2 
lstm_492_while_placeholder_3-
)lstm_492_while_lstm_492_strided_slice_1_0i
elstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0:	?R
?lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?M
>lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
lstm_492_while_identity
lstm_492_while_identity_1
lstm_492_while_identity_2
lstm_492_while_identity_3
lstm_492_while_identity_4
lstm_492_while_identity_5+
'lstm_492_while_lstm_492_strided_slice_1g
clstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensorN
;lstm_492_while_lstm_cell_423_matmul_readvariableop_resource:	?P
=lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource:	d?K
<lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource:	???3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp?2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp?4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp?
@lstm_492/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_492/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensor_0lstm_492_while_placeholderIlstm_492/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp=lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_492/while/lstm_cell_423/MatMulMatMul9lstm_492/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp?lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_492/while/lstm_cell_423/MatMul_1MatMullstm_492_while_placeholder_2<lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_492/while/lstm_cell_423/addAddV2-lstm_492/while/lstm_cell_423/MatMul:product:0/lstm_492/while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp>lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_492/while/lstm_cell_423/BiasAddBiasAdd$lstm_492/while/lstm_cell_423/add:z:0;lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_492/while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_492/while/lstm_cell_423/splitSplit5lstm_492/while/lstm_cell_423/split/split_dim:output:0-lstm_492/while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_492/while/lstm_cell_423/SigmoidSigmoid+lstm_492/while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_492/while/lstm_cell_423/Sigmoid_1Sigmoid+lstm_492/while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_492/while/lstm_cell_423/mulMul*lstm_492/while/lstm_cell_423/Sigmoid_1:y:0lstm_492_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_492/while/lstm_cell_423/ReluRelu+lstm_492/while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_492/while/lstm_cell_423/mul_1Mul(lstm_492/while/lstm_cell_423/Sigmoid:y:0/lstm_492/while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_492/while/lstm_cell_423/add_1AddV2$lstm_492/while/lstm_cell_423/mul:z:0&lstm_492/while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_492/while/lstm_cell_423/Sigmoid_2Sigmoid+lstm_492/while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_492/while/lstm_cell_423/Relu_1Relu&lstm_492/while/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_492/while/lstm_cell_423/mul_2Mul*lstm_492/while/lstm_cell_423/Sigmoid_2:y:01lstm_492/while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_492/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_492_while_placeholder_1lstm_492_while_placeholder&lstm_492/while/lstm_cell_423/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_492/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_492/while/addAddV2lstm_492_while_placeholderlstm_492/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_492/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_492/while/add_1AddV2*lstm_492_while_lstm_492_while_loop_counterlstm_492/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_492/while/IdentityIdentitylstm_492/while/add_1:z:0^lstm_492/while/NoOp*
T0*
_output_shapes
: ?
lstm_492/while/Identity_1Identity0lstm_492_while_lstm_492_while_maximum_iterations^lstm_492/while/NoOp*
T0*
_output_shapes
: t
lstm_492/while/Identity_2Identitylstm_492/while/add:z:0^lstm_492/while/NoOp*
T0*
_output_shapes
: ?
lstm_492/while/Identity_3IdentityClstm_492/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_492/while/NoOp*
T0*
_output_shapes
: ?
lstm_492/while/Identity_4Identity&lstm_492/while/lstm_cell_423/mul_2:z:0^lstm_492/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_492/while/Identity_5Identity&lstm_492/while/lstm_cell_423/add_1:z:0^lstm_492/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_492/while/NoOpNoOp4^lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp3^lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp5^lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_492_while_identity lstm_492/while/Identity:output:0"?
lstm_492_while_identity_1"lstm_492/while/Identity_1:output:0"?
lstm_492_while_identity_2"lstm_492/while/Identity_2:output:0"?
lstm_492_while_identity_3"lstm_492/while/Identity_3:output:0"?
lstm_492_while_identity_4"lstm_492/while/Identity_4:output:0"?
lstm_492_while_identity_5"lstm_492/while/Identity_5:output:0"T
'lstm_492_while_lstm_492_strided_slice_1)lstm_492_while_lstm_492_strided_slice_1_0"~
<lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource>lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0"?
=lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource?lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0"|
;lstm_492_while_lstm_cell_423_matmul_readvariableop_resource=lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0"?
clstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensorelstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp2h
2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp2l
4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2572673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_423_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_423_matmul_readvariableop_resource:	?G
4while_lstm_cell_423_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_423_biasadd_readvariableop_resource:	???*while/lstm_cell_423/BiasAdd/ReadVariableOp?)while/lstm_cell_423/MatMul/ReadVariableOp?+while/lstm_cell_423/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_423/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_423/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_423/addAddV2$while/lstm_cell_423/MatMul:product:0&while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_423/BiasAddBiasAddwhile/lstm_cell_423/add:z:02while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_423/splitSplit,while/lstm_cell_423/split/split_dim:output:0$while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_423/SigmoidSigmoid"while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_1Sigmoid"while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mulMul!while/lstm_cell_423/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_423/ReluRelu"while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_1Mulwhile/lstm_cell_423/Sigmoid:y:0&while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/add_1AddV2while/lstm_cell_423/mul:z:0while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_2Sigmoid"while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_423/Relu_1Reluwhile/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_2Mul!while/lstm_cell_423/Sigmoid_2:y:0(while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_423/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_423/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_423/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_423/BiasAdd/ReadVariableOp*^while/lstm_cell_423/MatMul/ReadVariableOp,^while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_423_biasadd_readvariableop_resource5while_lstm_cell_423_biasadd_readvariableop_resource_0"n
4while_lstm_cell_423_matmul_1_readvariableop_resource6while_lstm_cell_423_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_423_matmul_readvariableop_resource4while_lstm_cell_423_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_423/BiasAdd/ReadVariableOp*while/lstm_cell_423/BiasAdd/ReadVariableOp2V
)while/lstm_cell_423/MatMul/ReadVariableOp)while/lstm_cell_423/MatMul/ReadVariableOp2Z
+while/lstm_cell_423/MatMul_1/ReadVariableOp+while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2573289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_424_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_424_matmul_readvariableop_resource:	d?G
4while_lstm_cell_424_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_424_biasadd_readvariableop_resource:	???*while/lstm_cell_424/BiasAdd/ReadVariableOp?)while/lstm_cell_424/MatMul/ReadVariableOp?+while/lstm_cell_424/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_424/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_424/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_424/addAddV2$while/lstm_cell_424/MatMul:product:0&while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_424/BiasAddBiasAddwhile/lstm_cell_424/add:z:02while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_424/splitSplit,while/lstm_cell_424/split/split_dim:output:0$while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_424/SigmoidSigmoid"while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_1Sigmoid"while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mulMul!while/lstm_cell_424/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_424/ReluRelu"while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_1Mulwhile/lstm_cell_424/Sigmoid:y:0&while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/add_1AddV2while/lstm_cell_424/mul:z:0while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_2Sigmoid"while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_424/Relu_1Reluwhile/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_2Mul!while/lstm_cell_424/Sigmoid_2:y:0(while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_424/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_424/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_424/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_424/BiasAdd/ReadVariableOp*^while/lstm_cell_424/MatMul/ReadVariableOp,^while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_424_biasadd_readvariableop_resource5while_lstm_cell_424_biasadd_readvariableop_resource_0"n
4while_lstm_cell_424_matmul_1_readvariableop_resource6while_lstm_cell_424_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_424_matmul_readvariableop_resource4while_lstm_cell_424_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_424/BiasAdd/ReadVariableOp*while/lstm_cell_424/BiasAdd/ReadVariableOp2V
)while/lstm_cell_424/MatMul/ReadVariableOp)while/lstm_cell_424/MatMul/ReadVariableOp2Z
+while/lstm_cell_424/MatMul_1/ReadVariableOp+while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2572757
inputs_0?
,lstm_cell_423_matmul_readvariableop_resource:	?A
.lstm_cell_423_matmul_1_readvariableop_resource:	d?<
-lstm_cell_423_biasadd_readvariableop_resource:	?
identity??$lstm_cell_423/BiasAdd/ReadVariableOp?#lstm_cell_423/MatMul/ReadVariableOp?%lstm_cell_423/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_423/MatMul/ReadVariableOpReadVariableOp,lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_423/MatMulMatMulstrided_slice_2:output:0+lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_423/MatMul_1MatMulzeros:output:0-lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_423/addAddV2lstm_cell_423/MatMul:product:0 lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_423/BiasAddBiasAddlstm_cell_423/add:z:0,lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_423/splitSplit&lstm_cell_423/split/split_dim:output:0lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_423/SigmoidSigmoidlstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_1Sigmoidlstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_423/mulMullstm_cell_423/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_423/ReluRelulstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_1Mullstm_cell_423/Sigmoid:y:0 lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_423/add_1AddV2lstm_cell_423/mul:z:0lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_2Sigmoidlstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_423/Relu_1Relulstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_2Mullstm_cell_423/Sigmoid_2:y:0"lstm_cell_423/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_423_matmul_readvariableop_resource.lstm_cell_423_matmul_1_readvariableop_resource-lstm_cell_423_biasadd_readvariableop_resource*
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
while_body_2572673*
condR
while_cond_2572672*K
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
NoOpNoOp%^lstm_cell_423/BiasAdd/ReadVariableOp$^lstm_cell_423/MatMul/ReadVariableOp&^lstm_cell_423/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_423/BiasAdd/ReadVariableOp$lstm_cell_423/BiasAdd/ReadVariableOp2J
#lstm_cell_423/MatMul/ReadVariableOp#lstm_cell_423/MatMul/ReadVariableOp2N
%lstm_cell_423/MatMul_1/ReadVariableOp%lstm_cell_423/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_2571363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_423_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_423_matmul_readvariableop_resource:	?G
4while_lstm_cell_423_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_423_biasadd_readvariableop_resource:	???*while/lstm_cell_423/BiasAdd/ReadVariableOp?)while/lstm_cell_423/MatMul/ReadVariableOp?+while/lstm_cell_423/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_423/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_423/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_423/addAddV2$while/lstm_cell_423/MatMul:product:0&while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_423/BiasAddBiasAddwhile/lstm_cell_423/add:z:02while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_423/splitSplit,while/lstm_cell_423/split/split_dim:output:0$while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_423/SigmoidSigmoid"while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_1Sigmoid"while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mulMul!while/lstm_cell_423/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_423/ReluRelu"while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_1Mulwhile/lstm_cell_423/Sigmoid:y:0&while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/add_1AddV2while/lstm_cell_423/mul:z:0while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_2Sigmoid"while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_423/Relu_1Reluwhile/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_2Mul!while/lstm_cell_423/Sigmoid_2:y:0(while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_423/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_423/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_423/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_423/BiasAdd/ReadVariableOp*^while/lstm_cell_423/MatMul/ReadVariableOp,^while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_423_biasadd_readvariableop_resource5while_lstm_cell_423_biasadd_readvariableop_resource_0"n
4while_lstm_cell_423_matmul_1_readvariableop_resource6while_lstm_cell_423_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_423_matmul_readvariableop_resource4while_lstm_cell_423_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_423/BiasAdd/ReadVariableOp*while/lstm_cell_423/BiasAdd/ReadVariableOp2V
)while/lstm_cell_423/MatMul/ReadVariableOp)while/lstm_cell_423/MatMul/ReadVariableOp2Z
+while/lstm_cell_423/MatMul_1/ReadVariableOp+while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_164_lstm_492_while_body_2569034L
Hsequential_164_lstm_492_while_sequential_164_lstm_492_while_loop_counterR
Nsequential_164_lstm_492_while_sequential_164_lstm_492_while_maximum_iterations-
)sequential_164_lstm_492_while_placeholder/
+sequential_164_lstm_492_while_placeholder_1/
+sequential_164_lstm_492_while_placeholder_2/
+sequential_164_lstm_492_while_placeholder_3K
Gsequential_164_lstm_492_while_sequential_164_lstm_492_strided_slice_1_0?
?sequential_164_lstm_492_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_492_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_164_lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0:	?a
Nsequential_164_lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?\
Msequential_164_lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0:	?*
&sequential_164_lstm_492_while_identity,
(sequential_164_lstm_492_while_identity_1,
(sequential_164_lstm_492_while_identity_2,
(sequential_164_lstm_492_while_identity_3,
(sequential_164_lstm_492_while_identity_4,
(sequential_164_lstm_492_while_identity_5I
Esequential_164_lstm_492_while_sequential_164_lstm_492_strided_slice_1?
?sequential_164_lstm_492_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_492_tensorarrayunstack_tensorlistfromtensor]
Jsequential_164_lstm_492_while_lstm_cell_423_matmul_readvariableop_resource:	?_
Lsequential_164_lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource:	d?Z
Ksequential_164_lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource:	???Bsequential_164/lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp?Asequential_164/lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp?Csequential_164/lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp?
Osequential_164/lstm_492/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_164/lstm_492/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_164_lstm_492_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_492_tensorarrayunstack_tensorlistfromtensor_0)sequential_164_lstm_492_while_placeholderXsequential_164/lstm_492/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_164/lstm_492/while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOpLsequential_164_lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_164/lstm_492/while/lstm_cell_423/MatMulMatMulHsequential_164/lstm_492/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_164/lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_164/lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOpNsequential_164_lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_164/lstm_492/while/lstm_cell_423/MatMul_1MatMul+sequential_164_lstm_492_while_placeholder_2Ksequential_164/lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_164/lstm_492/while/lstm_cell_423/addAddV2<sequential_164/lstm_492/while/lstm_cell_423/MatMul:product:0>sequential_164/lstm_492/while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_164/lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOpMsequential_164_lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_164/lstm_492/while/lstm_cell_423/BiasAddBiasAdd3sequential_164/lstm_492/while/lstm_cell_423/add:z:0Jsequential_164/lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_164/lstm_492/while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_164/lstm_492/while/lstm_cell_423/splitSplitDsequential_164/lstm_492/while/lstm_cell_423/split/split_dim:output:0<sequential_164/lstm_492/while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_164/lstm_492/while/lstm_cell_423/SigmoidSigmoid:sequential_164/lstm_492/while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_164/lstm_492/while/lstm_cell_423/Sigmoid_1Sigmoid:sequential_164/lstm_492/while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_164/lstm_492/while/lstm_cell_423/mulMul9sequential_164/lstm_492/while/lstm_cell_423/Sigmoid_1:y:0+sequential_164_lstm_492_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_164/lstm_492/while/lstm_cell_423/ReluRelu:sequential_164/lstm_492/while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_164/lstm_492/while/lstm_cell_423/mul_1Mul7sequential_164/lstm_492/while/lstm_cell_423/Sigmoid:y:0>sequential_164/lstm_492/while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_164/lstm_492/while/lstm_cell_423/add_1AddV23sequential_164/lstm_492/while/lstm_cell_423/mul:z:05sequential_164/lstm_492/while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_164/lstm_492/while/lstm_cell_423/Sigmoid_2Sigmoid:sequential_164/lstm_492/while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_164/lstm_492/while/lstm_cell_423/Relu_1Relu5sequential_164/lstm_492/while/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_164/lstm_492/while/lstm_cell_423/mul_2Mul9sequential_164/lstm_492/while/lstm_cell_423/Sigmoid_2:y:0@sequential_164/lstm_492/while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_164/lstm_492/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_164_lstm_492_while_placeholder_1)sequential_164_lstm_492_while_placeholder5sequential_164/lstm_492/while/lstm_cell_423/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_164/lstm_492/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_164/lstm_492/while/addAddV2)sequential_164_lstm_492_while_placeholder,sequential_164/lstm_492/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_164/lstm_492/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_164/lstm_492/while/add_1AddV2Hsequential_164_lstm_492_while_sequential_164_lstm_492_while_loop_counter.sequential_164/lstm_492/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_164/lstm_492/while/IdentityIdentity'sequential_164/lstm_492/while/add_1:z:0#^sequential_164/lstm_492/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_492/while/Identity_1IdentityNsequential_164_lstm_492_while_sequential_164_lstm_492_while_maximum_iterations#^sequential_164/lstm_492/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_492/while/Identity_2Identity%sequential_164/lstm_492/while/add:z:0#^sequential_164/lstm_492/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_492/while/Identity_3IdentityRsequential_164/lstm_492/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_164/lstm_492/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_492/while/Identity_4Identity5sequential_164/lstm_492/while/lstm_cell_423/mul_2:z:0#^sequential_164/lstm_492/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_164/lstm_492/while/Identity_5Identity5sequential_164/lstm_492/while/lstm_cell_423/add_1:z:0#^sequential_164/lstm_492/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_164/lstm_492/while/NoOpNoOpC^sequential_164/lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOpB^sequential_164/lstm_492/while/lstm_cell_423/MatMul/ReadVariableOpD^sequential_164/lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_164_lstm_492_while_identity/sequential_164/lstm_492/while/Identity:output:0"]
(sequential_164_lstm_492_while_identity_11sequential_164/lstm_492/while/Identity_1:output:0"]
(sequential_164_lstm_492_while_identity_21sequential_164/lstm_492/while/Identity_2:output:0"]
(sequential_164_lstm_492_while_identity_31sequential_164/lstm_492/while/Identity_3:output:0"]
(sequential_164_lstm_492_while_identity_41sequential_164/lstm_492/while/Identity_4:output:0"]
(sequential_164_lstm_492_while_identity_51sequential_164/lstm_492/while/Identity_5:output:0"?
Ksequential_164_lstm_492_while_lstm_cell_423_biasadd_readvariableop_resourceMsequential_164_lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0"?
Lsequential_164_lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resourceNsequential_164_lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0"?
Jsequential_164_lstm_492_while_lstm_cell_423_matmul_readvariableop_resourceLsequential_164_lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0"?
Esequential_164_lstm_492_while_sequential_164_lstm_492_strided_slice_1Gsequential_164_lstm_492_while_sequential_164_lstm_492_strided_slice_1_0"?
?sequential_164_lstm_492_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_492_tensorarrayunstack_tensorlistfromtensor?sequential_164_lstm_492_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_492_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_164/lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOpBsequential_164/lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp2?
Asequential_164/lstm_492/while/lstm_cell_423/MatMul/ReadVariableOpAsequential_164/lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp2?
Csequential_164/lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOpCsequential_164/lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2573989
inputs_0>
,lstm_cell_425_matmul_readvariableop_resource:2(@
.lstm_cell_425_matmul_1_readvariableop_resource:
(;
-lstm_cell_425_biasadd_readvariableop_resource:(
identity??$lstm_cell_425/BiasAdd/ReadVariableOp?#lstm_cell_425/MatMul/ReadVariableOp?%lstm_cell_425/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_425/MatMul/ReadVariableOpReadVariableOp,lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_425/MatMulMatMulstrided_slice_2:output:0+lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_425/MatMul_1MatMulzeros:output:0-lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_425/addAddV2lstm_cell_425/MatMul:product:0 lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_425/BiasAddBiasAddlstm_cell_425/add:z:0,lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_425/splitSplit&lstm_cell_425/split/split_dim:output:0lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_425/SigmoidSigmoidlstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_1Sigmoidlstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_425/mulMullstm_cell_425/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_425/ReluRelulstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_1Mullstm_cell_425/Sigmoid:y:0 lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_425/add_1AddV2lstm_cell_425/mul:z:0lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_2Sigmoidlstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_425/Relu_1Relulstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_2Mullstm_cell_425/Sigmoid_2:y:0"lstm_cell_425/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_425_matmul_readvariableop_resource.lstm_cell_425_matmul_1_readvariableop_resource-lstm_cell_425_biasadd_readvariableop_resource*
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
while_body_2573905*
condR
while_cond_2573904*K
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
NoOpNoOp%^lstm_cell_425/BiasAdd/ReadVariableOp$^lstm_cell_425/MatMul/ReadVariableOp&^lstm_cell_425/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_425/BiasAdd/ReadVariableOp$lstm_cell_425/BiasAdd/ReadVariableOp2J
#lstm_cell_425/MatMul/ReadVariableOp#lstm_cell_425/MatMul/ReadVariableOp2N
%lstm_cell_425/MatMul_1/ReadVariableOp%lstm_cell_425/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_492_layer_call_and_return_conditional_losses_2573043

inputs?
,lstm_cell_423_matmul_readvariableop_resource:	?A
.lstm_cell_423_matmul_1_readvariableop_resource:	d?<
-lstm_cell_423_biasadd_readvariableop_resource:	?
identity??$lstm_cell_423/BiasAdd/ReadVariableOp?#lstm_cell_423/MatMul/ReadVariableOp?%lstm_cell_423/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_423/MatMul/ReadVariableOpReadVariableOp,lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_423/MatMulMatMulstrided_slice_2:output:0+lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_423/MatMul_1MatMulzeros:output:0-lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_423/addAddV2lstm_cell_423/MatMul:product:0 lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_423/BiasAddBiasAddlstm_cell_423/add:z:0,lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_423/splitSplit&lstm_cell_423/split/split_dim:output:0lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_423/SigmoidSigmoidlstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_1Sigmoidlstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_423/mulMullstm_cell_423/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_423/ReluRelulstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_1Mullstm_cell_423/Sigmoid:y:0 lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_423/add_1AddV2lstm_cell_423/mul:z:0lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_2Sigmoidlstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_423/Relu_1Relulstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_2Mullstm_cell_423/Sigmoid_2:y:0"lstm_cell_423/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_423_matmul_readvariableop_resource.lstm_cell_423_matmul_1_readvariableop_resource-lstm_cell_423_biasadd_readvariableop_resource*
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
while_body_2572959*
condR
while_cond_2572958*K
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
NoOpNoOp%^lstm_cell_423/BiasAdd/ReadVariableOp$^lstm_cell_423/MatMul/ReadVariableOp&^lstm_cell_423/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_423/BiasAdd/ReadVariableOp$lstm_cell_423/BiasAdd/ReadVariableOp2J
#lstm_cell_423/MatMul/ReadVariableOp#lstm_cell_423/MatMul/ReadVariableOp2N
%lstm_cell_423/MatMul_1/ReadVariableOp%lstm_cell_423/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2570182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2570182___redundant_placeholder05
1while_while_cond_2570182___redundant_placeholder15
1while_while_cond_2570182___redundant_placeholder25
1while_while_cond_2570182___redundant_placeholder3
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
while_body_2573905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_425_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_425_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_425_matmul_readvariableop_resource:2(F
4while_lstm_cell_425_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_425_biasadd_readvariableop_resource:(??*while/lstm_cell_425/BiasAdd/ReadVariableOp?)while/lstm_cell_425/MatMul/ReadVariableOp?+while/lstm_cell_425/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_425/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_425/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_425/addAddV2$while/lstm_cell_425/MatMul:product:0&while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_425/BiasAddBiasAddwhile/lstm_cell_425/add:z:02while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_425/splitSplit,while/lstm_cell_425/split/split_dim:output:0$while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_425/SigmoidSigmoid"while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_1Sigmoid"while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mulMul!while/lstm_cell_425/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_425/ReluRelu"while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_1Mulwhile/lstm_cell_425/Sigmoid:y:0&while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/add_1AddV2while/lstm_cell_425/mul:z:0while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_2Sigmoid"while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_425/Relu_1Reluwhile/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_2Mul!while/lstm_cell_425/Sigmoid_2:y:0(while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_425/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_425/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_425/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_425/BiasAdd/ReadVariableOp*^while/lstm_cell_425/MatMul/ReadVariableOp,^while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_425_biasadd_readvariableop_resource5while_lstm_cell_425_biasadd_readvariableop_resource_0"n
4while_lstm_cell_425_matmul_1_readvariableop_resource6while_lstm_cell_425_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_425_matmul_readvariableop_resource4while_lstm_cell_425_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_425/BiasAdd/ReadVariableOp*while/lstm_cell_425/BiasAdd/ReadVariableOp2V
)while/lstm_cell_425/MatMul/ReadVariableOp)while/lstm_cell_425/MatMul/ReadVariableOp2Z
+while/lstm_cell_425/MatMul_1/ReadVariableOp+while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_2575004
file_prefix3
!assignvariableop_dense_164_kernel:
/
!assignvariableop_1_dense_164_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_492_lstm_cell_492_kernel:	?M
:assignvariableop_8_lstm_492_lstm_cell_492_recurrent_kernel:	d?=
.assignvariableop_9_lstm_492_lstm_cell_492_bias:	?D
1assignvariableop_10_lstm_493_lstm_cell_493_kernel:	d?N
;assignvariableop_11_lstm_493_lstm_cell_493_recurrent_kernel:	2?>
/assignvariableop_12_lstm_493_lstm_cell_493_bias:	?C
1assignvariableop_13_lstm_494_lstm_cell_494_kernel:2(M
;assignvariableop_14_lstm_494_lstm_cell_494_recurrent_kernel:
(=
/assignvariableop_15_lstm_494_lstm_cell_494_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_164_kernel_m:
7
)assignvariableop_19_adam_dense_164_bias_m:K
8assignvariableop_20_adam_lstm_492_lstm_cell_492_kernel_m:	?U
Bassignvariableop_21_adam_lstm_492_lstm_cell_492_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_492_lstm_cell_492_bias_m:	?K
8assignvariableop_23_adam_lstm_493_lstm_cell_493_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_493_lstm_cell_493_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_493_lstm_cell_493_bias_m:	?J
8assignvariableop_26_adam_lstm_494_lstm_cell_494_kernel_m:2(T
Bassignvariableop_27_adam_lstm_494_lstm_cell_494_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_494_lstm_cell_494_bias_m:(=
+assignvariableop_29_adam_dense_164_kernel_v:
7
)assignvariableop_30_adam_dense_164_bias_v:K
8assignvariableop_31_adam_lstm_492_lstm_cell_492_kernel_v:	?U
Bassignvariableop_32_adam_lstm_492_lstm_cell_492_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_492_lstm_cell_492_bias_v:	?K
8assignvariableop_34_adam_lstm_493_lstm_cell_493_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_493_lstm_cell_493_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_493_lstm_cell_493_bias_v:	?J
8assignvariableop_37_adam_lstm_494_lstm_cell_494_kernel_v:2(T
Bassignvariableop_38_adam_lstm_494_lstm_cell_494_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_494_lstm_cell_494_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_164_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_164_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_492_lstm_cell_492_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_492_lstm_cell_492_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_492_lstm_cell_492_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_493_lstm_cell_493_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_493_lstm_cell_493_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_493_lstm_cell_493_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_494_lstm_cell_494_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_494_lstm_cell_494_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_494_lstm_cell_494_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_164_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_164_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_492_lstm_cell_492_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_492_lstm_cell_492_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_492_lstm_cell_492_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_493_lstm_cell_493_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_493_lstm_cell_493_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_493_lstm_cell_493_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_494_lstm_cell_494_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_494_lstm_cell_494_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_494_lstm_cell_494_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_164_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_164_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_492_lstm_cell_492_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_492_lstm_cell_492_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_492_lstm_cell_492_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_493_lstm_cell_493_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_493_lstm_cell_493_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_493_lstm_cell_493_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_494_lstm_cell_494_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_494_lstm_cell_494_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_494_lstm_cell_494_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_492_layer_call_and_return_conditional_losses_2571447

inputs?
,lstm_cell_423_matmul_readvariableop_resource:	?A
.lstm_cell_423_matmul_1_readvariableop_resource:	d?<
-lstm_cell_423_biasadd_readvariableop_resource:	?
identity??$lstm_cell_423/BiasAdd/ReadVariableOp?#lstm_cell_423/MatMul/ReadVariableOp?%lstm_cell_423/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_423/MatMul/ReadVariableOpReadVariableOp,lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_423/MatMulMatMulstrided_slice_2:output:0+lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_423/MatMul_1MatMulzeros:output:0-lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_423/addAddV2lstm_cell_423/MatMul:product:0 lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_423/BiasAddBiasAddlstm_cell_423/add:z:0,lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_423/splitSplit&lstm_cell_423/split/split_dim:output:0lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_423/SigmoidSigmoidlstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_1Sigmoidlstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_423/mulMullstm_cell_423/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_423/ReluRelulstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_1Mullstm_cell_423/Sigmoid:y:0 lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_423/add_1AddV2lstm_cell_423/mul:z:0lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_2Sigmoidlstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_423/Relu_1Relulstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_2Mullstm_cell_423/Sigmoid_2:y:0"lstm_cell_423/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_423_matmul_readvariableop_resource.lstm_cell_423_matmul_1_readvariableop_resource-lstm_cell_423_biasadd_readvariableop_resource*
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
while_body_2571363*
condR
while_cond_2571362*K
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
NoOpNoOp%^lstm_cell_423/BiasAdd/ReadVariableOp$^lstm_cell_423/MatMul/ReadVariableOp&^lstm_cell_423/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_423/BiasAdd/ReadVariableOp$lstm_cell_423/BiasAdd/ReadVariableOp2J
#lstm_cell_423/MatMul/ReadVariableOp#lstm_cell_423/MatMul/ReadVariableOp2N
%lstm_cell_423/MatMul_1/ReadVariableOp%lstm_cell_423/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_493_layer_call_fn_2573219

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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2570751s
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
while_cond_2569482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2569482___redundant_placeholder05
1while_while_cond_2569482___redundant_placeholder15
1while_while_cond_2569482___redundant_placeholder25
1while_while_cond_2569482___redundant_placeholder3
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2573186

inputs?
,lstm_cell_423_matmul_readvariableop_resource:	?A
.lstm_cell_423_matmul_1_readvariableop_resource:	d?<
-lstm_cell_423_biasadd_readvariableop_resource:	?
identity??$lstm_cell_423/BiasAdd/ReadVariableOp?#lstm_cell_423/MatMul/ReadVariableOp?%lstm_cell_423/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_423/MatMul/ReadVariableOpReadVariableOp,lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_423/MatMulMatMulstrided_slice_2:output:0+lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_423/MatMul_1MatMulzeros:output:0-lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_423/addAddV2lstm_cell_423/MatMul:product:0 lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_423/BiasAddBiasAddlstm_cell_423/add:z:0,lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_423/splitSplit&lstm_cell_423/split/split_dim:output:0lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_423/SigmoidSigmoidlstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_1Sigmoidlstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_423/mulMullstm_cell_423/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_423/ReluRelulstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_1Mullstm_cell_423/Sigmoid:y:0 lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_423/add_1AddV2lstm_cell_423/mul:z:0lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_2Sigmoidlstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_423/Relu_1Relulstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_2Mullstm_cell_423/Sigmoid_2:y:0"lstm_cell_423/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_423_matmul_readvariableop_resource.lstm_cell_423_matmul_1_readvariableop_resource-lstm_cell_423_biasadd_readvariableop_resource*
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
while_body_2573102*
condR
while_cond_2573101*K
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
NoOpNoOp%^lstm_cell_423/BiasAdd/ReadVariableOp$^lstm_cell_423/MatMul/ReadVariableOp&^lstm_cell_423/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_423/BiasAdd/ReadVariableOp$lstm_cell_423/BiasAdd/ReadVariableOp2J
#lstm_cell_423/MatMul/ReadVariableOp#lstm_cell_423/MatMul/ReadVariableOp2N
%lstm_cell_423/MatMul_1/ReadVariableOp%lstm_cell_423/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2573575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_424_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_424_matmul_readvariableop_resource:	d?G
4while_lstm_cell_424_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_424_biasadd_readvariableop_resource:	???*while/lstm_cell_424/BiasAdd/ReadVariableOp?)while/lstm_cell_424/MatMul/ReadVariableOp?+while/lstm_cell_424/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_424/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_424/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_424/addAddV2$while/lstm_cell_424/MatMul:product:0&while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_424/BiasAddBiasAddwhile/lstm_cell_424/add:z:02while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_424/splitSplit,while/lstm_cell_424/split/split_dim:output:0$while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_424/SigmoidSigmoid"while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_1Sigmoid"while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mulMul!while/lstm_cell_424/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_424/ReluRelu"while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_1Mulwhile/lstm_cell_424/Sigmoid:y:0&while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/add_1AddV2while/lstm_cell_424/mul:z:0while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_2Sigmoid"while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_424/Relu_1Reluwhile/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_2Mul!while/lstm_cell_424/Sigmoid_2:y:0(while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_424/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_424/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_424/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_424/BiasAdd/ReadVariableOp*^while/lstm_cell_424/MatMul/ReadVariableOp,^while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_424_biasadd_readvariableop_resource5while_lstm_cell_424_biasadd_readvariableop_resource_0"n
4while_lstm_cell_424_matmul_1_readvariableop_resource6while_lstm_cell_424_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_424_matmul_readvariableop_resource4while_lstm_cell_424_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_424/BiasAdd/ReadVariableOp*while/lstm_cell_424/BiasAdd/ReadVariableOp2V
)while/lstm_cell_424/MatMul/ReadVariableOp)while/lstm_cell_424/MatMul/ReadVariableOp2Z
+while/lstm_cell_424/MatMul_1/ReadVariableOp+while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570443

inputs'
lstm_cell_425_2570361:2('
lstm_cell_425_2570363:
(#
lstm_cell_425_2570365:(
identity??%lstm_cell_425/StatefulPartitionedCall?while;
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
%lstm_cell_425/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_425_2570361lstm_cell_425_2570363lstm_cell_425_2570365*
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570315n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_425_2570361lstm_cell_425_2570363lstm_cell_425_2570365*
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
while_body_2570374*
condR
while_cond_2570373*K
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
NoOpNoOp&^lstm_cell_425/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_425/StatefulPartitionedCall%lstm_cell_425/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2569832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2569832___redundant_placeholder05
1while_while_cond_2569832___redundant_placeholder15
1while_while_cond_2569832___redundant_placeholder25
1while_while_cond_2569832___redundant_placeholder3
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
0__inference_sequential_164_layer_call_fn_2571567
lstm_492_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_492_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571515o
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
_user_specified_namelstm_492_input
?

?
lstm_492_while_cond_2571774.
*lstm_492_while_lstm_492_while_loop_counter4
0lstm_492_while_lstm_492_while_maximum_iterations
lstm_492_while_placeholder 
lstm_492_while_placeholder_1 
lstm_492_while_placeholder_2 
lstm_492_while_placeholder_30
,lstm_492_while_less_lstm_492_strided_slice_1G
Clstm_492_while_lstm_492_while_cond_2571774___redundant_placeholder0G
Clstm_492_while_lstm_492_while_cond_2571774___redundant_placeholder1G
Clstm_492_while_lstm_492_while_cond_2571774___redundant_placeholder2G
Clstm_492_while_lstm_492_while_cond_2571774___redundant_placeholder3
lstm_492_while_identity
?
lstm_492/while/LessLesslstm_492_while_placeholder,lstm_492_while_less_lstm_492_strided_slice_1*
T0*
_output_shapes
: ]
lstm_492/while/IdentityIdentitylstm_492/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_492_while_identity lstm_492/while/Identity:output:0*(
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570169

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
while_body_2570374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_425_2570398_0:2(/
while_lstm_cell_425_2570400_0:
(+
while_lstm_cell_425_2570402_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_425_2570398:2(-
while_lstm_cell_425_2570400:
()
while_lstm_cell_425_2570402:(??+while/lstm_cell_425/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_425/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_425_2570398_0while_lstm_cell_425_2570400_0while_lstm_cell_425_2570402_0*
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570315?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_425/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_425/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_425/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_425_2570398while_lstm_cell_425_2570398_0"<
while_lstm_cell_425_2570400while_lstm_cell_425_2570400_0"<
while_lstm_cell_425_2570402while_lstm_cell_425_2570402_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_425/StatefulPartitionedCall+while/lstm_cell_425/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574275

inputs>
,lstm_cell_425_matmul_readvariableop_resource:2(@
.lstm_cell_425_matmul_1_readvariableop_resource:
(;
-lstm_cell_425_biasadd_readvariableop_resource:(
identity??$lstm_cell_425/BiasAdd/ReadVariableOp?#lstm_cell_425/MatMul/ReadVariableOp?%lstm_cell_425/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_425/MatMul/ReadVariableOpReadVariableOp,lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_425/MatMulMatMulstrided_slice_2:output:0+lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_425/MatMul_1MatMulzeros:output:0-lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_425/addAddV2lstm_cell_425/MatMul:product:0 lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_425/BiasAddBiasAddlstm_cell_425/add:z:0,lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_425/splitSplit&lstm_cell_425/split/split_dim:output:0lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_425/SigmoidSigmoidlstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_1Sigmoidlstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_425/mulMullstm_cell_425/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_425/ReluRelulstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_1Mullstm_cell_425/Sigmoid:y:0 lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_425/add_1AddV2lstm_cell_425/mul:z:0lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_2Sigmoidlstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_425/Relu_1Relulstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_2Mullstm_cell_425/Sigmoid_2:y:0"lstm_cell_425/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_425_matmul_readvariableop_resource.lstm_cell_425_matmul_1_readvariableop_resource-lstm_cell_425_biasadd_readvariableop_resource*
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
while_body_2574191*
condR
while_cond_2574190*K
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
NoOpNoOp%^lstm_cell_425/BiasAdd/ReadVariableOp$^lstm_cell_425/MatMul/ReadVariableOp&^lstm_cell_425/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_425/BiasAdd/ReadVariableOp$lstm_cell_425/BiasAdd/ReadVariableOp2J
#lstm_cell_425/MatMul/ReadVariableOp#lstm_cell_425/MatMul/ReadVariableOp2N
%lstm_cell_425/MatMul_1/ReadVariableOp%lstm_cell_425/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2571362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2571362___redundant_placeholder05
1while_while_cond_2571362___redundant_placeholder15
1while_while_cond_2571362___redundant_placeholder25
1while_while_cond_2571362___redundant_placeholder3
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
while_body_2569483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_423_2569507_0:	?0
while_lstm_cell_423_2569509_0:	d?,
while_lstm_cell_423_2569511_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_423_2569507:	?.
while_lstm_cell_423_2569509:	d?*
while_lstm_cell_423_2569511:	???+while/lstm_cell_423/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_423/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_423_2569507_0while_lstm_cell_423_2569509_0while_lstm_cell_423_2569511_0*
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569469?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_423/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_423/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_423/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_423/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_423_2569507while_lstm_cell_423_2569507_0"<
while_lstm_cell_423_2569509while_lstm_cell_423_2569509_0"<
while_lstm_cell_423_2569511while_lstm_cell_423_2569511_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_423/StatefulPartitionedCall+while/lstm_cell_423/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2574190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2574190___redundant_placeholder05
1while_while_cond_2574190___redundant_placeholder15
1while_while_cond_2574190___redundant_placeholder25
1while_while_cond_2574190___redundant_placeholder3
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
*__inference_lstm_493_layer_call_fn_2573208
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2570093|
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

lstm_493_while_body_2572341.
*lstm_493_while_lstm_493_while_loop_counter4
0lstm_493_while_lstm_493_while_maximum_iterations
lstm_493_while_placeholder 
lstm_493_while_placeholder_1 
lstm_493_while_placeholder_2 
lstm_493_while_placeholder_3-
)lstm_493_while_lstm_493_strided_slice_1_0i
elstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0:	d?R
?lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?M
>lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
lstm_493_while_identity
lstm_493_while_identity_1
lstm_493_while_identity_2
lstm_493_while_identity_3
lstm_493_while_identity_4
lstm_493_while_identity_5+
'lstm_493_while_lstm_493_strided_slice_1g
clstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensorN
;lstm_493_while_lstm_cell_424_matmul_readvariableop_resource:	d?P
=lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource:	2?K
<lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource:	???3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp?2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp?4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp?
@lstm_493/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_493/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensor_0lstm_493_while_placeholderIlstm_493/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp=lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_493/while/lstm_cell_424/MatMulMatMul9lstm_493/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp?lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_493/while/lstm_cell_424/MatMul_1MatMullstm_493_while_placeholder_2<lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_493/while/lstm_cell_424/addAddV2-lstm_493/while/lstm_cell_424/MatMul:product:0/lstm_493/while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp>lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_493/while/lstm_cell_424/BiasAddBiasAdd$lstm_493/while/lstm_cell_424/add:z:0;lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_493/while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_493/while/lstm_cell_424/splitSplit5lstm_493/while/lstm_cell_424/split/split_dim:output:0-lstm_493/while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_493/while/lstm_cell_424/SigmoidSigmoid+lstm_493/while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_493/while/lstm_cell_424/Sigmoid_1Sigmoid+lstm_493/while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_493/while/lstm_cell_424/mulMul*lstm_493/while/lstm_cell_424/Sigmoid_1:y:0lstm_493_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_493/while/lstm_cell_424/ReluRelu+lstm_493/while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_493/while/lstm_cell_424/mul_1Mul(lstm_493/while/lstm_cell_424/Sigmoid:y:0/lstm_493/while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_493/while/lstm_cell_424/add_1AddV2$lstm_493/while/lstm_cell_424/mul:z:0&lstm_493/while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_493/while/lstm_cell_424/Sigmoid_2Sigmoid+lstm_493/while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_493/while/lstm_cell_424/Relu_1Relu&lstm_493/while/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_493/while/lstm_cell_424/mul_2Mul*lstm_493/while/lstm_cell_424/Sigmoid_2:y:01lstm_493/while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_493/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_493_while_placeholder_1lstm_493_while_placeholder&lstm_493/while/lstm_cell_424/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_493/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_493/while/addAddV2lstm_493_while_placeholderlstm_493/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_493/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_493/while/add_1AddV2*lstm_493_while_lstm_493_while_loop_counterlstm_493/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_493/while/IdentityIdentitylstm_493/while/add_1:z:0^lstm_493/while/NoOp*
T0*
_output_shapes
: ?
lstm_493/while/Identity_1Identity0lstm_493_while_lstm_493_while_maximum_iterations^lstm_493/while/NoOp*
T0*
_output_shapes
: t
lstm_493/while/Identity_2Identitylstm_493/while/add:z:0^lstm_493/while/NoOp*
T0*
_output_shapes
: ?
lstm_493/while/Identity_3IdentityClstm_493/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_493/while/NoOp*
T0*
_output_shapes
: ?
lstm_493/while/Identity_4Identity&lstm_493/while/lstm_cell_424/mul_2:z:0^lstm_493/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_493/while/Identity_5Identity&lstm_493/while/lstm_cell_424/add_1:z:0^lstm_493/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_493/while/NoOpNoOp4^lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp3^lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp5^lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_493_while_identity lstm_493/while/Identity:output:0"?
lstm_493_while_identity_1"lstm_493/while/Identity_1:output:0"?
lstm_493_while_identity_2"lstm_493/while/Identity_2:output:0"?
lstm_493_while_identity_3"lstm_493/while/Identity_3:output:0"?
lstm_493_while_identity_4"lstm_493/while/Identity_4:output:0"?
lstm_493_while_identity_5"lstm_493/while/Identity_5:output:0"T
'lstm_493_while_lstm_493_strided_slice_1)lstm_493_while_lstm_493_strided_slice_1_0"~
<lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource>lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0"?
=lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource?lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0"|
;lstm_493_while_lstm_cell_424_matmul_readvariableop_resource=lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0"?
clstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensorelstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp2h
2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp2l
4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_2574874
file_prefix/
+savev2_dense_164_kernel_read_readvariableop-
)savev2_dense_164_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_492_lstm_cell_492_kernel_read_readvariableopF
Bsavev2_lstm_492_lstm_cell_492_recurrent_kernel_read_readvariableop:
6savev2_lstm_492_lstm_cell_492_bias_read_readvariableop<
8savev2_lstm_493_lstm_cell_493_kernel_read_readvariableopF
Bsavev2_lstm_493_lstm_cell_493_recurrent_kernel_read_readvariableop:
6savev2_lstm_493_lstm_cell_493_bias_read_readvariableop<
8savev2_lstm_494_lstm_cell_494_kernel_read_readvariableopF
Bsavev2_lstm_494_lstm_cell_494_recurrent_kernel_read_readvariableop:
6savev2_lstm_494_lstm_cell_494_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_164_kernel_m_read_readvariableop4
0savev2_adam_dense_164_bias_m_read_readvariableopC
?savev2_adam_lstm_492_lstm_cell_492_kernel_m_read_readvariableopM
Isavev2_adam_lstm_492_lstm_cell_492_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_492_lstm_cell_492_bias_m_read_readvariableopC
?savev2_adam_lstm_493_lstm_cell_493_kernel_m_read_readvariableopM
Isavev2_adam_lstm_493_lstm_cell_493_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_493_lstm_cell_493_bias_m_read_readvariableopC
?savev2_adam_lstm_494_lstm_cell_494_kernel_m_read_readvariableopM
Isavev2_adam_lstm_494_lstm_cell_494_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_494_lstm_cell_494_bias_m_read_readvariableop6
2savev2_adam_dense_164_kernel_v_read_readvariableop4
0savev2_adam_dense_164_bias_v_read_readvariableopC
?savev2_adam_lstm_492_lstm_cell_492_kernel_v_read_readvariableopM
Isavev2_adam_lstm_492_lstm_cell_492_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_492_lstm_cell_492_bias_v_read_readvariableopC
?savev2_adam_lstm_493_lstm_cell_493_kernel_v_read_readvariableopM
Isavev2_adam_lstm_493_lstm_cell_493_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_493_lstm_cell_493_bias_v_read_readvariableopC
?savev2_adam_lstm_494_lstm_cell_494_kernel_v_read_readvariableopM
Isavev2_adam_lstm_494_lstm_cell_494_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_494_lstm_cell_494_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_164_kernel_read_readvariableop)savev2_dense_164_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_492_lstm_cell_492_kernel_read_readvariableopBsavev2_lstm_492_lstm_cell_492_recurrent_kernel_read_readvariableop6savev2_lstm_492_lstm_cell_492_bias_read_readvariableop8savev2_lstm_493_lstm_cell_493_kernel_read_readvariableopBsavev2_lstm_493_lstm_cell_493_recurrent_kernel_read_readvariableop6savev2_lstm_493_lstm_cell_493_bias_read_readvariableop8savev2_lstm_494_lstm_cell_494_kernel_read_readvariableopBsavev2_lstm_494_lstm_cell_494_recurrent_kernel_read_readvariableop6savev2_lstm_494_lstm_cell_494_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_164_kernel_m_read_readvariableop0savev2_adam_dense_164_bias_m_read_readvariableop?savev2_adam_lstm_492_lstm_cell_492_kernel_m_read_readvariableopIsavev2_adam_lstm_492_lstm_cell_492_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_492_lstm_cell_492_bias_m_read_readvariableop?savev2_adam_lstm_493_lstm_cell_493_kernel_m_read_readvariableopIsavev2_adam_lstm_493_lstm_cell_493_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_493_lstm_cell_493_bias_m_read_readvariableop?savev2_adam_lstm_494_lstm_cell_494_kernel_m_read_readvariableopIsavev2_adam_lstm_494_lstm_cell_494_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_494_lstm_cell_494_bias_m_read_readvariableop2savev2_adam_dense_164_kernel_v_read_readvariableop0savev2_adam_dense_164_bias_v_read_readvariableop?savev2_adam_lstm_492_lstm_cell_492_kernel_v_read_readvariableopIsavev2_adam_lstm_492_lstm_cell_492_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_492_lstm_cell_492_bias_v_read_readvariableop?savev2_adam_lstm_493_lstm_cell_493_kernel_v_read_readvariableopIsavev2_adam_lstm_493_lstm_cell_493_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_493_lstm_cell_493_bias_v_read_readvariableop?savev2_adam_lstm_494_lstm_cell_494_kernel_v_read_readvariableopIsavev2_adam_lstm_494_lstm_cell_494_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_494_lstm_cell_494_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_2570024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_424_2570048_0:	d?0
while_lstm_cell_424_2570050_0:	2?,
while_lstm_cell_424_2570052_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_424_2570048:	d?.
while_lstm_cell_424_2570050:	2?*
while_lstm_cell_424_2570052:	???+while/lstm_cell_424/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_424/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_424_2570048_0while_lstm_cell_424_2570050_0while_lstm_cell_424_2570052_0*
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569965?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_424/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_424/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_424/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_424/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_424_2570048while_lstm_cell_424_2570048_0"<
while_lstm_cell_424_2570050while_lstm_cell_424_2570050_0"<
while_lstm_cell_424_2570052while_lstm_cell_424_2570052_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_424/StatefulPartitionedCall+while/lstm_cell_424/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2569552

inputs(
lstm_cell_423_2569470:	?(
lstm_cell_423_2569472:	d?$
lstm_cell_423_2569474:	?
identity??%lstm_cell_423/StatefulPartitionedCall?while;
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
%lstm_cell_423/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_423_2569470lstm_cell_423_2569472lstm_cell_423_2569474*
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569469n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_423_2569470lstm_cell_423_2569472lstm_cell_423_2569474*
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
while_body_2569483*
condR
while_cond_2569482*K
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
NoOpNoOp&^lstm_cell_423/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_423/StatefulPartitionedCall%lstm_cell_423/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2572672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2572672___redundant_placeholder05
1while_while_cond_2572672___redundant_placeholder15
1while_while_cond_2572672___redundant_placeholder25
1while_while_cond_2572672___redundant_placeholder3
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
while_cond_2572815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2572815___redundant_placeholder05
1while_while_cond_2572815___redundant_placeholder15
1while_while_cond_2572815___redundant_placeholder25
1while_while_cond_2572815___redundant_placeholder3
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2574535

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
??
?
K__inference_sequential_164_layer_call_and_return_conditional_losses_2572143

inputsH
5lstm_492_lstm_cell_423_matmul_readvariableop_resource:	?J
7lstm_492_lstm_cell_423_matmul_1_readvariableop_resource:	d?E
6lstm_492_lstm_cell_423_biasadd_readvariableop_resource:	?H
5lstm_493_lstm_cell_424_matmul_readvariableop_resource:	d?J
7lstm_493_lstm_cell_424_matmul_1_readvariableop_resource:	2?E
6lstm_493_lstm_cell_424_biasadd_readvariableop_resource:	?G
5lstm_494_lstm_cell_425_matmul_readvariableop_resource:2(I
7lstm_494_lstm_cell_425_matmul_1_readvariableop_resource:
(D
6lstm_494_lstm_cell_425_biasadd_readvariableop_resource:(:
(dense_164_matmul_readvariableop_resource:
7
)dense_164_biasadd_readvariableop_resource:
identity?? dense_164/BiasAdd/ReadVariableOp?dense_164/MatMul/ReadVariableOp?-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp?,lstm_492/lstm_cell_423/MatMul/ReadVariableOp?.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp?lstm_492/while?-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp?,lstm_493/lstm_cell_424/MatMul/ReadVariableOp?.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp?lstm_493/while?-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp?,lstm_494/lstm_cell_425/MatMul/ReadVariableOp?.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp?lstm_494/whileD
lstm_492/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_492/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_492/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_492/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_sliceStridedSlicelstm_492/Shape:output:0%lstm_492/strided_slice/stack:output:0'lstm_492/strided_slice/stack_1:output:0'lstm_492/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_492/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_492/zeros/packedPacklstm_492/strided_slice:output:0 lstm_492/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_492/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_492/zerosFilllstm_492/zeros/packed:output:0lstm_492/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_492/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_492/zeros_1/packedPacklstm_492/strided_slice:output:0"lstm_492/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_492/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_492/zeros_1Fill lstm_492/zeros_1/packed:output:0lstm_492/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_492/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_492/transpose	Transposeinputs lstm_492/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_492/Shape_1Shapelstm_492/transpose:y:0*
T0*
_output_shapes
:h
lstm_492/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_492/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_492/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_slice_1StridedSlicelstm_492/Shape_1:output:0'lstm_492/strided_slice_1/stack:output:0)lstm_492/strided_slice_1/stack_1:output:0)lstm_492/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_492/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_492/TensorArrayV2TensorListReserve-lstm_492/TensorArrayV2/element_shape:output:0!lstm_492/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_492/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_492/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_492/transpose:y:0Glstm_492/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_492/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_492/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_492/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_slice_2StridedSlicelstm_492/transpose:y:0'lstm_492/strided_slice_2/stack:output:0)lstm_492/strided_slice_2/stack_1:output:0)lstm_492/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_492/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp5lstm_492_lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_492/lstm_cell_423/MatMulMatMul!lstm_492/strided_slice_2:output:04lstm_492/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp7lstm_492_lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_492/lstm_cell_423/MatMul_1MatMullstm_492/zeros:output:06lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_492/lstm_cell_423/addAddV2'lstm_492/lstm_cell_423/MatMul:product:0)lstm_492/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp6lstm_492_lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_492/lstm_cell_423/BiasAddBiasAddlstm_492/lstm_cell_423/add:z:05lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_492/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_492/lstm_cell_423/splitSplit/lstm_492/lstm_cell_423/split/split_dim:output:0'lstm_492/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_492/lstm_cell_423/SigmoidSigmoid%lstm_492/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_492/lstm_cell_423/Sigmoid_1Sigmoid%lstm_492/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/mulMul$lstm_492/lstm_cell_423/Sigmoid_1:y:0lstm_492/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_492/lstm_cell_423/ReluRelu%lstm_492/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/mul_1Mul"lstm_492/lstm_cell_423/Sigmoid:y:0)lstm_492/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/add_1AddV2lstm_492/lstm_cell_423/mul:z:0 lstm_492/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_492/lstm_cell_423/Sigmoid_2Sigmoid%lstm_492/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_492/lstm_cell_423/Relu_1Relu lstm_492/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/mul_2Mul$lstm_492/lstm_cell_423/Sigmoid_2:y:0+lstm_492/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_492/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_492/TensorArrayV2_1TensorListReserve/lstm_492/TensorArrayV2_1/element_shape:output:0!lstm_492/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_492/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_492/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_492/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_492/whileWhile$lstm_492/while/loop_counter:output:0*lstm_492/while/maximum_iterations:output:0lstm_492/time:output:0!lstm_492/TensorArrayV2_1:handle:0lstm_492/zeros:output:0lstm_492/zeros_1:output:0!lstm_492/strided_slice_1:output:0@lstm_492/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_492_lstm_cell_423_matmul_readvariableop_resource7lstm_492_lstm_cell_423_matmul_1_readvariableop_resource6lstm_492_lstm_cell_423_biasadd_readvariableop_resource*
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
lstm_492_while_body_2571775*'
condR
lstm_492_while_cond_2571774*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_492/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_492/TensorArrayV2Stack/TensorListStackTensorListStacklstm_492/while:output:3Blstm_492/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_492/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_492/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_492/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_slice_3StridedSlice4lstm_492/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_492/strided_slice_3/stack:output:0)lstm_492/strided_slice_3/stack_1:output:0)lstm_492/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_492/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_492/transpose_1	Transpose4lstm_492/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_492/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_492/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_493/ShapeShapelstm_492/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_493/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_493/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_493/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_sliceStridedSlicelstm_493/Shape:output:0%lstm_493/strided_slice/stack:output:0'lstm_493/strided_slice/stack_1:output:0'lstm_493/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_493/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_493/zeros/packedPacklstm_493/strided_slice:output:0 lstm_493/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_493/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_493/zerosFilllstm_493/zeros/packed:output:0lstm_493/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_493/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_493/zeros_1/packedPacklstm_493/strided_slice:output:0"lstm_493/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_493/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_493/zeros_1Fill lstm_493/zeros_1/packed:output:0lstm_493/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_493/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_493/transpose	Transposelstm_492/transpose_1:y:0 lstm_493/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_493/Shape_1Shapelstm_493/transpose:y:0*
T0*
_output_shapes
:h
lstm_493/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_493/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_493/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_slice_1StridedSlicelstm_493/Shape_1:output:0'lstm_493/strided_slice_1/stack:output:0)lstm_493/strided_slice_1/stack_1:output:0)lstm_493/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_493/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_493/TensorArrayV2TensorListReserve-lstm_493/TensorArrayV2/element_shape:output:0!lstm_493/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_493/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_493/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_493/transpose:y:0Glstm_493/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_493/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_493/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_493/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_slice_2StridedSlicelstm_493/transpose:y:0'lstm_493/strided_slice_2/stack:output:0)lstm_493/strided_slice_2/stack_1:output:0)lstm_493/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_493/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp5lstm_493_lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_493/lstm_cell_424/MatMulMatMul!lstm_493/strided_slice_2:output:04lstm_493/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp7lstm_493_lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_493/lstm_cell_424/MatMul_1MatMullstm_493/zeros:output:06lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_493/lstm_cell_424/addAddV2'lstm_493/lstm_cell_424/MatMul:product:0)lstm_493/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp6lstm_493_lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_493/lstm_cell_424/BiasAddBiasAddlstm_493/lstm_cell_424/add:z:05lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_493/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_493/lstm_cell_424/splitSplit/lstm_493/lstm_cell_424/split/split_dim:output:0'lstm_493/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_493/lstm_cell_424/SigmoidSigmoid%lstm_493/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_493/lstm_cell_424/Sigmoid_1Sigmoid%lstm_493/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/mulMul$lstm_493/lstm_cell_424/Sigmoid_1:y:0lstm_493/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_493/lstm_cell_424/ReluRelu%lstm_493/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/mul_1Mul"lstm_493/lstm_cell_424/Sigmoid:y:0)lstm_493/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/add_1AddV2lstm_493/lstm_cell_424/mul:z:0 lstm_493/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_493/lstm_cell_424/Sigmoid_2Sigmoid%lstm_493/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_493/lstm_cell_424/Relu_1Relu lstm_493/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/mul_2Mul$lstm_493/lstm_cell_424/Sigmoid_2:y:0+lstm_493/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_493/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_493/TensorArrayV2_1TensorListReserve/lstm_493/TensorArrayV2_1/element_shape:output:0!lstm_493/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_493/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_493/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_493/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_493/whileWhile$lstm_493/while/loop_counter:output:0*lstm_493/while/maximum_iterations:output:0lstm_493/time:output:0!lstm_493/TensorArrayV2_1:handle:0lstm_493/zeros:output:0lstm_493/zeros_1:output:0!lstm_493/strided_slice_1:output:0@lstm_493/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_493_lstm_cell_424_matmul_readvariableop_resource7lstm_493_lstm_cell_424_matmul_1_readvariableop_resource6lstm_493_lstm_cell_424_biasadd_readvariableop_resource*
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
lstm_493_while_body_2571914*'
condR
lstm_493_while_cond_2571913*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_493/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_493/TensorArrayV2Stack/TensorListStackTensorListStacklstm_493/while:output:3Blstm_493/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_493/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_493/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_493/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_slice_3StridedSlice4lstm_493/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_493/strided_slice_3/stack:output:0)lstm_493/strided_slice_3/stack_1:output:0)lstm_493/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_493/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_493/transpose_1	Transpose4lstm_493/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_493/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_493/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_494/ShapeShapelstm_493/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_494/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_494/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_494/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_sliceStridedSlicelstm_494/Shape:output:0%lstm_494/strided_slice/stack:output:0'lstm_494/strided_slice/stack_1:output:0'lstm_494/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_494/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_494/zeros/packedPacklstm_494/strided_slice:output:0 lstm_494/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_494/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_494/zerosFilllstm_494/zeros/packed:output:0lstm_494/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_494/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_494/zeros_1/packedPacklstm_494/strided_slice:output:0"lstm_494/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_494/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_494/zeros_1Fill lstm_494/zeros_1/packed:output:0lstm_494/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_494/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_494/transpose	Transposelstm_493/transpose_1:y:0 lstm_494/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_494/Shape_1Shapelstm_494/transpose:y:0*
T0*
_output_shapes
:h
lstm_494/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_494/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_494/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_slice_1StridedSlicelstm_494/Shape_1:output:0'lstm_494/strided_slice_1/stack:output:0)lstm_494/strided_slice_1/stack_1:output:0)lstm_494/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_494/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_494/TensorArrayV2TensorListReserve-lstm_494/TensorArrayV2/element_shape:output:0!lstm_494/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_494/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_494/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_494/transpose:y:0Glstm_494/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_494/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_494/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_494/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_slice_2StridedSlicelstm_494/transpose:y:0'lstm_494/strided_slice_2/stack:output:0)lstm_494/strided_slice_2/stack_1:output:0)lstm_494/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_494/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp5lstm_494_lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_494/lstm_cell_425/MatMulMatMul!lstm_494/strided_slice_2:output:04lstm_494/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp7lstm_494_lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_494/lstm_cell_425/MatMul_1MatMullstm_494/zeros:output:06lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_494/lstm_cell_425/addAddV2'lstm_494/lstm_cell_425/MatMul:product:0)lstm_494/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp6lstm_494_lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_494/lstm_cell_425/BiasAddBiasAddlstm_494/lstm_cell_425/add:z:05lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_494/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_494/lstm_cell_425/splitSplit/lstm_494/lstm_cell_425/split/split_dim:output:0'lstm_494/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_494/lstm_cell_425/SigmoidSigmoid%lstm_494/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_494/lstm_cell_425/Sigmoid_1Sigmoid%lstm_494/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/mulMul$lstm_494/lstm_cell_425/Sigmoid_1:y:0lstm_494/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_494/lstm_cell_425/ReluRelu%lstm_494/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/mul_1Mul"lstm_494/lstm_cell_425/Sigmoid:y:0)lstm_494/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/add_1AddV2lstm_494/lstm_cell_425/mul:z:0 lstm_494/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_494/lstm_cell_425/Sigmoid_2Sigmoid%lstm_494/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_494/lstm_cell_425/Relu_1Relu lstm_494/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/mul_2Mul$lstm_494/lstm_cell_425/Sigmoid_2:y:0+lstm_494/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_494/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_494/TensorArrayV2_1TensorListReserve/lstm_494/TensorArrayV2_1/element_shape:output:0!lstm_494/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_494/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_494/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_494/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_494/whileWhile$lstm_494/while/loop_counter:output:0*lstm_494/while/maximum_iterations:output:0lstm_494/time:output:0!lstm_494/TensorArrayV2_1:handle:0lstm_494/zeros:output:0lstm_494/zeros_1:output:0!lstm_494/strided_slice_1:output:0@lstm_494/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_494_lstm_cell_425_matmul_readvariableop_resource7lstm_494_lstm_cell_425_matmul_1_readvariableop_resource6lstm_494_lstm_cell_425_biasadd_readvariableop_resource*
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
lstm_494_while_body_2572053*'
condR
lstm_494_while_cond_2572052*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_494/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_494/TensorArrayV2Stack/TensorListStackTensorListStacklstm_494/while:output:3Blstm_494/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_494/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_494/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_494/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_slice_3StridedSlice4lstm_494/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_494/strided_slice_3/stack:output:0)lstm_494/strided_slice_3/stack_1:output:0)lstm_494/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_494/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_494/transpose_1	Transpose4lstm_494/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_494/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_494/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_164/MatMul/ReadVariableOpReadVariableOp(dense_164_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_164/MatMulMatMul!lstm_494/strided_slice_3:output:0'dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_164/BiasAdd/ReadVariableOpReadVariableOp)dense_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_164/BiasAddBiasAdddense_164/MatMul:product:0(dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_164/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_164/BiasAdd/ReadVariableOp ^dense_164/MatMul/ReadVariableOp.^lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp-^lstm_492/lstm_cell_423/MatMul/ReadVariableOp/^lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp^lstm_492/while.^lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp-^lstm_493/lstm_cell_424/MatMul/ReadVariableOp/^lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp^lstm_493/while.^lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp-^lstm_494/lstm_cell_425/MatMul/ReadVariableOp/^lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp^lstm_494/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_164/BiasAdd/ReadVariableOp dense_164/BiasAdd/ReadVariableOp2B
dense_164/MatMul/ReadVariableOpdense_164/MatMul/ReadVariableOp2^
-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp2\
,lstm_492/lstm_cell_423/MatMul/ReadVariableOp,lstm_492/lstm_cell_423/MatMul/ReadVariableOp2`
.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp2 
lstm_492/whilelstm_492/while2^
-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp2\
,lstm_493/lstm_cell_424/MatMul/ReadVariableOp,lstm_493/lstm_cell_424/MatMul/ReadVariableOp2`
.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp2 
lstm_493/whilelstm_493/while2^
-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp2\
,lstm_494/lstm_cell_425/MatMul/ReadVariableOp,lstm_494/lstm_cell_425/MatMul/ReadVariableOp2`
.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp2 
lstm_494/whilelstm_494/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_494_while_body_2572480.
*lstm_494_while_lstm_494_while_loop_counter4
0lstm_494_while_lstm_494_while_maximum_iterations
lstm_494_while_placeholder 
lstm_494_while_placeholder_1 
lstm_494_while_placeholder_2 
lstm_494_while_placeholder_3-
)lstm_494_while_lstm_494_strided_slice_1_0i
elstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0:2(Q
?lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(L
>lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0:(
lstm_494_while_identity
lstm_494_while_identity_1
lstm_494_while_identity_2
lstm_494_while_identity_3
lstm_494_while_identity_4
lstm_494_while_identity_5+
'lstm_494_while_lstm_494_strided_slice_1g
clstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensorM
;lstm_494_while_lstm_cell_425_matmul_readvariableop_resource:2(O
=lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource:
(J
<lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource:(??3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp?2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp?4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp?
@lstm_494/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_494/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensor_0lstm_494_while_placeholderIlstm_494/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp=lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_494/while/lstm_cell_425/MatMulMatMul9lstm_494/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp?lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_494/while/lstm_cell_425/MatMul_1MatMullstm_494_while_placeholder_2<lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_494/while/lstm_cell_425/addAddV2-lstm_494/while/lstm_cell_425/MatMul:product:0/lstm_494/while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp>lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_494/while/lstm_cell_425/BiasAddBiasAdd$lstm_494/while/lstm_cell_425/add:z:0;lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_494/while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_494/while/lstm_cell_425/splitSplit5lstm_494/while/lstm_cell_425/split/split_dim:output:0-lstm_494/while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_494/while/lstm_cell_425/SigmoidSigmoid+lstm_494/while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_494/while/lstm_cell_425/Sigmoid_1Sigmoid+lstm_494/while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_494/while/lstm_cell_425/mulMul*lstm_494/while/lstm_cell_425/Sigmoid_1:y:0lstm_494_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_494/while/lstm_cell_425/ReluRelu+lstm_494/while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_494/while/lstm_cell_425/mul_1Mul(lstm_494/while/lstm_cell_425/Sigmoid:y:0/lstm_494/while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_494/while/lstm_cell_425/add_1AddV2$lstm_494/while/lstm_cell_425/mul:z:0&lstm_494/while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_494/while/lstm_cell_425/Sigmoid_2Sigmoid+lstm_494/while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_494/while/lstm_cell_425/Relu_1Relu&lstm_494/while/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_494/while/lstm_cell_425/mul_2Mul*lstm_494/while/lstm_cell_425/Sigmoid_2:y:01lstm_494/while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_494/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_494_while_placeholder_1lstm_494_while_placeholder&lstm_494/while/lstm_cell_425/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_494/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_494/while/addAddV2lstm_494_while_placeholderlstm_494/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_494/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_494/while/add_1AddV2*lstm_494_while_lstm_494_while_loop_counterlstm_494/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_494/while/IdentityIdentitylstm_494/while/add_1:z:0^lstm_494/while/NoOp*
T0*
_output_shapes
: ?
lstm_494/while/Identity_1Identity0lstm_494_while_lstm_494_while_maximum_iterations^lstm_494/while/NoOp*
T0*
_output_shapes
: t
lstm_494/while/Identity_2Identitylstm_494/while/add:z:0^lstm_494/while/NoOp*
T0*
_output_shapes
: ?
lstm_494/while/Identity_3IdentityClstm_494/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_494/while/NoOp*
T0*
_output_shapes
: ?
lstm_494/while/Identity_4Identity&lstm_494/while/lstm_cell_425/mul_2:z:0^lstm_494/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_494/while/Identity_5Identity&lstm_494/while/lstm_cell_425/add_1:z:0^lstm_494/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_494/while/NoOpNoOp4^lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp3^lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp5^lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_494_while_identity lstm_494/while/Identity:output:0"?
lstm_494_while_identity_1"lstm_494/while/Identity_1:output:0"?
lstm_494_while_identity_2"lstm_494/while/Identity_2:output:0"?
lstm_494_while_identity_3"lstm_494/while/Identity_3:output:0"?
lstm_494_while_identity_4"lstm_494/while/Identity_4:output:0"?
lstm_494_while_identity_5"lstm_494/while/Identity_5:output:0"T
'lstm_494_while_lstm_494_strided_slice_1)lstm_494_while_lstm_494_strided_slice_1_0"~
<lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource>lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0"?
=lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource?lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0"|
;lstm_494_while_lstm_cell_425_matmul_readvariableop_resource=lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0"?
clstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensorelstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp2h
2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp2l
4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569965

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
?
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570252

inputs'
lstm_cell_425_2570170:2('
lstm_cell_425_2570172:
(#
lstm_cell_425_2570174:(
identity??%lstm_cell_425/StatefulPartitionedCall?while;
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
%lstm_cell_425/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_425_2570170lstm_cell_425_2570172lstm_cell_425_2570174*
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570169n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_425_2570170lstm_cell_425_2570172lstm_cell_425_2570174*
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
while_body_2570183*
condR
while_cond_2570182*K
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
NoOpNoOp&^lstm_cell_425/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_425/StatefulPartitionedCall%lstm_cell_425/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_492_layer_call_and_return_conditional_losses_2572900
inputs_0?
,lstm_cell_423_matmul_readvariableop_resource:	?A
.lstm_cell_423_matmul_1_readvariableop_resource:	d?<
-lstm_cell_423_biasadd_readvariableop_resource:	?
identity??$lstm_cell_423/BiasAdd/ReadVariableOp?#lstm_cell_423/MatMul/ReadVariableOp?%lstm_cell_423/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_423/MatMul/ReadVariableOpReadVariableOp,lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_423/MatMulMatMulstrided_slice_2:output:0+lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_423/MatMul_1MatMulzeros:output:0-lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_423/addAddV2lstm_cell_423/MatMul:product:0 lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_423/BiasAddBiasAddlstm_cell_423/add:z:0,lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_423/splitSplit&lstm_cell_423/split/split_dim:output:0lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_423/SigmoidSigmoidlstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_1Sigmoidlstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_423/mulMullstm_cell_423/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_423/ReluRelulstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_1Mullstm_cell_423/Sigmoid:y:0 lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_423/add_1AddV2lstm_cell_423/mul:z:0lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_2Sigmoidlstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_423/Relu_1Relulstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_2Mullstm_cell_423/Sigmoid_2:y:0"lstm_cell_423/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_423_matmul_readvariableop_resource.lstm_cell_423_matmul_1_readvariableop_resource-lstm_cell_423_biasadd_readvariableop_resource*
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
while_body_2572816*
condR
while_cond_2572815*K
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
NoOpNoOp%^lstm_cell_423/BiasAdd/ReadVariableOp$^lstm_cell_423/MatMul/ReadVariableOp&^lstm_cell_423/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_423/BiasAdd/ReadVariableOp$lstm_cell_423/BiasAdd/ReadVariableOp2J
#lstm_cell_423/MatMul/ReadVariableOp#lstm_cell_423/MatMul/ReadVariableOp2N
%lstm_cell_423/MatMul_1/ReadVariableOp%lstm_cell_423/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573516
inputs_0?
,lstm_cell_424_matmul_readvariableop_resource:	d?A
.lstm_cell_424_matmul_1_readvariableop_resource:	2?<
-lstm_cell_424_biasadd_readvariableop_resource:	?
identity??$lstm_cell_424/BiasAdd/ReadVariableOp?#lstm_cell_424/MatMul/ReadVariableOp?%lstm_cell_424/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_424/MatMul/ReadVariableOpReadVariableOp,lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_424/MatMulMatMulstrided_slice_2:output:0+lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_424/MatMul_1MatMulzeros:output:0-lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_424/addAddV2lstm_cell_424/MatMul:product:0 lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_424/BiasAddBiasAddlstm_cell_424/add:z:0,lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_424/splitSplit&lstm_cell_424/split/split_dim:output:0lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_424/SigmoidSigmoidlstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_1Sigmoidlstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_424/mulMullstm_cell_424/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_424/ReluRelulstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_1Mullstm_cell_424/Sigmoid:y:0 lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_424/add_1AddV2lstm_cell_424/mul:z:0lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_2Sigmoidlstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_424/Relu_1Relulstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_2Mullstm_cell_424/Sigmoid_2:y:0"lstm_cell_424/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_424_matmul_readvariableop_resource.lstm_cell_424_matmul_1_readvariableop_resource-lstm_cell_424_biasadd_readvariableop_resource*
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
while_body_2573432*
condR
while_cond_2573431*K
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
NoOpNoOp%^lstm_cell_424/BiasAdd/ReadVariableOp$^lstm_cell_424/MatMul/ReadVariableOp&^lstm_cell_424/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_424/BiasAdd/ReadVariableOp$lstm_cell_424/BiasAdd/ReadVariableOp2J
#lstm_cell_424/MatMul/ReadVariableOp#lstm_cell_424/MatMul/ReadVariableOp2N
%lstm_cell_424/MatMul_1/ReadVariableOp%lstm_cell_424/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_494_layer_call_fn_2573846

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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2571117o
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
?
?
+__inference_dense_164_layer_call_fn_2574427

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
F__inference_dense_164_layer_call_and_return_conditional_losses_2570919o
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
?C
?

lstm_493_while_body_2571914.
*lstm_493_while_lstm_493_while_loop_counter4
0lstm_493_while_lstm_493_while_maximum_iterations
lstm_493_while_placeholder 
lstm_493_while_placeholder_1 
lstm_493_while_placeholder_2 
lstm_493_while_placeholder_3-
)lstm_493_while_lstm_493_strided_slice_1_0i
elstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0:	d?R
?lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?M
>lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
lstm_493_while_identity
lstm_493_while_identity_1
lstm_493_while_identity_2
lstm_493_while_identity_3
lstm_493_while_identity_4
lstm_493_while_identity_5+
'lstm_493_while_lstm_493_strided_slice_1g
clstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensorN
;lstm_493_while_lstm_cell_424_matmul_readvariableop_resource:	d?P
=lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource:	2?K
<lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource:	???3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp?2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp?4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp?
@lstm_493/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_493/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensor_0lstm_493_while_placeholderIlstm_493/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp=lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_493/while/lstm_cell_424/MatMulMatMul9lstm_493/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp?lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_493/while/lstm_cell_424/MatMul_1MatMullstm_493_while_placeholder_2<lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_493/while/lstm_cell_424/addAddV2-lstm_493/while/lstm_cell_424/MatMul:product:0/lstm_493/while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp>lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_493/while/lstm_cell_424/BiasAddBiasAdd$lstm_493/while/lstm_cell_424/add:z:0;lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_493/while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_493/while/lstm_cell_424/splitSplit5lstm_493/while/lstm_cell_424/split/split_dim:output:0-lstm_493/while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_493/while/lstm_cell_424/SigmoidSigmoid+lstm_493/while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_493/while/lstm_cell_424/Sigmoid_1Sigmoid+lstm_493/while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_493/while/lstm_cell_424/mulMul*lstm_493/while/lstm_cell_424/Sigmoid_1:y:0lstm_493_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_493/while/lstm_cell_424/ReluRelu+lstm_493/while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_493/while/lstm_cell_424/mul_1Mul(lstm_493/while/lstm_cell_424/Sigmoid:y:0/lstm_493/while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_493/while/lstm_cell_424/add_1AddV2$lstm_493/while/lstm_cell_424/mul:z:0&lstm_493/while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_493/while/lstm_cell_424/Sigmoid_2Sigmoid+lstm_493/while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_493/while/lstm_cell_424/Relu_1Relu&lstm_493/while/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_493/while/lstm_cell_424/mul_2Mul*lstm_493/while/lstm_cell_424/Sigmoid_2:y:01lstm_493/while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_493/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_493_while_placeholder_1lstm_493_while_placeholder&lstm_493/while/lstm_cell_424/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_493/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_493/while/addAddV2lstm_493_while_placeholderlstm_493/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_493/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_493/while/add_1AddV2*lstm_493_while_lstm_493_while_loop_counterlstm_493/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_493/while/IdentityIdentitylstm_493/while/add_1:z:0^lstm_493/while/NoOp*
T0*
_output_shapes
: ?
lstm_493/while/Identity_1Identity0lstm_493_while_lstm_493_while_maximum_iterations^lstm_493/while/NoOp*
T0*
_output_shapes
: t
lstm_493/while/Identity_2Identitylstm_493/while/add:z:0^lstm_493/while/NoOp*
T0*
_output_shapes
: ?
lstm_493/while/Identity_3IdentityClstm_493/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_493/while/NoOp*
T0*
_output_shapes
: ?
lstm_493/while/Identity_4Identity&lstm_493/while/lstm_cell_424/mul_2:z:0^lstm_493/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_493/while/Identity_5Identity&lstm_493/while/lstm_cell_424/add_1:z:0^lstm_493/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_493/while/NoOpNoOp4^lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp3^lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp5^lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_493_while_identity lstm_493/while/Identity:output:0"?
lstm_493_while_identity_1"lstm_493/while/Identity_1:output:0"?
lstm_493_while_identity_2"lstm_493/while/Identity_2:output:0"?
lstm_493_while_identity_3"lstm_493/while/Identity_3:output:0"?
lstm_493_while_identity_4"lstm_493/while/Identity_4:output:0"?
lstm_493_while_identity_5"lstm_493/while/Identity_5:output:0"T
'lstm_493_while_lstm_493_strided_slice_1)lstm_493_while_lstm_493_strided_slice_1_0"~
<lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource>lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0"?
=lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource?lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0"|
;lstm_493_while_lstm_cell_424_matmul_readvariableop_resource=lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0"?
clstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensorelstm_493_while_tensorarrayv2read_tensorlistgetitem_lstm_493_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp3lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp2h
2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp2lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp2l
4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp4lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2574699

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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569819

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
while_body_2571198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_424_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_424_matmul_readvariableop_resource:	d?G
4while_lstm_cell_424_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_424_biasadd_readvariableop_resource:	???*while/lstm_cell_424/BiasAdd/ReadVariableOp?)while/lstm_cell_424/MatMul/ReadVariableOp?+while/lstm_cell_424/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_424/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_424/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_424/addAddV2$while/lstm_cell_424/MatMul:product:0&while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_424/BiasAddBiasAddwhile/lstm_cell_424/add:z:02while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_424/splitSplit,while/lstm_cell_424/split/split_dim:output:0$while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_424/SigmoidSigmoid"while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_1Sigmoid"while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mulMul!while/lstm_cell_424/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_424/ReluRelu"while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_1Mulwhile/lstm_cell_424/Sigmoid:y:0&while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/add_1AddV2while/lstm_cell_424/mul:z:0while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_2Sigmoid"while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_424/Relu_1Reluwhile/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_2Mul!while/lstm_cell_424/Sigmoid_2:y:0(while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_424/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_424/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_424/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_424/BiasAdd/ReadVariableOp*^while/lstm_cell_424/MatMul/ReadVariableOp,^while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_424_biasadd_readvariableop_resource5while_lstm_cell_424_biasadd_readvariableop_resource_0"n
4while_lstm_cell_424_matmul_1_readvariableop_resource6while_lstm_cell_424_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_424_matmul_readvariableop_resource4while_lstm_cell_424_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_424/BiasAdd/ReadVariableOp*while/lstm_cell_424/BiasAdd/ReadVariableOp2V
)while/lstm_cell_424/MatMul/ReadVariableOp)while/lstm_cell_424/MatMul/ReadVariableOp2Z
+while/lstm_cell_424/MatMul_1/ReadVariableOp+while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2573102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_423_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_423_matmul_readvariableop_resource:	?G
4while_lstm_cell_423_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_423_biasadd_readvariableop_resource:	???*while/lstm_cell_423/BiasAdd/ReadVariableOp?)while/lstm_cell_423/MatMul/ReadVariableOp?+while/lstm_cell_423/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_423/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_423/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_423/addAddV2$while/lstm_cell_423/MatMul:product:0&while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_423/BiasAddBiasAddwhile/lstm_cell_423/add:z:02while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_423/splitSplit,while/lstm_cell_423/split/split_dim:output:0$while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_423/SigmoidSigmoid"while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_1Sigmoid"while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mulMul!while/lstm_cell_423/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_423/ReluRelu"while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_1Mulwhile/lstm_cell_423/Sigmoid:y:0&while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/add_1AddV2while/lstm_cell_423/mul:z:0while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_2Sigmoid"while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_423/Relu_1Reluwhile/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_2Mul!while/lstm_cell_423/Sigmoid_2:y:0(while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_423/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_423/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_423/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_423/BiasAdd/ReadVariableOp*^while/lstm_cell_423/MatMul/ReadVariableOp,^while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_423_biasadd_readvariableop_resource5while_lstm_cell_423_biasadd_readvariableop_resource_0"n
4while_lstm_cell_423_matmul_1_readvariableop_resource6while_lstm_cell_423_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_423_matmul_readvariableop_resource4while_lstm_cell_423_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_423/BiasAdd/ReadVariableOp*while/lstm_cell_423/BiasAdd/ReadVariableOp2V
)while/lstm_cell_423/MatMul/ReadVariableOp)while/lstm_cell_423/MatMul/ReadVariableOp2Z
+while/lstm_cell_423/MatMul_1/ReadVariableOp+while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_492_while_cond_2572201.
*lstm_492_while_lstm_492_while_loop_counter4
0lstm_492_while_lstm_492_while_maximum_iterations
lstm_492_while_placeholder 
lstm_492_while_placeholder_1 
lstm_492_while_placeholder_2 
lstm_492_while_placeholder_30
,lstm_492_while_less_lstm_492_strided_slice_1G
Clstm_492_while_lstm_492_while_cond_2572201___redundant_placeholder0G
Clstm_492_while_lstm_492_while_cond_2572201___redundant_placeholder1G
Clstm_492_while_lstm_492_while_cond_2572201___redundant_placeholder2G
Clstm_492_while_lstm_492_while_cond_2572201___redundant_placeholder3
lstm_492_while_identity
?
lstm_492/while/LessLesslstm_492_while_placeholder,lstm_492_while_less_lstm_492_strided_slice_1*
T0*
_output_shapes
: ]
lstm_492/while/IdentityIdentitylstm_492/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_492_while_identity lstm_492/while/Identity:output:0*(
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
while_cond_2572958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2572958___redundant_placeholder05
1while_while_cond_2572958___redundant_placeholder15
1while_while_cond_2572958___redundant_placeholder25
1while_while_cond_2572958___redundant_placeholder3
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
lstm_493_while_cond_2572340.
*lstm_493_while_lstm_493_while_loop_counter4
0lstm_493_while_lstm_493_while_maximum_iterations
lstm_493_while_placeholder 
lstm_493_while_placeholder_1 
lstm_493_while_placeholder_2 
lstm_493_while_placeholder_30
,lstm_493_while_less_lstm_493_strided_slice_1G
Clstm_493_while_lstm_493_while_cond_2572340___redundant_placeholder0G
Clstm_493_while_lstm_493_while_cond_2572340___redundant_placeholder1G
Clstm_493_while_lstm_493_while_cond_2572340___redundant_placeholder2G
Clstm_493_while_lstm_493_while_cond_2572340___redundant_placeholder3
lstm_493_while_identity
?
lstm_493/while/LessLesslstm_493_while_placeholder,lstm_493_while_less_lstm_493_strided_slice_1*
T0*
_output_shapes
: ]
lstm_493/while/IdentityIdentitylstm_493/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_493_while_identity lstm_493/while/Identity:output:0*(
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2570601

inputs?
,lstm_cell_423_matmul_readvariableop_resource:	?A
.lstm_cell_423_matmul_1_readvariableop_resource:	d?<
-lstm_cell_423_biasadd_readvariableop_resource:	?
identity??$lstm_cell_423/BiasAdd/ReadVariableOp?#lstm_cell_423/MatMul/ReadVariableOp?%lstm_cell_423/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_423/MatMul/ReadVariableOpReadVariableOp,lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_423/MatMulMatMulstrided_slice_2:output:0+lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_423/MatMul_1MatMulzeros:output:0-lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_423/addAddV2lstm_cell_423/MatMul:product:0 lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_423/BiasAddBiasAddlstm_cell_423/add:z:0,lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_423/splitSplit&lstm_cell_423/split/split_dim:output:0lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_423/SigmoidSigmoidlstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_1Sigmoidlstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_423/mulMullstm_cell_423/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_423/ReluRelulstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_1Mullstm_cell_423/Sigmoid:y:0 lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_423/add_1AddV2lstm_cell_423/mul:z:0lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_423/Sigmoid_2Sigmoidlstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_423/Relu_1Relulstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_423/mul_2Mullstm_cell_423/Sigmoid_2:y:0"lstm_cell_423/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_423_matmul_readvariableop_resource.lstm_cell_423_matmul_1_readvariableop_resource-lstm_cell_423_biasadd_readvariableop_resource*
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
while_body_2570517*
condR
while_cond_2570516*K
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
NoOpNoOp%^lstm_cell_423/BiasAdd/ReadVariableOp$^lstm_cell_423/MatMul/ReadVariableOp&^lstm_cell_423/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_423/BiasAdd/ReadVariableOp$lstm_cell_423/BiasAdd/ReadVariableOp2J
#lstm_cell_423/MatMul/ReadVariableOp#lstm_cell_423/MatMul/ReadVariableOp2N
%lstm_cell_423/MatMul_1/ReadVariableOp%lstm_cell_423/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_493_layer_call_and_return_conditional_losses_2570093

inputs(
lstm_cell_424_2570011:	d?(
lstm_cell_424_2570013:	2?$
lstm_cell_424_2570015:	?
identity??%lstm_cell_424/StatefulPartitionedCall?while;
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
%lstm_cell_424/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_424_2570011lstm_cell_424_2570013lstm_cell_424_2570015*
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2569965n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_424_2570011lstm_cell_424_2570013lstm_cell_424_2570015*
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
while_body_2570024*
condR
while_cond_2570023*K
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
NoOpNoOp&^lstm_cell_424/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_424/StatefulPartitionedCall%lstm_cell_424/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_493_layer_call_fn_2573197
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2569902|
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
lstm_493_while_cond_2571913.
*lstm_493_while_lstm_493_while_loop_counter4
0lstm_493_while_lstm_493_while_maximum_iterations
lstm_493_while_placeholder 
lstm_493_while_placeholder_1 
lstm_493_while_placeholder_2 
lstm_493_while_placeholder_30
,lstm_493_while_less_lstm_493_strided_slice_1G
Clstm_493_while_lstm_493_while_cond_2571913___redundant_placeholder0G
Clstm_493_while_lstm_493_while_cond_2571913___redundant_placeholder1G
Clstm_493_while_lstm_493_while_cond_2571913___redundant_placeholder2G
Clstm_493_while_lstm_493_while_cond_2571913___redundant_placeholder3
lstm_493_while_identity
?
lstm_493/while/LessLesslstm_493_while_placeholder,lstm_493_while_less_lstm_493_strided_slice_1*
T0*
_output_shapes
: ]
lstm_493/while/IdentityIdentitylstm_493/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_493_while_identity lstm_493/while/Identity:output:0*(
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2571282

inputs?
,lstm_cell_424_matmul_readvariableop_resource:	d?A
.lstm_cell_424_matmul_1_readvariableop_resource:	2?<
-lstm_cell_424_biasadd_readvariableop_resource:	?
identity??$lstm_cell_424/BiasAdd/ReadVariableOp?#lstm_cell_424/MatMul/ReadVariableOp?%lstm_cell_424/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_424/MatMul/ReadVariableOpReadVariableOp,lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_424/MatMulMatMulstrided_slice_2:output:0+lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_424/MatMul_1MatMulzeros:output:0-lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_424/addAddV2lstm_cell_424/MatMul:product:0 lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_424/BiasAddBiasAddlstm_cell_424/add:z:0,lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_424/splitSplit&lstm_cell_424/split/split_dim:output:0lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_424/SigmoidSigmoidlstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_1Sigmoidlstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_424/mulMullstm_cell_424/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_424/ReluRelulstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_1Mullstm_cell_424/Sigmoid:y:0 lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_424/add_1AddV2lstm_cell_424/mul:z:0lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_2Sigmoidlstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_424/Relu_1Relulstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_2Mullstm_cell_424/Sigmoid_2:y:0"lstm_cell_424/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_424_matmul_readvariableop_resource.lstm_cell_424_matmul_1_readvariableop_resource-lstm_cell_424_biasadd_readvariableop_resource*
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
while_body_2571198*
condR
while_cond_2571197*K
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
NoOpNoOp%^lstm_cell_424/BiasAdd/ReadVariableOp$^lstm_cell_424/MatMul/ReadVariableOp&^lstm_cell_424/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_424/BiasAdd/ReadVariableOp$lstm_cell_424/BiasAdd/ReadVariableOp2J
#lstm_cell_424/MatMul/ReadVariableOp#lstm_cell_424/MatMul/ReadVariableOp2N
%lstm_cell_424/MatMul_1/ReadVariableOp%lstm_cell_424/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2573718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_424_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_424_matmul_readvariableop_resource:	d?G
4while_lstm_cell_424_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_424_biasadd_readvariableop_resource:	???*while/lstm_cell_424/BiasAdd/ReadVariableOp?)while/lstm_cell_424/MatMul/ReadVariableOp?+while/lstm_cell_424/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_424/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_424/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_424/addAddV2$while/lstm_cell_424/MatMul:product:0&while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_424/BiasAddBiasAddwhile/lstm_cell_424/add:z:02while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_424/splitSplit,while/lstm_cell_424/split/split_dim:output:0$while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_424/SigmoidSigmoid"while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_1Sigmoid"while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mulMul!while/lstm_cell_424/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_424/ReluRelu"while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_1Mulwhile/lstm_cell_424/Sigmoid:y:0&while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/add_1AddV2while/lstm_cell_424/mul:z:0while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_2Sigmoid"while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_424/Relu_1Reluwhile/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_2Mul!while/lstm_cell_424/Sigmoid_2:y:0(while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_424/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_424/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_424/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_424/BiasAdd/ReadVariableOp*^while/lstm_cell_424/MatMul/ReadVariableOp,^while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_424_biasadd_readvariableop_resource5while_lstm_cell_424_biasadd_readvariableop_resource_0"n
4while_lstm_cell_424_matmul_1_readvariableop_resource6while_lstm_cell_424_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_424_matmul_readvariableop_resource4while_lstm_cell_424_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_424/BiasAdd/ReadVariableOp*while/lstm_cell_424/BiasAdd/ReadVariableOp2V
)while/lstm_cell_424/MatMul/ReadVariableOp)while/lstm_cell_424/MatMul/ReadVariableOp2Z
+while/lstm_cell_424/MatMul_1/ReadVariableOp+while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571597
lstm_492_input#
lstm_492_2571570:	?#
lstm_492_2571572:	d?
lstm_492_2571574:	?#
lstm_493_2571577:	d?#
lstm_493_2571579:	2?
lstm_493_2571581:	?"
lstm_494_2571584:2("
lstm_494_2571586:
(
lstm_494_2571588:(#
dense_164_2571591:

dense_164_2571593:
identity??!dense_164/StatefulPartitionedCall? lstm_492/StatefulPartitionedCall? lstm_493/StatefulPartitionedCall? lstm_494/StatefulPartitionedCall?
 lstm_492/StatefulPartitionedCallStatefulPartitionedCalllstm_492_inputlstm_492_2571570lstm_492_2571572lstm_492_2571574*
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2570601?
 lstm_493/StatefulPartitionedCallStatefulPartitionedCall)lstm_492/StatefulPartitionedCall:output:0lstm_493_2571577lstm_493_2571579lstm_493_2571581*
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2570751?
 lstm_494/StatefulPartitionedCallStatefulPartitionedCall)lstm_493/StatefulPartitionedCall:output:0lstm_494_2571584lstm_494_2571586lstm_494_2571588*
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570901?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_494/StatefulPartitionedCall:output:0dense_164_2571591dense_164_2571593*
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
F__inference_dense_164_layer_call_and_return_conditional_losses_2570919y
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_164/StatefulPartitionedCall!^lstm_492/StatefulPartitionedCall!^lstm_493/StatefulPartitionedCall!^lstm_494/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2D
 lstm_492/StatefulPartitionedCall lstm_492/StatefulPartitionedCall2D
 lstm_493/StatefulPartitionedCall lstm_493/StatefulPartitionedCall2D
 lstm_494/StatefulPartitionedCall lstm_494/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_492_input
?8
?
while_body_2570817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_425_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_425_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_425_matmul_readvariableop_resource:2(F
4while_lstm_cell_425_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_425_biasadd_readvariableop_resource:(??*while/lstm_cell_425/BiasAdd/ReadVariableOp?)while/lstm_cell_425/MatMul/ReadVariableOp?+while/lstm_cell_425/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_425/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_425/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_425/addAddV2$while/lstm_cell_425/MatMul:product:0&while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_425/BiasAddBiasAddwhile/lstm_cell_425/add:z:02while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_425/splitSplit,while/lstm_cell_425/split/split_dim:output:0$while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_425/SigmoidSigmoid"while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_1Sigmoid"while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mulMul!while/lstm_cell_425/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_425/ReluRelu"while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_1Mulwhile/lstm_cell_425/Sigmoid:y:0&while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/add_1AddV2while/lstm_cell_425/mul:z:0while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_2Sigmoid"while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_425/Relu_1Reluwhile/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_2Mul!while/lstm_cell_425/Sigmoid_2:y:0(while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_425/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_425/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_425/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_425/BiasAdd/ReadVariableOp*^while/lstm_cell_425/MatMul/ReadVariableOp,^while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_425_biasadd_readvariableop_resource5while_lstm_cell_425_biasadd_readvariableop_resource_0"n
4while_lstm_cell_425_matmul_1_readvariableop_resource6while_lstm_cell_425_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_425_matmul_readvariableop_resource4while_lstm_cell_425_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_425/BiasAdd/ReadVariableOp*while/lstm_cell_425/BiasAdd/ReadVariableOp2V
)while/lstm_cell_425/MatMul/ReadVariableOp)while/lstm_cell_425/MatMul/ReadVariableOp2Z
+while/lstm_cell_425/MatMul_1/ReadVariableOp+while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2572570

inputsH
5lstm_492_lstm_cell_423_matmul_readvariableop_resource:	?J
7lstm_492_lstm_cell_423_matmul_1_readvariableop_resource:	d?E
6lstm_492_lstm_cell_423_biasadd_readvariableop_resource:	?H
5lstm_493_lstm_cell_424_matmul_readvariableop_resource:	d?J
7lstm_493_lstm_cell_424_matmul_1_readvariableop_resource:	2?E
6lstm_493_lstm_cell_424_biasadd_readvariableop_resource:	?G
5lstm_494_lstm_cell_425_matmul_readvariableop_resource:2(I
7lstm_494_lstm_cell_425_matmul_1_readvariableop_resource:
(D
6lstm_494_lstm_cell_425_biasadd_readvariableop_resource:(:
(dense_164_matmul_readvariableop_resource:
7
)dense_164_biasadd_readvariableop_resource:
identity?? dense_164/BiasAdd/ReadVariableOp?dense_164/MatMul/ReadVariableOp?-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp?,lstm_492/lstm_cell_423/MatMul/ReadVariableOp?.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp?lstm_492/while?-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp?,lstm_493/lstm_cell_424/MatMul/ReadVariableOp?.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp?lstm_493/while?-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp?,lstm_494/lstm_cell_425/MatMul/ReadVariableOp?.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp?lstm_494/whileD
lstm_492/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_492/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_492/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_492/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_sliceStridedSlicelstm_492/Shape:output:0%lstm_492/strided_slice/stack:output:0'lstm_492/strided_slice/stack_1:output:0'lstm_492/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_492/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_492/zeros/packedPacklstm_492/strided_slice:output:0 lstm_492/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_492/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_492/zerosFilllstm_492/zeros/packed:output:0lstm_492/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_492/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_492/zeros_1/packedPacklstm_492/strided_slice:output:0"lstm_492/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_492/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_492/zeros_1Fill lstm_492/zeros_1/packed:output:0lstm_492/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_492/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_492/transpose	Transposeinputs lstm_492/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_492/Shape_1Shapelstm_492/transpose:y:0*
T0*
_output_shapes
:h
lstm_492/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_492/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_492/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_slice_1StridedSlicelstm_492/Shape_1:output:0'lstm_492/strided_slice_1/stack:output:0)lstm_492/strided_slice_1/stack_1:output:0)lstm_492/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_492/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_492/TensorArrayV2TensorListReserve-lstm_492/TensorArrayV2/element_shape:output:0!lstm_492/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_492/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_492/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_492/transpose:y:0Glstm_492/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_492/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_492/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_492/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_slice_2StridedSlicelstm_492/transpose:y:0'lstm_492/strided_slice_2/stack:output:0)lstm_492/strided_slice_2/stack_1:output:0)lstm_492/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_492/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp5lstm_492_lstm_cell_423_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_492/lstm_cell_423/MatMulMatMul!lstm_492/strided_slice_2:output:04lstm_492/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp7lstm_492_lstm_cell_423_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_492/lstm_cell_423/MatMul_1MatMullstm_492/zeros:output:06lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_492/lstm_cell_423/addAddV2'lstm_492/lstm_cell_423/MatMul:product:0)lstm_492/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp6lstm_492_lstm_cell_423_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_492/lstm_cell_423/BiasAddBiasAddlstm_492/lstm_cell_423/add:z:05lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_492/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_492/lstm_cell_423/splitSplit/lstm_492/lstm_cell_423/split/split_dim:output:0'lstm_492/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_492/lstm_cell_423/SigmoidSigmoid%lstm_492/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_492/lstm_cell_423/Sigmoid_1Sigmoid%lstm_492/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/mulMul$lstm_492/lstm_cell_423/Sigmoid_1:y:0lstm_492/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_492/lstm_cell_423/ReluRelu%lstm_492/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/mul_1Mul"lstm_492/lstm_cell_423/Sigmoid:y:0)lstm_492/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/add_1AddV2lstm_492/lstm_cell_423/mul:z:0 lstm_492/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_492/lstm_cell_423/Sigmoid_2Sigmoid%lstm_492/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_492/lstm_cell_423/Relu_1Relu lstm_492/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_492/lstm_cell_423/mul_2Mul$lstm_492/lstm_cell_423/Sigmoid_2:y:0+lstm_492/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_492/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_492/TensorArrayV2_1TensorListReserve/lstm_492/TensorArrayV2_1/element_shape:output:0!lstm_492/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_492/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_492/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_492/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_492/whileWhile$lstm_492/while/loop_counter:output:0*lstm_492/while/maximum_iterations:output:0lstm_492/time:output:0!lstm_492/TensorArrayV2_1:handle:0lstm_492/zeros:output:0lstm_492/zeros_1:output:0!lstm_492/strided_slice_1:output:0@lstm_492/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_492_lstm_cell_423_matmul_readvariableop_resource7lstm_492_lstm_cell_423_matmul_1_readvariableop_resource6lstm_492_lstm_cell_423_biasadd_readvariableop_resource*
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
lstm_492_while_body_2572202*'
condR
lstm_492_while_cond_2572201*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_492/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_492/TensorArrayV2Stack/TensorListStackTensorListStacklstm_492/while:output:3Blstm_492/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_492/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_492/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_492/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_492/strided_slice_3StridedSlice4lstm_492/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_492/strided_slice_3/stack:output:0)lstm_492/strided_slice_3/stack_1:output:0)lstm_492/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_492/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_492/transpose_1	Transpose4lstm_492/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_492/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_492/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_493/ShapeShapelstm_492/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_493/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_493/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_493/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_sliceStridedSlicelstm_493/Shape:output:0%lstm_493/strided_slice/stack:output:0'lstm_493/strided_slice/stack_1:output:0'lstm_493/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_493/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_493/zeros/packedPacklstm_493/strided_slice:output:0 lstm_493/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_493/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_493/zerosFilllstm_493/zeros/packed:output:0lstm_493/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_493/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_493/zeros_1/packedPacklstm_493/strided_slice:output:0"lstm_493/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_493/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_493/zeros_1Fill lstm_493/zeros_1/packed:output:0lstm_493/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_493/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_493/transpose	Transposelstm_492/transpose_1:y:0 lstm_493/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_493/Shape_1Shapelstm_493/transpose:y:0*
T0*
_output_shapes
:h
lstm_493/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_493/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_493/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_slice_1StridedSlicelstm_493/Shape_1:output:0'lstm_493/strided_slice_1/stack:output:0)lstm_493/strided_slice_1/stack_1:output:0)lstm_493/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_493/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_493/TensorArrayV2TensorListReserve-lstm_493/TensorArrayV2/element_shape:output:0!lstm_493/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_493/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_493/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_493/transpose:y:0Glstm_493/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_493/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_493/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_493/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_slice_2StridedSlicelstm_493/transpose:y:0'lstm_493/strided_slice_2/stack:output:0)lstm_493/strided_slice_2/stack_1:output:0)lstm_493/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_493/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp5lstm_493_lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_493/lstm_cell_424/MatMulMatMul!lstm_493/strided_slice_2:output:04lstm_493/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp7lstm_493_lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_493/lstm_cell_424/MatMul_1MatMullstm_493/zeros:output:06lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_493/lstm_cell_424/addAddV2'lstm_493/lstm_cell_424/MatMul:product:0)lstm_493/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp6lstm_493_lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_493/lstm_cell_424/BiasAddBiasAddlstm_493/lstm_cell_424/add:z:05lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_493/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_493/lstm_cell_424/splitSplit/lstm_493/lstm_cell_424/split/split_dim:output:0'lstm_493/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_493/lstm_cell_424/SigmoidSigmoid%lstm_493/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_493/lstm_cell_424/Sigmoid_1Sigmoid%lstm_493/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/mulMul$lstm_493/lstm_cell_424/Sigmoid_1:y:0lstm_493/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_493/lstm_cell_424/ReluRelu%lstm_493/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/mul_1Mul"lstm_493/lstm_cell_424/Sigmoid:y:0)lstm_493/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/add_1AddV2lstm_493/lstm_cell_424/mul:z:0 lstm_493/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_493/lstm_cell_424/Sigmoid_2Sigmoid%lstm_493/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_493/lstm_cell_424/Relu_1Relu lstm_493/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_493/lstm_cell_424/mul_2Mul$lstm_493/lstm_cell_424/Sigmoid_2:y:0+lstm_493/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_493/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_493/TensorArrayV2_1TensorListReserve/lstm_493/TensorArrayV2_1/element_shape:output:0!lstm_493/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_493/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_493/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_493/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_493/whileWhile$lstm_493/while/loop_counter:output:0*lstm_493/while/maximum_iterations:output:0lstm_493/time:output:0!lstm_493/TensorArrayV2_1:handle:0lstm_493/zeros:output:0lstm_493/zeros_1:output:0!lstm_493/strided_slice_1:output:0@lstm_493/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_493_lstm_cell_424_matmul_readvariableop_resource7lstm_493_lstm_cell_424_matmul_1_readvariableop_resource6lstm_493_lstm_cell_424_biasadd_readvariableop_resource*
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
lstm_493_while_body_2572341*'
condR
lstm_493_while_cond_2572340*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_493/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_493/TensorArrayV2Stack/TensorListStackTensorListStacklstm_493/while:output:3Blstm_493/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_493/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_493/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_493/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_493/strided_slice_3StridedSlice4lstm_493/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_493/strided_slice_3/stack:output:0)lstm_493/strided_slice_3/stack_1:output:0)lstm_493/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_493/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_493/transpose_1	Transpose4lstm_493/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_493/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_493/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_494/ShapeShapelstm_493/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_494/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_494/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_494/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_sliceStridedSlicelstm_494/Shape:output:0%lstm_494/strided_slice/stack:output:0'lstm_494/strided_slice/stack_1:output:0'lstm_494/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_494/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_494/zeros/packedPacklstm_494/strided_slice:output:0 lstm_494/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_494/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_494/zerosFilllstm_494/zeros/packed:output:0lstm_494/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_494/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_494/zeros_1/packedPacklstm_494/strided_slice:output:0"lstm_494/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_494/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_494/zeros_1Fill lstm_494/zeros_1/packed:output:0lstm_494/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_494/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_494/transpose	Transposelstm_493/transpose_1:y:0 lstm_494/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_494/Shape_1Shapelstm_494/transpose:y:0*
T0*
_output_shapes
:h
lstm_494/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_494/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_494/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_slice_1StridedSlicelstm_494/Shape_1:output:0'lstm_494/strided_slice_1/stack:output:0)lstm_494/strided_slice_1/stack_1:output:0)lstm_494/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_494/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_494/TensorArrayV2TensorListReserve-lstm_494/TensorArrayV2/element_shape:output:0!lstm_494/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_494/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_494/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_494/transpose:y:0Glstm_494/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_494/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_494/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_494/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_slice_2StridedSlicelstm_494/transpose:y:0'lstm_494/strided_slice_2/stack:output:0)lstm_494/strided_slice_2/stack_1:output:0)lstm_494/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_494/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp5lstm_494_lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_494/lstm_cell_425/MatMulMatMul!lstm_494/strided_slice_2:output:04lstm_494/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp7lstm_494_lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_494/lstm_cell_425/MatMul_1MatMullstm_494/zeros:output:06lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_494/lstm_cell_425/addAddV2'lstm_494/lstm_cell_425/MatMul:product:0)lstm_494/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp6lstm_494_lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_494/lstm_cell_425/BiasAddBiasAddlstm_494/lstm_cell_425/add:z:05lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_494/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_494/lstm_cell_425/splitSplit/lstm_494/lstm_cell_425/split/split_dim:output:0'lstm_494/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_494/lstm_cell_425/SigmoidSigmoid%lstm_494/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_494/lstm_cell_425/Sigmoid_1Sigmoid%lstm_494/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/mulMul$lstm_494/lstm_cell_425/Sigmoid_1:y:0lstm_494/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_494/lstm_cell_425/ReluRelu%lstm_494/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/mul_1Mul"lstm_494/lstm_cell_425/Sigmoid:y:0)lstm_494/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/add_1AddV2lstm_494/lstm_cell_425/mul:z:0 lstm_494/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_494/lstm_cell_425/Sigmoid_2Sigmoid%lstm_494/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_494/lstm_cell_425/Relu_1Relu lstm_494/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_494/lstm_cell_425/mul_2Mul$lstm_494/lstm_cell_425/Sigmoid_2:y:0+lstm_494/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_494/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_494/TensorArrayV2_1TensorListReserve/lstm_494/TensorArrayV2_1/element_shape:output:0!lstm_494/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_494/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_494/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_494/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_494/whileWhile$lstm_494/while/loop_counter:output:0*lstm_494/while/maximum_iterations:output:0lstm_494/time:output:0!lstm_494/TensorArrayV2_1:handle:0lstm_494/zeros:output:0lstm_494/zeros_1:output:0!lstm_494/strided_slice_1:output:0@lstm_494/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_494_lstm_cell_425_matmul_readvariableop_resource7lstm_494_lstm_cell_425_matmul_1_readvariableop_resource6lstm_494_lstm_cell_425_biasadd_readvariableop_resource*
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
lstm_494_while_body_2572480*'
condR
lstm_494_while_cond_2572479*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_494/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_494/TensorArrayV2Stack/TensorListStackTensorListStacklstm_494/while:output:3Blstm_494/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_494/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_494/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_494/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_494/strided_slice_3StridedSlice4lstm_494/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_494/strided_slice_3/stack:output:0)lstm_494/strided_slice_3/stack_1:output:0)lstm_494/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_494/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_494/transpose_1	Transpose4lstm_494/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_494/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_494/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_164/MatMul/ReadVariableOpReadVariableOp(dense_164_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_164/MatMulMatMul!lstm_494/strided_slice_3:output:0'dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_164/BiasAdd/ReadVariableOpReadVariableOp)dense_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_164/BiasAddBiasAdddense_164/MatMul:product:0(dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_164/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_164/BiasAdd/ReadVariableOp ^dense_164/MatMul/ReadVariableOp.^lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp-^lstm_492/lstm_cell_423/MatMul/ReadVariableOp/^lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp^lstm_492/while.^lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp-^lstm_493/lstm_cell_424/MatMul/ReadVariableOp/^lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp^lstm_493/while.^lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp-^lstm_494/lstm_cell_425/MatMul/ReadVariableOp/^lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp^lstm_494/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_164/BiasAdd/ReadVariableOp dense_164/BiasAdd/ReadVariableOp2B
dense_164/MatMul/ReadVariableOpdense_164/MatMul/ReadVariableOp2^
-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp-lstm_492/lstm_cell_423/BiasAdd/ReadVariableOp2\
,lstm_492/lstm_cell_423/MatMul/ReadVariableOp,lstm_492/lstm_cell_423/MatMul/ReadVariableOp2`
.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp.lstm_492/lstm_cell_423/MatMul_1/ReadVariableOp2 
lstm_492/whilelstm_492/while2^
-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp-lstm_493/lstm_cell_424/BiasAdd/ReadVariableOp2\
,lstm_493/lstm_cell_424/MatMul/ReadVariableOp,lstm_493/lstm_cell_424/MatMul/ReadVariableOp2`
.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp.lstm_493/lstm_cell_424/MatMul_1/ReadVariableOp2 
lstm_493/whilelstm_493/while2^
-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp-lstm_494/lstm_cell_425/BiasAdd/ReadVariableOp2\
,lstm_494/lstm_cell_425/MatMul/ReadVariableOp,lstm_494/lstm_cell_425/MatMul/ReadVariableOp2`
.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp.lstm_494/lstm_cell_425/MatMul_1/ReadVariableOp2 
lstm_494/whilelstm_494/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2572959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_423_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_423_matmul_readvariableop_resource:	?G
4while_lstm_cell_423_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_423_biasadd_readvariableop_resource:	???*while/lstm_cell_423/BiasAdd/ReadVariableOp?)while/lstm_cell_423/MatMul/ReadVariableOp?+while/lstm_cell_423/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_423/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_423/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_423/addAddV2$while/lstm_cell_423/MatMul:product:0&while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_423/BiasAddBiasAddwhile/lstm_cell_423/add:z:02while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_423/splitSplit,while/lstm_cell_423/split/split_dim:output:0$while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_423/SigmoidSigmoid"while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_1Sigmoid"while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mulMul!while/lstm_cell_423/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_423/ReluRelu"while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_1Mulwhile/lstm_cell_423/Sigmoid:y:0&while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/add_1AddV2while/lstm_cell_423/mul:z:0while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_2Sigmoid"while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_423/Relu_1Reluwhile/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_2Mul!while/lstm_cell_423/Sigmoid_2:y:0(while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_423/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_423/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_423/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_423/BiasAdd/ReadVariableOp*^while/lstm_cell_423/MatMul/ReadVariableOp,^while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_423_biasadd_readvariableop_resource5while_lstm_cell_423_biasadd_readvariableop_resource_0"n
4while_lstm_cell_423_matmul_1_readvariableop_resource6while_lstm_cell_423_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_423_matmul_readvariableop_resource4while_lstm_cell_423_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_423/BiasAdd/ReadVariableOp*while/lstm_cell_423/BiasAdd/ReadVariableOp2V
)while/lstm_cell_423/MatMul/ReadVariableOp)while/lstm_cell_423/MatMul/ReadVariableOp2Z
+while/lstm_cell_423/MatMul_1/ReadVariableOp+while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2573904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2573904___redundant_placeholder05
1while_while_cond_2573904___redundant_placeholder15
1while_while_cond_2573904___redundant_placeholder25
1while_while_cond_2573904___redundant_placeholder3
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
while_body_2570183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_425_2570207_0:2(/
while_lstm_cell_425_2570209_0:
(+
while_lstm_cell_425_2570211_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_425_2570207:2(-
while_lstm_cell_425_2570209:
()
while_lstm_cell_425_2570211:(??+while/lstm_cell_425/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_425/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_425_2570207_0while_lstm_cell_425_2570209_0while_lstm_cell_425_2570211_0*
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570169?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_425/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_425/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_425/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_425_2570207while_lstm_cell_425_2570207_0"<
while_lstm_cell_425_2570209while_lstm_cell_425_2570209_0"<
while_lstm_cell_425_2570211while_lstm_cell_425_2570211_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_425/StatefulPartitionedCall+while/lstm_cell_425/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_494_while_body_2572053.
*lstm_494_while_lstm_494_while_loop_counter4
0lstm_494_while_lstm_494_while_maximum_iterations
lstm_494_while_placeholder 
lstm_494_while_placeholder_1 
lstm_494_while_placeholder_2 
lstm_494_while_placeholder_3-
)lstm_494_while_lstm_494_strided_slice_1_0i
elstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0:2(Q
?lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(L
>lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0:(
lstm_494_while_identity
lstm_494_while_identity_1
lstm_494_while_identity_2
lstm_494_while_identity_3
lstm_494_while_identity_4
lstm_494_while_identity_5+
'lstm_494_while_lstm_494_strided_slice_1g
clstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensorM
;lstm_494_while_lstm_cell_425_matmul_readvariableop_resource:2(O
=lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource:
(J
<lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource:(??3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp?2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp?4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp?
@lstm_494/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_494/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensor_0lstm_494_while_placeholderIlstm_494/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp=lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_494/while/lstm_cell_425/MatMulMatMul9lstm_494/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp?lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_494/while/lstm_cell_425/MatMul_1MatMullstm_494_while_placeholder_2<lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_494/while/lstm_cell_425/addAddV2-lstm_494/while/lstm_cell_425/MatMul:product:0/lstm_494/while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp>lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_494/while/lstm_cell_425/BiasAddBiasAdd$lstm_494/while/lstm_cell_425/add:z:0;lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_494/while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_494/while/lstm_cell_425/splitSplit5lstm_494/while/lstm_cell_425/split/split_dim:output:0-lstm_494/while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_494/while/lstm_cell_425/SigmoidSigmoid+lstm_494/while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_494/while/lstm_cell_425/Sigmoid_1Sigmoid+lstm_494/while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_494/while/lstm_cell_425/mulMul*lstm_494/while/lstm_cell_425/Sigmoid_1:y:0lstm_494_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_494/while/lstm_cell_425/ReluRelu+lstm_494/while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_494/while/lstm_cell_425/mul_1Mul(lstm_494/while/lstm_cell_425/Sigmoid:y:0/lstm_494/while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_494/while/lstm_cell_425/add_1AddV2$lstm_494/while/lstm_cell_425/mul:z:0&lstm_494/while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_494/while/lstm_cell_425/Sigmoid_2Sigmoid+lstm_494/while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_494/while/lstm_cell_425/Relu_1Relu&lstm_494/while/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_494/while/lstm_cell_425/mul_2Mul*lstm_494/while/lstm_cell_425/Sigmoid_2:y:01lstm_494/while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_494/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_494_while_placeholder_1lstm_494_while_placeholder&lstm_494/while/lstm_cell_425/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_494/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_494/while/addAddV2lstm_494_while_placeholderlstm_494/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_494/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_494/while/add_1AddV2*lstm_494_while_lstm_494_while_loop_counterlstm_494/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_494/while/IdentityIdentitylstm_494/while/add_1:z:0^lstm_494/while/NoOp*
T0*
_output_shapes
: ?
lstm_494/while/Identity_1Identity0lstm_494_while_lstm_494_while_maximum_iterations^lstm_494/while/NoOp*
T0*
_output_shapes
: t
lstm_494/while/Identity_2Identitylstm_494/while/add:z:0^lstm_494/while/NoOp*
T0*
_output_shapes
: ?
lstm_494/while/Identity_3IdentityClstm_494/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_494/while/NoOp*
T0*
_output_shapes
: ?
lstm_494/while/Identity_4Identity&lstm_494/while/lstm_cell_425/mul_2:z:0^lstm_494/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_494/while/Identity_5Identity&lstm_494/while/lstm_cell_425/add_1:z:0^lstm_494/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_494/while/NoOpNoOp4^lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp3^lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp5^lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_494_while_identity lstm_494/while/Identity:output:0"?
lstm_494_while_identity_1"lstm_494/while/Identity_1:output:0"?
lstm_494_while_identity_2"lstm_494/while/Identity_2:output:0"?
lstm_494_while_identity_3"lstm_494/while/Identity_3:output:0"?
lstm_494_while_identity_4"lstm_494/while/Identity_4:output:0"?
lstm_494_while_identity_5"lstm_494/while/Identity_5:output:0"T
'lstm_494_while_lstm_494_strided_slice_1)lstm_494_while_lstm_494_strided_slice_1_0"~
<lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource>lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0"?
=lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource?lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0"|
;lstm_494_while_lstm_cell_425_matmul_readvariableop_resource=lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0"?
clstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensorelstm_494_while_tensorarrayv2read_tensorlistgetitem_lstm_494_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp3lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp2h
2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp2lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp2l
4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp4lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_492_layer_call_fn_2572614

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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2571447s
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
*__inference_lstm_493_layer_call_fn_2573230

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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2571282s
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
while_cond_2573431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2573431___redundant_placeholder05
1while_while_cond_2573431___redundant_placeholder15
1while_while_cond_2573431___redundant_placeholder25
1while_while_cond_2573431___redundant_placeholder3
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
lstm_494_while_cond_2572479.
*lstm_494_while_lstm_494_while_loop_counter4
0lstm_494_while_lstm_494_while_maximum_iterations
lstm_494_while_placeholder 
lstm_494_while_placeholder_1 
lstm_494_while_placeholder_2 
lstm_494_while_placeholder_30
,lstm_494_while_less_lstm_494_strided_slice_1G
Clstm_494_while_lstm_494_while_cond_2572479___redundant_placeholder0G
Clstm_494_while_lstm_494_while_cond_2572479___redundant_placeholder1G
Clstm_494_while_lstm_494_while_cond_2572479___redundant_placeholder2G
Clstm_494_while_lstm_494_while_cond_2572479___redundant_placeholder3
lstm_494_while_identity
?
lstm_494/while/LessLesslstm_494_while_placeholder,lstm_494_while_less_lstm_494_strided_slice_1*
T0*
_output_shapes
: ]
lstm_494/while/IdentityIdentitylstm_494/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_494_while_identity lstm_494/while/Identity:output:0*(
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
F__inference_dense_164_layer_call_and_return_conditional_losses_2570919

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

lstm_492_while_body_2572202.
*lstm_492_while_lstm_492_while_loop_counter4
0lstm_492_while_lstm_492_while_maximum_iterations
lstm_492_while_placeholder 
lstm_492_while_placeholder_1 
lstm_492_while_placeholder_2 
lstm_492_while_placeholder_3-
)lstm_492_while_lstm_492_strided_slice_1_0i
elstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0:	?R
?lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?M
>lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
lstm_492_while_identity
lstm_492_while_identity_1
lstm_492_while_identity_2
lstm_492_while_identity_3
lstm_492_while_identity_4
lstm_492_while_identity_5+
'lstm_492_while_lstm_492_strided_slice_1g
clstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensorN
;lstm_492_while_lstm_cell_423_matmul_readvariableop_resource:	?P
=lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource:	d?K
<lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource:	???3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp?2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp?4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp?
@lstm_492/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_492/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensor_0lstm_492_while_placeholderIlstm_492/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp=lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_492/while/lstm_cell_423/MatMulMatMul9lstm_492/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp?lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_492/while/lstm_cell_423/MatMul_1MatMullstm_492_while_placeholder_2<lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_492/while/lstm_cell_423/addAddV2-lstm_492/while/lstm_cell_423/MatMul:product:0/lstm_492/while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp>lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_492/while/lstm_cell_423/BiasAddBiasAdd$lstm_492/while/lstm_cell_423/add:z:0;lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_492/while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_492/while/lstm_cell_423/splitSplit5lstm_492/while/lstm_cell_423/split/split_dim:output:0-lstm_492/while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_492/while/lstm_cell_423/SigmoidSigmoid+lstm_492/while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_492/while/lstm_cell_423/Sigmoid_1Sigmoid+lstm_492/while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_492/while/lstm_cell_423/mulMul*lstm_492/while/lstm_cell_423/Sigmoid_1:y:0lstm_492_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_492/while/lstm_cell_423/ReluRelu+lstm_492/while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_492/while/lstm_cell_423/mul_1Mul(lstm_492/while/lstm_cell_423/Sigmoid:y:0/lstm_492/while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_492/while/lstm_cell_423/add_1AddV2$lstm_492/while/lstm_cell_423/mul:z:0&lstm_492/while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_492/while/lstm_cell_423/Sigmoid_2Sigmoid+lstm_492/while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_492/while/lstm_cell_423/Relu_1Relu&lstm_492/while/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_492/while/lstm_cell_423/mul_2Mul*lstm_492/while/lstm_cell_423/Sigmoid_2:y:01lstm_492/while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_492/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_492_while_placeholder_1lstm_492_while_placeholder&lstm_492/while/lstm_cell_423/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_492/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_492/while/addAddV2lstm_492_while_placeholderlstm_492/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_492/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_492/while/add_1AddV2*lstm_492_while_lstm_492_while_loop_counterlstm_492/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_492/while/IdentityIdentitylstm_492/while/add_1:z:0^lstm_492/while/NoOp*
T0*
_output_shapes
: ?
lstm_492/while/Identity_1Identity0lstm_492_while_lstm_492_while_maximum_iterations^lstm_492/while/NoOp*
T0*
_output_shapes
: t
lstm_492/while/Identity_2Identitylstm_492/while/add:z:0^lstm_492/while/NoOp*
T0*
_output_shapes
: ?
lstm_492/while/Identity_3IdentityClstm_492/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_492/while/NoOp*
T0*
_output_shapes
: ?
lstm_492/while/Identity_4Identity&lstm_492/while/lstm_cell_423/mul_2:z:0^lstm_492/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_492/while/Identity_5Identity&lstm_492/while/lstm_cell_423/add_1:z:0^lstm_492/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_492/while/NoOpNoOp4^lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp3^lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp5^lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_492_while_identity lstm_492/while/Identity:output:0"?
lstm_492_while_identity_1"lstm_492/while/Identity_1:output:0"?
lstm_492_while_identity_2"lstm_492/while/Identity_2:output:0"?
lstm_492_while_identity_3"lstm_492/while/Identity_3:output:0"?
lstm_492_while_identity_4"lstm_492/while/Identity_4:output:0"?
lstm_492_while_identity_5"lstm_492/while/Identity_5:output:0"T
'lstm_492_while_lstm_492_strided_slice_1)lstm_492_while_lstm_492_strided_slice_1_0"~
<lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource>lstm_492_while_lstm_cell_423_biasadd_readvariableop_resource_0"?
=lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource?lstm_492_while_lstm_cell_423_matmul_1_readvariableop_resource_0"|
;lstm_492_while_lstm_cell_423_matmul_readvariableop_resource=lstm_492_while_lstm_cell_423_matmul_readvariableop_resource_0"?
clstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensorelstm_492_while_tensorarrayv2read_tensorlistgetitem_lstm_492_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp3lstm_492/while/lstm_cell_423/BiasAdd/ReadVariableOp2h
2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp2lstm_492/while/lstm_cell_423/MatMul/ReadVariableOp2l
4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp4lstm_492/while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2573717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2573717___redundant_placeholder05
1while_while_cond_2573717___redundant_placeholder15
1while_while_cond_2573717___redundant_placeholder25
1while_while_cond_2573717___redundant_placeholder3
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2569469

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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573802

inputs?
,lstm_cell_424_matmul_readvariableop_resource:	d?A
.lstm_cell_424_matmul_1_readvariableop_resource:	2?<
-lstm_cell_424_biasadd_readvariableop_resource:	?
identity??$lstm_cell_424/BiasAdd/ReadVariableOp?#lstm_cell_424/MatMul/ReadVariableOp?%lstm_cell_424/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_424/MatMul/ReadVariableOpReadVariableOp,lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_424/MatMulMatMulstrided_slice_2:output:0+lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_424/MatMul_1MatMulzeros:output:0-lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_424/addAddV2lstm_cell_424/MatMul:product:0 lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_424/BiasAddBiasAddlstm_cell_424/add:z:0,lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_424/splitSplit&lstm_cell_424/split/split_dim:output:0lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_424/SigmoidSigmoidlstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_1Sigmoidlstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_424/mulMullstm_cell_424/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_424/ReluRelulstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_1Mullstm_cell_424/Sigmoid:y:0 lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_424/add_1AddV2lstm_cell_424/mul:z:0lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_2Sigmoidlstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_424/Relu_1Relulstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_2Mullstm_cell_424/Sigmoid_2:y:0"lstm_cell_424/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_424_matmul_readvariableop_resource.lstm_cell_424_matmul_1_readvariableop_resource-lstm_cell_424_biasadd_readvariableop_resource*
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
while_body_2573718*
condR
while_cond_2573717*K
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
NoOpNoOp%^lstm_cell_424/BiasAdd/ReadVariableOp$^lstm_cell_424/MatMul/ReadVariableOp&^lstm_cell_424/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_424/BiasAdd/ReadVariableOp$lstm_cell_424/BiasAdd/ReadVariableOp2J
#lstm_cell_424/MatMul/ReadVariableOp#lstm_cell_424/MatMul/ReadVariableOp2N
%lstm_cell_424/MatMul_1/ReadVariableOp%lstm_cell_424/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_164_layer_call_fn_2571689

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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2570926o
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
while_cond_2573101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2573101___redundant_placeholder05
1while_while_cond_2573101___redundant_placeholder15
1while_while_cond_2573101___redundant_placeholder25
1while_while_cond_2573101___redundant_placeholder3
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574418

inputs>
,lstm_cell_425_matmul_readvariableop_resource:2(@
.lstm_cell_425_matmul_1_readvariableop_resource:
(;
-lstm_cell_425_biasadd_readvariableop_resource:(
identity??$lstm_cell_425/BiasAdd/ReadVariableOp?#lstm_cell_425/MatMul/ReadVariableOp?%lstm_cell_425/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_425/MatMul/ReadVariableOpReadVariableOp,lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_425/MatMulMatMulstrided_slice_2:output:0+lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_425/MatMul_1MatMulzeros:output:0-lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_425/addAddV2lstm_cell_425/MatMul:product:0 lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_425/BiasAddBiasAddlstm_cell_425/add:z:0,lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_425/splitSplit&lstm_cell_425/split/split_dim:output:0lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_425/SigmoidSigmoidlstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_1Sigmoidlstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_425/mulMullstm_cell_425/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_425/ReluRelulstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_1Mullstm_cell_425/Sigmoid:y:0 lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_425/add_1AddV2lstm_cell_425/mul:z:0lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_2Sigmoidlstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_425/Relu_1Relulstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_2Mullstm_cell_425/Sigmoid_2:y:0"lstm_cell_425/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_425_matmul_readvariableop_resource.lstm_cell_425_matmul_1_readvariableop_resource-lstm_cell_425_biasadd_readvariableop_resource*
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
while_body_2574334*
condR
while_cond_2574333*K
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
NoOpNoOp%^lstm_cell_425/BiasAdd/ReadVariableOp$^lstm_cell_425/MatMul/ReadVariableOp&^lstm_cell_425/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_425/BiasAdd/ReadVariableOp$lstm_cell_425/BiasAdd/ReadVariableOp2J
#lstm_cell_425/MatMul/ReadVariableOp#lstm_cell_425/MatMul/ReadVariableOp2N
%lstm_cell_425/MatMul_1/ReadVariableOp%lstm_cell_425/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2573574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2573574___redundant_placeholder05
1while_while_cond_2573574___redundant_placeholder15
1while_while_cond_2573574___redundant_placeholder25
1while_while_cond_2573574___redundant_placeholder3
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574132
inputs_0>
,lstm_cell_425_matmul_readvariableop_resource:2(@
.lstm_cell_425_matmul_1_readvariableop_resource:
(;
-lstm_cell_425_biasadd_readvariableop_resource:(
identity??$lstm_cell_425/BiasAdd/ReadVariableOp?#lstm_cell_425/MatMul/ReadVariableOp?%lstm_cell_425/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_425/MatMul/ReadVariableOpReadVariableOp,lstm_cell_425_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_425/MatMulMatMulstrided_slice_2:output:0+lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_425_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_425/MatMul_1MatMulzeros:output:0-lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_425/addAddV2lstm_cell_425/MatMul:product:0 lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_425_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_425/BiasAddBiasAddlstm_cell_425/add:z:0,lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_425/splitSplit&lstm_cell_425/split/split_dim:output:0lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_425/SigmoidSigmoidlstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_1Sigmoidlstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_425/mulMullstm_cell_425/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_425/ReluRelulstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_1Mullstm_cell_425/Sigmoid:y:0 lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_425/add_1AddV2lstm_cell_425/mul:z:0lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_425/Sigmoid_2Sigmoidlstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_425/Relu_1Relulstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_425/mul_2Mullstm_cell_425/Sigmoid_2:y:0"lstm_cell_425/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_425_matmul_readvariableop_resource.lstm_cell_425_matmul_1_readvariableop_resource-lstm_cell_425_biasadd_readvariableop_resource*
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
while_body_2574048*
condR
while_cond_2574047*K
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
NoOpNoOp%^lstm_cell_425/BiasAdd/ReadVariableOp$^lstm_cell_425/MatMul/ReadVariableOp&^lstm_cell_425/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_425/BiasAdd/ReadVariableOp$lstm_cell_425/BiasAdd/ReadVariableOp2J
#lstm_cell_425/MatMul/ReadVariableOp#lstm_cell_425/MatMul/ReadVariableOp2N
%lstm_cell_425/MatMul_1/ReadVariableOp%lstm_cell_425/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_2570517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_423_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_423_matmul_readvariableop_resource:	?G
4while_lstm_cell_423_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_423_biasadd_readvariableop_resource:	???*while/lstm_cell_423/BiasAdd/ReadVariableOp?)while/lstm_cell_423/MatMul/ReadVariableOp?+while/lstm_cell_423/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_423/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_423/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_423/addAddV2$while/lstm_cell_423/MatMul:product:0&while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_423/BiasAddBiasAddwhile/lstm_cell_423/add:z:02while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_423/splitSplit,while/lstm_cell_423/split/split_dim:output:0$while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_423/SigmoidSigmoid"while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_1Sigmoid"while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mulMul!while/lstm_cell_423/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_423/ReluRelu"while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_1Mulwhile/lstm_cell_423/Sigmoid:y:0&while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/add_1AddV2while/lstm_cell_423/mul:z:0while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_2Sigmoid"while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_423/Relu_1Reluwhile/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_2Mul!while/lstm_cell_423/Sigmoid_2:y:0(while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_423/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_423/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_423/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_423/BiasAdd/ReadVariableOp*^while/lstm_cell_423/MatMul/ReadVariableOp,^while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_423_biasadd_readvariableop_resource5while_lstm_cell_423_biasadd_readvariableop_resource_0"n
4while_lstm_cell_423_matmul_1_readvariableop_resource6while_lstm_cell_423_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_423_matmul_readvariableop_resource4while_lstm_cell_423_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_423/BiasAdd/ReadVariableOp*while/lstm_cell_423/BiasAdd/ReadVariableOp2V
)while/lstm_cell_423/MatMul/ReadVariableOp)while/lstm_cell_423/MatMul/ReadVariableOp2Z
+while/lstm_cell_423/MatMul_1/ReadVariableOp+while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_494_layer_call_fn_2573835

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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570901o
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2574503

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
?
?
while_cond_2574333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2574333___redundant_placeholder05
1while_while_cond_2574333___redundant_placeholder15
1while_while_cond_2574333___redundant_placeholder25
1while_while_cond_2574333___redundant_placeholder3
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
*sequential_164_lstm_494_while_body_2569312L
Hsequential_164_lstm_494_while_sequential_164_lstm_494_while_loop_counterR
Nsequential_164_lstm_494_while_sequential_164_lstm_494_while_maximum_iterations-
)sequential_164_lstm_494_while_placeholder/
+sequential_164_lstm_494_while_placeholder_1/
+sequential_164_lstm_494_while_placeholder_2/
+sequential_164_lstm_494_while_placeholder_3K
Gsequential_164_lstm_494_while_sequential_164_lstm_494_strided_slice_1_0?
?sequential_164_lstm_494_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_494_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_164_lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0:2(`
Nsequential_164_lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0:
([
Msequential_164_lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0:(*
&sequential_164_lstm_494_while_identity,
(sequential_164_lstm_494_while_identity_1,
(sequential_164_lstm_494_while_identity_2,
(sequential_164_lstm_494_while_identity_3,
(sequential_164_lstm_494_while_identity_4,
(sequential_164_lstm_494_while_identity_5I
Esequential_164_lstm_494_while_sequential_164_lstm_494_strided_slice_1?
?sequential_164_lstm_494_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_494_tensorarrayunstack_tensorlistfromtensor\
Jsequential_164_lstm_494_while_lstm_cell_425_matmul_readvariableop_resource:2(^
Lsequential_164_lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource:
(Y
Ksequential_164_lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource:(??Bsequential_164/lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp?Asequential_164/lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp?Csequential_164/lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp?
Osequential_164/lstm_494/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_164/lstm_494/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_164_lstm_494_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_494_tensorarrayunstack_tensorlistfromtensor_0)sequential_164_lstm_494_while_placeholderXsequential_164/lstm_494/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_164/lstm_494/while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOpLsequential_164_lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_164/lstm_494/while/lstm_cell_425/MatMulMatMulHsequential_164/lstm_494/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_164/lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_164/lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOpNsequential_164_lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_164/lstm_494/while/lstm_cell_425/MatMul_1MatMul+sequential_164_lstm_494_while_placeholder_2Ksequential_164/lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_164/lstm_494/while/lstm_cell_425/addAddV2<sequential_164/lstm_494/while/lstm_cell_425/MatMul:product:0>sequential_164/lstm_494/while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_164/lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOpMsequential_164_lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_164/lstm_494/while/lstm_cell_425/BiasAddBiasAdd3sequential_164/lstm_494/while/lstm_cell_425/add:z:0Jsequential_164/lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_164/lstm_494/while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_164/lstm_494/while/lstm_cell_425/splitSplitDsequential_164/lstm_494/while/lstm_cell_425/split/split_dim:output:0<sequential_164/lstm_494/while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_164/lstm_494/while/lstm_cell_425/SigmoidSigmoid:sequential_164/lstm_494/while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_164/lstm_494/while/lstm_cell_425/Sigmoid_1Sigmoid:sequential_164/lstm_494/while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_164/lstm_494/while/lstm_cell_425/mulMul9sequential_164/lstm_494/while/lstm_cell_425/Sigmoid_1:y:0+sequential_164_lstm_494_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_164/lstm_494/while/lstm_cell_425/ReluRelu:sequential_164/lstm_494/while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_164/lstm_494/while/lstm_cell_425/mul_1Mul7sequential_164/lstm_494/while/lstm_cell_425/Sigmoid:y:0>sequential_164/lstm_494/while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_164/lstm_494/while/lstm_cell_425/add_1AddV23sequential_164/lstm_494/while/lstm_cell_425/mul:z:05sequential_164/lstm_494/while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_164/lstm_494/while/lstm_cell_425/Sigmoid_2Sigmoid:sequential_164/lstm_494/while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_164/lstm_494/while/lstm_cell_425/Relu_1Relu5sequential_164/lstm_494/while/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_164/lstm_494/while/lstm_cell_425/mul_2Mul9sequential_164/lstm_494/while/lstm_cell_425/Sigmoid_2:y:0@sequential_164/lstm_494/while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_164/lstm_494/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_164_lstm_494_while_placeholder_1)sequential_164_lstm_494_while_placeholder5sequential_164/lstm_494/while/lstm_cell_425/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_164/lstm_494/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_164/lstm_494/while/addAddV2)sequential_164_lstm_494_while_placeholder,sequential_164/lstm_494/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_164/lstm_494/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_164/lstm_494/while/add_1AddV2Hsequential_164_lstm_494_while_sequential_164_lstm_494_while_loop_counter.sequential_164/lstm_494/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_164/lstm_494/while/IdentityIdentity'sequential_164/lstm_494/while/add_1:z:0#^sequential_164/lstm_494/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_494/while/Identity_1IdentityNsequential_164_lstm_494_while_sequential_164_lstm_494_while_maximum_iterations#^sequential_164/lstm_494/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_494/while/Identity_2Identity%sequential_164/lstm_494/while/add:z:0#^sequential_164/lstm_494/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_494/while/Identity_3IdentityRsequential_164/lstm_494/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_164/lstm_494/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_494/while/Identity_4Identity5sequential_164/lstm_494/while/lstm_cell_425/mul_2:z:0#^sequential_164/lstm_494/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_164/lstm_494/while/Identity_5Identity5sequential_164/lstm_494/while/lstm_cell_425/add_1:z:0#^sequential_164/lstm_494/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_164/lstm_494/while/NoOpNoOpC^sequential_164/lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOpB^sequential_164/lstm_494/while/lstm_cell_425/MatMul/ReadVariableOpD^sequential_164/lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_164_lstm_494_while_identity/sequential_164/lstm_494/while/Identity:output:0"]
(sequential_164_lstm_494_while_identity_11sequential_164/lstm_494/while/Identity_1:output:0"]
(sequential_164_lstm_494_while_identity_21sequential_164/lstm_494/while/Identity_2:output:0"]
(sequential_164_lstm_494_while_identity_31sequential_164/lstm_494/while/Identity_3:output:0"]
(sequential_164_lstm_494_while_identity_41sequential_164/lstm_494/while/Identity_4:output:0"]
(sequential_164_lstm_494_while_identity_51sequential_164/lstm_494/while/Identity_5:output:0"?
Ksequential_164_lstm_494_while_lstm_cell_425_biasadd_readvariableop_resourceMsequential_164_lstm_494_while_lstm_cell_425_biasadd_readvariableop_resource_0"?
Lsequential_164_lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resourceNsequential_164_lstm_494_while_lstm_cell_425_matmul_1_readvariableop_resource_0"?
Jsequential_164_lstm_494_while_lstm_cell_425_matmul_readvariableop_resourceLsequential_164_lstm_494_while_lstm_cell_425_matmul_readvariableop_resource_0"?
Esequential_164_lstm_494_while_sequential_164_lstm_494_strided_slice_1Gsequential_164_lstm_494_while_sequential_164_lstm_494_strided_slice_1_0"?
?sequential_164_lstm_494_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_494_tensorarrayunstack_tensorlistfromtensor?sequential_164_lstm_494_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_494_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_164/lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOpBsequential_164/lstm_494/while/lstm_cell_425/BiasAdd/ReadVariableOp2?
Asequential_164/lstm_494/while/lstm_cell_425/MatMul/ReadVariableOpAsequential_164/lstm_494/while/lstm_cell_425/MatMul/ReadVariableOp2?
Csequential_164/lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOpCsequential_164/lstm_494/while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2570666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2570666___redundant_placeholder05
1while_while_cond_2570666___redundant_placeholder15
1while_while_cond_2570666___redundant_placeholder25
1while_while_cond_2570666___redundant_placeholder3
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
/__inference_lstm_cell_425_layer_call_fn_2574667

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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570315o
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

?
0__inference_sequential_164_layer_call_fn_2570951
lstm_492_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_492_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2570926o
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
_user_specified_namelstm_492_input
?
?
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2574601

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
*__inference_lstm_494_layer_call_fn_2573824
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2570443o
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
?
*__inference_lstm_492_layer_call_fn_2572581
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2569552|
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
*__inference_lstm_492_layer_call_fn_2572603

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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2570601s
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
while_body_2572816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_423_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_423_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_423_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_423_matmul_readvariableop_resource:	?G
4while_lstm_cell_423_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_423_biasadd_readvariableop_resource:	???*while/lstm_cell_423/BiasAdd/ReadVariableOp?)while/lstm_cell_423/MatMul/ReadVariableOp?+while/lstm_cell_423/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_423/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_423_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_423/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_423/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_423/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_423_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_423/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_423/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_423/addAddV2$while/lstm_cell_423/MatMul:product:0&while/lstm_cell_423/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_423/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_423_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_423/BiasAddBiasAddwhile/lstm_cell_423/add:z:02while/lstm_cell_423/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_423/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_423/splitSplit,while/lstm_cell_423/split/split_dim:output:0$while/lstm_cell_423/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_423/SigmoidSigmoid"while/lstm_cell_423/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_1Sigmoid"while/lstm_cell_423/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mulMul!while/lstm_cell_423/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_423/ReluRelu"while/lstm_cell_423/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_1Mulwhile/lstm_cell_423/Sigmoid:y:0&while/lstm_cell_423/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/add_1AddV2while/lstm_cell_423/mul:z:0while/lstm_cell_423/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_423/Sigmoid_2Sigmoid"while/lstm_cell_423/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_423/Relu_1Reluwhile/lstm_cell_423/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_423/mul_2Mul!while/lstm_cell_423/Sigmoid_2:y:0(while/lstm_cell_423/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_423/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_423/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_423/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_423/BiasAdd/ReadVariableOp*^while/lstm_cell_423/MatMul/ReadVariableOp,^while/lstm_cell_423/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_423_biasadd_readvariableop_resource5while_lstm_cell_423_biasadd_readvariableop_resource_0"n
4while_lstm_cell_423_matmul_1_readvariableop_resource6while_lstm_cell_423_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_423_matmul_readvariableop_resource4while_lstm_cell_423_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_423/BiasAdd/ReadVariableOp*while/lstm_cell_423/BiasAdd/ReadVariableOp2V
)while/lstm_cell_423/MatMul/ReadVariableOp)while/lstm_cell_423/MatMul/ReadVariableOp2Z
+while/lstm_cell_423/MatMul_1/ReadVariableOp+while/lstm_cell_423/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2570667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_424_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_424_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_424_matmul_readvariableop_resource:	d?G
4while_lstm_cell_424_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_424_biasadd_readvariableop_resource:	???*while/lstm_cell_424/BiasAdd/ReadVariableOp?)while/lstm_cell_424/MatMul/ReadVariableOp?+while/lstm_cell_424/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_424/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_424/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_424/addAddV2$while/lstm_cell_424/MatMul:product:0&while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_424/BiasAddBiasAddwhile/lstm_cell_424/add:z:02while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_424/splitSplit,while/lstm_cell_424/split/split_dim:output:0$while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_424/SigmoidSigmoid"while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_1Sigmoid"while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mulMul!while/lstm_cell_424/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_424/ReluRelu"while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_1Mulwhile/lstm_cell_424/Sigmoid:y:0&while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/add_1AddV2while/lstm_cell_424/mul:z:0while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_424/Sigmoid_2Sigmoid"while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_424/Relu_1Reluwhile/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_424/mul_2Mul!while/lstm_cell_424/Sigmoid_2:y:0(while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_424/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_424/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_424/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_424/BiasAdd/ReadVariableOp*^while/lstm_cell_424/MatMul/ReadVariableOp,^while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_424_biasadd_readvariableop_resource5while_lstm_cell_424_biasadd_readvariableop_resource_0"n
4while_lstm_cell_424_matmul_1_readvariableop_resource6while_lstm_cell_424_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_424_matmul_readvariableop_resource4while_lstm_cell_424_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_424/BiasAdd/ReadVariableOp*while/lstm_cell_424/BiasAdd/ReadVariableOp2V
)while/lstm_cell_424/MatMul/ReadVariableOp)while/lstm_cell_424/MatMul/ReadVariableOp2Z
+while/lstm_cell_424/MatMul_1/ReadVariableOp+while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_425_layer_call_fn_2574650

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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2570169o
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
*sequential_164_lstm_493_while_body_2569173L
Hsequential_164_lstm_493_while_sequential_164_lstm_493_while_loop_counterR
Nsequential_164_lstm_493_while_sequential_164_lstm_493_while_maximum_iterations-
)sequential_164_lstm_493_while_placeholder/
+sequential_164_lstm_493_while_placeholder_1/
+sequential_164_lstm_493_while_placeholder_2/
+sequential_164_lstm_493_while_placeholder_3K
Gsequential_164_lstm_493_while_sequential_164_lstm_493_strided_slice_1_0?
?sequential_164_lstm_493_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_493_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_164_lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0:	d?a
Nsequential_164_lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0:	2?\
Msequential_164_lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0:	?*
&sequential_164_lstm_493_while_identity,
(sequential_164_lstm_493_while_identity_1,
(sequential_164_lstm_493_while_identity_2,
(sequential_164_lstm_493_while_identity_3,
(sequential_164_lstm_493_while_identity_4,
(sequential_164_lstm_493_while_identity_5I
Esequential_164_lstm_493_while_sequential_164_lstm_493_strided_slice_1?
?sequential_164_lstm_493_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_493_tensorarrayunstack_tensorlistfromtensor]
Jsequential_164_lstm_493_while_lstm_cell_424_matmul_readvariableop_resource:	d?_
Lsequential_164_lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource:	2?Z
Ksequential_164_lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource:	???Bsequential_164/lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp?Asequential_164/lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp?Csequential_164/lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp?
Osequential_164/lstm_493/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_164/lstm_493/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_164_lstm_493_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_493_tensorarrayunstack_tensorlistfromtensor_0)sequential_164_lstm_493_while_placeholderXsequential_164/lstm_493/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_164/lstm_493/while/lstm_cell_424/MatMul/ReadVariableOpReadVariableOpLsequential_164_lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_164/lstm_493/while/lstm_cell_424/MatMulMatMulHsequential_164/lstm_493/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_164/lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_164/lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOpNsequential_164_lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_164/lstm_493/while/lstm_cell_424/MatMul_1MatMul+sequential_164_lstm_493_while_placeholder_2Ksequential_164/lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_164/lstm_493/while/lstm_cell_424/addAddV2<sequential_164/lstm_493/while/lstm_cell_424/MatMul:product:0>sequential_164/lstm_493/while/lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_164/lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOpMsequential_164_lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_164/lstm_493/while/lstm_cell_424/BiasAddBiasAdd3sequential_164/lstm_493/while/lstm_cell_424/add:z:0Jsequential_164/lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_164/lstm_493/while/lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_164/lstm_493/while/lstm_cell_424/splitSplitDsequential_164/lstm_493/while/lstm_cell_424/split/split_dim:output:0<sequential_164/lstm_493/while/lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_164/lstm_493/while/lstm_cell_424/SigmoidSigmoid:sequential_164/lstm_493/while/lstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_164/lstm_493/while/lstm_cell_424/Sigmoid_1Sigmoid:sequential_164/lstm_493/while/lstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_164/lstm_493/while/lstm_cell_424/mulMul9sequential_164/lstm_493/while/lstm_cell_424/Sigmoid_1:y:0+sequential_164_lstm_493_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_164/lstm_493/while/lstm_cell_424/ReluRelu:sequential_164/lstm_493/while/lstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_164/lstm_493/while/lstm_cell_424/mul_1Mul7sequential_164/lstm_493/while/lstm_cell_424/Sigmoid:y:0>sequential_164/lstm_493/while/lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_164/lstm_493/while/lstm_cell_424/add_1AddV23sequential_164/lstm_493/while/lstm_cell_424/mul:z:05sequential_164/lstm_493/while/lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_164/lstm_493/while/lstm_cell_424/Sigmoid_2Sigmoid:sequential_164/lstm_493/while/lstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_164/lstm_493/while/lstm_cell_424/Relu_1Relu5sequential_164/lstm_493/while/lstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_164/lstm_493/while/lstm_cell_424/mul_2Mul9sequential_164/lstm_493/while/lstm_cell_424/Sigmoid_2:y:0@sequential_164/lstm_493/while/lstm_cell_424/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_164/lstm_493/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_164_lstm_493_while_placeholder_1)sequential_164_lstm_493_while_placeholder5sequential_164/lstm_493/while/lstm_cell_424/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_164/lstm_493/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_164/lstm_493/while/addAddV2)sequential_164_lstm_493_while_placeholder,sequential_164/lstm_493/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_164/lstm_493/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_164/lstm_493/while/add_1AddV2Hsequential_164_lstm_493_while_sequential_164_lstm_493_while_loop_counter.sequential_164/lstm_493/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_164/lstm_493/while/IdentityIdentity'sequential_164/lstm_493/while/add_1:z:0#^sequential_164/lstm_493/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_493/while/Identity_1IdentityNsequential_164_lstm_493_while_sequential_164_lstm_493_while_maximum_iterations#^sequential_164/lstm_493/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_493/while/Identity_2Identity%sequential_164/lstm_493/while/add:z:0#^sequential_164/lstm_493/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_493/while/Identity_3IdentityRsequential_164/lstm_493/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_164/lstm_493/while/NoOp*
T0*
_output_shapes
: ?
(sequential_164/lstm_493/while/Identity_4Identity5sequential_164/lstm_493/while/lstm_cell_424/mul_2:z:0#^sequential_164/lstm_493/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_164/lstm_493/while/Identity_5Identity5sequential_164/lstm_493/while/lstm_cell_424/add_1:z:0#^sequential_164/lstm_493/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_164/lstm_493/while/NoOpNoOpC^sequential_164/lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOpB^sequential_164/lstm_493/while/lstm_cell_424/MatMul/ReadVariableOpD^sequential_164/lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_164_lstm_493_while_identity/sequential_164/lstm_493/while/Identity:output:0"]
(sequential_164_lstm_493_while_identity_11sequential_164/lstm_493/while/Identity_1:output:0"]
(sequential_164_lstm_493_while_identity_21sequential_164/lstm_493/while/Identity_2:output:0"]
(sequential_164_lstm_493_while_identity_31sequential_164/lstm_493/while/Identity_3:output:0"]
(sequential_164_lstm_493_while_identity_41sequential_164/lstm_493/while/Identity_4:output:0"]
(sequential_164_lstm_493_while_identity_51sequential_164/lstm_493/while/Identity_5:output:0"?
Ksequential_164_lstm_493_while_lstm_cell_424_biasadd_readvariableop_resourceMsequential_164_lstm_493_while_lstm_cell_424_biasadd_readvariableop_resource_0"?
Lsequential_164_lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resourceNsequential_164_lstm_493_while_lstm_cell_424_matmul_1_readvariableop_resource_0"?
Jsequential_164_lstm_493_while_lstm_cell_424_matmul_readvariableop_resourceLsequential_164_lstm_493_while_lstm_cell_424_matmul_readvariableop_resource_0"?
Esequential_164_lstm_493_while_sequential_164_lstm_493_strided_slice_1Gsequential_164_lstm_493_while_sequential_164_lstm_493_strided_slice_1_0"?
?sequential_164_lstm_493_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_493_tensorarrayunstack_tensorlistfromtensor?sequential_164_lstm_493_while_tensorarrayv2read_tensorlistgetitem_sequential_164_lstm_493_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_164/lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOpBsequential_164/lstm_493/while/lstm_cell_424/BiasAdd/ReadVariableOp2?
Asequential_164/lstm_493/while/lstm_cell_424/MatMul/ReadVariableOpAsequential_164/lstm_493/while/lstm_cell_424/MatMul/ReadVariableOp2?
Csequential_164/lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOpCsequential_164/lstm_493/while/lstm_cell_424/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2573288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2573288___redundant_placeholder05
1while_while_cond_2573288___redundant_placeholder15
1while_while_cond_2573288___redundant_placeholder25
1while_while_cond_2573288___redundant_placeholder3
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
while_cond_2570816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2570816___redundant_placeholder05
1while_while_cond_2570816___redundant_placeholder15
1while_while_cond_2570816___redundant_placeholder25
1while_while_cond_2570816___redundant_placeholder3
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
?
?
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571627
lstm_492_input#
lstm_492_2571600:	?#
lstm_492_2571602:	d?
lstm_492_2571604:	?#
lstm_493_2571607:	d?#
lstm_493_2571609:	2?
lstm_493_2571611:	?"
lstm_494_2571614:2("
lstm_494_2571616:
(
lstm_494_2571618:(#
dense_164_2571621:

dense_164_2571623:
identity??!dense_164/StatefulPartitionedCall? lstm_492/StatefulPartitionedCall? lstm_493/StatefulPartitionedCall? lstm_494/StatefulPartitionedCall?
 lstm_492/StatefulPartitionedCallStatefulPartitionedCalllstm_492_inputlstm_492_2571600lstm_492_2571602lstm_492_2571604*
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2571447?
 lstm_493/StatefulPartitionedCallStatefulPartitionedCall)lstm_492/StatefulPartitionedCall:output:0lstm_493_2571607lstm_493_2571609lstm_493_2571611*
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2571282?
 lstm_494/StatefulPartitionedCallStatefulPartitionedCall)lstm_493/StatefulPartitionedCall:output:0lstm_494_2571614lstm_494_2571616lstm_494_2571618*
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2571117?
!dense_164/StatefulPartitionedCallStatefulPartitionedCall)lstm_494/StatefulPartitionedCall:output:0dense_164_2571621dense_164_2571623*
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
F__inference_dense_164_layer_call_and_return_conditional_losses_2570919y
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_164/StatefulPartitionedCall!^lstm_492/StatefulPartitionedCall!^lstm_493/StatefulPartitionedCall!^lstm_494/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2D
 lstm_492/StatefulPartitionedCall lstm_492/StatefulPartitionedCall2D
 lstm_493/StatefulPartitionedCall lstm_493/StatefulPartitionedCall2D
 lstm_494/StatefulPartitionedCall lstm_494/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_492_input
?
?
while_cond_2571032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2571032___redundant_placeholder05
1while_while_cond_2571032___redundant_placeholder15
1while_while_cond_2571032___redundant_placeholder25
1while_while_cond_2571032___redundant_placeholder3
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
while_body_2574191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_425_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_425_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_425_matmul_readvariableop_resource:2(F
4while_lstm_cell_425_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_425_biasadd_readvariableop_resource:(??*while/lstm_cell_425/BiasAdd/ReadVariableOp?)while/lstm_cell_425/MatMul/ReadVariableOp?+while/lstm_cell_425/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_425/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_425/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_425/addAddV2$while/lstm_cell_425/MatMul:product:0&while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_425/BiasAddBiasAddwhile/lstm_cell_425/add:z:02while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_425/splitSplit,while/lstm_cell_425/split/split_dim:output:0$while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_425/SigmoidSigmoid"while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_1Sigmoid"while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mulMul!while/lstm_cell_425/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_425/ReluRelu"while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_1Mulwhile/lstm_cell_425/Sigmoid:y:0&while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/add_1AddV2while/lstm_cell_425/mul:z:0while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_2Sigmoid"while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_425/Relu_1Reluwhile/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_2Mul!while/lstm_cell_425/Sigmoid_2:y:0(while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_425/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_425/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_425/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_425/BiasAdd/ReadVariableOp*^while/lstm_cell_425/MatMul/ReadVariableOp,^while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_425_biasadd_readvariableop_resource5while_lstm_cell_425_biasadd_readvariableop_resource_0"n
4while_lstm_cell_425_matmul_1_readvariableop_resource6while_lstm_cell_425_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_425_matmul_readvariableop_resource4while_lstm_cell_425_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_425/BiasAdd/ReadVariableOp*while/lstm_cell_425/BiasAdd/ReadVariableOp2V
)while/lstm_cell_425/MatMul/ReadVariableOp)while/lstm_cell_425/MatMul/ReadVariableOp2Z
+while/lstm_cell_425/MatMul_1/ReadVariableOp+while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2570751

inputs?
,lstm_cell_424_matmul_readvariableop_resource:	d?A
.lstm_cell_424_matmul_1_readvariableop_resource:	2?<
-lstm_cell_424_biasadd_readvariableop_resource:	?
identity??$lstm_cell_424/BiasAdd/ReadVariableOp?#lstm_cell_424/MatMul/ReadVariableOp?%lstm_cell_424/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_424/MatMul/ReadVariableOpReadVariableOp,lstm_cell_424_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_424/MatMulMatMulstrided_slice_2:output:0+lstm_cell_424/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_424/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_424_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_424/MatMul_1MatMulzeros:output:0-lstm_cell_424/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_424/addAddV2lstm_cell_424/MatMul:product:0 lstm_cell_424/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_424/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_424_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_424/BiasAddBiasAddlstm_cell_424/add:z:0,lstm_cell_424/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_424/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_424/splitSplit&lstm_cell_424/split/split_dim:output:0lstm_cell_424/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_424/SigmoidSigmoidlstm_cell_424/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_1Sigmoidlstm_cell_424/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_424/mulMullstm_cell_424/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_424/ReluRelulstm_cell_424/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_1Mullstm_cell_424/Sigmoid:y:0 lstm_cell_424/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_424/add_1AddV2lstm_cell_424/mul:z:0lstm_cell_424/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_424/Sigmoid_2Sigmoidlstm_cell_424/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_424/Relu_1Relulstm_cell_424/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_424/mul_2Mullstm_cell_424/Sigmoid_2:y:0"lstm_cell_424/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_424_matmul_readvariableop_resource.lstm_cell_424_matmul_1_readvariableop_resource-lstm_cell_424_biasadd_readvariableop_resource*
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
while_body_2570667*
condR
while_cond_2570666*K
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
NoOpNoOp%^lstm_cell_424/BiasAdd/ReadVariableOp$^lstm_cell_424/MatMul/ReadVariableOp&^lstm_cell_424/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_424/BiasAdd/ReadVariableOp$lstm_cell_424/BiasAdd/ReadVariableOp2J
#lstm_cell_424/MatMul/ReadVariableOp#lstm_cell_424/MatMul/ReadVariableOp2N
%lstm_cell_424/MatMul_1/ReadVariableOp%lstm_cell_424/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2574334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_425_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_425_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_425_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_425_matmul_readvariableop_resource:2(F
4while_lstm_cell_425_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_425_biasadd_readvariableop_resource:(??*while/lstm_cell_425/BiasAdd/ReadVariableOp?)while/lstm_cell_425/MatMul/ReadVariableOp?+while/lstm_cell_425/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_425/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_425_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_425/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_425/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_425_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_425/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_425/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_425/addAddV2$while/lstm_cell_425/MatMul:product:0&while/lstm_cell_425/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_425/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_425_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_425/BiasAddBiasAddwhile/lstm_cell_425/add:z:02while/lstm_cell_425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_425/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_425/splitSplit,while/lstm_cell_425/split/split_dim:output:0$while/lstm_cell_425/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_425/SigmoidSigmoid"while/lstm_cell_425/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_1Sigmoid"while/lstm_cell_425/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mulMul!while/lstm_cell_425/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_425/ReluRelu"while/lstm_cell_425/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_1Mulwhile/lstm_cell_425/Sigmoid:y:0&while/lstm_cell_425/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/add_1AddV2while/lstm_cell_425/mul:z:0while/lstm_cell_425/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_425/Sigmoid_2Sigmoid"while/lstm_cell_425/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_425/Relu_1Reluwhile/lstm_cell_425/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_425/mul_2Mul!while/lstm_cell_425/Sigmoid_2:y:0(while/lstm_cell_425/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_425/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_425/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_425/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_425/BiasAdd/ReadVariableOp*^while/lstm_cell_425/MatMul/ReadVariableOp,^while/lstm_cell_425/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_425_biasadd_readvariableop_resource5while_lstm_cell_425_biasadd_readvariableop_resource_0"n
4while_lstm_cell_425_matmul_1_readvariableop_resource6while_lstm_cell_425_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_425_matmul_readvariableop_resource4while_lstm_cell_425_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_425/BiasAdd/ReadVariableOp*while/lstm_cell_425/BiasAdd/ReadVariableOp2V
)while/lstm_cell_425/MatMul/ReadVariableOp)while/lstm_cell_425/MatMul/ReadVariableOp2Z
+while/lstm_cell_425/MatMul_1/ReadVariableOp+while/lstm_cell_425/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2574047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2574047___redundant_placeholder05
1while_while_cond_2574047___redundant_placeholder15
1while_while_cond_2574047___redundant_placeholder25
1while_while_cond_2574047___redundant_placeholder3
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
lstm_492_input;
 serving_default_lstm_492_input:0?????????=
	dense_1640
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
2dense_164/kernel
:2dense_164/bias
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
0:.	?2lstm_492/lstm_cell_492/kernel
::8	d?2'lstm_492/lstm_cell_492/recurrent_kernel
*:(?2lstm_492/lstm_cell_492/bias
0:.	d?2lstm_493/lstm_cell_493/kernel
::8	2?2'lstm_493/lstm_cell_493/recurrent_kernel
*:(?2lstm_493/lstm_cell_493/bias
/:-2(2lstm_494/lstm_cell_494/kernel
9:7
(2'lstm_494/lstm_cell_494/recurrent_kernel
):'(2lstm_494/lstm_cell_494/bias
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
2Adam/dense_164/kernel/m
!:2Adam/dense_164/bias/m
5:3	?2$Adam/lstm_492/lstm_cell_492/kernel/m
?:=	d?2.Adam/lstm_492/lstm_cell_492/recurrent_kernel/m
/:-?2"Adam/lstm_492/lstm_cell_492/bias/m
5:3	d?2$Adam/lstm_493/lstm_cell_493/kernel/m
?:=	2?2.Adam/lstm_493/lstm_cell_493/recurrent_kernel/m
/:-?2"Adam/lstm_493/lstm_cell_493/bias/m
4:22(2$Adam/lstm_494/lstm_cell_494/kernel/m
>:<
(2.Adam/lstm_494/lstm_cell_494/recurrent_kernel/m
.:,(2"Adam/lstm_494/lstm_cell_494/bias/m
':%
2Adam/dense_164/kernel/v
!:2Adam/dense_164/bias/v
5:3	?2$Adam/lstm_492/lstm_cell_492/kernel/v
?:=	d?2.Adam/lstm_492/lstm_cell_492/recurrent_kernel/v
/:-?2"Adam/lstm_492/lstm_cell_492/bias/v
5:3	d?2$Adam/lstm_493/lstm_cell_493/kernel/v
?:=	2?2.Adam/lstm_493/lstm_cell_493/recurrent_kernel/v
/:-?2"Adam/lstm_493/lstm_cell_493/bias/v
4:22(2$Adam/lstm_494/lstm_cell_494/kernel/v
>:<
(2.Adam/lstm_494/lstm_cell_494/recurrent_kernel/v
.:,(2"Adam/lstm_494/lstm_cell_494/bias/v
?2?
0__inference_sequential_164_layer_call_fn_2570951
0__inference_sequential_164_layer_call_fn_2571689
0__inference_sequential_164_layer_call_fn_2571716
0__inference_sequential_164_layer_call_fn_2571567?
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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2572143
K__inference_sequential_164_layer_call_and_return_conditional_losses_2572570
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571597
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571627?
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
"__inference__wrapped_model_2569402lstm_492_input"?
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
*__inference_lstm_492_layer_call_fn_2572581
*__inference_lstm_492_layer_call_fn_2572592
*__inference_lstm_492_layer_call_fn_2572603
*__inference_lstm_492_layer_call_fn_2572614?
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2572757
E__inference_lstm_492_layer_call_and_return_conditional_losses_2572900
E__inference_lstm_492_layer_call_and_return_conditional_losses_2573043
E__inference_lstm_492_layer_call_and_return_conditional_losses_2573186?
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
*__inference_lstm_493_layer_call_fn_2573197
*__inference_lstm_493_layer_call_fn_2573208
*__inference_lstm_493_layer_call_fn_2573219
*__inference_lstm_493_layer_call_fn_2573230?
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573373
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573516
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573659
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573802?
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
*__inference_lstm_494_layer_call_fn_2573813
*__inference_lstm_494_layer_call_fn_2573824
*__inference_lstm_494_layer_call_fn_2573835
*__inference_lstm_494_layer_call_fn_2573846?
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2573989
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574132
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574275
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574418?
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
+__inference_dense_164_layer_call_fn_2574427?
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
F__inference_dense_164_layer_call_and_return_conditional_losses_2574437?
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
%__inference_signature_wrapper_2571662lstm_492_input"?
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
/__inference_lstm_cell_423_layer_call_fn_2574454
/__inference_lstm_cell_423_layer_call_fn_2574471?
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2574503
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2574535?
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
/__inference_lstm_cell_424_layer_call_fn_2574552
/__inference_lstm_cell_424_layer_call_fn_2574569?
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2574601
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2574633?
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
/__inference_lstm_cell_425_layer_call_fn_2574650
/__inference_lstm_cell_425_layer_call_fn_2574667?
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2574699
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2574731?
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
"__inference__wrapped_model_2569402?-./012345!";?8
1?.
,?)
lstm_492_input?????????
? "5?2
0
	dense_164#? 
	dense_164??????????
F__inference_dense_164_layer_call_and_return_conditional_losses_2574437\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_164_layer_call_fn_2574427O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_492_layer_call_and_return_conditional_losses_2572757?-./O?L
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2572900?-./O?L
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2573043q-./??<
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
E__inference_lstm_492_layer_call_and_return_conditional_losses_2573186q-./??<
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
*__inference_lstm_492_layer_call_fn_2572581}-./O?L
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
*__inference_lstm_492_layer_call_fn_2572592}-./O?L
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
*__inference_lstm_492_layer_call_fn_2572603d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_492_layer_call_fn_2572614d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573373?012O?L
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573516?012O?L
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573659q012??<
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
E__inference_lstm_493_layer_call_and_return_conditional_losses_2573802q012??<
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
*__inference_lstm_493_layer_call_fn_2573197}012O?L
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
*__inference_lstm_493_layer_call_fn_2573208}012O?L
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
*__inference_lstm_493_layer_call_fn_2573219d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_493_layer_call_fn_2573230d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_494_layer_call_and_return_conditional_losses_2573989}345O?L
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574132}345O?L
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574275m345??<
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
E__inference_lstm_494_layer_call_and_return_conditional_losses_2574418m345??<
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
*__inference_lstm_494_layer_call_fn_2573813p345O?L
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
*__inference_lstm_494_layer_call_fn_2573824p345O?L
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
*__inference_lstm_494_layer_call_fn_2573835`345??<
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
*__inference_lstm_494_layer_call_fn_2573846`345??<
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2574503?-./??}
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
J__inference_lstm_cell_423_layer_call_and_return_conditional_losses_2574535?-./??}
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
/__inference_lstm_cell_423_layer_call_fn_2574454?-./??}
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
/__inference_lstm_cell_423_layer_call_fn_2574471?-./??}
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2574601?012??}
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
J__inference_lstm_cell_424_layer_call_and_return_conditional_losses_2574633?012??}
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
/__inference_lstm_cell_424_layer_call_fn_2574552?012??}
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
/__inference_lstm_cell_424_layer_call_fn_2574569?012??}
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2574699?345??}
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
J__inference_lstm_cell_425_layer_call_and_return_conditional_losses_2574731?345??}
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
/__inference_lstm_cell_425_layer_call_fn_2574650?345??}
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
/__inference_lstm_cell_425_layer_call_fn_2574667?345??}
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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571597y-./012345!"C?@
9?6
,?)
lstm_492_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_164_layer_call_and_return_conditional_losses_2571627y-./012345!"C?@
9?6
,?)
lstm_492_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_164_layer_call_and_return_conditional_losses_2572143q-./012345!";?8
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
K__inference_sequential_164_layer_call_and_return_conditional_losses_2572570q-./012345!";?8
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
0__inference_sequential_164_layer_call_fn_2570951l-./012345!"C?@
9?6
,?)
lstm_492_input?????????
p 

 
? "???????????
0__inference_sequential_164_layer_call_fn_2571567l-./012345!"C?@
9?6
,?)
lstm_492_input?????????
p

 
? "???????????
0__inference_sequential_164_layer_call_fn_2571689d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_164_layer_call_fn_2571716d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2571662?-./012345!"M?J
? 
C?@
>
lstm_492_input,?)
lstm_492_input?????????"5?2
0
	dense_164#? 
	dense_164?????????