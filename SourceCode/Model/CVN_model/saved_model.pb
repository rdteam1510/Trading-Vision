Ҡ/
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
dense_116/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_116/kernel
u
$dense_116/kernel/Read/ReadVariableOpReadVariableOpdense_116/kernel*
_output_shapes

:
*
dtype0
t
dense_116/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_116/bias
m
"dense_116/bias/Read/ReadVariableOpReadVariableOpdense_116/bias*
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
lstm_348/lstm_cell_348/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_348/lstm_cell_348/kernel
?
1lstm_348/lstm_cell_348/kernel/Read/ReadVariableOpReadVariableOplstm_348/lstm_cell_348/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_348/lstm_cell_348/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_348/lstm_cell_348/recurrent_kernel
?
;lstm_348/lstm_cell_348/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_348/lstm_cell_348/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_348/lstm_cell_348/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_348/lstm_cell_348/bias
?
/lstm_348/lstm_cell_348/bias/Read/ReadVariableOpReadVariableOplstm_348/lstm_cell_348/bias*
_output_shapes	
:?*
dtype0
?
lstm_349/lstm_cell_349/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_349/lstm_cell_349/kernel
?
1lstm_349/lstm_cell_349/kernel/Read/ReadVariableOpReadVariableOplstm_349/lstm_cell_349/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_349/lstm_cell_349/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_349/lstm_cell_349/recurrent_kernel
?
;lstm_349/lstm_cell_349/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_349/lstm_cell_349/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_349/lstm_cell_349/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_349/lstm_cell_349/bias
?
/lstm_349/lstm_cell_349/bias/Read/ReadVariableOpReadVariableOplstm_349/lstm_cell_349/bias*
_output_shapes	
:?*
dtype0
?
lstm_350/lstm_cell_350/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_350/lstm_cell_350/kernel
?
1lstm_350/lstm_cell_350/kernel/Read/ReadVariableOpReadVariableOplstm_350/lstm_cell_350/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_350/lstm_cell_350/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_350/lstm_cell_350/recurrent_kernel
?
;lstm_350/lstm_cell_350/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_350/lstm_cell_350/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_350/lstm_cell_350/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_350/lstm_cell_350/bias
?
/lstm_350/lstm_cell_350/bias/Read/ReadVariableOpReadVariableOplstm_350/lstm_cell_350/bias*
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
Adam/dense_116/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_116/kernel/m
?
+Adam/dense_116/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_116/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_116/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_116/bias/m
{
)Adam/dense_116/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_116/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_348/lstm_cell_348/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_348/lstm_cell_348/kernel/m
?
8Adam/lstm_348/lstm_cell_348/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_348/lstm_cell_348/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_348/lstm_cell_348/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_348/lstm_cell_348/recurrent_kernel/m
?
BAdam/lstm_348/lstm_cell_348/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_348/lstm_cell_348/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_348/lstm_cell_348/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_348/lstm_cell_348/bias/m
?
6Adam/lstm_348/lstm_cell_348/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_348/lstm_cell_348/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_349/lstm_cell_349/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_349/lstm_cell_349/kernel/m
?
8Adam/lstm_349/lstm_cell_349/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_349/lstm_cell_349/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_349/lstm_cell_349/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_349/lstm_cell_349/recurrent_kernel/m
?
BAdam/lstm_349/lstm_cell_349/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_349/lstm_cell_349/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_349/lstm_cell_349/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_349/lstm_cell_349/bias/m
?
6Adam/lstm_349/lstm_cell_349/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_349/lstm_cell_349/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_350/lstm_cell_350/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_350/lstm_cell_350/kernel/m
?
8Adam/lstm_350/lstm_cell_350/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_350/lstm_cell_350/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_350/lstm_cell_350/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_350/lstm_cell_350/recurrent_kernel/m
?
BAdam/lstm_350/lstm_cell_350/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_350/lstm_cell_350/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_350/lstm_cell_350/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_350/lstm_cell_350/bias/m
?
6Adam/lstm_350/lstm_cell_350/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_350/lstm_cell_350/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_116/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_116/kernel/v
?
+Adam/dense_116/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_116/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_116/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_116/bias/v
{
)Adam/dense_116/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_116/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_348/lstm_cell_348/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_348/lstm_cell_348/kernel/v
?
8Adam/lstm_348/lstm_cell_348/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_348/lstm_cell_348/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_348/lstm_cell_348/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_348/lstm_cell_348/recurrent_kernel/v
?
BAdam/lstm_348/lstm_cell_348/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_348/lstm_cell_348/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_348/lstm_cell_348/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_348/lstm_cell_348/bias/v
?
6Adam/lstm_348/lstm_cell_348/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_348/lstm_cell_348/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_349/lstm_cell_349/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_349/lstm_cell_349/kernel/v
?
8Adam/lstm_349/lstm_cell_349/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_349/lstm_cell_349/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_349/lstm_cell_349/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_349/lstm_cell_349/recurrent_kernel/v
?
BAdam/lstm_349/lstm_cell_349/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_349/lstm_cell_349/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_349/lstm_cell_349/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_349/lstm_cell_349/bias/v
?
6Adam/lstm_349/lstm_cell_349/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_349/lstm_cell_349/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_350/lstm_cell_350/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_350/lstm_cell_350/kernel/v
?
8Adam/lstm_350/lstm_cell_350/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_350/lstm_cell_350/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_350/lstm_cell_350/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_350/lstm_cell_350/recurrent_kernel/v
?
BAdam/lstm_350/lstm_cell_350/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_350/lstm_cell_350/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_350/lstm_cell_350/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_350/lstm_cell_350/bias/v
?
6Adam/lstm_350/lstm_cell_350/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_350/lstm_cell_350/bias/v*
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
VARIABLE_VALUEdense_116/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_116/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_348/lstm_cell_348/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_348/lstm_cell_348/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_348/lstm_cell_348/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_349/lstm_cell_349/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_349/lstm_cell_349/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_349/lstm_cell_349/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_350/lstm_cell_350/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_350/lstm_cell_350/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_350/lstm_cell_350/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_116/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_116/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_348/lstm_cell_348/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_348/lstm_cell_348/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_348/lstm_cell_348/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_349/lstm_cell_349/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_349/lstm_cell_349/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_349/lstm_cell_349/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_350/lstm_cell_350/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_350/lstm_cell_350/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_350/lstm_cell_350/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_116/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_116/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_348/lstm_cell_348/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_348/lstm_cell_348/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_348/lstm_cell_348/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_349/lstm_cell_349/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_349/lstm_cell_349/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_349/lstm_cell_349/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_350/lstm_cell_350/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_350/lstm_cell_350/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_350/lstm_cell_350/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_348_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_348_inputlstm_348/lstm_cell_348/kernel'lstm_348/lstm_cell_348/recurrent_kernellstm_348/lstm_cell_348/biaslstm_349/lstm_cell_349/kernel'lstm_349/lstm_cell_349/recurrent_kernellstm_349/lstm_cell_349/biaslstm_350/lstm_cell_350/kernel'lstm_350/lstm_cell_350/recurrent_kernellstm_350/lstm_cell_350/biasdense_116/kerneldense_116/bias*
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
$__inference_signature_wrapper_614367
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_116/kernel/Read/ReadVariableOp"dense_116/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_348/lstm_cell_348/kernel/Read/ReadVariableOp;lstm_348/lstm_cell_348/recurrent_kernel/Read/ReadVariableOp/lstm_348/lstm_cell_348/bias/Read/ReadVariableOp1lstm_349/lstm_cell_349/kernel/Read/ReadVariableOp;lstm_349/lstm_cell_349/recurrent_kernel/Read/ReadVariableOp/lstm_349/lstm_cell_349/bias/Read/ReadVariableOp1lstm_350/lstm_cell_350/kernel/Read/ReadVariableOp;lstm_350/lstm_cell_350/recurrent_kernel/Read/ReadVariableOp/lstm_350/lstm_cell_350/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_116/kernel/m/Read/ReadVariableOp)Adam/dense_116/bias/m/Read/ReadVariableOp8Adam/lstm_348/lstm_cell_348/kernel/m/Read/ReadVariableOpBAdam/lstm_348/lstm_cell_348/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_348/lstm_cell_348/bias/m/Read/ReadVariableOp8Adam/lstm_349/lstm_cell_349/kernel/m/Read/ReadVariableOpBAdam/lstm_349/lstm_cell_349/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_349/lstm_cell_349/bias/m/Read/ReadVariableOp8Adam/lstm_350/lstm_cell_350/kernel/m/Read/ReadVariableOpBAdam/lstm_350/lstm_cell_350/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_350/lstm_cell_350/bias/m/Read/ReadVariableOp+Adam/dense_116/kernel/v/Read/ReadVariableOp)Adam/dense_116/bias/v/Read/ReadVariableOp8Adam/lstm_348/lstm_cell_348/kernel/v/Read/ReadVariableOpBAdam/lstm_348/lstm_cell_348/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_348/lstm_cell_348/bias/v/Read/ReadVariableOp8Adam/lstm_349/lstm_cell_349/kernel/v/Read/ReadVariableOpBAdam/lstm_349/lstm_cell_349/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_349/lstm_cell_349/bias/v/Read/ReadVariableOp8Adam/lstm_350/lstm_cell_350/kernel/v/Read/ReadVariableOpBAdam/lstm_350/lstm_cell_350/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_350/lstm_cell_350/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_617579
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_116/kerneldense_116/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_348/lstm_cell_348/kernel'lstm_348/lstm_cell_348/recurrent_kernellstm_348/lstm_cell_348/biaslstm_349/lstm_cell_349/kernel'lstm_349/lstm_cell_349/recurrent_kernellstm_349/lstm_cell_349/biaslstm_350/lstm_cell_350/kernel'lstm_350/lstm_cell_350/recurrent_kernellstm_350/lstm_cell_350/biastotalcountAdam/dense_116/kernel/mAdam/dense_116/bias/m$Adam/lstm_348/lstm_cell_348/kernel/m.Adam/lstm_348/lstm_cell_348/recurrent_kernel/m"Adam/lstm_348/lstm_cell_348/bias/m$Adam/lstm_349/lstm_cell_349/kernel/m.Adam/lstm_349/lstm_cell_349/recurrent_kernel/m"Adam/lstm_349/lstm_cell_349/bias/m$Adam/lstm_350/lstm_cell_350/kernel/m.Adam/lstm_350/lstm_cell_350/recurrent_kernel/m"Adam/lstm_350/lstm_cell_350/bias/mAdam/dense_116/kernel/vAdam/dense_116/bias/v$Adam/lstm_348/lstm_cell_348/kernel/v.Adam/lstm_348/lstm_cell_348/recurrent_kernel/v"Adam/lstm_348/lstm_cell_348/bias/v$Adam/lstm_349/lstm_cell_349/kernel/v.Adam/lstm_349/lstm_cell_349/recurrent_kernel/v"Adam/lstm_349/lstm_cell_349/bias/v$Adam/lstm_350/lstm_cell_350/kernel/v.Adam/lstm_350/lstm_cell_350/recurrent_kernel/v"Adam/lstm_350/lstm_cell_350/bias/v*4
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
"__inference__traced_restore_617709??+
?J
?
D__inference_lstm_348_layer_call_and_return_conditional_losses_615748

inputs>
+lstm_cell_99_matmul_readvariableop_resource:	?@
-lstm_cell_99_matmul_1_readvariableop_resource:	d?;
,lstm_cell_99_biasadd_readvariableop_resource:	?
identity??#lstm_cell_99/BiasAdd/ReadVariableOp?"lstm_cell_99/MatMul/ReadVariableOp?$lstm_cell_99/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_99/MatMul/ReadVariableOpReadVariableOp+lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_99/MatMulMatMulstrided_slice_2:output:0*lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_99/MatMul_1MatMulzeros:output:0,lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_99/addAddV2lstm_cell_99/MatMul:product:0lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_99/BiasAddBiasAddlstm_cell_99/add:z:0+lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_99/splitSplit%lstm_cell_99/split/split_dim:output:0lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_99/SigmoidSigmoidlstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_1Sigmoidlstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_99/mulMullstm_cell_99/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_99/ReluRelulstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_1Mullstm_cell_99/Sigmoid:y:0lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_99/add_1AddV2lstm_cell_99/mul:z:0lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_2Sigmoidlstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_99/Relu_1Relulstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_2Mullstm_cell_99/Sigmoid_2:y:0!lstm_cell_99/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_99_matmul_readvariableop_resource-lstm_cell_99_matmul_1_readvariableop_resource,lstm_cell_99_biasadd_readvariableop_resource*
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
while_body_615664*
condR
while_cond_615663*K
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
NoOpNoOp$^lstm_cell_99/BiasAdd/ReadVariableOp#^lstm_cell_99/MatMul/ReadVariableOp%^lstm_cell_99/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_99/BiasAdd/ReadVariableOp#lstm_cell_99/BiasAdd/ReadVariableOp2H
"lstm_cell_99/MatMul/ReadVariableOp"lstm_cell_99/MatMul/ReadVariableOp2L
$lstm_cell_99/MatMul_1/ReadVariableOp$lstm_cell_99/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_350_while_cond_614757.
*lstm_350_while_lstm_350_while_loop_counter4
0lstm_350_while_lstm_350_while_maximum_iterations
lstm_350_while_placeholder 
lstm_350_while_placeholder_1 
lstm_350_while_placeholder_2 
lstm_350_while_placeholder_30
,lstm_350_while_less_lstm_350_strided_slice_1F
Blstm_350_while_lstm_350_while_cond_614757___redundant_placeholder0F
Blstm_350_while_lstm_350_while_cond_614757___redundant_placeholder1F
Blstm_350_while_lstm_350_while_cond_614757___redundant_placeholder2F
Blstm_350_while_lstm_350_while_cond_614757___redundant_placeholder3
lstm_350_while_identity
?
lstm_350/while/LessLesslstm_350_while_placeholder,lstm_350_while_less_lstm_350_strided_slice_1*
T0*
_output_shapes
: ]
lstm_350/while/IdentityIdentitylstm_350/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_350_while_identity lstm_350/while/Identity:output:0*(
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_614302
lstm_348_input"
lstm_348_614275:	?"
lstm_348_614277:	d?
lstm_348_614279:	?"
lstm_349_614282:	d?"
lstm_349_614284:	2?
lstm_349_614286:	?!
lstm_350_614289:2(!
lstm_350_614291:
(
lstm_350_614293:("
dense_116_614296:

dense_116_614298:
identity??!dense_116/StatefulPartitionedCall? lstm_348/StatefulPartitionedCall? lstm_349/StatefulPartitionedCall? lstm_350/StatefulPartitionedCall?
 lstm_348/StatefulPartitionedCallStatefulPartitionedCalllstm_348_inputlstm_348_614275lstm_348_614277lstm_348_614279*
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_613306?
 lstm_349/StatefulPartitionedCallStatefulPartitionedCall)lstm_348/StatefulPartitionedCall:output:0lstm_349_614282lstm_349_614284lstm_349_614286*
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_613456?
 lstm_350/StatefulPartitionedCallStatefulPartitionedCall)lstm_349/StatefulPartitionedCall:output:0lstm_350_614289lstm_350_614291lstm_350_614293*
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613606?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_350/StatefulPartitionedCall:output:0dense_116_614296dense_116_614298*
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
E__inference_dense_116_layer_call_and_return_conditional_losses_613624y
IdentityIdentity*dense_116/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_116/StatefulPartitionedCall!^lstm_348/StatefulPartitionedCall!^lstm_349/StatefulPartitionedCall!^lstm_350/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2D
 lstm_348/StatefulPartitionedCall lstm_348/StatefulPartitionedCall2D
 lstm_349/StatefulPartitionedCall lstm_349/StatefulPartitionedCall2D
 lstm_350/StatefulPartitionedCall lstm_350/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_348_input
?8
?
while_body_614068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_99_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_99_matmul_readvariableop_resource:	?F
3while_lstm_cell_99_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_99_biasadd_readvariableop_resource:	???)while/lstm_cell_99/BiasAdd/ReadVariableOp?(while/lstm_cell_99/MatMul/ReadVariableOp?*while/lstm_cell_99/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_99/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_99/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_99/addAddV2#while/lstm_cell_99/MatMul:product:0%while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_99/BiasAddBiasAddwhile/lstm_cell_99/add:z:01while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_99/splitSplit+while/lstm_cell_99/split/split_dim:output:0#while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_99/SigmoidSigmoid!while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_1Sigmoid!while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mulMul while/lstm_cell_99/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_99/ReluRelu!while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_1Mulwhile/lstm_cell_99/Sigmoid:y:0%while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/add_1AddV2while/lstm_cell_99/mul:z:0while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_2Sigmoid!while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_99/Relu_1Reluwhile/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_2Mul while/lstm_cell_99/Sigmoid_2:y:0'while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_99/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_99/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_99/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_99/BiasAdd/ReadVariableOp)^while/lstm_cell_99/MatMul/ReadVariableOp+^while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_99_biasadd_readvariableop_resource4while_lstm_cell_99_biasadd_readvariableop_resource_0"l
3while_lstm_cell_99_matmul_1_readvariableop_resource5while_lstm_cell_99_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_99_matmul_readvariableop_resource3while_lstm_cell_99_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_99/BiasAdd/ReadVariableOp)while/lstm_cell_99/BiasAdd/ReadVariableOp2T
(while/lstm_cell_99/MatMul/ReadVariableOp(while/lstm_cell_99/MatMul/ReadVariableOp2X
*while/lstm_cell_99/MatMul_1/ReadVariableOp*while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_617038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_617038___redundant_placeholder04
0while_while_cond_617038___redundant_placeholder14
0while_while_cond_617038___redundant_placeholder24
0while_while_cond_617038___redundant_placeholder3
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
"__inference__traced_restore_617709
file_prefix3
!assignvariableop_dense_116_kernel:
/
!assignvariableop_1_dense_116_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_348_lstm_cell_348_kernel:	?M
:assignvariableop_8_lstm_348_lstm_cell_348_recurrent_kernel:	d?=
.assignvariableop_9_lstm_348_lstm_cell_348_bias:	?D
1assignvariableop_10_lstm_349_lstm_cell_349_kernel:	d?N
;assignvariableop_11_lstm_349_lstm_cell_349_recurrent_kernel:	2?>
/assignvariableop_12_lstm_349_lstm_cell_349_bias:	?C
1assignvariableop_13_lstm_350_lstm_cell_350_kernel:2(M
;assignvariableop_14_lstm_350_lstm_cell_350_recurrent_kernel:
(=
/assignvariableop_15_lstm_350_lstm_cell_350_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_116_kernel_m:
7
)assignvariableop_19_adam_dense_116_bias_m:K
8assignvariableop_20_adam_lstm_348_lstm_cell_348_kernel_m:	?U
Bassignvariableop_21_adam_lstm_348_lstm_cell_348_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_348_lstm_cell_348_bias_m:	?K
8assignvariableop_23_adam_lstm_349_lstm_cell_349_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_349_lstm_cell_349_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_349_lstm_cell_349_bias_m:	?J
8assignvariableop_26_adam_lstm_350_lstm_cell_350_kernel_m:2(T
Bassignvariableop_27_adam_lstm_350_lstm_cell_350_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_350_lstm_cell_350_bias_m:(=
+assignvariableop_29_adam_dense_116_kernel_v:
7
)assignvariableop_30_adam_dense_116_bias_v:K
8assignvariableop_31_adam_lstm_348_lstm_cell_348_kernel_v:	?U
Bassignvariableop_32_adam_lstm_348_lstm_cell_348_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_348_lstm_cell_348_bias_v:	?K
8assignvariableop_34_adam_lstm_349_lstm_cell_349_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_349_lstm_cell_349_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_349_lstm_cell_349_bias_v:	?J
8assignvariableop_37_adam_lstm_350_lstm_cell_350_kernel_v:2(T
Bassignvariableop_38_adam_lstm_350_lstm_cell_350_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_350_lstm_cell_350_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_116_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_116_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_348_lstm_cell_348_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_348_lstm_cell_348_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_348_lstm_cell_348_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_349_lstm_cell_349_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_349_lstm_cell_349_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_349_lstm_cell_349_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_350_lstm_cell_350_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_350_lstm_cell_350_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_350_lstm_cell_350_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_116_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_116_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_348_lstm_cell_348_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_348_lstm_cell_348_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_348_lstm_cell_348_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_349_lstm_cell_349_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_349_lstm_cell_349_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_349_lstm_cell_349_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_350_lstm_cell_350_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_350_lstm_cell_350_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_350_lstm_cell_350_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_116_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_116_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_348_lstm_cell_348_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_348_lstm_cell_348_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_348_lstm_cell_348_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_349_lstm_cell_349_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_349_lstm_cell_349_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_349_lstm_cell_349_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_350_lstm_cell_350_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_350_lstm_cell_350_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_350_lstm_cell_350_bias_vIdentity_39:output:0"/device:CPU:0*
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_616980

inputs>
,lstm_cell_101_matmul_readvariableop_resource:2(@
.lstm_cell_101_matmul_1_readvariableop_resource:
(;
-lstm_cell_101_biasadd_readvariableop_resource:(
identity??$lstm_cell_101/BiasAdd/ReadVariableOp?#lstm_cell_101/MatMul/ReadVariableOp?%lstm_cell_101/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_101/MatMul/ReadVariableOpReadVariableOp,lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_101/MatMulMatMulstrided_slice_2:output:0+lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_101/MatMul_1MatMulzeros:output:0-lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_101/addAddV2lstm_cell_101/MatMul:product:0 lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_101/BiasAddBiasAddlstm_cell_101/add:z:0,lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_101/splitSplit&lstm_cell_101/split/split_dim:output:0lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_101/SigmoidSigmoidlstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_1Sigmoidlstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_101/mulMullstm_cell_101/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_101/ReluRelulstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_1Mullstm_cell_101/Sigmoid:y:0 lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_101/add_1AddV2lstm_cell_101/mul:z:0lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_2Sigmoidlstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_101/Relu_1Relulstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_2Mullstm_cell_101/Sigmoid_2:y:0"lstm_cell_101/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_101_matmul_readvariableop_resource.lstm_cell_101_matmul_1_readvariableop_resource-lstm_cell_101_biasadd_readvariableop_resource*
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
while_body_616896*
condR
while_cond_616895*K
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
NoOpNoOp%^lstm_cell_101/BiasAdd/ReadVariableOp$^lstm_cell_101/MatMul/ReadVariableOp&^lstm_cell_101/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_101/BiasAdd/ReadVariableOp$lstm_cell_101/BiasAdd/ReadVariableOp2J
#lstm_cell_101/MatMul/ReadVariableOp#lstm_cell_101/MatMul/ReadVariableOp2N
%lstm_cell_101/MatMul_1/ReadVariableOp%lstm_cell_101/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612320

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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612524

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
while_body_616137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_100_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_100_matmul_readvariableop_resource:	d?G
4while_lstm_cell_100_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_100_biasadd_readvariableop_resource:	???*while/lstm_cell_100/BiasAdd/ReadVariableOp?)while/lstm_cell_100/MatMul/ReadVariableOp?+while/lstm_cell_100/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_100/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_100/addAddV2$while/lstm_cell_100/MatMul:product:0&while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_100/BiasAddBiasAddwhile/lstm_cell_100/add:z:02while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_100/splitSplit,while/lstm_cell_100/split/split_dim:output:0$while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_100/SigmoidSigmoid"while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_1Sigmoid"while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mulMul!while/lstm_cell_100/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_100/ReluRelu"while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_1Mulwhile/lstm_cell_100/Sigmoid:y:0&while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/add_1AddV2while/lstm_cell_100/mul:z:0while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_2Sigmoid"while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_100/Relu_1Reluwhile/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_2Mul!while/lstm_cell_100/Sigmoid_2:y:0(while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_100/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_100/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_100/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_100/BiasAdd/ReadVariableOp*^while/lstm_cell_100/MatMul/ReadVariableOp,^while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_100_biasadd_readvariableop_resource5while_lstm_cell_100_biasadd_readvariableop_resource_0"n
4while_lstm_cell_100_matmul_1_readvariableop_resource6while_lstm_cell_100_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_100_matmul_readvariableop_resource4while_lstm_cell_100_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_100/BiasAdd/ReadVariableOp*while/lstm_cell_100/BiasAdd/ReadVariableOp2V
)while/lstm_cell_100/MatMul/ReadVariableOp)while/lstm_cell_100/MatMul/ReadVariableOp2Z
+while/lstm_cell_100/MatMul_1/ReadVariableOp+while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_612378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_612378___redundant_placeholder04
0while_while_cond_612378___redundant_placeholder14
0while_while_cond_612378___redundant_placeholder24
0while_while_cond_612378___redundant_placeholder3
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_613456

inputs?
,lstm_cell_100_matmul_readvariableop_resource:	d?A
.lstm_cell_100_matmul_1_readvariableop_resource:	2?<
-lstm_cell_100_biasadd_readvariableop_resource:	?
identity??$lstm_cell_100/BiasAdd/ReadVariableOp?#lstm_cell_100/MatMul/ReadVariableOp?%lstm_cell_100/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_100/MatMul/ReadVariableOpReadVariableOp,lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_100/MatMulMatMulstrided_slice_2:output:0+lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_100/MatMul_1MatMulzeros:output:0-lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_100/addAddV2lstm_cell_100/MatMul:product:0 lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_100/BiasAddBiasAddlstm_cell_100/add:z:0,lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_100/splitSplit&lstm_cell_100/split/split_dim:output:0lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_100/SigmoidSigmoidlstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_1Sigmoidlstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_100/mulMullstm_cell_100/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_100/ReluRelulstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_1Mullstm_cell_100/Sigmoid:y:0 lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_100/add_1AddV2lstm_cell_100/mul:z:0lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_2Sigmoidlstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_100/Relu_1Relulstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_2Mullstm_cell_100/Sigmoid_2:y:0"lstm_cell_100/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_100_matmul_readvariableop_resource.lstm_cell_100_matmul_1_readvariableop_resource-lstm_cell_100_biasadd_readvariableop_resource*
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
while_body_613372*
condR
while_cond_613371*K
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
NoOpNoOp%^lstm_cell_100/BiasAdd/ReadVariableOp$^lstm_cell_100/MatMul/ReadVariableOp&^lstm_cell_100/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_100/BiasAdd/ReadVariableOp$lstm_cell_100/BiasAdd/ReadVariableOp2J
#lstm_cell_100/MatMul/ReadVariableOp#lstm_cell_100/MatMul/ReadVariableOp2N
%lstm_cell_100/MatMul_1/ReadVariableOp%lstm_cell_100/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?T
?
)sequential_116_lstm_350_while_body_612017L
Hsequential_116_lstm_350_while_sequential_116_lstm_350_while_loop_counterR
Nsequential_116_lstm_350_while_sequential_116_lstm_350_while_maximum_iterations-
)sequential_116_lstm_350_while_placeholder/
+sequential_116_lstm_350_while_placeholder_1/
+sequential_116_lstm_350_while_placeholder_2/
+sequential_116_lstm_350_while_placeholder_3K
Gsequential_116_lstm_350_while_sequential_116_lstm_350_strided_slice_1_0?
?sequential_116_lstm_350_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_350_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_116_lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0:2(`
Nsequential_116_lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0:
([
Msequential_116_lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0:(*
&sequential_116_lstm_350_while_identity,
(sequential_116_lstm_350_while_identity_1,
(sequential_116_lstm_350_while_identity_2,
(sequential_116_lstm_350_while_identity_3,
(sequential_116_lstm_350_while_identity_4,
(sequential_116_lstm_350_while_identity_5I
Esequential_116_lstm_350_while_sequential_116_lstm_350_strided_slice_1?
?sequential_116_lstm_350_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_350_tensorarrayunstack_tensorlistfromtensor\
Jsequential_116_lstm_350_while_lstm_cell_101_matmul_readvariableop_resource:2(^
Lsequential_116_lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource:
(Y
Ksequential_116_lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource:(??Bsequential_116/lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp?Asequential_116/lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp?Csequential_116/lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp?
Osequential_116/lstm_350/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_116/lstm_350/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_116_lstm_350_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_350_tensorarrayunstack_tensorlistfromtensor_0)sequential_116_lstm_350_while_placeholderXsequential_116/lstm_350/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_116/lstm_350/while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOpLsequential_116_lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_116/lstm_350/while/lstm_cell_101/MatMulMatMulHsequential_116/lstm_350/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_116/lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_116/lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOpNsequential_116_lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_116/lstm_350/while/lstm_cell_101/MatMul_1MatMul+sequential_116_lstm_350_while_placeholder_2Ksequential_116/lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_116/lstm_350/while/lstm_cell_101/addAddV2<sequential_116/lstm_350/while/lstm_cell_101/MatMul:product:0>sequential_116/lstm_350/while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_116/lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOpMsequential_116_lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_116/lstm_350/while/lstm_cell_101/BiasAddBiasAdd3sequential_116/lstm_350/while/lstm_cell_101/add:z:0Jsequential_116/lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_116/lstm_350/while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_116/lstm_350/while/lstm_cell_101/splitSplitDsequential_116/lstm_350/while/lstm_cell_101/split/split_dim:output:0<sequential_116/lstm_350/while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_116/lstm_350/while/lstm_cell_101/SigmoidSigmoid:sequential_116/lstm_350/while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_116/lstm_350/while/lstm_cell_101/Sigmoid_1Sigmoid:sequential_116/lstm_350/while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_116/lstm_350/while/lstm_cell_101/mulMul9sequential_116/lstm_350/while/lstm_cell_101/Sigmoid_1:y:0+sequential_116_lstm_350_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_116/lstm_350/while/lstm_cell_101/ReluRelu:sequential_116/lstm_350/while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_116/lstm_350/while/lstm_cell_101/mul_1Mul7sequential_116/lstm_350/while/lstm_cell_101/Sigmoid:y:0>sequential_116/lstm_350/while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_116/lstm_350/while/lstm_cell_101/add_1AddV23sequential_116/lstm_350/while/lstm_cell_101/mul:z:05sequential_116/lstm_350/while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_116/lstm_350/while/lstm_cell_101/Sigmoid_2Sigmoid:sequential_116/lstm_350/while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_116/lstm_350/while/lstm_cell_101/Relu_1Relu5sequential_116/lstm_350/while/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_116/lstm_350/while/lstm_cell_101/mul_2Mul9sequential_116/lstm_350/while/lstm_cell_101/Sigmoid_2:y:0@sequential_116/lstm_350/while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_116/lstm_350/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_116_lstm_350_while_placeholder_1)sequential_116_lstm_350_while_placeholder5sequential_116/lstm_350/while/lstm_cell_101/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_116/lstm_350/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_116/lstm_350/while/addAddV2)sequential_116_lstm_350_while_placeholder,sequential_116/lstm_350/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_116/lstm_350/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_116/lstm_350/while/add_1AddV2Hsequential_116_lstm_350_while_sequential_116_lstm_350_while_loop_counter.sequential_116/lstm_350/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_116/lstm_350/while/IdentityIdentity'sequential_116/lstm_350/while/add_1:z:0#^sequential_116/lstm_350/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_350/while/Identity_1IdentityNsequential_116_lstm_350_while_sequential_116_lstm_350_while_maximum_iterations#^sequential_116/lstm_350/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_350/while/Identity_2Identity%sequential_116/lstm_350/while/add:z:0#^sequential_116/lstm_350/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_350/while/Identity_3IdentityRsequential_116/lstm_350/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_116/lstm_350/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_350/while/Identity_4Identity5sequential_116/lstm_350/while/lstm_cell_101/mul_2:z:0#^sequential_116/lstm_350/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_116/lstm_350/while/Identity_5Identity5sequential_116/lstm_350/while/lstm_cell_101/add_1:z:0#^sequential_116/lstm_350/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_116/lstm_350/while/NoOpNoOpC^sequential_116/lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOpB^sequential_116/lstm_350/while/lstm_cell_101/MatMul/ReadVariableOpD^sequential_116/lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_116_lstm_350_while_identity/sequential_116/lstm_350/while/Identity:output:0"]
(sequential_116_lstm_350_while_identity_11sequential_116/lstm_350/while/Identity_1:output:0"]
(sequential_116_lstm_350_while_identity_21sequential_116/lstm_350/while/Identity_2:output:0"]
(sequential_116_lstm_350_while_identity_31sequential_116/lstm_350/while/Identity_3:output:0"]
(sequential_116_lstm_350_while_identity_41sequential_116/lstm_350/while/Identity_4:output:0"]
(sequential_116_lstm_350_while_identity_51sequential_116/lstm_350/while/Identity_5:output:0"?
Ksequential_116_lstm_350_while_lstm_cell_101_biasadd_readvariableop_resourceMsequential_116_lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0"?
Lsequential_116_lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resourceNsequential_116_lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0"?
Jsequential_116_lstm_350_while_lstm_cell_101_matmul_readvariableop_resourceLsequential_116_lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0"?
Esequential_116_lstm_350_while_sequential_116_lstm_350_strided_slice_1Gsequential_116_lstm_350_while_sequential_116_lstm_350_strided_slice_1_0"?
?sequential_116_lstm_350_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_350_tensorarrayunstack_tensorlistfromtensor?sequential_116_lstm_350_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_350_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_116/lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOpBsequential_116/lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp2?
Asequential_116/lstm_350/while/lstm_cell_101/MatMul/ReadVariableOpAsequential_116/lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp2?
Csequential_116/lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOpCsequential_116/lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_350_while_body_614758.
*lstm_350_while_lstm_350_while_loop_counter4
0lstm_350_while_lstm_350_while_maximum_iterations
lstm_350_while_placeholder 
lstm_350_while_placeholder_1 
lstm_350_while_placeholder_2 
lstm_350_while_placeholder_3-
)lstm_350_while_lstm_350_strided_slice_1_0i
elstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0:2(Q
?lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(L
>lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0:(
lstm_350_while_identity
lstm_350_while_identity_1
lstm_350_while_identity_2
lstm_350_while_identity_3
lstm_350_while_identity_4
lstm_350_while_identity_5+
'lstm_350_while_lstm_350_strided_slice_1g
clstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensorM
;lstm_350_while_lstm_cell_101_matmul_readvariableop_resource:2(O
=lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource:
(J
<lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource:(??3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp?2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp?4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp?
@lstm_350/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_350/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensor_0lstm_350_while_placeholderIlstm_350/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp=lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_350/while/lstm_cell_101/MatMulMatMul9lstm_350/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp?lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_350/while/lstm_cell_101/MatMul_1MatMullstm_350_while_placeholder_2<lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_350/while/lstm_cell_101/addAddV2-lstm_350/while/lstm_cell_101/MatMul:product:0/lstm_350/while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp>lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_350/while/lstm_cell_101/BiasAddBiasAdd$lstm_350/while/lstm_cell_101/add:z:0;lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_350/while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_350/while/lstm_cell_101/splitSplit5lstm_350/while/lstm_cell_101/split/split_dim:output:0-lstm_350/while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_350/while/lstm_cell_101/SigmoidSigmoid+lstm_350/while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_350/while/lstm_cell_101/Sigmoid_1Sigmoid+lstm_350/while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_350/while/lstm_cell_101/mulMul*lstm_350/while/lstm_cell_101/Sigmoid_1:y:0lstm_350_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_350/while/lstm_cell_101/ReluRelu+lstm_350/while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_350/while/lstm_cell_101/mul_1Mul(lstm_350/while/lstm_cell_101/Sigmoid:y:0/lstm_350/while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_350/while/lstm_cell_101/add_1AddV2$lstm_350/while/lstm_cell_101/mul:z:0&lstm_350/while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_350/while/lstm_cell_101/Sigmoid_2Sigmoid+lstm_350/while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_350/while/lstm_cell_101/Relu_1Relu&lstm_350/while/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_350/while/lstm_cell_101/mul_2Mul*lstm_350/while/lstm_cell_101/Sigmoid_2:y:01lstm_350/while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_350/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_350_while_placeholder_1lstm_350_while_placeholder&lstm_350/while/lstm_cell_101/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_350/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_350/while/addAddV2lstm_350_while_placeholderlstm_350/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_350/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_350/while/add_1AddV2*lstm_350_while_lstm_350_while_loop_counterlstm_350/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_350/while/IdentityIdentitylstm_350/while/add_1:z:0^lstm_350/while/NoOp*
T0*
_output_shapes
: ?
lstm_350/while/Identity_1Identity0lstm_350_while_lstm_350_while_maximum_iterations^lstm_350/while/NoOp*
T0*
_output_shapes
: t
lstm_350/while/Identity_2Identitylstm_350/while/add:z:0^lstm_350/while/NoOp*
T0*
_output_shapes
: ?
lstm_350/while/Identity_3IdentityClstm_350/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_350/while/NoOp*
T0*
_output_shapes
: ?
lstm_350/while/Identity_4Identity&lstm_350/while/lstm_cell_101/mul_2:z:0^lstm_350/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_350/while/Identity_5Identity&lstm_350/while/lstm_cell_101/add_1:z:0^lstm_350/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_350/while/NoOpNoOp4^lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp3^lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp5^lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_350_while_identity lstm_350/while/Identity:output:0"?
lstm_350_while_identity_1"lstm_350/while/Identity_1:output:0"?
lstm_350_while_identity_2"lstm_350/while/Identity_2:output:0"?
lstm_350_while_identity_3"lstm_350/while/Identity_3:output:0"?
lstm_350_while_identity_4"lstm_350/while/Identity_4:output:0"?
lstm_350_while_identity_5"lstm_350/while/Identity_5:output:0"T
'lstm_350_while_lstm_350_strided_slice_1)lstm_350_while_lstm_350_strided_slice_1_0"~
<lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource>lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0"?
=lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource?lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0"|
;lstm_350_while_lstm_cell_101_matmul_readvariableop_resource=lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0"?
clstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensorelstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp2h
2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp2l
4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_116_layer_call_and_return_conditional_losses_617142

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
while_cond_616136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_616136___redundant_placeholder04
0while_while_cond_616136___redundant_placeholder14
0while_while_cond_616136___redundant_placeholder24
0while_while_cond_616136___redundant_placeholder3
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_616221
inputs_0?
,lstm_cell_100_matmul_readvariableop_resource:	d?A
.lstm_cell_100_matmul_1_readvariableop_resource:	2?<
-lstm_cell_100_biasadd_readvariableop_resource:	?
identity??$lstm_cell_100/BiasAdd/ReadVariableOp?#lstm_cell_100/MatMul/ReadVariableOp?%lstm_cell_100/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_100/MatMul/ReadVariableOpReadVariableOp,lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_100/MatMulMatMulstrided_slice_2:output:0+lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_100/MatMul_1MatMulzeros:output:0-lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_100/addAddV2lstm_cell_100/MatMul:product:0 lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_100/BiasAddBiasAddlstm_cell_100/add:z:0,lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_100/splitSplit&lstm_cell_100/split/split_dim:output:0lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_100/SigmoidSigmoidlstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_1Sigmoidlstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_100/mulMullstm_cell_100/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_100/ReluRelulstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_1Mullstm_cell_100/Sigmoid:y:0 lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_100/add_1AddV2lstm_cell_100/mul:z:0lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_2Sigmoidlstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_100/Relu_1Relulstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_2Mullstm_cell_100/Sigmoid_2:y:0"lstm_cell_100/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_100_matmul_readvariableop_resource.lstm_cell_100_matmul_1_readvariableop_resource-lstm_cell_100_biasadd_readvariableop_resource*
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
while_body_616137*
condR
while_cond_616136*K
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
NoOpNoOp%^lstm_cell_100/BiasAdd/ReadVariableOp$^lstm_cell_100/MatMul/ReadVariableOp&^lstm_cell_100/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_100/BiasAdd/ReadVariableOp$lstm_cell_100/BiasAdd/ReadVariableOp2J
#lstm_cell_100/MatMul/ReadVariableOp#lstm_cell_100/MatMul/ReadVariableOp2N
%lstm_cell_100/MatMul_1/ReadVariableOp%lstm_cell_100/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_614067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_614067___redundant_placeholder04
0while_while_cond_614067___redundant_placeholder14
0while_while_cond_614067___redundant_placeholder24
0while_while_cond_614067___redundant_placeholder3
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
/__inference_sequential_116_layer_call_fn_614394

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
J__inference_sequential_116_layer_call_and_return_conditional_losses_613631o
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
.__inference_lstm_cell_101_layer_call_fn_617355

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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_612874o
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
while_body_616753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_101_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_101_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_101_matmul_readvariableop_resource:2(F
4while_lstm_cell_101_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_101_biasadd_readvariableop_resource:(??*while/lstm_cell_101/BiasAdd/ReadVariableOp?)while/lstm_cell_101/MatMul/ReadVariableOp?+while/lstm_cell_101/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_101/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_101/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_101/addAddV2$while/lstm_cell_101/MatMul:product:0&while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_101/BiasAddBiasAddwhile/lstm_cell_101/add:z:02while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_101/splitSplit,while/lstm_cell_101/split/split_dim:output:0$while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_101/SigmoidSigmoid"while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_1Sigmoid"while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mulMul!while/lstm_cell_101/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_101/ReluRelu"while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_1Mulwhile/lstm_cell_101/Sigmoid:y:0&while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/add_1AddV2while/lstm_cell_101/mul:z:0while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_2Sigmoid"while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_101/Relu_1Reluwhile/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_2Mul!while/lstm_cell_101/Sigmoid_2:y:0(while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_101/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_101/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_101/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_101/BiasAdd/ReadVariableOp*^while/lstm_cell_101/MatMul/ReadVariableOp,^while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_101_biasadd_readvariableop_resource5while_lstm_cell_101_biasadd_readvariableop_resource_0"n
4while_lstm_cell_101_matmul_1_readvariableop_resource6while_lstm_cell_101_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_101_matmul_readvariableop_resource4while_lstm_cell_101_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_101/BiasAdd/ReadVariableOp*while/lstm_cell_101/BiasAdd/ReadVariableOp2V
)while/lstm_cell_101/MatMul/ReadVariableOp)while/lstm_cell_101/MatMul/ReadVariableOp2Z
+while/lstm_cell_101/MatMul_1/ReadVariableOp+while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_613738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_101_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_101_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_101_matmul_readvariableop_resource:2(F
4while_lstm_cell_101_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_101_biasadd_readvariableop_resource:(??*while/lstm_cell_101/BiasAdd/ReadVariableOp?)while/lstm_cell_101/MatMul/ReadVariableOp?+while/lstm_cell_101/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_101/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_101/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_101/addAddV2$while/lstm_cell_101/MatMul:product:0&while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_101/BiasAddBiasAddwhile/lstm_cell_101/add:z:02while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_101/splitSplit,while/lstm_cell_101/split/split_dim:output:0$while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_101/SigmoidSigmoid"while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_1Sigmoid"while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mulMul!while/lstm_cell_101/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_101/ReluRelu"while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_1Mulwhile/lstm_cell_101/Sigmoid:y:0&while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/add_1AddV2while/lstm_cell_101/mul:z:0while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_2Sigmoid"while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_101/Relu_1Reluwhile/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_2Mul!while/lstm_cell_101/Sigmoid_2:y:0(while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_101/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_101/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_101/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_101/BiasAdd/ReadVariableOp*^while/lstm_cell_101/MatMul/ReadVariableOp,^while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_101_biasadd_readvariableop_resource5while_lstm_cell_101_biasadd_readvariableop_resource_0"n
4while_lstm_cell_101_matmul_1_readvariableop_resource6while_lstm_cell_101_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_101_matmul_readvariableop_resource4while_lstm_cell_101_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_101/BiasAdd/ReadVariableOp*while/lstm_cell_101/BiasAdd/ReadVariableOp2V
)while/lstm_cell_101/MatMul/ReadVariableOp)while/lstm_cell_101/MatMul/ReadVariableOp2Z
+while/lstm_cell_101/MatMul_1/ReadVariableOp+while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_616837
inputs_0>
,lstm_cell_101_matmul_readvariableop_resource:2(@
.lstm_cell_101_matmul_1_readvariableop_resource:
(;
-lstm_cell_101_biasadd_readvariableop_resource:(
identity??$lstm_cell_101/BiasAdd/ReadVariableOp?#lstm_cell_101/MatMul/ReadVariableOp?%lstm_cell_101/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_101/MatMul/ReadVariableOpReadVariableOp,lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_101/MatMulMatMulstrided_slice_2:output:0+lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_101/MatMul_1MatMulzeros:output:0-lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_101/addAddV2lstm_cell_101/MatMul:product:0 lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_101/BiasAddBiasAddlstm_cell_101/add:z:0,lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_101/splitSplit&lstm_cell_101/split/split_dim:output:0lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_101/SigmoidSigmoidlstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_1Sigmoidlstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_101/mulMullstm_cell_101/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_101/ReluRelulstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_1Mullstm_cell_101/Sigmoid:y:0 lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_101/add_1AddV2lstm_cell_101/mul:z:0lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_2Sigmoidlstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_101/Relu_1Relulstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_2Mullstm_cell_101/Sigmoid_2:y:0"lstm_cell_101/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_101_matmul_readvariableop_resource.lstm_cell_101_matmul_1_readvariableop_resource-lstm_cell_101_biasadd_readvariableop_resource*
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
while_body_616753*
condR
while_cond_616752*K
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
NoOpNoOp%^lstm_cell_101/BiasAdd/ReadVariableOp$^lstm_cell_101/MatMul/ReadVariableOp&^lstm_cell_101/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_101/BiasAdd/ReadVariableOp$lstm_cell_101/BiasAdd/ReadVariableOp2J
#lstm_cell_101/MatMul/ReadVariableOp#lstm_cell_101/MatMul/ReadVariableOp2N
%lstm_cell_101/MatMul_1/ReadVariableOp%lstm_cell_101/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
D__inference_lstm_349_layer_call_and_return_conditional_losses_612607

inputs'
lstm_cell_100_612525:	d?'
lstm_cell_100_612527:	2?#
lstm_cell_100_612529:	?
identity??%lstm_cell_100/StatefulPartitionedCall?while;
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
%lstm_cell_100/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_100_612525lstm_cell_100_612527lstm_cell_100_612529*
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612524n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_100_612525lstm_cell_100_612527lstm_cell_100_612529*
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
while_body_612538*
condR
while_cond_612537*K
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
NoOpNoOp&^lstm_cell_100/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_100/StatefulPartitionedCall%lstm_cell_100/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_612187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_612187___redundant_placeholder04
0while_while_cond_612187___redundant_placeholder14
0while_while_cond_612187___redundant_placeholder24
0while_while_cond_612187___redundant_placeholder3
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
while_body_612729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_100_612753_0:	d?/
while_lstm_cell_100_612755_0:	2?+
while_lstm_cell_100_612757_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_100_612753:	d?-
while_lstm_cell_100_612755:	2?)
while_lstm_cell_100_612757:	???+while/lstm_cell_100/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_100/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_100_612753_0while_lstm_cell_100_612755_0while_lstm_cell_100_612757_0*
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612670?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_100/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_100/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_100/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_100/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_100_612753while_lstm_cell_100_612753_0":
while_lstm_cell_100_612755while_lstm_cell_100_612755_0":
while_lstm_cell_100_612757while_lstm_cell_100_612757_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_100/StatefulPartitionedCall+while/lstm_cell_100/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_616896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_101_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_101_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_101_matmul_readvariableop_resource:2(F
4while_lstm_cell_101_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_101_biasadd_readvariableop_resource:(??*while/lstm_cell_101/BiasAdd/ReadVariableOp?)while/lstm_cell_101/MatMul/ReadVariableOp?+while/lstm_cell_101/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_101/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_101/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_101/addAddV2$while/lstm_cell_101/MatMul:product:0&while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_101/BiasAddBiasAddwhile/lstm_cell_101/add:z:02while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_101/splitSplit,while/lstm_cell_101/split/split_dim:output:0$while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_101/SigmoidSigmoid"while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_1Sigmoid"while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mulMul!while/lstm_cell_101/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_101/ReluRelu"while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_1Mulwhile/lstm_cell_101/Sigmoid:y:0&while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/add_1AddV2while/lstm_cell_101/mul:z:0while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_2Sigmoid"while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_101/Relu_1Reluwhile/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_2Mul!while/lstm_cell_101/Sigmoid_2:y:0(while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_101/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_101/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_101/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_101/BiasAdd/ReadVariableOp*^while/lstm_cell_101/MatMul/ReadVariableOp,^while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_101_biasadd_readvariableop_resource5while_lstm_cell_101_biasadd_readvariableop_resource_0"n
4while_lstm_cell_101_matmul_1_readvariableop_resource6while_lstm_cell_101_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_101_matmul_readvariableop_resource4while_lstm_cell_101_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_101/BiasAdd/ReadVariableOp*while/lstm_cell_101/BiasAdd/ReadVariableOp2V
)while/lstm_cell_101/MatMul/ReadVariableOp)while/lstm_cell_101/MatMul/ReadVariableOp2Z
+while/lstm_cell_101/MatMul_1/ReadVariableOp+while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_617404

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
while_cond_615377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_615377___redundant_placeholder04
0while_while_cond_615377___redundant_placeholder14
0while_while_cond_615377___redundant_placeholder24
0while_while_cond_615377___redundant_placeholder3
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
while_body_616280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_100_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_100_matmul_readvariableop_resource:	d?G
4while_lstm_cell_100_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_100_biasadd_readvariableop_resource:	???*while/lstm_cell_100/BiasAdd/ReadVariableOp?)while/lstm_cell_100/MatMul/ReadVariableOp?+while/lstm_cell_100/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_100/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_100/addAddV2$while/lstm_cell_100/MatMul:product:0&while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_100/BiasAddBiasAddwhile/lstm_cell_100/add:z:02while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_100/splitSplit,while/lstm_cell_100/split/split_dim:output:0$while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_100/SigmoidSigmoid"while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_1Sigmoid"while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mulMul!while/lstm_cell_100/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_100/ReluRelu"while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_1Mulwhile/lstm_cell_100/Sigmoid:y:0&while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/add_1AddV2while/lstm_cell_100/mul:z:0while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_2Sigmoid"while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_100/Relu_1Reluwhile/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_2Mul!while/lstm_cell_100/Sigmoid_2:y:0(while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_100/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_100/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_100/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_100/BiasAdd/ReadVariableOp*^while/lstm_cell_100/MatMul/ReadVariableOp,^while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_100_biasadd_readvariableop_resource5while_lstm_cell_100_biasadd_readvariableop_resource_0"n
4while_lstm_cell_100_matmul_1_readvariableop_resource6while_lstm_cell_100_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_100_matmul_readvariableop_resource4while_lstm_cell_100_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_100/BiasAdd/ReadVariableOp*while/lstm_cell_100/BiasAdd/ReadVariableOp2V
)while/lstm_cell_100/MatMul/ReadVariableOp)while/lstm_cell_100/MatMul/ReadVariableOp2Z
+while/lstm_cell_100/MatMul_1/ReadVariableOp+while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_616610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_101_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_101_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_101_matmul_readvariableop_resource:2(F
4while_lstm_cell_101_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_101_biasadd_readvariableop_resource:(??*while/lstm_cell_101/BiasAdd/ReadVariableOp?)while/lstm_cell_101/MatMul/ReadVariableOp?+while/lstm_cell_101/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_101/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_101/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_101/addAddV2$while/lstm_cell_101/MatMul:product:0&while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_101/BiasAddBiasAddwhile/lstm_cell_101/add:z:02while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_101/splitSplit,while/lstm_cell_101/split/split_dim:output:0$while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_101/SigmoidSigmoid"while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_1Sigmoid"while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mulMul!while/lstm_cell_101/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_101/ReluRelu"while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_1Mulwhile/lstm_cell_101/Sigmoid:y:0&while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/add_1AddV2while/lstm_cell_101/mul:z:0while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_2Sigmoid"while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_101/Relu_1Reluwhile/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_2Mul!while/lstm_cell_101/Sigmoid_2:y:0(while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_101/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_101/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_101/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_101/BiasAdd/ReadVariableOp*^while/lstm_cell_101/MatMul/ReadVariableOp,^while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_101_biasadd_readvariableop_resource5while_lstm_cell_101_biasadd_readvariableop_resource_0"n
4while_lstm_cell_101_matmul_1_readvariableop_resource6while_lstm_cell_101_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_101_matmul_readvariableop_resource4while_lstm_cell_101_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_101/BiasAdd/ReadVariableOp*while/lstm_cell_101/BiasAdd/ReadVariableOp2V
)while/lstm_cell_101/MatMul/ReadVariableOp)while/lstm_cell_101/MatMul/ReadVariableOp2Z
+while/lstm_cell_101/MatMul_1/ReadVariableOp+while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_dense_116_layer_call_fn_617132

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
E__inference_dense_116_layer_call_and_return_conditional_losses_613624o
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
while_cond_615520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_615520___redundant_placeholder04
0while_while_cond_615520___redundant_placeholder14
0while_while_cond_615520___redundant_placeholder24
0while_while_cond_615520___redundant_placeholder3
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
while_cond_616422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_616422___redundant_placeholder04
0while_while_cond_616422___redundant_placeholder14
0while_while_cond_616422___redundant_placeholder24
0while_while_cond_616422___redundant_placeholder3
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
/__inference_sequential_116_layer_call_fn_614272
lstm_348_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_348_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_614220o
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
_user_specified_namelstm_348_input
?
?
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_613020

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
.__inference_lstm_cell_101_layer_call_fn_617372

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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_613020o
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_612257

inputs&
lstm_cell_99_612175:	?&
lstm_cell_99_612177:	d?"
lstm_cell_99_612179:	?
identity??$lstm_cell_99/StatefulPartitionedCall?while;
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
$lstm_cell_99/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_99_612175lstm_cell_99_612177lstm_cell_99_612179*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612174n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_99_612175lstm_cell_99_612177lstm_cell_99_612179*
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
while_body_612188*
condR
while_cond_612187*K
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
 :??????????????????du
NoOpNoOp%^lstm_cell_99/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_99/StatefulPartitionedCall$lstm_cell_99/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_99_layer_call_fn_617176

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612320o
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
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_617240

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
while_cond_615806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_615806___redundant_placeholder04
0while_while_cond_615806___redundant_placeholder14
0while_while_cond_615806___redundant_placeholder24
0while_while_cond_615806___redundant_placeholder3
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
while_body_615994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_100_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_100_matmul_readvariableop_resource:	d?G
4while_lstm_cell_100_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_100_biasadd_readvariableop_resource:	???*while/lstm_cell_100/BiasAdd/ReadVariableOp?)while/lstm_cell_100/MatMul/ReadVariableOp?+while/lstm_cell_100/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_100/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_100/addAddV2$while/lstm_cell_100/MatMul:product:0&while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_100/BiasAddBiasAddwhile/lstm_cell_100/add:z:02while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_100/splitSplit,while/lstm_cell_100/split/split_dim:output:0$while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_100/SigmoidSigmoid"while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_1Sigmoid"while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mulMul!while/lstm_cell_100/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_100/ReluRelu"while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_1Mulwhile/lstm_cell_100/Sigmoid:y:0&while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/add_1AddV2while/lstm_cell_100/mul:z:0while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_2Sigmoid"while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_100/Relu_1Reluwhile/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_2Mul!while/lstm_cell_100/Sigmoid_2:y:0(while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_100/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_100/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_100/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_100/BiasAdd/ReadVariableOp*^while/lstm_cell_100/MatMul/ReadVariableOp,^while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_100_biasadd_readvariableop_resource5while_lstm_cell_100_biasadd_readvariableop_resource_0"n
4while_lstm_cell_100_matmul_1_readvariableop_resource6while_lstm_cell_100_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_100_matmul_readvariableop_resource4while_lstm_cell_100_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_100/BiasAdd/ReadVariableOp*while/lstm_cell_100/BiasAdd/ReadVariableOp2V
)while/lstm_cell_100/MatMul/ReadVariableOp)while/lstm_cell_100/MatMul/ReadVariableOp2Z
+while/lstm_cell_100/MatMul_1/ReadVariableOp+while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_616423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_100_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_100_matmul_readvariableop_resource:	d?G
4while_lstm_cell_100_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_100_biasadd_readvariableop_resource:	???*while/lstm_cell_100/BiasAdd/ReadVariableOp?)while/lstm_cell_100/MatMul/ReadVariableOp?+while/lstm_cell_100/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_100/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_100/addAddV2$while/lstm_cell_100/MatMul:product:0&while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_100/BiasAddBiasAddwhile/lstm_cell_100/add:z:02while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_100/splitSplit,while/lstm_cell_100/split/split_dim:output:0$while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_100/SigmoidSigmoid"while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_1Sigmoid"while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mulMul!while/lstm_cell_100/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_100/ReluRelu"while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_1Mulwhile/lstm_cell_100/Sigmoid:y:0&while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/add_1AddV2while/lstm_cell_100/mul:z:0while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_2Sigmoid"while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_100/Relu_1Reluwhile/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_2Mul!while/lstm_cell_100/Sigmoid_2:y:0(while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_100/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_100/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_100/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_100/BiasAdd/ReadVariableOp*^while/lstm_cell_100/MatMul/ReadVariableOp,^while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_100_biasadd_readvariableop_resource5while_lstm_cell_100_biasadd_readvariableop_resource_0"n
4while_lstm_cell_100_matmul_1_readvariableop_resource6while_lstm_cell_100_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_100_matmul_readvariableop_resource4while_lstm_cell_100_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_100/BiasAdd/ReadVariableOp*while/lstm_cell_100/BiasAdd/ReadVariableOp2V
)while/lstm_cell_100/MatMul/ReadVariableOp)while/lstm_cell_100/MatMul/ReadVariableOp2Z
+while/lstm_cell_100/MatMul_1/ReadVariableOp+while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_612887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_612887___redundant_placeholder04
0while_while_cond_612887___redundant_placeholder14
0while_while_cond_612887___redundant_placeholder24
0while_while_cond_612887___redundant_placeholder3
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
?"
?
while_body_612888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_101_612912_0:2(.
while_lstm_cell_101_612914_0:
(*
while_lstm_cell_101_612916_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_101_612912:2(,
while_lstm_cell_101_612914:
((
while_lstm_cell_101_612916:(??+while/lstm_cell_101/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_101/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_101_612912_0while_lstm_cell_101_612914_0while_lstm_cell_101_612916_0*
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_612874?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_101/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_101/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_101/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_101/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_101_612912while_lstm_cell_101_612912_0":
while_lstm_cell_101_612914while_lstm_cell_101_612914_0":
while_lstm_cell_101_612916while_lstm_cell_101_612916_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_101/StatefulPartitionedCall+while/lstm_cell_101/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_613306

inputs>
+lstm_cell_99_matmul_readvariableop_resource:	?@
-lstm_cell_99_matmul_1_readvariableop_resource:	d?;
,lstm_cell_99_biasadd_readvariableop_resource:	?
identity??#lstm_cell_99/BiasAdd/ReadVariableOp?"lstm_cell_99/MatMul/ReadVariableOp?$lstm_cell_99/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_99/MatMul/ReadVariableOpReadVariableOp+lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_99/MatMulMatMulstrided_slice_2:output:0*lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_99/MatMul_1MatMulzeros:output:0,lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_99/addAddV2lstm_cell_99/MatMul:product:0lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_99/BiasAddBiasAddlstm_cell_99/add:z:0+lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_99/splitSplit%lstm_cell_99/split/split_dim:output:0lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_99/SigmoidSigmoidlstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_1Sigmoidlstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_99/mulMullstm_cell_99/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_99/ReluRelulstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_1Mullstm_cell_99/Sigmoid:y:0lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_99/add_1AddV2lstm_cell_99/mul:z:0lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_2Sigmoidlstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_99/Relu_1Relulstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_2Mullstm_cell_99/Sigmoid_2:y:0!lstm_cell_99/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_99_matmul_readvariableop_resource-lstm_cell_99_matmul_1_readvariableop_resource,lstm_cell_99_biasadd_readvariableop_resource*
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
while_body_613222*
condR
while_cond_613221*K
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
NoOpNoOp$^lstm_cell_99/BiasAdd/ReadVariableOp#^lstm_cell_99/MatMul/ReadVariableOp%^lstm_cell_99/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_99/BiasAdd/ReadVariableOp#lstm_cell_99/BiasAdd/ReadVariableOp2H
"lstm_cell_99/MatMul/ReadVariableOp"lstm_cell_99/MatMul/ReadVariableOp2L
$lstm_cell_99/MatMul_1/ReadVariableOp$lstm_cell_99/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_350_layer_call_and_return_conditional_losses_616694
inputs_0>
,lstm_cell_101_matmul_readvariableop_resource:2(@
.lstm_cell_101_matmul_1_readvariableop_resource:
(;
-lstm_cell_101_biasadd_readvariableop_resource:(
identity??$lstm_cell_101/BiasAdd/ReadVariableOp?#lstm_cell_101/MatMul/ReadVariableOp?%lstm_cell_101/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_101/MatMul/ReadVariableOpReadVariableOp,lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_101/MatMulMatMulstrided_slice_2:output:0+lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_101/MatMul_1MatMulzeros:output:0-lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_101/addAddV2lstm_cell_101/MatMul:product:0 lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_101/BiasAddBiasAddlstm_cell_101/add:z:0,lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_101/splitSplit&lstm_cell_101/split/split_dim:output:0lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_101/SigmoidSigmoidlstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_1Sigmoidlstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_101/mulMullstm_cell_101/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_101/ReluRelulstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_1Mullstm_cell_101/Sigmoid:y:0 lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_101/add_1AddV2lstm_cell_101/mul:z:0lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_2Sigmoidlstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_101/Relu_1Relulstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_2Mullstm_cell_101/Sigmoid_2:y:0"lstm_cell_101/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_101_matmul_readvariableop_resource.lstm_cell_101_matmul_1_readvariableop_resource-lstm_cell_101_biasadd_readvariableop_resource*
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
while_body_616610*
condR
while_cond_616609*K
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
NoOpNoOp%^lstm_cell_101/BiasAdd/ReadVariableOp$^lstm_cell_101/MatMul/ReadVariableOp&^lstm_cell_101/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_101/BiasAdd/ReadVariableOp$lstm_cell_101/BiasAdd/ReadVariableOp2J
#lstm_cell_101/MatMul/ReadVariableOp#lstm_cell_101/MatMul/ReadVariableOp2N
%lstm_cell_101/MatMul_1/ReadVariableOp%lstm_cell_101/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_350_layer_call_fn_616518
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_612957o
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

?
lstm_348_while_cond_614906.
*lstm_348_while_lstm_348_while_loop_counter4
0lstm_348_while_lstm_348_while_maximum_iterations
lstm_348_while_placeholder 
lstm_348_while_placeholder_1 
lstm_348_while_placeholder_2 
lstm_348_while_placeholder_30
,lstm_348_while_less_lstm_348_strided_slice_1F
Blstm_348_while_lstm_348_while_cond_614906___redundant_placeholder0F
Blstm_348_while_lstm_348_while_cond_614906___redundant_placeholder1F
Blstm_348_while_lstm_348_while_cond_614906___redundant_placeholder2F
Blstm_348_while_lstm_348_while_cond_614906___redundant_placeholder3
lstm_348_while_identity
?
lstm_348/while/LessLesslstm_348_while_placeholder,lstm_348_while_less_lstm_348_strided_slice_1*
T0*
_output_shapes
: ]
lstm_348/while/IdentityIdentitylstm_348/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_348_while_identity lstm_348/while/Identity:output:0*(
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
)__inference_lstm_348_layer_call_fn_615308

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
D__inference_lstm_348_layer_call_and_return_conditional_losses_613306s
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613822

inputs>
,lstm_cell_101_matmul_readvariableop_resource:2(@
.lstm_cell_101_matmul_1_readvariableop_resource:
(;
-lstm_cell_101_biasadd_readvariableop_resource:(
identity??$lstm_cell_101/BiasAdd/ReadVariableOp?#lstm_cell_101/MatMul/ReadVariableOp?%lstm_cell_101/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_101/MatMul/ReadVariableOpReadVariableOp,lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_101/MatMulMatMulstrided_slice_2:output:0+lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_101/MatMul_1MatMulzeros:output:0-lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_101/addAddV2lstm_cell_101/MatMul:product:0 lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_101/BiasAddBiasAddlstm_cell_101/add:z:0,lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_101/splitSplit&lstm_cell_101/split/split_dim:output:0lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_101/SigmoidSigmoidlstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_1Sigmoidlstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_101/mulMullstm_cell_101/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_101/ReluRelulstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_1Mullstm_cell_101/Sigmoid:y:0 lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_101/add_1AddV2lstm_cell_101/mul:z:0lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_2Sigmoidlstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_101/Relu_1Relulstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_2Mullstm_cell_101/Sigmoid_2:y:0"lstm_cell_101/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_101_matmul_readvariableop_resource.lstm_cell_101_matmul_1_readvariableop_resource-lstm_cell_101_biasadd_readvariableop_resource*
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
while_body_613738*
condR
while_cond_613737*K
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
NoOpNoOp%^lstm_cell_101/BiasAdd/ReadVariableOp$^lstm_cell_101/MatMul/ReadVariableOp&^lstm_cell_101/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_101/BiasAdd/ReadVariableOp$lstm_cell_101/BiasAdd/ReadVariableOp2J
#lstm_cell_101/MatMul/ReadVariableOp#lstm_cell_101/MatMul/ReadVariableOp2N
%lstm_cell_101/MatMul_1/ReadVariableOp%lstm_cell_101/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_617208

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
__inference__traced_save_617579
file_prefix/
+savev2_dense_116_kernel_read_readvariableop-
)savev2_dense_116_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_348_lstm_cell_348_kernel_read_readvariableopF
Bsavev2_lstm_348_lstm_cell_348_recurrent_kernel_read_readvariableop:
6savev2_lstm_348_lstm_cell_348_bias_read_readvariableop<
8savev2_lstm_349_lstm_cell_349_kernel_read_readvariableopF
Bsavev2_lstm_349_lstm_cell_349_recurrent_kernel_read_readvariableop:
6savev2_lstm_349_lstm_cell_349_bias_read_readvariableop<
8savev2_lstm_350_lstm_cell_350_kernel_read_readvariableopF
Bsavev2_lstm_350_lstm_cell_350_recurrent_kernel_read_readvariableop:
6savev2_lstm_350_lstm_cell_350_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_116_kernel_m_read_readvariableop4
0savev2_adam_dense_116_bias_m_read_readvariableopC
?savev2_adam_lstm_348_lstm_cell_348_kernel_m_read_readvariableopM
Isavev2_adam_lstm_348_lstm_cell_348_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_348_lstm_cell_348_bias_m_read_readvariableopC
?savev2_adam_lstm_349_lstm_cell_349_kernel_m_read_readvariableopM
Isavev2_adam_lstm_349_lstm_cell_349_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_349_lstm_cell_349_bias_m_read_readvariableopC
?savev2_adam_lstm_350_lstm_cell_350_kernel_m_read_readvariableopM
Isavev2_adam_lstm_350_lstm_cell_350_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_350_lstm_cell_350_bias_m_read_readvariableop6
2savev2_adam_dense_116_kernel_v_read_readvariableop4
0savev2_adam_dense_116_bias_v_read_readvariableopC
?savev2_adam_lstm_348_lstm_cell_348_kernel_v_read_readvariableopM
Isavev2_adam_lstm_348_lstm_cell_348_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_348_lstm_cell_348_bias_v_read_readvariableopC
?savev2_adam_lstm_349_lstm_cell_349_kernel_v_read_readvariableopM
Isavev2_adam_lstm_349_lstm_cell_349_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_349_lstm_cell_349_bias_v_read_readvariableopC
?savev2_adam_lstm_350_lstm_cell_350_kernel_v_read_readvariableopM
Isavev2_adam_lstm_350_lstm_cell_350_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_350_lstm_cell_350_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_116_kernel_read_readvariableop)savev2_dense_116_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_348_lstm_cell_348_kernel_read_readvariableopBsavev2_lstm_348_lstm_cell_348_recurrent_kernel_read_readvariableop6savev2_lstm_348_lstm_cell_348_bias_read_readvariableop8savev2_lstm_349_lstm_cell_349_kernel_read_readvariableopBsavev2_lstm_349_lstm_cell_349_recurrent_kernel_read_readvariableop6savev2_lstm_349_lstm_cell_349_bias_read_readvariableop8savev2_lstm_350_lstm_cell_350_kernel_read_readvariableopBsavev2_lstm_350_lstm_cell_350_recurrent_kernel_read_readvariableop6savev2_lstm_350_lstm_cell_350_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_116_kernel_m_read_readvariableop0savev2_adam_dense_116_bias_m_read_readvariableop?savev2_adam_lstm_348_lstm_cell_348_kernel_m_read_readvariableopIsavev2_adam_lstm_348_lstm_cell_348_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_348_lstm_cell_348_bias_m_read_readvariableop?savev2_adam_lstm_349_lstm_cell_349_kernel_m_read_readvariableopIsavev2_adam_lstm_349_lstm_cell_349_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_349_lstm_cell_349_bias_m_read_readvariableop?savev2_adam_lstm_350_lstm_cell_350_kernel_m_read_readvariableopIsavev2_adam_lstm_350_lstm_cell_350_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_350_lstm_cell_350_bias_m_read_readvariableop2savev2_adam_dense_116_kernel_v_read_readvariableop0savev2_adam_dense_116_bias_v_read_readvariableop?savev2_adam_lstm_348_lstm_cell_348_kernel_v_read_readvariableopIsavev2_adam_lstm_348_lstm_cell_348_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_348_lstm_cell_348_bias_v_read_readvariableop?savev2_adam_lstm_349_lstm_cell_349_kernel_v_read_readvariableopIsavev2_adam_lstm_349_lstm_cell_349_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_349_lstm_cell_349_bias_v_read_readvariableop?savev2_adam_lstm_350_lstm_cell_350_kernel_v_read_readvariableopIsavev2_adam_lstm_350_lstm_cell_350_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_350_lstm_cell_350_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

lstm_349_while_body_615046.
*lstm_349_while_lstm_349_while_loop_counter4
0lstm_349_while_lstm_349_while_maximum_iterations
lstm_349_while_placeholder 
lstm_349_while_placeholder_1 
lstm_349_while_placeholder_2 
lstm_349_while_placeholder_3-
)lstm_349_while_lstm_349_strided_slice_1_0i
elstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0:	d?R
?lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?M
>lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
lstm_349_while_identity
lstm_349_while_identity_1
lstm_349_while_identity_2
lstm_349_while_identity_3
lstm_349_while_identity_4
lstm_349_while_identity_5+
'lstm_349_while_lstm_349_strided_slice_1g
clstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensorN
;lstm_349_while_lstm_cell_100_matmul_readvariableop_resource:	d?P
=lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource:	2?K
<lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource:	???3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp?2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp?4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp?
@lstm_349/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_349/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensor_0lstm_349_while_placeholderIlstm_349/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp=lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_349/while/lstm_cell_100/MatMulMatMul9lstm_349/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp?lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_349/while/lstm_cell_100/MatMul_1MatMullstm_349_while_placeholder_2<lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_349/while/lstm_cell_100/addAddV2-lstm_349/while/lstm_cell_100/MatMul:product:0/lstm_349/while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp>lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_349/while/lstm_cell_100/BiasAddBiasAdd$lstm_349/while/lstm_cell_100/add:z:0;lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_349/while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_349/while/lstm_cell_100/splitSplit5lstm_349/while/lstm_cell_100/split/split_dim:output:0-lstm_349/while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_349/while/lstm_cell_100/SigmoidSigmoid+lstm_349/while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_349/while/lstm_cell_100/Sigmoid_1Sigmoid+lstm_349/while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_349/while/lstm_cell_100/mulMul*lstm_349/while/lstm_cell_100/Sigmoid_1:y:0lstm_349_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_349/while/lstm_cell_100/ReluRelu+lstm_349/while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_349/while/lstm_cell_100/mul_1Mul(lstm_349/while/lstm_cell_100/Sigmoid:y:0/lstm_349/while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_349/while/lstm_cell_100/add_1AddV2$lstm_349/while/lstm_cell_100/mul:z:0&lstm_349/while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_349/while/lstm_cell_100/Sigmoid_2Sigmoid+lstm_349/while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_349/while/lstm_cell_100/Relu_1Relu&lstm_349/while/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_349/while/lstm_cell_100/mul_2Mul*lstm_349/while/lstm_cell_100/Sigmoid_2:y:01lstm_349/while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_349/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_349_while_placeholder_1lstm_349_while_placeholder&lstm_349/while/lstm_cell_100/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_349/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_349/while/addAddV2lstm_349_while_placeholderlstm_349/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_349/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_349/while/add_1AddV2*lstm_349_while_lstm_349_while_loop_counterlstm_349/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_349/while/IdentityIdentitylstm_349/while/add_1:z:0^lstm_349/while/NoOp*
T0*
_output_shapes
: ?
lstm_349/while/Identity_1Identity0lstm_349_while_lstm_349_while_maximum_iterations^lstm_349/while/NoOp*
T0*
_output_shapes
: t
lstm_349/while/Identity_2Identitylstm_349/while/add:z:0^lstm_349/while/NoOp*
T0*
_output_shapes
: ?
lstm_349/while/Identity_3IdentityClstm_349/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_349/while/NoOp*
T0*
_output_shapes
: ?
lstm_349/while/Identity_4Identity&lstm_349/while/lstm_cell_100/mul_2:z:0^lstm_349/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_349/while/Identity_5Identity&lstm_349/while/lstm_cell_100/add_1:z:0^lstm_349/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_349/while/NoOpNoOp4^lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp3^lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp5^lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_349_while_identity lstm_349/while/Identity:output:0"?
lstm_349_while_identity_1"lstm_349/while/Identity_1:output:0"?
lstm_349_while_identity_2"lstm_349/while/Identity_2:output:0"?
lstm_349_while_identity_3"lstm_349/while/Identity_3:output:0"?
lstm_349_while_identity_4"lstm_349/while/Identity_4:output:0"?
lstm_349_while_identity_5"lstm_349/while/Identity_5:output:0"T
'lstm_349_while_lstm_349_strided_slice_1)lstm_349_while_lstm_349_strided_slice_1_0"~
<lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource>lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0"?
=lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource?lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0"|
;lstm_349_while_lstm_cell_100_matmul_readvariableop_resource=lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0"?
clstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensorelstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp2h
2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp2l
4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_613222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_99_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_99_matmul_readvariableop_resource:	?F
3while_lstm_cell_99_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_99_biasadd_readvariableop_resource:	???)while/lstm_cell_99/BiasAdd/ReadVariableOp?(while/lstm_cell_99/MatMul/ReadVariableOp?*while/lstm_cell_99/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_99/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_99/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_99/addAddV2#while/lstm_cell_99/MatMul:product:0%while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_99/BiasAddBiasAddwhile/lstm_cell_99/add:z:01while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_99/splitSplit+while/lstm_cell_99/split/split_dim:output:0#while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_99/SigmoidSigmoid!while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_1Sigmoid!while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mulMul while/lstm_cell_99/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_99/ReluRelu!while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_1Mulwhile/lstm_cell_99/Sigmoid:y:0%while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/add_1AddV2while/lstm_cell_99/mul:z:0while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_2Sigmoid!while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_99/Relu_1Reluwhile/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_2Mul while/lstm_cell_99/Sigmoid_2:y:0'while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_99/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_99/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_99/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_99/BiasAdd/ReadVariableOp)^while/lstm_cell_99/MatMul/ReadVariableOp+^while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_99_biasadd_readvariableop_resource4while_lstm_cell_99_biasadd_readvariableop_resource_0"l
3while_lstm_cell_99_matmul_1_readvariableop_resource5while_lstm_cell_99_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_99_matmul_readvariableop_resource3while_lstm_cell_99_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_99/BiasAdd/ReadVariableOp)while/lstm_cell_99/BiasAdd/ReadVariableOp2T
(while/lstm_cell_99/MatMul/ReadVariableOp(while/lstm_cell_99/MatMul/ReadVariableOp2X
*while/lstm_cell_99/MatMul_1/ReadVariableOp*while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_350_while_body_615185.
*lstm_350_while_lstm_350_while_loop_counter4
0lstm_350_while_lstm_350_while_maximum_iterations
lstm_350_while_placeholder 
lstm_350_while_placeholder_1 
lstm_350_while_placeholder_2 
lstm_350_while_placeholder_3-
)lstm_350_while_lstm_350_strided_slice_1_0i
elstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0:2(Q
?lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(L
>lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0:(
lstm_350_while_identity
lstm_350_while_identity_1
lstm_350_while_identity_2
lstm_350_while_identity_3
lstm_350_while_identity_4
lstm_350_while_identity_5+
'lstm_350_while_lstm_350_strided_slice_1g
clstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensorM
;lstm_350_while_lstm_cell_101_matmul_readvariableop_resource:2(O
=lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource:
(J
<lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource:(??3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp?2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp?4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp?
@lstm_350/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_350/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensor_0lstm_350_while_placeholderIlstm_350/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp=lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_350/while/lstm_cell_101/MatMulMatMul9lstm_350/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp?lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_350/while/lstm_cell_101/MatMul_1MatMullstm_350_while_placeholder_2<lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_350/while/lstm_cell_101/addAddV2-lstm_350/while/lstm_cell_101/MatMul:product:0/lstm_350/while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp>lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_350/while/lstm_cell_101/BiasAddBiasAdd$lstm_350/while/lstm_cell_101/add:z:0;lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_350/while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_350/while/lstm_cell_101/splitSplit5lstm_350/while/lstm_cell_101/split/split_dim:output:0-lstm_350/while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_350/while/lstm_cell_101/SigmoidSigmoid+lstm_350/while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_350/while/lstm_cell_101/Sigmoid_1Sigmoid+lstm_350/while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_350/while/lstm_cell_101/mulMul*lstm_350/while/lstm_cell_101/Sigmoid_1:y:0lstm_350_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_350/while/lstm_cell_101/ReluRelu+lstm_350/while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_350/while/lstm_cell_101/mul_1Mul(lstm_350/while/lstm_cell_101/Sigmoid:y:0/lstm_350/while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_350/while/lstm_cell_101/add_1AddV2$lstm_350/while/lstm_cell_101/mul:z:0&lstm_350/while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_350/while/lstm_cell_101/Sigmoid_2Sigmoid+lstm_350/while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_350/while/lstm_cell_101/Relu_1Relu&lstm_350/while/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_350/while/lstm_cell_101/mul_2Mul*lstm_350/while/lstm_cell_101/Sigmoid_2:y:01lstm_350/while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_350/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_350_while_placeholder_1lstm_350_while_placeholder&lstm_350/while/lstm_cell_101/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_350/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_350/while/addAddV2lstm_350_while_placeholderlstm_350/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_350/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_350/while/add_1AddV2*lstm_350_while_lstm_350_while_loop_counterlstm_350/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_350/while/IdentityIdentitylstm_350/while/add_1:z:0^lstm_350/while/NoOp*
T0*
_output_shapes
: ?
lstm_350/while/Identity_1Identity0lstm_350_while_lstm_350_while_maximum_iterations^lstm_350/while/NoOp*
T0*
_output_shapes
: t
lstm_350/while/Identity_2Identitylstm_350/while/add:z:0^lstm_350/while/NoOp*
T0*
_output_shapes
: ?
lstm_350/while/Identity_3IdentityClstm_350/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_350/while/NoOp*
T0*
_output_shapes
: ?
lstm_350/while/Identity_4Identity&lstm_350/while/lstm_cell_101/mul_2:z:0^lstm_350/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_350/while/Identity_5Identity&lstm_350/while/lstm_cell_101/add_1:z:0^lstm_350/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_350/while/NoOpNoOp4^lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp3^lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp5^lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_350_while_identity lstm_350/while/Identity:output:0"?
lstm_350_while_identity_1"lstm_350/while/Identity_1:output:0"?
lstm_350_while_identity_2"lstm_350/while/Identity_2:output:0"?
lstm_350_while_identity_3"lstm_350/while/Identity_3:output:0"?
lstm_350_while_identity_4"lstm_350/while/Identity_4:output:0"?
lstm_350_while_identity_5"lstm_350/while/Identity_5:output:0"T
'lstm_350_while_lstm_350_strided_slice_1)lstm_350_while_lstm_350_strided_slice_1_0"~
<lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource>lstm_350_while_lstm_cell_101_biasadd_readvariableop_resource_0"?
=lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource?lstm_350_while_lstm_cell_101_matmul_1_readvariableop_resource_0"|
;lstm_350_while_lstm_cell_101_matmul_readvariableop_resource=lstm_350_while_lstm_cell_101_matmul_readvariableop_resource_0"?
clstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensorelstm_350_while_tensorarrayv2read_tensorlistgetitem_lstm_350_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp3lstm_350/while/lstm_cell_101/BiasAdd/ReadVariableOp2h
2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp2lstm_350/while/lstm_cell_101/MatMul/ReadVariableOp2l
4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp4lstm_350/while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613606

inputs>
,lstm_cell_101_matmul_readvariableop_resource:2(@
.lstm_cell_101_matmul_1_readvariableop_resource:
(;
-lstm_cell_101_biasadd_readvariableop_resource:(
identity??$lstm_cell_101/BiasAdd/ReadVariableOp?#lstm_cell_101/MatMul/ReadVariableOp?%lstm_cell_101/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_101/MatMul/ReadVariableOpReadVariableOp,lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_101/MatMulMatMulstrided_slice_2:output:0+lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_101/MatMul_1MatMulzeros:output:0-lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_101/addAddV2lstm_cell_101/MatMul:product:0 lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_101/BiasAddBiasAddlstm_cell_101/add:z:0,lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_101/splitSplit&lstm_cell_101/split/split_dim:output:0lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_101/SigmoidSigmoidlstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_1Sigmoidlstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_101/mulMullstm_cell_101/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_101/ReluRelulstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_1Mullstm_cell_101/Sigmoid:y:0 lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_101/add_1AddV2lstm_cell_101/mul:z:0lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_2Sigmoidlstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_101/Relu_1Relulstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_2Mullstm_cell_101/Sigmoid_2:y:0"lstm_cell_101/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_101_matmul_readvariableop_resource.lstm_cell_101_matmul_1_readvariableop_resource-lstm_cell_101_biasadd_readvariableop_resource*
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
while_body_613522*
condR
while_cond_613521*K
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
NoOpNoOp%^lstm_cell_101/BiasAdd/ReadVariableOp$^lstm_cell_101/MatMul/ReadVariableOp&^lstm_cell_101/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_101/BiasAdd/ReadVariableOp$lstm_cell_101/BiasAdd/ReadVariableOp2J
#lstm_cell_101/MatMul/ReadVariableOp#lstm_cell_101/MatMul/ReadVariableOp2N
%lstm_cell_101/MatMul_1/ReadVariableOp%lstm_cell_101/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_350_layer_call_and_return_conditional_losses_617123

inputs>
,lstm_cell_101_matmul_readvariableop_resource:2(@
.lstm_cell_101_matmul_1_readvariableop_resource:
(;
-lstm_cell_101_biasadd_readvariableop_resource:(
identity??$lstm_cell_101/BiasAdd/ReadVariableOp?#lstm_cell_101/MatMul/ReadVariableOp?%lstm_cell_101/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_101/MatMul/ReadVariableOpReadVariableOp,lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_101/MatMulMatMulstrided_slice_2:output:0+lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_101/MatMul_1MatMulzeros:output:0-lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_101/addAddV2lstm_cell_101/MatMul:product:0 lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_101/BiasAddBiasAddlstm_cell_101/add:z:0,lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_101/splitSplit&lstm_cell_101/split/split_dim:output:0lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_101/SigmoidSigmoidlstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_1Sigmoidlstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_101/mulMullstm_cell_101/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_101/ReluRelulstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_1Mullstm_cell_101/Sigmoid:y:0 lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_101/add_1AddV2lstm_cell_101/mul:z:0lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_101/Sigmoid_2Sigmoidlstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_101/Relu_1Relulstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_101/mul_2Mullstm_cell_101/Sigmoid_2:y:0"lstm_cell_101/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_101_matmul_readvariableop_resource.lstm_cell_101_matmul_1_readvariableop_resource-lstm_cell_101_biasadd_readvariableop_resource*
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
while_body_617039*
condR
while_cond_617038*K
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
NoOpNoOp%^lstm_cell_101/BiasAdd/ReadVariableOp$^lstm_cell_101/MatMul/ReadVariableOp&^lstm_cell_101/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_101/BiasAdd/ReadVariableOp$lstm_cell_101/BiasAdd/ReadVariableOp2J
#lstm_cell_101/MatMul/ReadVariableOp#lstm_cell_101/MatMul/ReadVariableOp2N
%lstm_cell_101/MatMul_1/ReadVariableOp%lstm_cell_101/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_615378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_99_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_99_matmul_readvariableop_resource:	?F
3while_lstm_cell_99_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_99_biasadd_readvariableop_resource:	???)while/lstm_cell_99/BiasAdd/ReadVariableOp?(while/lstm_cell_99/MatMul/ReadVariableOp?*while/lstm_cell_99/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_99/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_99/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_99/addAddV2#while/lstm_cell_99/MatMul:product:0%while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_99/BiasAddBiasAddwhile/lstm_cell_99/add:z:01while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_99/splitSplit+while/lstm_cell_99/split/split_dim:output:0#while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_99/SigmoidSigmoid!while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_1Sigmoid!while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mulMul while/lstm_cell_99/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_99/ReluRelu!while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_1Mulwhile/lstm_cell_99/Sigmoid:y:0%while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/add_1AddV2while/lstm_cell_99/mul:z:0while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_2Sigmoid!while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_99/Relu_1Reluwhile/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_2Mul while/lstm_cell_99/Sigmoid_2:y:0'while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_99/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_99/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_99/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_99/BiasAdd/ReadVariableOp)^while/lstm_cell_99/MatMul/ReadVariableOp+^while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_99_biasadd_readvariableop_resource4while_lstm_cell_99_biasadd_readvariableop_resource_0"l
3while_lstm_cell_99_matmul_1_readvariableop_resource5while_lstm_cell_99_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_99_matmul_readvariableop_resource3while_lstm_cell_99_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_99/BiasAdd/ReadVariableOp)while/lstm_cell_99/BiasAdd/ReadVariableOp2T
(while/lstm_cell_99/MatMul/ReadVariableOp(while/lstm_cell_99/MatMul/ReadVariableOp2X
*while/lstm_cell_99/MatMul_1/ReadVariableOp*while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_613221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_613221___redundant_placeholder04
0while_while_cond_613221___redundant_placeholder14
0while_while_cond_613221___redundant_placeholder24
0while_while_cond_613221___redundant_placeholder3
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
while_cond_613737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_613737___redundant_placeholder04
0while_while_cond_613737___redundant_placeholder14
0while_while_cond_613737___redundant_placeholder24
0while_while_cond_613737___redundant_placeholder3
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
while_cond_613371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_613371___redundant_placeholder04
0while_while_cond_613371___redundant_placeholder14
0while_while_cond_613371___redundant_placeholder24
0while_while_cond_613371___redundant_placeholder3
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
)sequential_116_lstm_348_while_body_611739L
Hsequential_116_lstm_348_while_sequential_116_lstm_348_while_loop_counterR
Nsequential_116_lstm_348_while_sequential_116_lstm_348_while_maximum_iterations-
)sequential_116_lstm_348_while_placeholder/
+sequential_116_lstm_348_while_placeholder_1/
+sequential_116_lstm_348_while_placeholder_2/
+sequential_116_lstm_348_while_placeholder_3K
Gsequential_116_lstm_348_while_sequential_116_lstm_348_strided_slice_1_0?
?sequential_116_lstm_348_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_348_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_116_lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0:	?`
Msequential_116_lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?[
Lsequential_116_lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0:	?*
&sequential_116_lstm_348_while_identity,
(sequential_116_lstm_348_while_identity_1,
(sequential_116_lstm_348_while_identity_2,
(sequential_116_lstm_348_while_identity_3,
(sequential_116_lstm_348_while_identity_4,
(sequential_116_lstm_348_while_identity_5I
Esequential_116_lstm_348_while_sequential_116_lstm_348_strided_slice_1?
?sequential_116_lstm_348_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_348_tensorarrayunstack_tensorlistfromtensor\
Isequential_116_lstm_348_while_lstm_cell_99_matmul_readvariableop_resource:	?^
Ksequential_116_lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource:	d?Y
Jsequential_116_lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource:	???Asequential_116/lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp?@sequential_116/lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp?Bsequential_116/lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp?
Osequential_116/lstm_348/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_116/lstm_348/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_116_lstm_348_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_348_tensorarrayunstack_tensorlistfromtensor_0)sequential_116_lstm_348_while_placeholderXsequential_116/lstm_348/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_116/lstm_348/while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOpKsequential_116_lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_116/lstm_348/while/lstm_cell_99/MatMulMatMulHsequential_116/lstm_348/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_116/lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_116/lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOpMsequential_116_lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_116/lstm_348/while/lstm_cell_99/MatMul_1MatMul+sequential_116_lstm_348_while_placeholder_2Jsequential_116/lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_116/lstm_348/while/lstm_cell_99/addAddV2;sequential_116/lstm_348/while/lstm_cell_99/MatMul:product:0=sequential_116/lstm_348/while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_116/lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOpLsequential_116_lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_116/lstm_348/while/lstm_cell_99/BiasAddBiasAdd2sequential_116/lstm_348/while/lstm_cell_99/add:z:0Isequential_116/lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_116/lstm_348/while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_116/lstm_348/while/lstm_cell_99/splitSplitCsequential_116/lstm_348/while/lstm_cell_99/split/split_dim:output:0;sequential_116/lstm_348/while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_116/lstm_348/while/lstm_cell_99/SigmoidSigmoid9sequential_116/lstm_348/while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_116/lstm_348/while/lstm_cell_99/Sigmoid_1Sigmoid9sequential_116/lstm_348/while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_116/lstm_348/while/lstm_cell_99/mulMul8sequential_116/lstm_348/while/lstm_cell_99/Sigmoid_1:y:0+sequential_116_lstm_348_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_116/lstm_348/while/lstm_cell_99/ReluRelu9sequential_116/lstm_348/while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_116/lstm_348/while/lstm_cell_99/mul_1Mul6sequential_116/lstm_348/while/lstm_cell_99/Sigmoid:y:0=sequential_116/lstm_348/while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_116/lstm_348/while/lstm_cell_99/add_1AddV22sequential_116/lstm_348/while/lstm_cell_99/mul:z:04sequential_116/lstm_348/while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_116/lstm_348/while/lstm_cell_99/Sigmoid_2Sigmoid9sequential_116/lstm_348/while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_116/lstm_348/while/lstm_cell_99/Relu_1Relu4sequential_116/lstm_348/while/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_116/lstm_348/while/lstm_cell_99/mul_2Mul8sequential_116/lstm_348/while/lstm_cell_99/Sigmoid_2:y:0?sequential_116/lstm_348/while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_116/lstm_348/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_116_lstm_348_while_placeholder_1)sequential_116_lstm_348_while_placeholder4sequential_116/lstm_348/while/lstm_cell_99/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_116/lstm_348/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_116/lstm_348/while/addAddV2)sequential_116_lstm_348_while_placeholder,sequential_116/lstm_348/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_116/lstm_348/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_116/lstm_348/while/add_1AddV2Hsequential_116_lstm_348_while_sequential_116_lstm_348_while_loop_counter.sequential_116/lstm_348/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_116/lstm_348/while/IdentityIdentity'sequential_116/lstm_348/while/add_1:z:0#^sequential_116/lstm_348/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_348/while/Identity_1IdentityNsequential_116_lstm_348_while_sequential_116_lstm_348_while_maximum_iterations#^sequential_116/lstm_348/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_348/while/Identity_2Identity%sequential_116/lstm_348/while/add:z:0#^sequential_116/lstm_348/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_348/while/Identity_3IdentityRsequential_116/lstm_348/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_116/lstm_348/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_348/while/Identity_4Identity4sequential_116/lstm_348/while/lstm_cell_99/mul_2:z:0#^sequential_116/lstm_348/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_116/lstm_348/while/Identity_5Identity4sequential_116/lstm_348/while/lstm_cell_99/add_1:z:0#^sequential_116/lstm_348/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_116/lstm_348/while/NoOpNoOpB^sequential_116/lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOpA^sequential_116/lstm_348/while/lstm_cell_99/MatMul/ReadVariableOpC^sequential_116/lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_116_lstm_348_while_identity/sequential_116/lstm_348/while/Identity:output:0"]
(sequential_116_lstm_348_while_identity_11sequential_116/lstm_348/while/Identity_1:output:0"]
(sequential_116_lstm_348_while_identity_21sequential_116/lstm_348/while/Identity_2:output:0"]
(sequential_116_lstm_348_while_identity_31sequential_116/lstm_348/while/Identity_3:output:0"]
(sequential_116_lstm_348_while_identity_41sequential_116/lstm_348/while/Identity_4:output:0"]
(sequential_116_lstm_348_while_identity_51sequential_116/lstm_348/while/Identity_5:output:0"?
Jsequential_116_lstm_348_while_lstm_cell_99_biasadd_readvariableop_resourceLsequential_116_lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0"?
Ksequential_116_lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resourceMsequential_116_lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0"?
Isequential_116_lstm_348_while_lstm_cell_99_matmul_readvariableop_resourceKsequential_116_lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0"?
Esequential_116_lstm_348_while_sequential_116_lstm_348_strided_slice_1Gsequential_116_lstm_348_while_sequential_116_lstm_348_strided_slice_1_0"?
?sequential_116_lstm_348_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_348_tensorarrayunstack_tensorlistfromtensor?sequential_116_lstm_348_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_348_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_116/lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOpAsequential_116/lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp2?
@sequential_116/lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp@sequential_116/lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp2?
Bsequential_116/lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOpBsequential_116/lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_116_lstm_349_while_cond_611877L
Hsequential_116_lstm_349_while_sequential_116_lstm_349_while_loop_counterR
Nsequential_116_lstm_349_while_sequential_116_lstm_349_while_maximum_iterations-
)sequential_116_lstm_349_while_placeholder/
+sequential_116_lstm_349_while_placeholder_1/
+sequential_116_lstm_349_while_placeholder_2/
+sequential_116_lstm_349_while_placeholder_3N
Jsequential_116_lstm_349_while_less_sequential_116_lstm_349_strided_slice_1d
`sequential_116_lstm_349_while_sequential_116_lstm_349_while_cond_611877___redundant_placeholder0d
`sequential_116_lstm_349_while_sequential_116_lstm_349_while_cond_611877___redundant_placeholder1d
`sequential_116_lstm_349_while_sequential_116_lstm_349_while_cond_611877___redundant_placeholder2d
`sequential_116_lstm_349_while_sequential_116_lstm_349_while_cond_611877___redundant_placeholder3*
&sequential_116_lstm_349_while_identity
?
"sequential_116/lstm_349/while/LessLess)sequential_116_lstm_349_while_placeholderJsequential_116_lstm_349_while_less_sequential_116_lstm_349_strided_slice_1*
T0*
_output_shapes
: {
&sequential_116/lstm_349/while/IdentityIdentity&sequential_116/lstm_349/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_116_lstm_349_while_identity/sequential_116/lstm_349/while/Identity:output:0*(
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_615462
inputs_0>
+lstm_cell_99_matmul_readvariableop_resource:	?@
-lstm_cell_99_matmul_1_readvariableop_resource:	d?;
,lstm_cell_99_biasadd_readvariableop_resource:	?
identity??#lstm_cell_99/BiasAdd/ReadVariableOp?"lstm_cell_99/MatMul/ReadVariableOp?$lstm_cell_99/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_99/MatMul/ReadVariableOpReadVariableOp+lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_99/MatMulMatMulstrided_slice_2:output:0*lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_99/MatMul_1MatMulzeros:output:0,lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_99/addAddV2lstm_cell_99/MatMul:product:0lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_99/BiasAddBiasAddlstm_cell_99/add:z:0+lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_99/splitSplit%lstm_cell_99/split/split_dim:output:0lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_99/SigmoidSigmoidlstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_1Sigmoidlstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_99/mulMullstm_cell_99/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_99/ReluRelulstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_1Mullstm_cell_99/Sigmoid:y:0lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_99/add_1AddV2lstm_cell_99/mul:z:0lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_2Sigmoidlstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_99/Relu_1Relulstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_2Mullstm_cell_99/Sigmoid_2:y:0!lstm_cell_99/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_99_matmul_readvariableop_resource-lstm_cell_99_matmul_1_readvariableop_resource,lstm_cell_99_biasadd_readvariableop_resource*
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
while_body_615378*
condR
while_cond_615377*K
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
NoOpNoOp$^lstm_cell_99/BiasAdd/ReadVariableOp#^lstm_cell_99/MatMul/ReadVariableOp%^lstm_cell_99/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_99/BiasAdd/ReadVariableOp#lstm_cell_99/BiasAdd/ReadVariableOp2H
"lstm_cell_99/MatMul/ReadVariableOp"lstm_cell_99/MatMul/ReadVariableOp2L
$lstm_cell_99/MatMul_1/ReadVariableOp$lstm_cell_99/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_615664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_99_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_99_matmul_readvariableop_resource:	?F
3while_lstm_cell_99_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_99_biasadd_readvariableop_resource:	???)while/lstm_cell_99/BiasAdd/ReadVariableOp?(while/lstm_cell_99/MatMul/ReadVariableOp?*while/lstm_cell_99/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_99/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_99/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_99/addAddV2#while/lstm_cell_99/MatMul:product:0%while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_99/BiasAddBiasAddwhile/lstm_cell_99/add:z:01while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_99/splitSplit+while/lstm_cell_99/split/split_dim:output:0#while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_99/SigmoidSigmoid!while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_1Sigmoid!while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mulMul while/lstm_cell_99/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_99/ReluRelu!while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_1Mulwhile/lstm_cell_99/Sigmoid:y:0%while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/add_1AddV2while/lstm_cell_99/mul:z:0while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_2Sigmoid!while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_99/Relu_1Reluwhile/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_2Mul while/lstm_cell_99/Sigmoid_2:y:0'while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_99/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_99/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_99/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_99/BiasAdd/ReadVariableOp)^while/lstm_cell_99/MatMul/ReadVariableOp+^while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_99_biasadd_readvariableop_resource4while_lstm_cell_99_biasadd_readvariableop_resource_0"l
3while_lstm_cell_99_matmul_1_readvariableop_resource5while_lstm_cell_99_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_99_matmul_readvariableop_resource3while_lstm_cell_99_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_99/BiasAdd/ReadVariableOp)while/lstm_cell_99/BiasAdd/ReadVariableOp2T
(while/lstm_cell_99/MatMul/ReadVariableOp(while/lstm_cell_99/MatMul/ReadVariableOp2X
*while/lstm_cell_99/MatMul_1/ReadVariableOp*while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_612874

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
.__inference_lstm_cell_100_layer_call_fn_617274

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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612670o
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
?
)__inference_lstm_349_layer_call_fn_615935

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
D__inference_lstm_349_layer_call_and_return_conditional_losses_613987s
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
while_cond_616895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_616895___redundant_placeholder04
0while_while_cond_616895___redundant_placeholder14
0while_while_cond_616895___redundant_placeholder24
0while_while_cond_616895___redundant_placeholder3
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
while_cond_616609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_616609___redundant_placeholder04
0while_while_cond_616609___redundant_placeholder14
0while_while_cond_616609___redundant_placeholder24
0while_while_cond_616609___redundant_placeholder3
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
)__inference_lstm_349_layer_call_fn_615902
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_612607|
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
)__inference_lstm_349_layer_call_fn_615913
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_612798|
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
?
)sequential_116_lstm_350_while_cond_612016L
Hsequential_116_lstm_350_while_sequential_116_lstm_350_while_loop_counterR
Nsequential_116_lstm_350_while_sequential_116_lstm_350_while_maximum_iterations-
)sequential_116_lstm_350_while_placeholder/
+sequential_116_lstm_350_while_placeholder_1/
+sequential_116_lstm_350_while_placeholder_2/
+sequential_116_lstm_350_while_placeholder_3N
Jsequential_116_lstm_350_while_less_sequential_116_lstm_350_strided_slice_1d
`sequential_116_lstm_350_while_sequential_116_lstm_350_while_cond_612016___redundant_placeholder0d
`sequential_116_lstm_350_while_sequential_116_lstm_350_while_cond_612016___redundant_placeholder1d
`sequential_116_lstm_350_while_sequential_116_lstm_350_while_cond_612016___redundant_placeholder2d
`sequential_116_lstm_350_while_sequential_116_lstm_350_while_cond_612016___redundant_placeholder3*
&sequential_116_lstm_350_while_identity
?
"sequential_116/lstm_350/while/LessLess)sequential_116_lstm_350_while_placeholderJsequential_116_lstm_350_while_less_sequential_116_lstm_350_strided_slice_1*
T0*
_output_shapes
: {
&sequential_116/lstm_350/while/IdentityIdentity&sequential_116/lstm_350/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_116_lstm_350_while_identity/sequential_116/lstm_350/while/Identity:output:0*(
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_612798

inputs'
lstm_cell_100_612716:	d?'
lstm_cell_100_612718:	2?#
lstm_cell_100_612720:	?
identity??%lstm_cell_100/StatefulPartitionedCall?while;
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
%lstm_cell_100/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_100_612716lstm_cell_100_612718lstm_cell_100_612720*
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612670n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_100_612716lstm_cell_100_612718lstm_cell_100_612720*
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
while_body_612729*
condR
while_cond_612728*K
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
NoOpNoOp&^lstm_cell_100/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_100/StatefulPartitionedCall%lstm_cell_100/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_349_layer_call_and_return_conditional_losses_613987

inputs?
,lstm_cell_100_matmul_readvariableop_resource:	d?A
.lstm_cell_100_matmul_1_readvariableop_resource:	2?<
-lstm_cell_100_biasadd_readvariableop_resource:	?
identity??$lstm_cell_100/BiasAdd/ReadVariableOp?#lstm_cell_100/MatMul/ReadVariableOp?%lstm_cell_100/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_100/MatMul/ReadVariableOpReadVariableOp,lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_100/MatMulMatMulstrided_slice_2:output:0+lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_100/MatMul_1MatMulzeros:output:0-lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_100/addAddV2lstm_cell_100/MatMul:product:0 lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_100/BiasAddBiasAddlstm_cell_100/add:z:0,lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_100/splitSplit&lstm_cell_100/split/split_dim:output:0lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_100/SigmoidSigmoidlstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_1Sigmoidlstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_100/mulMullstm_cell_100/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_100/ReluRelulstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_1Mullstm_cell_100/Sigmoid:y:0 lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_100/add_1AddV2lstm_cell_100/mul:z:0lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_2Sigmoidlstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_100/Relu_1Relulstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_2Mullstm_cell_100/Sigmoid_2:y:0"lstm_cell_100/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_100_matmul_readvariableop_resource.lstm_cell_100_matmul_1_readvariableop_resource-lstm_cell_100_biasadd_readvariableop_resource*
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
while_body_613903*
condR
while_cond_613902*K
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
NoOpNoOp%^lstm_cell_100/BiasAdd/ReadVariableOp$^lstm_cell_100/MatMul/ReadVariableOp&^lstm_cell_100/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_100/BiasAdd/ReadVariableOp$lstm_cell_100/BiasAdd/ReadVariableOp2J
#lstm_cell_100/MatMul/ReadVariableOp#lstm_cell_100/MatMul/ReadVariableOp2N
%lstm_cell_100/MatMul_1/ReadVariableOp%lstm_cell_100/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_616752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_616752___redundant_placeholder04
0while_while_cond_616752___redundant_placeholder14
0while_while_cond_616752___redundant_placeholder24
0while_while_cond_616752___redundant_placeholder3
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
?
J__inference_sequential_116_layer_call_and_return_conditional_losses_614220

inputs"
lstm_348_614193:	?"
lstm_348_614195:	d?
lstm_348_614197:	?"
lstm_349_614200:	d?"
lstm_349_614202:	2?
lstm_349_614204:	?!
lstm_350_614207:2(!
lstm_350_614209:
(
lstm_350_614211:("
dense_116_614214:

dense_116_614216:
identity??!dense_116/StatefulPartitionedCall? lstm_348/StatefulPartitionedCall? lstm_349/StatefulPartitionedCall? lstm_350/StatefulPartitionedCall?
 lstm_348/StatefulPartitionedCallStatefulPartitionedCallinputslstm_348_614193lstm_348_614195lstm_348_614197*
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_614152?
 lstm_349/StatefulPartitionedCallStatefulPartitionedCall)lstm_348/StatefulPartitionedCall:output:0lstm_349_614200lstm_349_614202lstm_349_614204*
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_613987?
 lstm_350/StatefulPartitionedCallStatefulPartitionedCall)lstm_349/StatefulPartitionedCall:output:0lstm_350_614207lstm_350_614209lstm_350_614211*
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613822?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_350/StatefulPartitionedCall:output:0dense_116_614214dense_116_614216*
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
E__inference_dense_116_layer_call_and_return_conditional_losses_613624y
IdentityIdentity*dense_116/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_116/StatefulPartitionedCall!^lstm_348/StatefulPartitionedCall!^lstm_349/StatefulPartitionedCall!^lstm_350/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2D
 lstm_348/StatefulPartitionedCall lstm_348/StatefulPartitionedCall2D
 lstm_349/StatefulPartitionedCall lstm_349/StatefulPartitionedCall2D
 lstm_350/StatefulPartitionedCall lstm_350/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_617306

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
??
?
!__inference__wrapped_model_612107
lstm_348_inputV
Csequential_116_lstm_348_lstm_cell_99_matmul_readvariableop_resource:	?X
Esequential_116_lstm_348_lstm_cell_99_matmul_1_readvariableop_resource:	d?S
Dsequential_116_lstm_348_lstm_cell_99_biasadd_readvariableop_resource:	?W
Dsequential_116_lstm_349_lstm_cell_100_matmul_readvariableop_resource:	d?Y
Fsequential_116_lstm_349_lstm_cell_100_matmul_1_readvariableop_resource:	2?T
Esequential_116_lstm_349_lstm_cell_100_biasadd_readvariableop_resource:	?V
Dsequential_116_lstm_350_lstm_cell_101_matmul_readvariableop_resource:2(X
Fsequential_116_lstm_350_lstm_cell_101_matmul_1_readvariableop_resource:
(S
Esequential_116_lstm_350_lstm_cell_101_biasadd_readvariableop_resource:(I
7sequential_116_dense_116_matmul_readvariableop_resource:
F
8sequential_116_dense_116_biasadd_readvariableop_resource:
identity??/sequential_116/dense_116/BiasAdd/ReadVariableOp?.sequential_116/dense_116/MatMul/ReadVariableOp?;sequential_116/lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp?:sequential_116/lstm_348/lstm_cell_99/MatMul/ReadVariableOp?<sequential_116/lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp?sequential_116/lstm_348/while?<sequential_116/lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp?;sequential_116/lstm_349/lstm_cell_100/MatMul/ReadVariableOp?=sequential_116/lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp?sequential_116/lstm_349/while?<sequential_116/lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp?;sequential_116/lstm_350/lstm_cell_101/MatMul/ReadVariableOp?=sequential_116/lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp?sequential_116/lstm_350/while[
sequential_116/lstm_348/ShapeShapelstm_348_input*
T0*
_output_shapes
:u
+sequential_116/lstm_348/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_116/lstm_348/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_116/lstm_348/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_116/lstm_348/strided_sliceStridedSlice&sequential_116/lstm_348/Shape:output:04sequential_116/lstm_348/strided_slice/stack:output:06sequential_116/lstm_348/strided_slice/stack_1:output:06sequential_116/lstm_348/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_116/lstm_348/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_116/lstm_348/zeros/packedPack.sequential_116/lstm_348/strided_slice:output:0/sequential_116/lstm_348/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_116/lstm_348/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_116/lstm_348/zerosFill-sequential_116/lstm_348/zeros/packed:output:0,sequential_116/lstm_348/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_116/lstm_348/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_116/lstm_348/zeros_1/packedPack.sequential_116/lstm_348/strided_slice:output:01sequential_116/lstm_348/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_116/lstm_348/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_116/lstm_348/zeros_1Fill/sequential_116/lstm_348/zeros_1/packed:output:0.sequential_116/lstm_348/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_116/lstm_348/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_116/lstm_348/transpose	Transposelstm_348_input/sequential_116/lstm_348/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_116/lstm_348/Shape_1Shape%sequential_116/lstm_348/transpose:y:0*
T0*
_output_shapes
:w
-sequential_116/lstm_348/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_348/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_348/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_348/strided_slice_1StridedSlice(sequential_116/lstm_348/Shape_1:output:06sequential_116/lstm_348/strided_slice_1/stack:output:08sequential_116/lstm_348/strided_slice_1/stack_1:output:08sequential_116/lstm_348/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_116/lstm_348/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_116/lstm_348/TensorArrayV2TensorListReserve<sequential_116/lstm_348/TensorArrayV2/element_shape:output:00sequential_116/lstm_348/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_116/lstm_348/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_116/lstm_348/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_116/lstm_348/transpose:y:0Vsequential_116/lstm_348/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_116/lstm_348/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_348/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_348/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_348/strided_slice_2StridedSlice%sequential_116/lstm_348/transpose:y:06sequential_116/lstm_348/strided_slice_2/stack:output:08sequential_116/lstm_348/strided_slice_2/stack_1:output:08sequential_116/lstm_348/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_116/lstm_348/lstm_cell_99/MatMul/ReadVariableOpReadVariableOpCsequential_116_lstm_348_lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_116/lstm_348/lstm_cell_99/MatMulMatMul0sequential_116/lstm_348/strided_slice_2:output:0Bsequential_116/lstm_348/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_116/lstm_348/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOpEsequential_116_lstm_348_lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_116/lstm_348/lstm_cell_99/MatMul_1MatMul&sequential_116/lstm_348/zeros:output:0Dsequential_116/lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_116/lstm_348/lstm_cell_99/addAddV25sequential_116/lstm_348/lstm_cell_99/MatMul:product:07sequential_116/lstm_348/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_116/lstm_348/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOpDsequential_116_lstm_348_lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_116/lstm_348/lstm_cell_99/BiasAddBiasAdd,sequential_116/lstm_348/lstm_cell_99/add:z:0Csequential_116/lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_116/lstm_348/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_116/lstm_348/lstm_cell_99/splitSplit=sequential_116/lstm_348/lstm_cell_99/split/split_dim:output:05sequential_116/lstm_348/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_116/lstm_348/lstm_cell_99/SigmoidSigmoid3sequential_116/lstm_348/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_116/lstm_348/lstm_cell_99/Sigmoid_1Sigmoid3sequential_116/lstm_348/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_116/lstm_348/lstm_cell_99/mulMul2sequential_116/lstm_348/lstm_cell_99/Sigmoid_1:y:0(sequential_116/lstm_348/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_116/lstm_348/lstm_cell_99/ReluRelu3sequential_116/lstm_348/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_116/lstm_348/lstm_cell_99/mul_1Mul0sequential_116/lstm_348/lstm_cell_99/Sigmoid:y:07sequential_116/lstm_348/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_116/lstm_348/lstm_cell_99/add_1AddV2,sequential_116/lstm_348/lstm_cell_99/mul:z:0.sequential_116/lstm_348/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_116/lstm_348/lstm_cell_99/Sigmoid_2Sigmoid3sequential_116/lstm_348/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_116/lstm_348/lstm_cell_99/Relu_1Relu.sequential_116/lstm_348/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_116/lstm_348/lstm_cell_99/mul_2Mul2sequential_116/lstm_348/lstm_cell_99/Sigmoid_2:y:09sequential_116/lstm_348/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_116/lstm_348/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_116/lstm_348/TensorArrayV2_1TensorListReserve>sequential_116/lstm_348/TensorArrayV2_1/element_shape:output:00sequential_116/lstm_348/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_116/lstm_348/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_116/lstm_348/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_116/lstm_348/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_116/lstm_348/whileWhile3sequential_116/lstm_348/while/loop_counter:output:09sequential_116/lstm_348/while/maximum_iterations:output:0%sequential_116/lstm_348/time:output:00sequential_116/lstm_348/TensorArrayV2_1:handle:0&sequential_116/lstm_348/zeros:output:0(sequential_116/lstm_348/zeros_1:output:00sequential_116/lstm_348/strided_slice_1:output:0Osequential_116/lstm_348/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_116_lstm_348_lstm_cell_99_matmul_readvariableop_resourceEsequential_116_lstm_348_lstm_cell_99_matmul_1_readvariableop_resourceDsequential_116_lstm_348_lstm_cell_99_biasadd_readvariableop_resource*
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
)sequential_116_lstm_348_while_body_611739*5
cond-R+
)sequential_116_lstm_348_while_cond_611738*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_116/lstm_348/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_116/lstm_348/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_116/lstm_348/while:output:3Qsequential_116/lstm_348/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_116/lstm_348/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_116/lstm_348/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_348/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_348/strided_slice_3StridedSliceCsequential_116/lstm_348/TensorArrayV2Stack/TensorListStack:tensor:06sequential_116/lstm_348/strided_slice_3/stack:output:08sequential_116/lstm_348/strided_slice_3/stack_1:output:08sequential_116/lstm_348/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_116/lstm_348/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_116/lstm_348/transpose_1	TransposeCsequential_116/lstm_348/TensorArrayV2Stack/TensorListStack:tensor:01sequential_116/lstm_348/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_116/lstm_348/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_116/lstm_349/ShapeShape'sequential_116/lstm_348/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_116/lstm_349/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_116/lstm_349/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_116/lstm_349/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_116/lstm_349/strided_sliceStridedSlice&sequential_116/lstm_349/Shape:output:04sequential_116/lstm_349/strided_slice/stack:output:06sequential_116/lstm_349/strided_slice/stack_1:output:06sequential_116/lstm_349/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_116/lstm_349/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_116/lstm_349/zeros/packedPack.sequential_116/lstm_349/strided_slice:output:0/sequential_116/lstm_349/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_116/lstm_349/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_116/lstm_349/zerosFill-sequential_116/lstm_349/zeros/packed:output:0,sequential_116/lstm_349/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_116/lstm_349/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_116/lstm_349/zeros_1/packedPack.sequential_116/lstm_349/strided_slice:output:01sequential_116/lstm_349/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_116/lstm_349/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_116/lstm_349/zeros_1Fill/sequential_116/lstm_349/zeros_1/packed:output:0.sequential_116/lstm_349/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_116/lstm_349/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_116/lstm_349/transpose	Transpose'sequential_116/lstm_348/transpose_1:y:0/sequential_116/lstm_349/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_116/lstm_349/Shape_1Shape%sequential_116/lstm_349/transpose:y:0*
T0*
_output_shapes
:w
-sequential_116/lstm_349/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_349/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_349/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_349/strided_slice_1StridedSlice(sequential_116/lstm_349/Shape_1:output:06sequential_116/lstm_349/strided_slice_1/stack:output:08sequential_116/lstm_349/strided_slice_1/stack_1:output:08sequential_116/lstm_349/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_116/lstm_349/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_116/lstm_349/TensorArrayV2TensorListReserve<sequential_116/lstm_349/TensorArrayV2/element_shape:output:00sequential_116/lstm_349/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_116/lstm_349/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_116/lstm_349/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_116/lstm_349/transpose:y:0Vsequential_116/lstm_349/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_116/lstm_349/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_349/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_349/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_349/strided_slice_2StridedSlice%sequential_116/lstm_349/transpose:y:06sequential_116/lstm_349/strided_slice_2/stack:output:08sequential_116/lstm_349/strided_slice_2/stack_1:output:08sequential_116/lstm_349/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_116/lstm_349/lstm_cell_100/MatMul/ReadVariableOpReadVariableOpDsequential_116_lstm_349_lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_116/lstm_349/lstm_cell_100/MatMulMatMul0sequential_116/lstm_349/strided_slice_2:output:0Csequential_116/lstm_349/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_116/lstm_349/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOpFsequential_116_lstm_349_lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_116/lstm_349/lstm_cell_100/MatMul_1MatMul&sequential_116/lstm_349/zeros:output:0Esequential_116/lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_116/lstm_349/lstm_cell_100/addAddV26sequential_116/lstm_349/lstm_cell_100/MatMul:product:08sequential_116/lstm_349/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_116/lstm_349/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOpEsequential_116_lstm_349_lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_116/lstm_349/lstm_cell_100/BiasAddBiasAdd-sequential_116/lstm_349/lstm_cell_100/add:z:0Dsequential_116/lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_116/lstm_349/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_116/lstm_349/lstm_cell_100/splitSplit>sequential_116/lstm_349/lstm_cell_100/split/split_dim:output:06sequential_116/lstm_349/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_116/lstm_349/lstm_cell_100/SigmoidSigmoid4sequential_116/lstm_349/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_116/lstm_349/lstm_cell_100/Sigmoid_1Sigmoid4sequential_116/lstm_349/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_116/lstm_349/lstm_cell_100/mulMul3sequential_116/lstm_349/lstm_cell_100/Sigmoid_1:y:0(sequential_116/lstm_349/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_116/lstm_349/lstm_cell_100/ReluRelu4sequential_116/lstm_349/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_116/lstm_349/lstm_cell_100/mul_1Mul1sequential_116/lstm_349/lstm_cell_100/Sigmoid:y:08sequential_116/lstm_349/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_116/lstm_349/lstm_cell_100/add_1AddV2-sequential_116/lstm_349/lstm_cell_100/mul:z:0/sequential_116/lstm_349/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_116/lstm_349/lstm_cell_100/Sigmoid_2Sigmoid4sequential_116/lstm_349/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_116/lstm_349/lstm_cell_100/Relu_1Relu/sequential_116/lstm_349/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_116/lstm_349/lstm_cell_100/mul_2Mul3sequential_116/lstm_349/lstm_cell_100/Sigmoid_2:y:0:sequential_116/lstm_349/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_116/lstm_349/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_116/lstm_349/TensorArrayV2_1TensorListReserve>sequential_116/lstm_349/TensorArrayV2_1/element_shape:output:00sequential_116/lstm_349/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_116/lstm_349/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_116/lstm_349/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_116/lstm_349/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_116/lstm_349/whileWhile3sequential_116/lstm_349/while/loop_counter:output:09sequential_116/lstm_349/while/maximum_iterations:output:0%sequential_116/lstm_349/time:output:00sequential_116/lstm_349/TensorArrayV2_1:handle:0&sequential_116/lstm_349/zeros:output:0(sequential_116/lstm_349/zeros_1:output:00sequential_116/lstm_349/strided_slice_1:output:0Osequential_116/lstm_349/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_116_lstm_349_lstm_cell_100_matmul_readvariableop_resourceFsequential_116_lstm_349_lstm_cell_100_matmul_1_readvariableop_resourceEsequential_116_lstm_349_lstm_cell_100_biasadd_readvariableop_resource*
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
)sequential_116_lstm_349_while_body_611878*5
cond-R+
)sequential_116_lstm_349_while_cond_611877*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_116/lstm_349/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_116/lstm_349/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_116/lstm_349/while:output:3Qsequential_116/lstm_349/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_116/lstm_349/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_116/lstm_349/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_349/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_349/strided_slice_3StridedSliceCsequential_116/lstm_349/TensorArrayV2Stack/TensorListStack:tensor:06sequential_116/lstm_349/strided_slice_3/stack:output:08sequential_116/lstm_349/strided_slice_3/stack_1:output:08sequential_116/lstm_349/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_116/lstm_349/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_116/lstm_349/transpose_1	TransposeCsequential_116/lstm_349/TensorArrayV2Stack/TensorListStack:tensor:01sequential_116/lstm_349/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_116/lstm_349/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_116/lstm_350/ShapeShape'sequential_116/lstm_349/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_116/lstm_350/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_116/lstm_350/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_116/lstm_350/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_116/lstm_350/strided_sliceStridedSlice&sequential_116/lstm_350/Shape:output:04sequential_116/lstm_350/strided_slice/stack:output:06sequential_116/lstm_350/strided_slice/stack_1:output:06sequential_116/lstm_350/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_116/lstm_350/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_116/lstm_350/zeros/packedPack.sequential_116/lstm_350/strided_slice:output:0/sequential_116/lstm_350/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_116/lstm_350/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_116/lstm_350/zerosFill-sequential_116/lstm_350/zeros/packed:output:0,sequential_116/lstm_350/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_116/lstm_350/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_116/lstm_350/zeros_1/packedPack.sequential_116/lstm_350/strided_slice:output:01sequential_116/lstm_350/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_116/lstm_350/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_116/lstm_350/zeros_1Fill/sequential_116/lstm_350/zeros_1/packed:output:0.sequential_116/lstm_350/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_116/lstm_350/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_116/lstm_350/transpose	Transpose'sequential_116/lstm_349/transpose_1:y:0/sequential_116/lstm_350/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_116/lstm_350/Shape_1Shape%sequential_116/lstm_350/transpose:y:0*
T0*
_output_shapes
:w
-sequential_116/lstm_350/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_350/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_350/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_350/strided_slice_1StridedSlice(sequential_116/lstm_350/Shape_1:output:06sequential_116/lstm_350/strided_slice_1/stack:output:08sequential_116/lstm_350/strided_slice_1/stack_1:output:08sequential_116/lstm_350/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_116/lstm_350/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_116/lstm_350/TensorArrayV2TensorListReserve<sequential_116/lstm_350/TensorArrayV2/element_shape:output:00sequential_116/lstm_350/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_116/lstm_350/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_116/lstm_350/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_116/lstm_350/transpose:y:0Vsequential_116/lstm_350/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_116/lstm_350/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_350/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_350/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_350/strided_slice_2StridedSlice%sequential_116/lstm_350/transpose:y:06sequential_116/lstm_350/strided_slice_2/stack:output:08sequential_116/lstm_350/strided_slice_2/stack_1:output:08sequential_116/lstm_350/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_116/lstm_350/lstm_cell_101/MatMul/ReadVariableOpReadVariableOpDsequential_116_lstm_350_lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_116/lstm_350/lstm_cell_101/MatMulMatMul0sequential_116/lstm_350/strided_slice_2:output:0Csequential_116/lstm_350/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_116/lstm_350/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOpFsequential_116_lstm_350_lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_116/lstm_350/lstm_cell_101/MatMul_1MatMul&sequential_116/lstm_350/zeros:output:0Esequential_116/lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_116/lstm_350/lstm_cell_101/addAddV26sequential_116/lstm_350/lstm_cell_101/MatMul:product:08sequential_116/lstm_350/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_116/lstm_350/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOpEsequential_116_lstm_350_lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_116/lstm_350/lstm_cell_101/BiasAddBiasAdd-sequential_116/lstm_350/lstm_cell_101/add:z:0Dsequential_116/lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_116/lstm_350/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_116/lstm_350/lstm_cell_101/splitSplit>sequential_116/lstm_350/lstm_cell_101/split/split_dim:output:06sequential_116/lstm_350/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_116/lstm_350/lstm_cell_101/SigmoidSigmoid4sequential_116/lstm_350/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_116/lstm_350/lstm_cell_101/Sigmoid_1Sigmoid4sequential_116/lstm_350/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_116/lstm_350/lstm_cell_101/mulMul3sequential_116/lstm_350/lstm_cell_101/Sigmoid_1:y:0(sequential_116/lstm_350/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_116/lstm_350/lstm_cell_101/ReluRelu4sequential_116/lstm_350/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_116/lstm_350/lstm_cell_101/mul_1Mul1sequential_116/lstm_350/lstm_cell_101/Sigmoid:y:08sequential_116/lstm_350/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_116/lstm_350/lstm_cell_101/add_1AddV2-sequential_116/lstm_350/lstm_cell_101/mul:z:0/sequential_116/lstm_350/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_116/lstm_350/lstm_cell_101/Sigmoid_2Sigmoid4sequential_116/lstm_350/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_116/lstm_350/lstm_cell_101/Relu_1Relu/sequential_116/lstm_350/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_116/lstm_350/lstm_cell_101/mul_2Mul3sequential_116/lstm_350/lstm_cell_101/Sigmoid_2:y:0:sequential_116/lstm_350/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_116/lstm_350/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_116/lstm_350/TensorArrayV2_1TensorListReserve>sequential_116/lstm_350/TensorArrayV2_1/element_shape:output:00sequential_116/lstm_350/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_116/lstm_350/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_116/lstm_350/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_116/lstm_350/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_116/lstm_350/whileWhile3sequential_116/lstm_350/while/loop_counter:output:09sequential_116/lstm_350/while/maximum_iterations:output:0%sequential_116/lstm_350/time:output:00sequential_116/lstm_350/TensorArrayV2_1:handle:0&sequential_116/lstm_350/zeros:output:0(sequential_116/lstm_350/zeros_1:output:00sequential_116/lstm_350/strided_slice_1:output:0Osequential_116/lstm_350/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_116_lstm_350_lstm_cell_101_matmul_readvariableop_resourceFsequential_116_lstm_350_lstm_cell_101_matmul_1_readvariableop_resourceEsequential_116_lstm_350_lstm_cell_101_biasadd_readvariableop_resource*
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
)sequential_116_lstm_350_while_body_612017*5
cond-R+
)sequential_116_lstm_350_while_cond_612016*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_116/lstm_350/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_116/lstm_350/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_116/lstm_350/while:output:3Qsequential_116/lstm_350/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_116/lstm_350/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_116/lstm_350/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_350/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_116/lstm_350/strided_slice_3StridedSliceCsequential_116/lstm_350/TensorArrayV2Stack/TensorListStack:tensor:06sequential_116/lstm_350/strided_slice_3/stack:output:08sequential_116/lstm_350/strided_slice_3/stack_1:output:08sequential_116/lstm_350/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_116/lstm_350/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_116/lstm_350/transpose_1	TransposeCsequential_116/lstm_350/TensorArrayV2Stack/TensorListStack:tensor:01sequential_116/lstm_350/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_116/lstm_350/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_116/dense_116/MatMul/ReadVariableOpReadVariableOp7sequential_116_dense_116_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_116/dense_116/MatMulMatMul0sequential_116/lstm_350/strided_slice_3:output:06sequential_116/dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_116/dense_116/BiasAdd/ReadVariableOpReadVariableOp8sequential_116_dense_116_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_116/dense_116/BiasAddBiasAdd)sequential_116/dense_116/MatMul:product:07sequential_116/dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_116/dense_116/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_116/dense_116/BiasAdd/ReadVariableOp/^sequential_116/dense_116/MatMul/ReadVariableOp<^sequential_116/lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp;^sequential_116/lstm_348/lstm_cell_99/MatMul/ReadVariableOp=^sequential_116/lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp^sequential_116/lstm_348/while=^sequential_116/lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp<^sequential_116/lstm_349/lstm_cell_100/MatMul/ReadVariableOp>^sequential_116/lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp^sequential_116/lstm_349/while=^sequential_116/lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp<^sequential_116/lstm_350/lstm_cell_101/MatMul/ReadVariableOp>^sequential_116/lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp^sequential_116/lstm_350/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_116/dense_116/BiasAdd/ReadVariableOp/sequential_116/dense_116/BiasAdd/ReadVariableOp2`
.sequential_116/dense_116/MatMul/ReadVariableOp.sequential_116/dense_116/MatMul/ReadVariableOp2z
;sequential_116/lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp;sequential_116/lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp2x
:sequential_116/lstm_348/lstm_cell_99/MatMul/ReadVariableOp:sequential_116/lstm_348/lstm_cell_99/MatMul/ReadVariableOp2|
<sequential_116/lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp<sequential_116/lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp2>
sequential_116/lstm_348/whilesequential_116/lstm_348/while2|
<sequential_116/lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp<sequential_116/lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp2z
;sequential_116/lstm_349/lstm_cell_100/MatMul/ReadVariableOp;sequential_116/lstm_349/lstm_cell_100/MatMul/ReadVariableOp2~
=sequential_116/lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp=sequential_116/lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp2>
sequential_116/lstm_349/whilesequential_116/lstm_349/while2|
<sequential_116/lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp<sequential_116/lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp2z
;sequential_116/lstm_350/lstm_cell_101/MatMul/ReadVariableOp;sequential_116/lstm_350/lstm_cell_101/MatMul/ReadVariableOp2~
=sequential_116/lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp=sequential_116/lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp2>
sequential_116/lstm_350/whilesequential_116/lstm_350/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_348_input
?8
?
while_body_613522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_101_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_101_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_101_matmul_readvariableop_resource:2(F
4while_lstm_cell_101_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_101_biasadd_readvariableop_resource:(??*while/lstm_cell_101/BiasAdd/ReadVariableOp?)while/lstm_cell_101/MatMul/ReadVariableOp?+while/lstm_cell_101/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_101/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_101/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_101/addAddV2$while/lstm_cell_101/MatMul:product:0&while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_101/BiasAddBiasAddwhile/lstm_cell_101/add:z:02while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_101/splitSplit,while/lstm_cell_101/split/split_dim:output:0$while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_101/SigmoidSigmoid"while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_1Sigmoid"while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mulMul!while/lstm_cell_101/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_101/ReluRelu"while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_1Mulwhile/lstm_cell_101/Sigmoid:y:0&while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/add_1AddV2while/lstm_cell_101/mul:z:0while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_2Sigmoid"while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_101/Relu_1Reluwhile/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_2Mul!while/lstm_cell_101/Sigmoid_2:y:0(while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_101/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_101/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_101/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_101/BiasAdd/ReadVariableOp*^while/lstm_cell_101/MatMul/ReadVariableOp,^while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_101_biasadd_readvariableop_resource5while_lstm_cell_101_biasadd_readvariableop_resource_0"n
4while_lstm_cell_101_matmul_1_readvariableop_resource6while_lstm_cell_101_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_101_matmul_readvariableop_resource4while_lstm_cell_101_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_101/BiasAdd/ReadVariableOp*while/lstm_cell_101/BiasAdd/ReadVariableOp2V
)while/lstm_cell_101/MatMul/ReadVariableOp)while/lstm_cell_101/MatMul/ReadVariableOp2Z
+while/lstm_cell_101/MatMul_1/ReadVariableOp+while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_617039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_101_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_101_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_101_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_101_matmul_readvariableop_resource:2(F
4while_lstm_cell_101_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_101_biasadd_readvariableop_resource:(??*while/lstm_cell_101/BiasAdd/ReadVariableOp?)while/lstm_cell_101/MatMul/ReadVariableOp?+while/lstm_cell_101/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_101_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_101/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_101_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_101/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_101/addAddV2$while/lstm_cell_101/MatMul:product:0&while/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_101_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_101/BiasAddBiasAddwhile/lstm_cell_101/add:z:02while/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_101/splitSplit,while/lstm_cell_101/split/split_dim:output:0$while/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_101/SigmoidSigmoid"while/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_1Sigmoid"while/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mulMul!while/lstm_cell_101/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_101/ReluRelu"while/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_1Mulwhile/lstm_cell_101/Sigmoid:y:0&while/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/add_1AddV2while/lstm_cell_101/mul:z:0while/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_101/Sigmoid_2Sigmoid"while/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_101/Relu_1Reluwhile/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_101/mul_2Mul!while/lstm_cell_101/Sigmoid_2:y:0(while/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_101/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_101/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_101/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_101/BiasAdd/ReadVariableOp*^while/lstm_cell_101/MatMul/ReadVariableOp,^while/lstm_cell_101/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_101_biasadd_readvariableop_resource5while_lstm_cell_101_biasadd_readvariableop_resource_0"n
4while_lstm_cell_101_matmul_1_readvariableop_resource6while_lstm_cell_101_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_101_matmul_readvariableop_resource4while_lstm_cell_101_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_101/BiasAdd/ReadVariableOp*while/lstm_cell_101/BiasAdd/ReadVariableOp2V
)while/lstm_cell_101/MatMul/ReadVariableOp)while/lstm_cell_101/MatMul/ReadVariableOp2Z
+while/lstm_cell_101/MatMul_1/ReadVariableOp+while/lstm_cell_101/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_613902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_613902___redundant_placeholder04
0while_while_cond_613902___redundant_placeholder14
0while_while_cond_613902___redundant_placeholder24
0while_while_cond_613902___redundant_placeholder3
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
$__inference_signature_wrapper_614367
lstm_348_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_348_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_612107o
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
_user_specified_namelstm_348_input
?
?
while_cond_613521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_613521___redundant_placeholder04
0while_while_cond_613521___redundant_placeholder14
0while_while_cond_613521___redundant_placeholder24
0while_while_cond_613521___redundant_placeholder3
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
while_cond_615663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_615663___redundant_placeholder04
0while_while_cond_615663___redundant_placeholder14
0while_while_cond_615663___redundant_placeholder24
0while_while_cond_615663___redundant_placeholder3
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
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612174

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
?8
?
D__inference_lstm_350_layer_call_and_return_conditional_losses_612957

inputs&
lstm_cell_101_612875:2(&
lstm_cell_101_612877:
("
lstm_cell_101_612879:(
identity??%lstm_cell_101/StatefulPartitionedCall?while;
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
%lstm_cell_101/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_101_612875lstm_cell_101_612877lstm_cell_101_612879*
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_612874n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_101_612875lstm_cell_101_612877lstm_cell_101_612879*
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
while_body_612888*
condR
while_cond_612887*K
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
NoOpNoOp&^lstm_cell_101/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_101/StatefulPartitionedCall%lstm_cell_101/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_615993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_615993___redundant_placeholder04
0while_while_cond_615993___redundant_placeholder14
0while_while_cond_615993___redundant_placeholder24
0while_while_cond_615993___redundant_placeholder3
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
)__inference_lstm_350_layer_call_fn_616540

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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613606o
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612670

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
D__inference_lstm_349_layer_call_and_return_conditional_losses_616364

inputs?
,lstm_cell_100_matmul_readvariableop_resource:	d?A
.lstm_cell_100_matmul_1_readvariableop_resource:	2?<
-lstm_cell_100_biasadd_readvariableop_resource:	?
identity??$lstm_cell_100/BiasAdd/ReadVariableOp?#lstm_cell_100/MatMul/ReadVariableOp?%lstm_cell_100/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_100/MatMul/ReadVariableOpReadVariableOp,lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_100/MatMulMatMulstrided_slice_2:output:0+lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_100/MatMul_1MatMulzeros:output:0-lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_100/addAddV2lstm_cell_100/MatMul:product:0 lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_100/BiasAddBiasAddlstm_cell_100/add:z:0,lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_100/splitSplit&lstm_cell_100/split/split_dim:output:0lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_100/SigmoidSigmoidlstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_1Sigmoidlstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_100/mulMullstm_cell_100/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_100/ReluRelulstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_1Mullstm_cell_100/Sigmoid:y:0 lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_100/add_1AddV2lstm_cell_100/mul:z:0lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_2Sigmoidlstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_100/Relu_1Relulstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_2Mullstm_cell_100/Sigmoid_2:y:0"lstm_cell_100/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_100_matmul_readvariableop_resource.lstm_cell_100_matmul_1_readvariableop_resource-lstm_cell_100_biasadd_readvariableop_resource*
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
while_body_616280*
condR
while_cond_616279*K
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
NoOpNoOp%^lstm_cell_100/BiasAdd/ReadVariableOp$^lstm_cell_100/MatMul/ReadVariableOp&^lstm_cell_100/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_100/BiasAdd/ReadVariableOp$lstm_cell_100/BiasAdd/ReadVariableOp2J
#lstm_cell_100/MatMul/ReadVariableOp#lstm_cell_100/MatMul/ReadVariableOp2N
%lstm_cell_100/MatMul_1/ReadVariableOp%lstm_cell_100/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?B
?

lstm_348_while_body_614480.
*lstm_348_while_lstm_348_while_loop_counter4
0lstm_348_while_lstm_348_while_maximum_iterations
lstm_348_while_placeholder 
lstm_348_while_placeholder_1 
lstm_348_while_placeholder_2 
lstm_348_while_placeholder_3-
)lstm_348_while_lstm_348_strided_slice_1_0i
elstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0:	?Q
>lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?L
=lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
lstm_348_while_identity
lstm_348_while_identity_1
lstm_348_while_identity_2
lstm_348_while_identity_3
lstm_348_while_identity_4
lstm_348_while_identity_5+
'lstm_348_while_lstm_348_strided_slice_1g
clstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensorM
:lstm_348_while_lstm_cell_99_matmul_readvariableop_resource:	?O
<lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource:	d?J
;lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource:	???2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp?1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp?3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp?
@lstm_348/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_348/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensor_0lstm_348_while_placeholderIlstm_348/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp<lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
"lstm_348/while/lstm_cell_99/MatMulMatMul9lstm_348/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp>lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
$lstm_348/while/lstm_cell_99/MatMul_1MatMullstm_348_while_placeholder_2;lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_348/while/lstm_cell_99/addAddV2,lstm_348/while/lstm_cell_99/MatMul:product:0.lstm_348/while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp=lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_348/while/lstm_cell_99/BiasAddBiasAdd#lstm_348/while/lstm_cell_99/add:z:0:lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_348/while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_348/while/lstm_cell_99/splitSplit4lstm_348/while/lstm_cell_99/split/split_dim:output:0,lstm_348/while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
#lstm_348/while/lstm_cell_99/SigmoidSigmoid*lstm_348/while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d?
%lstm_348/while/lstm_cell_99/Sigmoid_1Sigmoid*lstm_348/while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_348/while/lstm_cell_99/mulMul)lstm_348/while/lstm_cell_99/Sigmoid_1:y:0lstm_348_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
 lstm_348/while/lstm_cell_99/ReluRelu*lstm_348/while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
!lstm_348/while/lstm_cell_99/mul_1Mul'lstm_348/while/lstm_cell_99/Sigmoid:y:0.lstm_348/while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
!lstm_348/while/lstm_cell_99/add_1AddV2#lstm_348/while/lstm_cell_99/mul:z:0%lstm_348/while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
%lstm_348/while/lstm_cell_99/Sigmoid_2Sigmoid*lstm_348/while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????d?
"lstm_348/while/lstm_cell_99/Relu_1Relu%lstm_348/while/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
!lstm_348/while/lstm_cell_99/mul_2Mul)lstm_348/while/lstm_cell_99/Sigmoid_2:y:00lstm_348/while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_348/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_348_while_placeholder_1lstm_348_while_placeholder%lstm_348/while/lstm_cell_99/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_348/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_348/while/addAddV2lstm_348_while_placeholderlstm_348/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_348/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_348/while/add_1AddV2*lstm_348_while_lstm_348_while_loop_counterlstm_348/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_348/while/IdentityIdentitylstm_348/while/add_1:z:0^lstm_348/while/NoOp*
T0*
_output_shapes
: ?
lstm_348/while/Identity_1Identity0lstm_348_while_lstm_348_while_maximum_iterations^lstm_348/while/NoOp*
T0*
_output_shapes
: t
lstm_348/while/Identity_2Identitylstm_348/while/add:z:0^lstm_348/while/NoOp*
T0*
_output_shapes
: ?
lstm_348/while/Identity_3IdentityClstm_348/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_348/while/NoOp*
T0*
_output_shapes
: ?
lstm_348/while/Identity_4Identity%lstm_348/while/lstm_cell_99/mul_2:z:0^lstm_348/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_348/while/Identity_5Identity%lstm_348/while/lstm_cell_99/add_1:z:0^lstm_348/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_348/while/NoOpNoOp3^lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp2^lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp4^lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_348_while_identity lstm_348/while/Identity:output:0"?
lstm_348_while_identity_1"lstm_348/while/Identity_1:output:0"?
lstm_348_while_identity_2"lstm_348/while/Identity_2:output:0"?
lstm_348_while_identity_3"lstm_348/while/Identity_3:output:0"?
lstm_348_while_identity_4"lstm_348/while/Identity_4:output:0"?
lstm_348_while_identity_5"lstm_348/while/Identity_5:output:0"T
'lstm_348_while_lstm_348_strided_slice_1)lstm_348_while_lstm_348_strided_slice_1_0"|
;lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource=lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0"~
<lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource>lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0"z
:lstm_348_while_lstm_cell_99_matmul_readvariableop_resource<lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0"?
clstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensorelstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2h
2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp2f
1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp2j
3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_116_lstm_349_while_body_611878L
Hsequential_116_lstm_349_while_sequential_116_lstm_349_while_loop_counterR
Nsequential_116_lstm_349_while_sequential_116_lstm_349_while_maximum_iterations-
)sequential_116_lstm_349_while_placeholder/
+sequential_116_lstm_349_while_placeholder_1/
+sequential_116_lstm_349_while_placeholder_2/
+sequential_116_lstm_349_while_placeholder_3K
Gsequential_116_lstm_349_while_sequential_116_lstm_349_strided_slice_1_0?
?sequential_116_lstm_349_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_349_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_116_lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0:	d?a
Nsequential_116_lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?\
Msequential_116_lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0:	?*
&sequential_116_lstm_349_while_identity,
(sequential_116_lstm_349_while_identity_1,
(sequential_116_lstm_349_while_identity_2,
(sequential_116_lstm_349_while_identity_3,
(sequential_116_lstm_349_while_identity_4,
(sequential_116_lstm_349_while_identity_5I
Esequential_116_lstm_349_while_sequential_116_lstm_349_strided_slice_1?
?sequential_116_lstm_349_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_349_tensorarrayunstack_tensorlistfromtensor]
Jsequential_116_lstm_349_while_lstm_cell_100_matmul_readvariableop_resource:	d?_
Lsequential_116_lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource:	2?Z
Ksequential_116_lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource:	???Bsequential_116/lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp?Asequential_116/lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp?Csequential_116/lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp?
Osequential_116/lstm_349/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_116/lstm_349/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_116_lstm_349_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_349_tensorarrayunstack_tensorlistfromtensor_0)sequential_116_lstm_349_while_placeholderXsequential_116/lstm_349/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_116/lstm_349/while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOpLsequential_116_lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_116/lstm_349/while/lstm_cell_100/MatMulMatMulHsequential_116/lstm_349/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_116/lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_116/lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOpNsequential_116_lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_116/lstm_349/while/lstm_cell_100/MatMul_1MatMul+sequential_116_lstm_349_while_placeholder_2Ksequential_116/lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_116/lstm_349/while/lstm_cell_100/addAddV2<sequential_116/lstm_349/while/lstm_cell_100/MatMul:product:0>sequential_116/lstm_349/while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_116/lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOpMsequential_116_lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_116/lstm_349/while/lstm_cell_100/BiasAddBiasAdd3sequential_116/lstm_349/while/lstm_cell_100/add:z:0Jsequential_116/lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_116/lstm_349/while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_116/lstm_349/while/lstm_cell_100/splitSplitDsequential_116/lstm_349/while/lstm_cell_100/split/split_dim:output:0<sequential_116/lstm_349/while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_116/lstm_349/while/lstm_cell_100/SigmoidSigmoid:sequential_116/lstm_349/while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_116/lstm_349/while/lstm_cell_100/Sigmoid_1Sigmoid:sequential_116/lstm_349/while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_116/lstm_349/while/lstm_cell_100/mulMul9sequential_116/lstm_349/while/lstm_cell_100/Sigmoid_1:y:0+sequential_116_lstm_349_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_116/lstm_349/while/lstm_cell_100/ReluRelu:sequential_116/lstm_349/while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_116/lstm_349/while/lstm_cell_100/mul_1Mul7sequential_116/lstm_349/while/lstm_cell_100/Sigmoid:y:0>sequential_116/lstm_349/while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_116/lstm_349/while/lstm_cell_100/add_1AddV23sequential_116/lstm_349/while/lstm_cell_100/mul:z:05sequential_116/lstm_349/while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_116/lstm_349/while/lstm_cell_100/Sigmoid_2Sigmoid:sequential_116/lstm_349/while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_116/lstm_349/while/lstm_cell_100/Relu_1Relu5sequential_116/lstm_349/while/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_116/lstm_349/while/lstm_cell_100/mul_2Mul9sequential_116/lstm_349/while/lstm_cell_100/Sigmoid_2:y:0@sequential_116/lstm_349/while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_116/lstm_349/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_116_lstm_349_while_placeholder_1)sequential_116_lstm_349_while_placeholder5sequential_116/lstm_349/while/lstm_cell_100/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_116/lstm_349/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_116/lstm_349/while/addAddV2)sequential_116_lstm_349_while_placeholder,sequential_116/lstm_349/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_116/lstm_349/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_116/lstm_349/while/add_1AddV2Hsequential_116_lstm_349_while_sequential_116_lstm_349_while_loop_counter.sequential_116/lstm_349/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_116/lstm_349/while/IdentityIdentity'sequential_116/lstm_349/while/add_1:z:0#^sequential_116/lstm_349/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_349/while/Identity_1IdentityNsequential_116_lstm_349_while_sequential_116_lstm_349_while_maximum_iterations#^sequential_116/lstm_349/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_349/while/Identity_2Identity%sequential_116/lstm_349/while/add:z:0#^sequential_116/lstm_349/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_349/while/Identity_3IdentityRsequential_116/lstm_349/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_116/lstm_349/while/NoOp*
T0*
_output_shapes
: ?
(sequential_116/lstm_349/while/Identity_4Identity5sequential_116/lstm_349/while/lstm_cell_100/mul_2:z:0#^sequential_116/lstm_349/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_116/lstm_349/while/Identity_5Identity5sequential_116/lstm_349/while/lstm_cell_100/add_1:z:0#^sequential_116/lstm_349/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_116/lstm_349/while/NoOpNoOpC^sequential_116/lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOpB^sequential_116/lstm_349/while/lstm_cell_100/MatMul/ReadVariableOpD^sequential_116/lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_116_lstm_349_while_identity/sequential_116/lstm_349/while/Identity:output:0"]
(sequential_116_lstm_349_while_identity_11sequential_116/lstm_349/while/Identity_1:output:0"]
(sequential_116_lstm_349_while_identity_21sequential_116/lstm_349/while/Identity_2:output:0"]
(sequential_116_lstm_349_while_identity_31sequential_116/lstm_349/while/Identity_3:output:0"]
(sequential_116_lstm_349_while_identity_41sequential_116/lstm_349/while/Identity_4:output:0"]
(sequential_116_lstm_349_while_identity_51sequential_116/lstm_349/while/Identity_5:output:0"?
Ksequential_116_lstm_349_while_lstm_cell_100_biasadd_readvariableop_resourceMsequential_116_lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0"?
Lsequential_116_lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resourceNsequential_116_lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0"?
Jsequential_116_lstm_349_while_lstm_cell_100_matmul_readvariableop_resourceLsequential_116_lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0"?
Esequential_116_lstm_349_while_sequential_116_lstm_349_strided_slice_1Gsequential_116_lstm_349_while_sequential_116_lstm_349_strided_slice_1_0"?
?sequential_116_lstm_349_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_349_tensorarrayunstack_tensorlistfromtensor?sequential_116_lstm_349_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_349_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_116/lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOpBsequential_116/lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp2?
Asequential_116/lstm_349/while/lstm_cell_100/MatMul/ReadVariableOpAsequential_116/lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp2?
Csequential_116/lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOpCsequential_116/lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_349_while_cond_614618.
*lstm_349_while_lstm_349_while_loop_counter4
0lstm_349_while_lstm_349_while_maximum_iterations
lstm_349_while_placeholder 
lstm_349_while_placeholder_1 
lstm_349_while_placeholder_2 
lstm_349_while_placeholder_30
,lstm_349_while_less_lstm_349_strided_slice_1F
Blstm_349_while_lstm_349_while_cond_614618___redundant_placeholder0F
Blstm_349_while_lstm_349_while_cond_614618___redundant_placeholder1F
Blstm_349_while_lstm_349_while_cond_614618___redundant_placeholder2F
Blstm_349_while_lstm_349_while_cond_614618___redundant_placeholder3
lstm_349_while_identity
?
lstm_349/while/LessLesslstm_349_while_placeholder,lstm_349_while_less_lstm_349_strided_slice_1*
T0*
_output_shapes
: ]
lstm_349/while/IdentityIdentitylstm_349/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_349_while_identity lstm_349/while/Identity:output:0*(
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
while_cond_612728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_612728___redundant_placeholder04
0while_while_cond_612728___redundant_placeholder14
0while_while_cond_612728___redundant_placeholder24
0while_while_cond_612728___redundant_placeholder3
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
?"
?
while_body_613079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_101_613103_0:2(.
while_lstm_cell_101_613105_0:
(*
while_lstm_cell_101_613107_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_101_613103:2(,
while_lstm_cell_101_613105:
((
while_lstm_cell_101_613107:(??+while/lstm_cell_101/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_101/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_101_613103_0while_lstm_cell_101_613105_0while_lstm_cell_101_613107_0*
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_613020?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_101/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_101/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_101/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_101/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_101_613103while_lstm_cell_101_613103_0":
while_lstm_cell_101_613105while_lstm_cell_101_613105_0":
while_lstm_cell_101_613107while_lstm_cell_101_613107_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_101/StatefulPartitionedCall+while/lstm_cell_101/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_616279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_616279___redundant_placeholder04
0while_while_cond_616279___redundant_placeholder14
0while_while_cond_616279___redundant_placeholder24
0while_while_cond_616279___redundant_placeholder3
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_614332
lstm_348_input"
lstm_348_614305:	?"
lstm_348_614307:	d?
lstm_348_614309:	?"
lstm_349_614312:	d?"
lstm_349_614314:	2?
lstm_349_614316:	?!
lstm_350_614319:2(!
lstm_350_614321:
(
lstm_350_614323:("
dense_116_614326:

dense_116_614328:
identity??!dense_116/StatefulPartitionedCall? lstm_348/StatefulPartitionedCall? lstm_349/StatefulPartitionedCall? lstm_350/StatefulPartitionedCall?
 lstm_348/StatefulPartitionedCallStatefulPartitionedCalllstm_348_inputlstm_348_614305lstm_348_614307lstm_348_614309*
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_614152?
 lstm_349/StatefulPartitionedCallStatefulPartitionedCall)lstm_348/StatefulPartitionedCall:output:0lstm_349_614312lstm_349_614314lstm_349_614316*
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_613987?
 lstm_350/StatefulPartitionedCallStatefulPartitionedCall)lstm_349/StatefulPartitionedCall:output:0lstm_350_614319lstm_350_614321lstm_350_614323*
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613822?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_350/StatefulPartitionedCall:output:0dense_116_614326dense_116_614328*
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
E__inference_dense_116_layer_call_and_return_conditional_losses_613624y
IdentityIdentity*dense_116/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_116/StatefulPartitionedCall!^lstm_348/StatefulPartitionedCall!^lstm_349/StatefulPartitionedCall!^lstm_350/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2D
 lstm_348/StatefulPartitionedCall lstm_348/StatefulPartitionedCall2D
 lstm_349/StatefulPartitionedCall lstm_349/StatefulPartitionedCall2D
 lstm_350/StatefulPartitionedCall lstm_350/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_348_input
?J
?
D__inference_lstm_349_layer_call_and_return_conditional_losses_616507

inputs?
,lstm_cell_100_matmul_readvariableop_resource:	d?A
.lstm_cell_100_matmul_1_readvariableop_resource:	2?<
-lstm_cell_100_biasadd_readvariableop_resource:	?
identity??$lstm_cell_100/BiasAdd/ReadVariableOp?#lstm_cell_100/MatMul/ReadVariableOp?%lstm_cell_100/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_100/MatMul/ReadVariableOpReadVariableOp,lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_100/MatMulMatMulstrided_slice_2:output:0+lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_100/MatMul_1MatMulzeros:output:0-lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_100/addAddV2lstm_cell_100/MatMul:product:0 lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_100/BiasAddBiasAddlstm_cell_100/add:z:0,lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_100/splitSplit&lstm_cell_100/split/split_dim:output:0lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_100/SigmoidSigmoidlstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_1Sigmoidlstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_100/mulMullstm_cell_100/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_100/ReluRelulstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_1Mullstm_cell_100/Sigmoid:y:0 lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_100/add_1AddV2lstm_cell_100/mul:z:0lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_2Sigmoidlstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_100/Relu_1Relulstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_2Mullstm_cell_100/Sigmoid_2:y:0"lstm_cell_100/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_100_matmul_readvariableop_resource.lstm_cell_100_matmul_1_readvariableop_resource-lstm_cell_100_biasadd_readvariableop_resource*
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
while_body_616423*
condR
while_cond_616422*K
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
NoOpNoOp%^lstm_cell_100/BiasAdd/ReadVariableOp$^lstm_cell_100/MatMul/ReadVariableOp&^lstm_cell_100/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_100/BiasAdd/ReadVariableOp$lstm_cell_100/BiasAdd/ReadVariableOp2J
#lstm_cell_100/MatMul/ReadVariableOp#lstm_cell_100/MatMul/ReadVariableOp2N
%lstm_cell_100/MatMul_1/ReadVariableOp%lstm_cell_100/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_617436

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
?"
?
while_body_612538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_100_612562_0:	d?/
while_lstm_cell_100_612564_0:	2?+
while_lstm_cell_100_612566_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_100_612562:	d?-
while_lstm_cell_100_612564:	2?)
while_lstm_cell_100_612566:	???+while/lstm_cell_100/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_100/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_100_612562_0while_lstm_cell_100_612564_0while_lstm_cell_100_612566_0*
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612524?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_100/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_100/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_100/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_100/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_100_612562while_lstm_cell_100_612562_0":
while_lstm_cell_100_612564while_lstm_cell_100_612564_0":
while_lstm_cell_100_612566while_lstm_cell_100_612566_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_100/StatefulPartitionedCall+while/lstm_cell_100/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_612448

inputs&
lstm_cell_99_612366:	?&
lstm_cell_99_612368:	d?"
lstm_cell_99_612370:	?
identity??$lstm_cell_99/StatefulPartitionedCall?while;
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
$lstm_cell_99/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_99_612366lstm_cell_99_612368lstm_cell_99_612370*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612320n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_99_612366lstm_cell_99_612368lstm_cell_99_612370*
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
while_body_612379*
condR
while_cond_612378*K
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
 :??????????????????du
NoOpNoOp%^lstm_cell_99/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_99/StatefulPartitionedCall$lstm_cell_99/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_116_layer_call_and_return_conditional_losses_613624

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
while_cond_613078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_613078___redundant_placeholder04
0while_while_cond_613078___redundant_placeholder14
0while_while_cond_613078___redundant_placeholder24
0while_while_cond_613078___redundant_placeholder3
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
lstm_349_while_cond_615045.
*lstm_349_while_lstm_349_while_loop_counter4
0lstm_349_while_lstm_349_while_maximum_iterations
lstm_349_while_placeholder 
lstm_349_while_placeholder_1 
lstm_349_while_placeholder_2 
lstm_349_while_placeholder_30
,lstm_349_while_less_lstm_349_strided_slice_1F
Blstm_349_while_lstm_349_while_cond_615045___redundant_placeholder0F
Blstm_349_while_lstm_349_while_cond_615045___redundant_placeholder1F
Blstm_349_while_lstm_349_while_cond_615045___redundant_placeholder2F
Blstm_349_while_lstm_349_while_cond_615045___redundant_placeholder3
lstm_349_while_identity
?
lstm_349/while/LessLesslstm_349_while_placeholder,lstm_349_while_less_lstm_349_strided_slice_1*
T0*
_output_shapes
: ]
lstm_349/while/IdentityIdentitylstm_349/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_349_while_identity lstm_349/while/Identity:output:0*(
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
lstm_350_while_cond_615184.
*lstm_350_while_lstm_350_while_loop_counter4
0lstm_350_while_lstm_350_while_maximum_iterations
lstm_350_while_placeholder 
lstm_350_while_placeholder_1 
lstm_350_while_placeholder_2 
lstm_350_while_placeholder_30
,lstm_350_while_less_lstm_350_strided_slice_1F
Blstm_350_while_lstm_350_while_cond_615184___redundant_placeholder0F
Blstm_350_while_lstm_350_while_cond_615184___redundant_placeholder1F
Blstm_350_while_lstm_350_while_cond_615184___redundant_placeholder2F
Blstm_350_while_lstm_350_while_cond_615184___redundant_placeholder3
lstm_350_while_identity
?
lstm_350/while/LessLesslstm_350_while_placeholder,lstm_350_while_less_lstm_350_strided_slice_1*
T0*
_output_shapes
: ]
lstm_350/while/IdentityIdentitylstm_350/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_350_while_identity lstm_350/while/Identity:output:0*(
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
)__inference_lstm_348_layer_call_fn_615319

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
D__inference_lstm_348_layer_call_and_return_conditional_losses_614152s
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
while_body_613903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_100_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_100_matmul_readvariableop_resource:	d?G
4while_lstm_cell_100_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_100_biasadd_readvariableop_resource:	???*while/lstm_cell_100/BiasAdd/ReadVariableOp?)while/lstm_cell_100/MatMul/ReadVariableOp?+while/lstm_cell_100/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_100/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_100/addAddV2$while/lstm_cell_100/MatMul:product:0&while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_100/BiasAddBiasAddwhile/lstm_cell_100/add:z:02while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_100/splitSplit,while/lstm_cell_100/split/split_dim:output:0$while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_100/SigmoidSigmoid"while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_1Sigmoid"while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mulMul!while/lstm_cell_100/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_100/ReluRelu"while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_1Mulwhile/lstm_cell_100/Sigmoid:y:0&while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/add_1AddV2while/lstm_cell_100/mul:z:0while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_2Sigmoid"while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_100/Relu_1Reluwhile/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_2Mul!while/lstm_cell_100/Sigmoid_2:y:0(while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_100/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_100/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_100/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_100/BiasAdd/ReadVariableOp*^while/lstm_cell_100/MatMul/ReadVariableOp,^while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_100_biasadd_readvariableop_resource5while_lstm_cell_100_biasadd_readvariableop_resource_0"n
4while_lstm_cell_100_matmul_1_readvariableop_resource6while_lstm_cell_100_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_100_matmul_readvariableop_resource4while_lstm_cell_100_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_100/BiasAdd/ReadVariableOp*while/lstm_cell_100/BiasAdd/ReadVariableOp2V
)while/lstm_cell_100/MatMul/ReadVariableOp)while/lstm_cell_100/MatMul/ReadVariableOp2Z
+while/lstm_cell_100/MatMul_1/ReadVariableOp+while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_116_layer_call_fn_613656
lstm_348_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_348_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_613631o
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
_user_specified_namelstm_348_input
?
?
)__inference_lstm_348_layer_call_fn_615286
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_612257|
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
while_body_615807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_99_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_99_matmul_readvariableop_resource:	?F
3while_lstm_cell_99_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_99_biasadd_readvariableop_resource:	???)while/lstm_cell_99/BiasAdd/ReadVariableOp?(while/lstm_cell_99/MatMul/ReadVariableOp?*while/lstm_cell_99/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_99/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_99/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_99/addAddV2#while/lstm_cell_99/MatMul:product:0%while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_99/BiasAddBiasAddwhile/lstm_cell_99/add:z:01while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_99/splitSplit+while/lstm_cell_99/split/split_dim:output:0#while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_99/SigmoidSigmoid!while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_1Sigmoid!while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mulMul while/lstm_cell_99/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_99/ReluRelu!while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_1Mulwhile/lstm_cell_99/Sigmoid:y:0%while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/add_1AddV2while/lstm_cell_99/mul:z:0while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_2Sigmoid!while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_99/Relu_1Reluwhile/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_2Mul while/lstm_cell_99/Sigmoid_2:y:0'while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_99/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_99/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_99/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_99/BiasAdd/ReadVariableOp)^while/lstm_cell_99/MatMul/ReadVariableOp+^while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_99_biasadd_readvariableop_resource4while_lstm_cell_99_biasadd_readvariableop_resource_0"l
3while_lstm_cell_99_matmul_1_readvariableop_resource5while_lstm_cell_99_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_99_matmul_readvariableop_resource3while_lstm_cell_99_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_99/BiasAdd/ReadVariableOp)while/lstm_cell_99/BiasAdd/ReadVariableOp2T
(while/lstm_cell_99/MatMul/ReadVariableOp(while/lstm_cell_99/MatMul/ReadVariableOp2X
*while/lstm_cell_99/MatMul_1/ReadVariableOp*while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_615891

inputs>
+lstm_cell_99_matmul_readvariableop_resource:	?@
-lstm_cell_99_matmul_1_readvariableop_resource:	d?;
,lstm_cell_99_biasadd_readvariableop_resource:	?
identity??#lstm_cell_99/BiasAdd/ReadVariableOp?"lstm_cell_99/MatMul/ReadVariableOp?$lstm_cell_99/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_99/MatMul/ReadVariableOpReadVariableOp+lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_99/MatMulMatMulstrided_slice_2:output:0*lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_99/MatMul_1MatMulzeros:output:0,lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_99/addAddV2lstm_cell_99/MatMul:product:0lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_99/BiasAddBiasAddlstm_cell_99/add:z:0+lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_99/splitSplit%lstm_cell_99/split/split_dim:output:0lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_99/SigmoidSigmoidlstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_1Sigmoidlstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_99/mulMullstm_cell_99/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_99/ReluRelulstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_1Mullstm_cell_99/Sigmoid:y:0lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_99/add_1AddV2lstm_cell_99/mul:z:0lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_2Sigmoidlstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_99/Relu_1Relulstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_2Mullstm_cell_99/Sigmoid_2:y:0!lstm_cell_99/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_99_matmul_readvariableop_resource-lstm_cell_99_matmul_1_readvariableop_resource,lstm_cell_99_biasadd_readvariableop_resource*
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
while_body_615807*
condR
while_cond_615806*K
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
NoOpNoOp$^lstm_cell_99/BiasAdd/ReadVariableOp#^lstm_cell_99/MatMul/ReadVariableOp%^lstm_cell_99/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_99/BiasAdd/ReadVariableOp#lstm_cell_99/BiasAdd/ReadVariableOp2H
"lstm_cell_99/MatMul/ReadVariableOp"lstm_cell_99/MatMul/ReadVariableOp2L
$lstm_cell_99/MatMul_1/ReadVariableOp$lstm_cell_99/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_116_layer_call_fn_614421

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
J__inference_sequential_116_layer_call_and_return_conditional_losses_614220o
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_613631

inputs"
lstm_348_613307:	?"
lstm_348_613309:	d?
lstm_348_613311:	?"
lstm_349_613457:	d?"
lstm_349_613459:	2?
lstm_349_613461:	?!
lstm_350_613607:2(!
lstm_350_613609:
(
lstm_350_613611:("
dense_116_613625:

dense_116_613627:
identity??!dense_116/StatefulPartitionedCall? lstm_348/StatefulPartitionedCall? lstm_349/StatefulPartitionedCall? lstm_350/StatefulPartitionedCall?
 lstm_348/StatefulPartitionedCallStatefulPartitionedCallinputslstm_348_613307lstm_348_613309lstm_348_613311*
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_613306?
 lstm_349/StatefulPartitionedCallStatefulPartitionedCall)lstm_348/StatefulPartitionedCall:output:0lstm_349_613457lstm_349_613459lstm_349_613461*
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_613456?
 lstm_350/StatefulPartitionedCallStatefulPartitionedCall)lstm_349/StatefulPartitionedCall:output:0lstm_350_613607lstm_350_613609lstm_350_613611*
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613606?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_350/StatefulPartitionedCall:output:0dense_116_613625dense_116_613627*
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
E__inference_dense_116_layer_call_and_return_conditional_losses_613624y
IdentityIdentity*dense_116/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_116/StatefulPartitionedCall!^lstm_348/StatefulPartitionedCall!^lstm_349/StatefulPartitionedCall!^lstm_350/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2D
 lstm_348/StatefulPartitionedCall lstm_348/StatefulPartitionedCall2D
 lstm_349/StatefulPartitionedCall lstm_349/StatefulPartitionedCall2D
 lstm_350/StatefulPartitionedCall lstm_350/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_615521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_99_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_99_matmul_readvariableop_resource:	?F
3while_lstm_cell_99_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_99_biasadd_readvariableop_resource:	???)while/lstm_cell_99/BiasAdd/ReadVariableOp?(while/lstm_cell_99/MatMul/ReadVariableOp?*while/lstm_cell_99/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_99/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_99/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_99/addAddV2#while/lstm_cell_99/MatMul:product:0%while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_99/BiasAddBiasAddwhile/lstm_cell_99/add:z:01while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_99/splitSplit+while/lstm_cell_99/split/split_dim:output:0#while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_99/SigmoidSigmoid!while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_1Sigmoid!while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mulMul while/lstm_cell_99/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_99/ReluRelu!while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_1Mulwhile/lstm_cell_99/Sigmoid:y:0%while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/add_1AddV2while/lstm_cell_99/mul:z:0while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_99/Sigmoid_2Sigmoid!while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_99/Relu_1Reluwhile/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_99/mul_2Mul while/lstm_cell_99/Sigmoid_2:y:0'while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_99/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_99/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_99/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_99/BiasAdd/ReadVariableOp)^while/lstm_cell_99/MatMul/ReadVariableOp+^while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_99_biasadd_readvariableop_resource4while_lstm_cell_99_biasadd_readvariableop_resource_0"l
3while_lstm_cell_99_matmul_1_readvariableop_resource5while_lstm_cell_99_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_99_matmul_readvariableop_resource3while_lstm_cell_99_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_99/BiasAdd/ReadVariableOp)while/lstm_cell_99/BiasAdd/ReadVariableOp2T
(while/lstm_cell_99/MatMul/ReadVariableOp(while/lstm_cell_99/MatMul/ReadVariableOp2X
*while/lstm_cell_99/MatMul_1/ReadVariableOp*while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_349_while_body_614619.
*lstm_349_while_lstm_349_while_loop_counter4
0lstm_349_while_lstm_349_while_maximum_iterations
lstm_349_while_placeholder 
lstm_349_while_placeholder_1 
lstm_349_while_placeholder_2 
lstm_349_while_placeholder_3-
)lstm_349_while_lstm_349_strided_slice_1_0i
elstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0:	d?R
?lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?M
>lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
lstm_349_while_identity
lstm_349_while_identity_1
lstm_349_while_identity_2
lstm_349_while_identity_3
lstm_349_while_identity_4
lstm_349_while_identity_5+
'lstm_349_while_lstm_349_strided_slice_1g
clstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensorN
;lstm_349_while_lstm_cell_100_matmul_readvariableop_resource:	d?P
=lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource:	2?K
<lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource:	???3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp?2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp?4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp?
@lstm_349/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_349/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensor_0lstm_349_while_placeholderIlstm_349/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp=lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_349/while/lstm_cell_100/MatMulMatMul9lstm_349/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp?lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_349/while/lstm_cell_100/MatMul_1MatMullstm_349_while_placeholder_2<lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_349/while/lstm_cell_100/addAddV2-lstm_349/while/lstm_cell_100/MatMul:product:0/lstm_349/while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp>lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_349/while/lstm_cell_100/BiasAddBiasAdd$lstm_349/while/lstm_cell_100/add:z:0;lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_349/while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_349/while/lstm_cell_100/splitSplit5lstm_349/while/lstm_cell_100/split/split_dim:output:0-lstm_349/while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_349/while/lstm_cell_100/SigmoidSigmoid+lstm_349/while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_349/while/lstm_cell_100/Sigmoid_1Sigmoid+lstm_349/while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_349/while/lstm_cell_100/mulMul*lstm_349/while/lstm_cell_100/Sigmoid_1:y:0lstm_349_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_349/while/lstm_cell_100/ReluRelu+lstm_349/while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_349/while/lstm_cell_100/mul_1Mul(lstm_349/while/lstm_cell_100/Sigmoid:y:0/lstm_349/while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_349/while/lstm_cell_100/add_1AddV2$lstm_349/while/lstm_cell_100/mul:z:0&lstm_349/while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_349/while/lstm_cell_100/Sigmoid_2Sigmoid+lstm_349/while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_349/while/lstm_cell_100/Relu_1Relu&lstm_349/while/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_349/while/lstm_cell_100/mul_2Mul*lstm_349/while/lstm_cell_100/Sigmoid_2:y:01lstm_349/while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_349/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_349_while_placeholder_1lstm_349_while_placeholder&lstm_349/while/lstm_cell_100/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_349/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_349/while/addAddV2lstm_349_while_placeholderlstm_349/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_349/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_349/while/add_1AddV2*lstm_349_while_lstm_349_while_loop_counterlstm_349/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_349/while/IdentityIdentitylstm_349/while/add_1:z:0^lstm_349/while/NoOp*
T0*
_output_shapes
: ?
lstm_349/while/Identity_1Identity0lstm_349_while_lstm_349_while_maximum_iterations^lstm_349/while/NoOp*
T0*
_output_shapes
: t
lstm_349/while/Identity_2Identitylstm_349/while/add:z:0^lstm_349/while/NoOp*
T0*
_output_shapes
: ?
lstm_349/while/Identity_3IdentityClstm_349/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_349/while/NoOp*
T0*
_output_shapes
: ?
lstm_349/while/Identity_4Identity&lstm_349/while/lstm_cell_100/mul_2:z:0^lstm_349/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_349/while/Identity_5Identity&lstm_349/while/lstm_cell_100/add_1:z:0^lstm_349/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_349/while/NoOpNoOp4^lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp3^lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp5^lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_349_while_identity lstm_349/while/Identity:output:0"?
lstm_349_while_identity_1"lstm_349/while/Identity_1:output:0"?
lstm_349_while_identity_2"lstm_349/while/Identity_2:output:0"?
lstm_349_while_identity_3"lstm_349/while/Identity_3:output:0"?
lstm_349_while_identity_4"lstm_349/while/Identity_4:output:0"?
lstm_349_while_identity_5"lstm_349/while/Identity_5:output:0"T
'lstm_349_while_lstm_349_strided_slice_1)lstm_349_while_lstm_349_strided_slice_1_0"~
<lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource>lstm_349_while_lstm_cell_100_biasadd_readvariableop_resource_0"?
=lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource?lstm_349_while_lstm_cell_100_matmul_1_readvariableop_resource_0"|
;lstm_349_while_lstm_cell_100_matmul_readvariableop_resource=lstm_349_while_lstm_cell_100_matmul_readvariableop_resource_0"?
clstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensorelstm_349_while_tensorarrayv2read_tensorlistgetitem_lstm_349_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp3lstm_349/while/lstm_cell_100/BiasAdd/ReadVariableOp2h
2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp2lstm_349/while/lstm_cell_100/MatMul/ReadVariableOp2l
4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp4lstm_349/while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_615605
inputs_0>
+lstm_cell_99_matmul_readvariableop_resource:	?@
-lstm_cell_99_matmul_1_readvariableop_resource:	d?;
,lstm_cell_99_biasadd_readvariableop_resource:	?
identity??#lstm_cell_99/BiasAdd/ReadVariableOp?"lstm_cell_99/MatMul/ReadVariableOp?$lstm_cell_99/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_99/MatMul/ReadVariableOpReadVariableOp+lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_99/MatMulMatMulstrided_slice_2:output:0*lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_99/MatMul_1MatMulzeros:output:0,lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_99/addAddV2lstm_cell_99/MatMul:product:0lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_99/BiasAddBiasAddlstm_cell_99/add:z:0+lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_99/splitSplit%lstm_cell_99/split/split_dim:output:0lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_99/SigmoidSigmoidlstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_1Sigmoidlstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_99/mulMullstm_cell_99/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_99/ReluRelulstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_1Mullstm_cell_99/Sigmoid:y:0lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_99/add_1AddV2lstm_cell_99/mul:z:0lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_2Sigmoidlstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_99/Relu_1Relulstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_2Mullstm_cell_99/Sigmoid_2:y:0!lstm_cell_99/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_99_matmul_readvariableop_resource-lstm_cell_99_matmul_1_readvariableop_resource,lstm_cell_99_biasadd_readvariableop_resource*
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
while_body_615521*
condR
while_cond_615520*K
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
NoOpNoOp$^lstm_cell_99/BiasAdd/ReadVariableOp#^lstm_cell_99/MatMul/ReadVariableOp%^lstm_cell_99/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_99/BiasAdd/ReadVariableOp#lstm_cell_99/BiasAdd/ReadVariableOp2H
"lstm_cell_99/MatMul/ReadVariableOp"lstm_cell_99/MatMul/ReadVariableOp2L
$lstm_cell_99/MatMul_1/ReadVariableOp$lstm_cell_99/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
J__inference_sequential_116_layer_call_and_return_conditional_losses_615275

inputsG
4lstm_348_lstm_cell_99_matmul_readvariableop_resource:	?I
6lstm_348_lstm_cell_99_matmul_1_readvariableop_resource:	d?D
5lstm_348_lstm_cell_99_biasadd_readvariableop_resource:	?H
5lstm_349_lstm_cell_100_matmul_readvariableop_resource:	d?J
7lstm_349_lstm_cell_100_matmul_1_readvariableop_resource:	2?E
6lstm_349_lstm_cell_100_biasadd_readvariableop_resource:	?G
5lstm_350_lstm_cell_101_matmul_readvariableop_resource:2(I
7lstm_350_lstm_cell_101_matmul_1_readvariableop_resource:
(D
6lstm_350_lstm_cell_101_biasadd_readvariableop_resource:(:
(dense_116_matmul_readvariableop_resource:
7
)dense_116_biasadd_readvariableop_resource:
identity?? dense_116/BiasAdd/ReadVariableOp?dense_116/MatMul/ReadVariableOp?,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp?+lstm_348/lstm_cell_99/MatMul/ReadVariableOp?-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp?lstm_348/while?-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp?,lstm_349/lstm_cell_100/MatMul/ReadVariableOp?.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp?lstm_349/while?-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp?,lstm_350/lstm_cell_101/MatMul/ReadVariableOp?.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp?lstm_350/whileD
lstm_348/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_348/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_348/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_348/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_sliceStridedSlicelstm_348/Shape:output:0%lstm_348/strided_slice/stack:output:0'lstm_348/strided_slice/stack_1:output:0'lstm_348/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_348/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_348/zeros/packedPacklstm_348/strided_slice:output:0 lstm_348/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_348/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_348/zerosFilllstm_348/zeros/packed:output:0lstm_348/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_348/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_348/zeros_1/packedPacklstm_348/strided_slice:output:0"lstm_348/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_348/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_348/zeros_1Fill lstm_348/zeros_1/packed:output:0lstm_348/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_348/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_348/transpose	Transposeinputs lstm_348/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_348/Shape_1Shapelstm_348/transpose:y:0*
T0*
_output_shapes
:h
lstm_348/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_348/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_348/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_slice_1StridedSlicelstm_348/Shape_1:output:0'lstm_348/strided_slice_1/stack:output:0)lstm_348/strided_slice_1/stack_1:output:0)lstm_348/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_348/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_348/TensorArrayV2TensorListReserve-lstm_348/TensorArrayV2/element_shape:output:0!lstm_348/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_348/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_348/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_348/transpose:y:0Glstm_348/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_348/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_348/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_348/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_slice_2StridedSlicelstm_348/transpose:y:0'lstm_348/strided_slice_2/stack:output:0)lstm_348/strided_slice_2/stack_1:output:0)lstm_348/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
+lstm_348/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp4lstm_348_lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_348/lstm_cell_99/MatMulMatMul!lstm_348/strided_slice_2:output:03lstm_348/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp6lstm_348_lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_348/lstm_cell_99/MatMul_1MatMullstm_348/zeros:output:05lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_348/lstm_cell_99/addAddV2&lstm_348/lstm_cell_99/MatMul:product:0(lstm_348/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp5lstm_348_lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_348/lstm_cell_99/BiasAddBiasAddlstm_348/lstm_cell_99/add:z:04lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_348/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_348/lstm_cell_99/splitSplit.lstm_348/lstm_cell_99/split/split_dim:output:0&lstm_348/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_348/lstm_cell_99/SigmoidSigmoid$lstm_348/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/Sigmoid_1Sigmoid$lstm_348/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/mulMul#lstm_348/lstm_cell_99/Sigmoid_1:y:0lstm_348/zeros_1:output:0*
T0*'
_output_shapes
:?????????dz
lstm_348/lstm_cell_99/ReluRelu$lstm_348/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/mul_1Mul!lstm_348/lstm_cell_99/Sigmoid:y:0(lstm_348/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/add_1AddV2lstm_348/lstm_cell_99/mul:z:0lstm_348/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/Sigmoid_2Sigmoid$lstm_348/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dw
lstm_348/lstm_cell_99/Relu_1Relulstm_348/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/mul_2Mul#lstm_348/lstm_cell_99/Sigmoid_2:y:0*lstm_348/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_348/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_348/TensorArrayV2_1TensorListReserve/lstm_348/TensorArrayV2_1/element_shape:output:0!lstm_348/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_348/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_348/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_348/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_348/whileWhile$lstm_348/while/loop_counter:output:0*lstm_348/while/maximum_iterations:output:0lstm_348/time:output:0!lstm_348/TensorArrayV2_1:handle:0lstm_348/zeros:output:0lstm_348/zeros_1:output:0!lstm_348/strided_slice_1:output:0@lstm_348/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_348_lstm_cell_99_matmul_readvariableop_resource6lstm_348_lstm_cell_99_matmul_1_readvariableop_resource5lstm_348_lstm_cell_99_biasadd_readvariableop_resource*
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
lstm_348_while_body_614907*&
condR
lstm_348_while_cond_614906*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_348/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_348/TensorArrayV2Stack/TensorListStackTensorListStacklstm_348/while:output:3Blstm_348/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_348/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_348/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_348/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_slice_3StridedSlice4lstm_348/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_348/strided_slice_3/stack:output:0)lstm_348/strided_slice_3/stack_1:output:0)lstm_348/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_348/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_348/transpose_1	Transpose4lstm_348/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_348/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_348/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_349/ShapeShapelstm_348/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_349/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_349/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_349/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_sliceStridedSlicelstm_349/Shape:output:0%lstm_349/strided_slice/stack:output:0'lstm_349/strided_slice/stack_1:output:0'lstm_349/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_349/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_349/zeros/packedPacklstm_349/strided_slice:output:0 lstm_349/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_349/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_349/zerosFilllstm_349/zeros/packed:output:0lstm_349/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_349/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_349/zeros_1/packedPacklstm_349/strided_slice:output:0"lstm_349/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_349/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_349/zeros_1Fill lstm_349/zeros_1/packed:output:0lstm_349/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_349/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_349/transpose	Transposelstm_348/transpose_1:y:0 lstm_349/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_349/Shape_1Shapelstm_349/transpose:y:0*
T0*
_output_shapes
:h
lstm_349/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_349/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_349/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_slice_1StridedSlicelstm_349/Shape_1:output:0'lstm_349/strided_slice_1/stack:output:0)lstm_349/strided_slice_1/stack_1:output:0)lstm_349/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_349/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_349/TensorArrayV2TensorListReserve-lstm_349/TensorArrayV2/element_shape:output:0!lstm_349/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_349/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_349/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_349/transpose:y:0Glstm_349/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_349/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_349/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_349/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_slice_2StridedSlicelstm_349/transpose:y:0'lstm_349/strided_slice_2/stack:output:0)lstm_349/strided_slice_2/stack_1:output:0)lstm_349/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_349/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp5lstm_349_lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_349/lstm_cell_100/MatMulMatMul!lstm_349/strided_slice_2:output:04lstm_349/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp7lstm_349_lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_349/lstm_cell_100/MatMul_1MatMullstm_349/zeros:output:06lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_349/lstm_cell_100/addAddV2'lstm_349/lstm_cell_100/MatMul:product:0)lstm_349/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp6lstm_349_lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_349/lstm_cell_100/BiasAddBiasAddlstm_349/lstm_cell_100/add:z:05lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_349/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_349/lstm_cell_100/splitSplit/lstm_349/lstm_cell_100/split/split_dim:output:0'lstm_349/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_349/lstm_cell_100/SigmoidSigmoid%lstm_349/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_349/lstm_cell_100/Sigmoid_1Sigmoid%lstm_349/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/mulMul$lstm_349/lstm_cell_100/Sigmoid_1:y:0lstm_349/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_349/lstm_cell_100/ReluRelu%lstm_349/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/mul_1Mul"lstm_349/lstm_cell_100/Sigmoid:y:0)lstm_349/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/add_1AddV2lstm_349/lstm_cell_100/mul:z:0 lstm_349/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_349/lstm_cell_100/Sigmoid_2Sigmoid%lstm_349/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_349/lstm_cell_100/Relu_1Relu lstm_349/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/mul_2Mul$lstm_349/lstm_cell_100/Sigmoid_2:y:0+lstm_349/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_349/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_349/TensorArrayV2_1TensorListReserve/lstm_349/TensorArrayV2_1/element_shape:output:0!lstm_349/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_349/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_349/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_349/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_349/whileWhile$lstm_349/while/loop_counter:output:0*lstm_349/while/maximum_iterations:output:0lstm_349/time:output:0!lstm_349/TensorArrayV2_1:handle:0lstm_349/zeros:output:0lstm_349/zeros_1:output:0!lstm_349/strided_slice_1:output:0@lstm_349/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_349_lstm_cell_100_matmul_readvariableop_resource7lstm_349_lstm_cell_100_matmul_1_readvariableop_resource6lstm_349_lstm_cell_100_biasadd_readvariableop_resource*
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
lstm_349_while_body_615046*&
condR
lstm_349_while_cond_615045*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_349/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_349/TensorArrayV2Stack/TensorListStackTensorListStacklstm_349/while:output:3Blstm_349/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_349/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_349/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_349/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_slice_3StridedSlice4lstm_349/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_349/strided_slice_3/stack:output:0)lstm_349/strided_slice_3/stack_1:output:0)lstm_349/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_349/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_349/transpose_1	Transpose4lstm_349/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_349/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_349/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_350/ShapeShapelstm_349/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_350/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_350/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_350/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_sliceStridedSlicelstm_350/Shape:output:0%lstm_350/strided_slice/stack:output:0'lstm_350/strided_slice/stack_1:output:0'lstm_350/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_350/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_350/zeros/packedPacklstm_350/strided_slice:output:0 lstm_350/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_350/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_350/zerosFilllstm_350/zeros/packed:output:0lstm_350/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_350/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_350/zeros_1/packedPacklstm_350/strided_slice:output:0"lstm_350/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_350/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_350/zeros_1Fill lstm_350/zeros_1/packed:output:0lstm_350/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_350/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_350/transpose	Transposelstm_349/transpose_1:y:0 lstm_350/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_350/Shape_1Shapelstm_350/transpose:y:0*
T0*
_output_shapes
:h
lstm_350/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_350/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_350/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_slice_1StridedSlicelstm_350/Shape_1:output:0'lstm_350/strided_slice_1/stack:output:0)lstm_350/strided_slice_1/stack_1:output:0)lstm_350/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_350/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_350/TensorArrayV2TensorListReserve-lstm_350/TensorArrayV2/element_shape:output:0!lstm_350/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_350/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_350/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_350/transpose:y:0Glstm_350/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_350/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_350/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_350/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_slice_2StridedSlicelstm_350/transpose:y:0'lstm_350/strided_slice_2/stack:output:0)lstm_350/strided_slice_2/stack_1:output:0)lstm_350/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_350/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp5lstm_350_lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_350/lstm_cell_101/MatMulMatMul!lstm_350/strided_slice_2:output:04lstm_350/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp7lstm_350_lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_350/lstm_cell_101/MatMul_1MatMullstm_350/zeros:output:06lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_350/lstm_cell_101/addAddV2'lstm_350/lstm_cell_101/MatMul:product:0)lstm_350/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp6lstm_350_lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_350/lstm_cell_101/BiasAddBiasAddlstm_350/lstm_cell_101/add:z:05lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_350/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_350/lstm_cell_101/splitSplit/lstm_350/lstm_cell_101/split/split_dim:output:0'lstm_350/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_350/lstm_cell_101/SigmoidSigmoid%lstm_350/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_350/lstm_cell_101/Sigmoid_1Sigmoid%lstm_350/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/mulMul$lstm_350/lstm_cell_101/Sigmoid_1:y:0lstm_350/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_350/lstm_cell_101/ReluRelu%lstm_350/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/mul_1Mul"lstm_350/lstm_cell_101/Sigmoid:y:0)lstm_350/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/add_1AddV2lstm_350/lstm_cell_101/mul:z:0 lstm_350/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_350/lstm_cell_101/Sigmoid_2Sigmoid%lstm_350/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_350/lstm_cell_101/Relu_1Relu lstm_350/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/mul_2Mul$lstm_350/lstm_cell_101/Sigmoid_2:y:0+lstm_350/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_350/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_350/TensorArrayV2_1TensorListReserve/lstm_350/TensorArrayV2_1/element_shape:output:0!lstm_350/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_350/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_350/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_350/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_350/whileWhile$lstm_350/while/loop_counter:output:0*lstm_350/while/maximum_iterations:output:0lstm_350/time:output:0!lstm_350/TensorArrayV2_1:handle:0lstm_350/zeros:output:0lstm_350/zeros_1:output:0!lstm_350/strided_slice_1:output:0@lstm_350/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_350_lstm_cell_101_matmul_readvariableop_resource7lstm_350_lstm_cell_101_matmul_1_readvariableop_resource6lstm_350_lstm_cell_101_biasadd_readvariableop_resource*
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
lstm_350_while_body_615185*&
condR
lstm_350_while_cond_615184*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_350/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_350/TensorArrayV2Stack/TensorListStackTensorListStacklstm_350/while:output:3Blstm_350/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_350/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_350/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_350/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_slice_3StridedSlice4lstm_350/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_350/strided_slice_3/stack:output:0)lstm_350/strided_slice_3/stack_1:output:0)lstm_350/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_350/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_350/transpose_1	Transpose4lstm_350/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_350/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_350/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_116/MatMul/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_116/MatMulMatMul!lstm_350/strided_slice_3:output:0'dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_116/BiasAdd/ReadVariableOpReadVariableOp)dense_116_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_116/BiasAddBiasAdddense_116/MatMul:product:0(dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_116/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_116/BiasAdd/ReadVariableOp ^dense_116/MatMul/ReadVariableOp-^lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp,^lstm_348/lstm_cell_99/MatMul/ReadVariableOp.^lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp^lstm_348/while.^lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp-^lstm_349/lstm_cell_100/MatMul/ReadVariableOp/^lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp^lstm_349/while.^lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp-^lstm_350/lstm_cell_101/MatMul/ReadVariableOp/^lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp^lstm_350/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_116/BiasAdd/ReadVariableOp dense_116/BiasAdd/ReadVariableOp2B
dense_116/MatMul/ReadVariableOpdense_116/MatMul/ReadVariableOp2\
,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp2Z
+lstm_348/lstm_cell_99/MatMul/ReadVariableOp+lstm_348/lstm_cell_99/MatMul/ReadVariableOp2^
-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp2 
lstm_348/whilelstm_348/while2^
-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp2\
,lstm_349/lstm_cell_100/MatMul/ReadVariableOp,lstm_349/lstm_cell_100/MatMul/ReadVariableOp2`
.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp2 
lstm_349/whilelstm_349/while2^
-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp2\
,lstm_350/lstm_cell_101/MatMul/ReadVariableOp,lstm_350/lstm_cell_101/MatMul/ReadVariableOp2`
.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp2 
lstm_350/whilelstm_350/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_350_layer_call_and_return_conditional_losses_613148

inputs&
lstm_cell_101_613066:2(&
lstm_cell_101_613068:
("
lstm_cell_101_613070:(
identity??%lstm_cell_101/StatefulPartitionedCall?while;
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
%lstm_cell_101/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_101_613066lstm_cell_101_613068lstm_cell_101_613070*
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_613020n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_101_613066lstm_cell_101_613068lstm_cell_101_613070*
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
while_body_613079*
condR
while_cond_613078*K
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
NoOpNoOp&^lstm_cell_101/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_101/StatefulPartitionedCall%lstm_cell_101/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
D__inference_lstm_349_layer_call_and_return_conditional_losses_616078
inputs_0?
,lstm_cell_100_matmul_readvariableop_resource:	d?A
.lstm_cell_100_matmul_1_readvariableop_resource:	2?<
-lstm_cell_100_biasadd_readvariableop_resource:	?
identity??$lstm_cell_100/BiasAdd/ReadVariableOp?#lstm_cell_100/MatMul/ReadVariableOp?%lstm_cell_100/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_100/MatMul/ReadVariableOpReadVariableOp,lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_100/MatMulMatMulstrided_slice_2:output:0+lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_100/MatMul_1MatMulzeros:output:0-lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_100/addAddV2lstm_cell_100/MatMul:product:0 lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_100/BiasAddBiasAddlstm_cell_100/add:z:0,lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_100/splitSplit&lstm_cell_100/split/split_dim:output:0lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_100/SigmoidSigmoidlstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_1Sigmoidlstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_100/mulMullstm_cell_100/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_100/ReluRelulstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_1Mullstm_cell_100/Sigmoid:y:0 lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_100/add_1AddV2lstm_cell_100/mul:z:0lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_100/Sigmoid_2Sigmoidlstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_100/Relu_1Relulstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_100/mul_2Mullstm_cell_100/Sigmoid_2:y:0"lstm_cell_100/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_100_matmul_readvariableop_resource.lstm_cell_100_matmul_1_readvariableop_resource-lstm_cell_100_biasadd_readvariableop_resource*
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
while_body_615994*
condR
while_cond_615993*K
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
NoOpNoOp%^lstm_cell_100/BiasAdd/ReadVariableOp$^lstm_cell_100/MatMul/ReadVariableOp&^lstm_cell_100/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_100/BiasAdd/ReadVariableOp$lstm_cell_100/BiasAdd/ReadVariableOp2J
#lstm_cell_100/MatMul/ReadVariableOp#lstm_cell_100/MatMul/ReadVariableOp2N
%lstm_cell_100/MatMul_1/ReadVariableOp%lstm_cell_100/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_348_while_cond_614479.
*lstm_348_while_lstm_348_while_loop_counter4
0lstm_348_while_lstm_348_while_maximum_iterations
lstm_348_while_placeholder 
lstm_348_while_placeholder_1 
lstm_348_while_placeholder_2 
lstm_348_while_placeholder_30
,lstm_348_while_less_lstm_348_strided_slice_1F
Blstm_348_while_lstm_348_while_cond_614479___redundant_placeholder0F
Blstm_348_while_lstm_348_while_cond_614479___redundant_placeholder1F
Blstm_348_while_lstm_348_while_cond_614479___redundant_placeholder2F
Blstm_348_while_lstm_348_while_cond_614479___redundant_placeholder3
lstm_348_while_identity
?
lstm_348/while/LessLesslstm_348_while_placeholder,lstm_348_while_less_lstm_348_strided_slice_1*
T0*
_output_shapes
: ]
lstm_348/while/IdentityIdentitylstm_348/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_348_while_identity lstm_348/while/Identity:output:0*(
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
while_body_612188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_99_612212_0:	?.
while_lstm_cell_99_612214_0:	d?*
while_lstm_cell_99_612216_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_99_612212:	?,
while_lstm_cell_99_612214:	d?(
while_lstm_cell_99_612216:	???*while/lstm_cell_99/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
*while/lstm_cell_99/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_99_612212_0while_lstm_cell_99_612214_0while_lstm_cell_99_612216_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612174?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_99/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_99/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity3while/lstm_cell_99/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dy

while/NoOpNoOp+^while/lstm_cell_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_99_612212while_lstm_cell_99_612212_0"8
while_lstm_cell_99_612214while_lstm_cell_99_612214_0"8
while_lstm_cell_99_612216while_lstm_cell_99_612216_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_99/StatefulPartitionedCall*while/lstm_cell_99/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_350_layer_call_fn_616529
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613148o
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
while_cond_612537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_612537___redundant_placeholder04
0while_while_cond_612537___redundant_placeholder14
0while_while_cond_612537___redundant_placeholder24
0while_while_cond_612537___redundant_placeholder3
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
)sequential_116_lstm_348_while_cond_611738L
Hsequential_116_lstm_348_while_sequential_116_lstm_348_while_loop_counterR
Nsequential_116_lstm_348_while_sequential_116_lstm_348_while_maximum_iterations-
)sequential_116_lstm_348_while_placeholder/
+sequential_116_lstm_348_while_placeholder_1/
+sequential_116_lstm_348_while_placeholder_2/
+sequential_116_lstm_348_while_placeholder_3N
Jsequential_116_lstm_348_while_less_sequential_116_lstm_348_strided_slice_1d
`sequential_116_lstm_348_while_sequential_116_lstm_348_while_cond_611738___redundant_placeholder0d
`sequential_116_lstm_348_while_sequential_116_lstm_348_while_cond_611738___redundant_placeholder1d
`sequential_116_lstm_348_while_sequential_116_lstm_348_while_cond_611738___redundant_placeholder2d
`sequential_116_lstm_348_while_sequential_116_lstm_348_while_cond_611738___redundant_placeholder3*
&sequential_116_lstm_348_while_identity
?
"sequential_116/lstm_348/while/LessLess)sequential_116_lstm_348_while_placeholderJsequential_116_lstm_348_while_less_sequential_116_lstm_348_strided_slice_1*
T0*
_output_shapes
: {
&sequential_116/lstm_348/while/IdentityIdentity&sequential_116/lstm_348/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_116_lstm_348_while_identity/sequential_116/lstm_348/while/Identity:output:0*(
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
)__inference_lstm_348_layer_call_fn_615297
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_612448|
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
?J
?
D__inference_lstm_348_layer_call_and_return_conditional_losses_614152

inputs>
+lstm_cell_99_matmul_readvariableop_resource:	?@
-lstm_cell_99_matmul_1_readvariableop_resource:	d?;
,lstm_cell_99_biasadd_readvariableop_resource:	?
identity??#lstm_cell_99/BiasAdd/ReadVariableOp?"lstm_cell_99/MatMul/ReadVariableOp?$lstm_cell_99/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_99/MatMul/ReadVariableOpReadVariableOp+lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_99/MatMulMatMulstrided_slice_2:output:0*lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_99/MatMul_1MatMulzeros:output:0,lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_99/addAddV2lstm_cell_99/MatMul:product:0lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_99/BiasAddBiasAddlstm_cell_99/add:z:0+lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_99/splitSplit%lstm_cell_99/split/split_dim:output:0lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_99/SigmoidSigmoidlstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_1Sigmoidlstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_99/mulMullstm_cell_99/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_99/ReluRelulstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_1Mullstm_cell_99/Sigmoid:y:0lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_99/add_1AddV2lstm_cell_99/mul:z:0lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_99/Sigmoid_2Sigmoidlstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_99/Relu_1Relulstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_99/mul_2Mullstm_cell_99/Sigmoid_2:y:0!lstm_cell_99/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_99_matmul_readvariableop_resource-lstm_cell_99_matmul_1_readvariableop_resource,lstm_cell_99_biasadd_readvariableop_resource*
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
while_body_614068*
condR
while_cond_614067*K
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
NoOpNoOp$^lstm_cell_99/BiasAdd/ReadVariableOp#^lstm_cell_99/MatMul/ReadVariableOp%^lstm_cell_99/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_99/BiasAdd/ReadVariableOp#lstm_cell_99/BiasAdd/ReadVariableOp2H
"lstm_cell_99/MatMul/ReadVariableOp"lstm_cell_99/MatMul/ReadVariableOp2L
$lstm_cell_99/MatMul_1/ReadVariableOp$lstm_cell_99/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_349_layer_call_fn_615924

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
D__inference_lstm_349_layer_call_and_return_conditional_losses_613456s
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
?
?
)__inference_lstm_350_layer_call_fn_616551

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
D__inference_lstm_350_layer_call_and_return_conditional_losses_613822o
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_617338

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
.__inference_lstm_cell_100_layer_call_fn_617257

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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_612524o
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_614848

inputsG
4lstm_348_lstm_cell_99_matmul_readvariableop_resource:	?I
6lstm_348_lstm_cell_99_matmul_1_readvariableop_resource:	d?D
5lstm_348_lstm_cell_99_biasadd_readvariableop_resource:	?H
5lstm_349_lstm_cell_100_matmul_readvariableop_resource:	d?J
7lstm_349_lstm_cell_100_matmul_1_readvariableop_resource:	2?E
6lstm_349_lstm_cell_100_biasadd_readvariableop_resource:	?G
5lstm_350_lstm_cell_101_matmul_readvariableop_resource:2(I
7lstm_350_lstm_cell_101_matmul_1_readvariableop_resource:
(D
6lstm_350_lstm_cell_101_biasadd_readvariableop_resource:(:
(dense_116_matmul_readvariableop_resource:
7
)dense_116_biasadd_readvariableop_resource:
identity?? dense_116/BiasAdd/ReadVariableOp?dense_116/MatMul/ReadVariableOp?,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp?+lstm_348/lstm_cell_99/MatMul/ReadVariableOp?-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp?lstm_348/while?-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp?,lstm_349/lstm_cell_100/MatMul/ReadVariableOp?.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp?lstm_349/while?-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp?,lstm_350/lstm_cell_101/MatMul/ReadVariableOp?.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp?lstm_350/whileD
lstm_348/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_348/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_348/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_348/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_sliceStridedSlicelstm_348/Shape:output:0%lstm_348/strided_slice/stack:output:0'lstm_348/strided_slice/stack_1:output:0'lstm_348/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_348/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_348/zeros/packedPacklstm_348/strided_slice:output:0 lstm_348/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_348/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_348/zerosFilllstm_348/zeros/packed:output:0lstm_348/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_348/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_348/zeros_1/packedPacklstm_348/strided_slice:output:0"lstm_348/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_348/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_348/zeros_1Fill lstm_348/zeros_1/packed:output:0lstm_348/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_348/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_348/transpose	Transposeinputs lstm_348/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_348/Shape_1Shapelstm_348/transpose:y:0*
T0*
_output_shapes
:h
lstm_348/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_348/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_348/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_slice_1StridedSlicelstm_348/Shape_1:output:0'lstm_348/strided_slice_1/stack:output:0)lstm_348/strided_slice_1/stack_1:output:0)lstm_348/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_348/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_348/TensorArrayV2TensorListReserve-lstm_348/TensorArrayV2/element_shape:output:0!lstm_348/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_348/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_348/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_348/transpose:y:0Glstm_348/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_348/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_348/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_348/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_slice_2StridedSlicelstm_348/transpose:y:0'lstm_348/strided_slice_2/stack:output:0)lstm_348/strided_slice_2/stack_1:output:0)lstm_348/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
+lstm_348/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp4lstm_348_lstm_cell_99_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_348/lstm_cell_99/MatMulMatMul!lstm_348/strided_slice_2:output:03lstm_348/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp6lstm_348_lstm_cell_99_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_348/lstm_cell_99/MatMul_1MatMullstm_348/zeros:output:05lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_348/lstm_cell_99/addAddV2&lstm_348/lstm_cell_99/MatMul:product:0(lstm_348/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp5lstm_348_lstm_cell_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_348/lstm_cell_99/BiasAddBiasAddlstm_348/lstm_cell_99/add:z:04lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%lstm_348/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_348/lstm_cell_99/splitSplit.lstm_348/lstm_cell_99/split/split_dim:output:0&lstm_348/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_348/lstm_cell_99/SigmoidSigmoid$lstm_348/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/Sigmoid_1Sigmoid$lstm_348/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/mulMul#lstm_348/lstm_cell_99/Sigmoid_1:y:0lstm_348/zeros_1:output:0*
T0*'
_output_shapes
:?????????dz
lstm_348/lstm_cell_99/ReluRelu$lstm_348/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/mul_1Mul!lstm_348/lstm_cell_99/Sigmoid:y:0(lstm_348/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/add_1AddV2lstm_348/lstm_cell_99/mul:z:0lstm_348/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/Sigmoid_2Sigmoid$lstm_348/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????dw
lstm_348/lstm_cell_99/Relu_1Relulstm_348/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_348/lstm_cell_99/mul_2Mul#lstm_348/lstm_cell_99/Sigmoid_2:y:0*lstm_348/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_348/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_348/TensorArrayV2_1TensorListReserve/lstm_348/TensorArrayV2_1/element_shape:output:0!lstm_348/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_348/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_348/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_348/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_348/whileWhile$lstm_348/while/loop_counter:output:0*lstm_348/while/maximum_iterations:output:0lstm_348/time:output:0!lstm_348/TensorArrayV2_1:handle:0lstm_348/zeros:output:0lstm_348/zeros_1:output:0!lstm_348/strided_slice_1:output:0@lstm_348/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_348_lstm_cell_99_matmul_readvariableop_resource6lstm_348_lstm_cell_99_matmul_1_readvariableop_resource5lstm_348_lstm_cell_99_biasadd_readvariableop_resource*
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
lstm_348_while_body_614480*&
condR
lstm_348_while_cond_614479*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_348/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_348/TensorArrayV2Stack/TensorListStackTensorListStacklstm_348/while:output:3Blstm_348/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_348/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_348/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_348/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_348/strided_slice_3StridedSlice4lstm_348/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_348/strided_slice_3/stack:output:0)lstm_348/strided_slice_3/stack_1:output:0)lstm_348/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_348/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_348/transpose_1	Transpose4lstm_348/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_348/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_348/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_349/ShapeShapelstm_348/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_349/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_349/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_349/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_sliceStridedSlicelstm_349/Shape:output:0%lstm_349/strided_slice/stack:output:0'lstm_349/strided_slice/stack_1:output:0'lstm_349/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_349/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_349/zeros/packedPacklstm_349/strided_slice:output:0 lstm_349/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_349/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_349/zerosFilllstm_349/zeros/packed:output:0lstm_349/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_349/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_349/zeros_1/packedPacklstm_349/strided_slice:output:0"lstm_349/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_349/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_349/zeros_1Fill lstm_349/zeros_1/packed:output:0lstm_349/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_349/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_349/transpose	Transposelstm_348/transpose_1:y:0 lstm_349/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_349/Shape_1Shapelstm_349/transpose:y:0*
T0*
_output_shapes
:h
lstm_349/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_349/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_349/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_slice_1StridedSlicelstm_349/Shape_1:output:0'lstm_349/strided_slice_1/stack:output:0)lstm_349/strided_slice_1/stack_1:output:0)lstm_349/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_349/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_349/TensorArrayV2TensorListReserve-lstm_349/TensorArrayV2/element_shape:output:0!lstm_349/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_349/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_349/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_349/transpose:y:0Glstm_349/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_349/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_349/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_349/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_slice_2StridedSlicelstm_349/transpose:y:0'lstm_349/strided_slice_2/stack:output:0)lstm_349/strided_slice_2/stack_1:output:0)lstm_349/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_349/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp5lstm_349_lstm_cell_100_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_349/lstm_cell_100/MatMulMatMul!lstm_349/strided_slice_2:output:04lstm_349/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp7lstm_349_lstm_cell_100_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_349/lstm_cell_100/MatMul_1MatMullstm_349/zeros:output:06lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_349/lstm_cell_100/addAddV2'lstm_349/lstm_cell_100/MatMul:product:0)lstm_349/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp6lstm_349_lstm_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_349/lstm_cell_100/BiasAddBiasAddlstm_349/lstm_cell_100/add:z:05lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_349/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_349/lstm_cell_100/splitSplit/lstm_349/lstm_cell_100/split/split_dim:output:0'lstm_349/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_349/lstm_cell_100/SigmoidSigmoid%lstm_349/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_349/lstm_cell_100/Sigmoid_1Sigmoid%lstm_349/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/mulMul$lstm_349/lstm_cell_100/Sigmoid_1:y:0lstm_349/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_349/lstm_cell_100/ReluRelu%lstm_349/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/mul_1Mul"lstm_349/lstm_cell_100/Sigmoid:y:0)lstm_349/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/add_1AddV2lstm_349/lstm_cell_100/mul:z:0 lstm_349/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_349/lstm_cell_100/Sigmoid_2Sigmoid%lstm_349/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_349/lstm_cell_100/Relu_1Relu lstm_349/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_349/lstm_cell_100/mul_2Mul$lstm_349/lstm_cell_100/Sigmoid_2:y:0+lstm_349/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_349/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_349/TensorArrayV2_1TensorListReserve/lstm_349/TensorArrayV2_1/element_shape:output:0!lstm_349/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_349/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_349/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_349/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_349/whileWhile$lstm_349/while/loop_counter:output:0*lstm_349/while/maximum_iterations:output:0lstm_349/time:output:0!lstm_349/TensorArrayV2_1:handle:0lstm_349/zeros:output:0lstm_349/zeros_1:output:0!lstm_349/strided_slice_1:output:0@lstm_349/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_349_lstm_cell_100_matmul_readvariableop_resource7lstm_349_lstm_cell_100_matmul_1_readvariableop_resource6lstm_349_lstm_cell_100_biasadd_readvariableop_resource*
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
lstm_349_while_body_614619*&
condR
lstm_349_while_cond_614618*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_349/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_349/TensorArrayV2Stack/TensorListStackTensorListStacklstm_349/while:output:3Blstm_349/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_349/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_349/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_349/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_349/strided_slice_3StridedSlice4lstm_349/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_349/strided_slice_3/stack:output:0)lstm_349/strided_slice_3/stack_1:output:0)lstm_349/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_349/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_349/transpose_1	Transpose4lstm_349/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_349/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_349/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_350/ShapeShapelstm_349/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_350/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_350/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_350/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_sliceStridedSlicelstm_350/Shape:output:0%lstm_350/strided_slice/stack:output:0'lstm_350/strided_slice/stack_1:output:0'lstm_350/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_350/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_350/zeros/packedPacklstm_350/strided_slice:output:0 lstm_350/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_350/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_350/zerosFilllstm_350/zeros/packed:output:0lstm_350/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_350/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_350/zeros_1/packedPacklstm_350/strided_slice:output:0"lstm_350/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_350/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_350/zeros_1Fill lstm_350/zeros_1/packed:output:0lstm_350/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_350/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_350/transpose	Transposelstm_349/transpose_1:y:0 lstm_350/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_350/Shape_1Shapelstm_350/transpose:y:0*
T0*
_output_shapes
:h
lstm_350/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_350/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_350/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_slice_1StridedSlicelstm_350/Shape_1:output:0'lstm_350/strided_slice_1/stack:output:0)lstm_350/strided_slice_1/stack_1:output:0)lstm_350/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_350/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_350/TensorArrayV2TensorListReserve-lstm_350/TensorArrayV2/element_shape:output:0!lstm_350/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_350/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_350/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_350/transpose:y:0Glstm_350/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_350/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_350/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_350/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_slice_2StridedSlicelstm_350/transpose:y:0'lstm_350/strided_slice_2/stack:output:0)lstm_350/strided_slice_2/stack_1:output:0)lstm_350/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_350/lstm_cell_101/MatMul/ReadVariableOpReadVariableOp5lstm_350_lstm_cell_101_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_350/lstm_cell_101/MatMulMatMul!lstm_350/strided_slice_2:output:04lstm_350/lstm_cell_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOpReadVariableOp7lstm_350_lstm_cell_101_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_350/lstm_cell_101/MatMul_1MatMullstm_350/zeros:output:06lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_350/lstm_cell_101/addAddV2'lstm_350/lstm_cell_101/MatMul:product:0)lstm_350/lstm_cell_101/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOpReadVariableOp6lstm_350_lstm_cell_101_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_350/lstm_cell_101/BiasAddBiasAddlstm_350/lstm_cell_101/add:z:05lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_350/lstm_cell_101/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_350/lstm_cell_101/splitSplit/lstm_350/lstm_cell_101/split/split_dim:output:0'lstm_350/lstm_cell_101/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_350/lstm_cell_101/SigmoidSigmoid%lstm_350/lstm_cell_101/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_350/lstm_cell_101/Sigmoid_1Sigmoid%lstm_350/lstm_cell_101/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/mulMul$lstm_350/lstm_cell_101/Sigmoid_1:y:0lstm_350/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_350/lstm_cell_101/ReluRelu%lstm_350/lstm_cell_101/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/mul_1Mul"lstm_350/lstm_cell_101/Sigmoid:y:0)lstm_350/lstm_cell_101/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/add_1AddV2lstm_350/lstm_cell_101/mul:z:0 lstm_350/lstm_cell_101/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_350/lstm_cell_101/Sigmoid_2Sigmoid%lstm_350/lstm_cell_101/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_350/lstm_cell_101/Relu_1Relu lstm_350/lstm_cell_101/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_350/lstm_cell_101/mul_2Mul$lstm_350/lstm_cell_101/Sigmoid_2:y:0+lstm_350/lstm_cell_101/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_350/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_350/TensorArrayV2_1TensorListReserve/lstm_350/TensorArrayV2_1/element_shape:output:0!lstm_350/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_350/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_350/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_350/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_350/whileWhile$lstm_350/while/loop_counter:output:0*lstm_350/while/maximum_iterations:output:0lstm_350/time:output:0!lstm_350/TensorArrayV2_1:handle:0lstm_350/zeros:output:0lstm_350/zeros_1:output:0!lstm_350/strided_slice_1:output:0@lstm_350/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_350_lstm_cell_101_matmul_readvariableop_resource7lstm_350_lstm_cell_101_matmul_1_readvariableop_resource6lstm_350_lstm_cell_101_biasadd_readvariableop_resource*
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
lstm_350_while_body_614758*&
condR
lstm_350_while_cond_614757*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_350/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_350/TensorArrayV2Stack/TensorListStackTensorListStacklstm_350/while:output:3Blstm_350/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_350/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_350/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_350/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_350/strided_slice_3StridedSlice4lstm_350/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_350/strided_slice_3/stack:output:0)lstm_350/strided_slice_3/stack_1:output:0)lstm_350/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_350/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_350/transpose_1	Transpose4lstm_350/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_350/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_350/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_116/MatMul/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_116/MatMulMatMul!lstm_350/strided_slice_3:output:0'dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_116/BiasAdd/ReadVariableOpReadVariableOp)dense_116_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_116/BiasAddBiasAdddense_116/MatMul:product:0(dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_116/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_116/BiasAdd/ReadVariableOp ^dense_116/MatMul/ReadVariableOp-^lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp,^lstm_348/lstm_cell_99/MatMul/ReadVariableOp.^lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp^lstm_348/while.^lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp-^lstm_349/lstm_cell_100/MatMul/ReadVariableOp/^lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp^lstm_349/while.^lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp-^lstm_350/lstm_cell_101/MatMul/ReadVariableOp/^lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp^lstm_350/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_116/BiasAdd/ReadVariableOp dense_116/BiasAdd/ReadVariableOp2B
dense_116/MatMul/ReadVariableOpdense_116/MatMul/ReadVariableOp2\
,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp,lstm_348/lstm_cell_99/BiasAdd/ReadVariableOp2Z
+lstm_348/lstm_cell_99/MatMul/ReadVariableOp+lstm_348/lstm_cell_99/MatMul/ReadVariableOp2^
-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp-lstm_348/lstm_cell_99/MatMul_1/ReadVariableOp2 
lstm_348/whilelstm_348/while2^
-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp-lstm_349/lstm_cell_100/BiasAdd/ReadVariableOp2\
,lstm_349/lstm_cell_100/MatMul/ReadVariableOp,lstm_349/lstm_cell_100/MatMul/ReadVariableOp2`
.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp.lstm_349/lstm_cell_100/MatMul_1/ReadVariableOp2 
lstm_349/whilelstm_349/while2^
-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp-lstm_350/lstm_cell_101/BiasAdd/ReadVariableOp2\
,lstm_350/lstm_cell_101/MatMul/ReadVariableOp,lstm_350/lstm_cell_101/MatMul/ReadVariableOp2`
.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp.lstm_350/lstm_cell_101/MatMul_1/ReadVariableOp2 
lstm_350/whilelstm_350/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_99_layer_call_fn_617159

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612174o
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
?B
?

lstm_348_while_body_614907.
*lstm_348_while_lstm_348_while_loop_counter4
0lstm_348_while_lstm_348_while_maximum_iterations
lstm_348_while_placeholder 
lstm_348_while_placeholder_1 
lstm_348_while_placeholder_2 
lstm_348_while_placeholder_3-
)lstm_348_while_lstm_348_strided_slice_1_0i
elstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0:	?Q
>lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0:	d?L
=lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0:	?
lstm_348_while_identity
lstm_348_while_identity_1
lstm_348_while_identity_2
lstm_348_while_identity_3
lstm_348_while_identity_4
lstm_348_while_identity_5+
'lstm_348_while_lstm_348_strided_slice_1g
clstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensorM
:lstm_348_while_lstm_cell_99_matmul_readvariableop_resource:	?O
<lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource:	d?J
;lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource:	???2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp?1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp?3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp?
@lstm_348/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_348/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensor_0lstm_348_while_placeholderIlstm_348/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOpReadVariableOp<lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
"lstm_348/while/lstm_cell_99/MatMulMatMul9lstm_348/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOpReadVariableOp>lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
$lstm_348/while/lstm_cell_99/MatMul_1MatMullstm_348_while_placeholder_2;lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_348/while/lstm_cell_99/addAddV2,lstm_348/while/lstm_cell_99/MatMul:product:0.lstm_348/while/lstm_cell_99/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOpReadVariableOp=lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#lstm_348/while/lstm_cell_99/BiasAddBiasAdd#lstm_348/while/lstm_cell_99/add:z:0:lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
+lstm_348/while/lstm_cell_99/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
!lstm_348/while/lstm_cell_99/splitSplit4lstm_348/while/lstm_cell_99/split/split_dim:output:0,lstm_348/while/lstm_cell_99/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
#lstm_348/while/lstm_cell_99/SigmoidSigmoid*lstm_348/while/lstm_cell_99/split:output:0*
T0*'
_output_shapes
:?????????d?
%lstm_348/while/lstm_cell_99/Sigmoid_1Sigmoid*lstm_348/while/lstm_cell_99/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_348/while/lstm_cell_99/mulMul)lstm_348/while/lstm_cell_99/Sigmoid_1:y:0lstm_348_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
 lstm_348/while/lstm_cell_99/ReluRelu*lstm_348/while/lstm_cell_99/split:output:2*
T0*'
_output_shapes
:?????????d?
!lstm_348/while/lstm_cell_99/mul_1Mul'lstm_348/while/lstm_cell_99/Sigmoid:y:0.lstm_348/while/lstm_cell_99/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
!lstm_348/while/lstm_cell_99/add_1AddV2#lstm_348/while/lstm_cell_99/mul:z:0%lstm_348/while/lstm_cell_99/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
%lstm_348/while/lstm_cell_99/Sigmoid_2Sigmoid*lstm_348/while/lstm_cell_99/split:output:3*
T0*'
_output_shapes
:?????????d?
"lstm_348/while/lstm_cell_99/Relu_1Relu%lstm_348/while/lstm_cell_99/add_1:z:0*
T0*'
_output_shapes
:?????????d?
!lstm_348/while/lstm_cell_99/mul_2Mul)lstm_348/while/lstm_cell_99/Sigmoid_2:y:00lstm_348/while/lstm_cell_99/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_348/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_348_while_placeholder_1lstm_348_while_placeholder%lstm_348/while/lstm_cell_99/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_348/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_348/while/addAddV2lstm_348_while_placeholderlstm_348/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_348/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_348/while/add_1AddV2*lstm_348_while_lstm_348_while_loop_counterlstm_348/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_348/while/IdentityIdentitylstm_348/while/add_1:z:0^lstm_348/while/NoOp*
T0*
_output_shapes
: ?
lstm_348/while/Identity_1Identity0lstm_348_while_lstm_348_while_maximum_iterations^lstm_348/while/NoOp*
T0*
_output_shapes
: t
lstm_348/while/Identity_2Identitylstm_348/while/add:z:0^lstm_348/while/NoOp*
T0*
_output_shapes
: ?
lstm_348/while/Identity_3IdentityClstm_348/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_348/while/NoOp*
T0*
_output_shapes
: ?
lstm_348/while/Identity_4Identity%lstm_348/while/lstm_cell_99/mul_2:z:0^lstm_348/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_348/while/Identity_5Identity%lstm_348/while/lstm_cell_99/add_1:z:0^lstm_348/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_348/while/NoOpNoOp3^lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp2^lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp4^lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_348_while_identity lstm_348/while/Identity:output:0"?
lstm_348_while_identity_1"lstm_348/while/Identity_1:output:0"?
lstm_348_while_identity_2"lstm_348/while/Identity_2:output:0"?
lstm_348_while_identity_3"lstm_348/while/Identity_3:output:0"?
lstm_348_while_identity_4"lstm_348/while/Identity_4:output:0"?
lstm_348_while_identity_5"lstm_348/while/Identity_5:output:0"T
'lstm_348_while_lstm_348_strided_slice_1)lstm_348_while_lstm_348_strided_slice_1_0"|
;lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource=lstm_348_while_lstm_cell_99_biasadd_readvariableop_resource_0"~
<lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource>lstm_348_while_lstm_cell_99_matmul_1_readvariableop_resource_0"z
:lstm_348_while_lstm_cell_99_matmul_readvariableop_resource<lstm_348_while_lstm_cell_99_matmul_readvariableop_resource_0"?
clstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensorelstm_348_while_tensorarrayv2read_tensorlistgetitem_lstm_348_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2h
2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp2lstm_348/while/lstm_cell_99/BiasAdd/ReadVariableOp2f
1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp1lstm_348/while/lstm_cell_99/MatMul/ReadVariableOp2j
3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp3lstm_348/while/lstm_cell_99/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_613372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_100_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_100_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_100_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_100_matmul_readvariableop_resource:	d?G
4while_lstm_cell_100_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_100_biasadd_readvariableop_resource:	???*while/lstm_cell_100/BiasAdd/ReadVariableOp?)while/lstm_cell_100/MatMul/ReadVariableOp?+while/lstm_cell_100/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_100/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_100/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_100_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_100/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_100/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_100/addAddV2$while/lstm_cell_100/MatMul:product:0&while/lstm_cell_100/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_100/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_100/BiasAddBiasAddwhile/lstm_cell_100/add:z:02while/lstm_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_100/splitSplit,while/lstm_cell_100/split/split_dim:output:0$while/lstm_cell_100/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_100/SigmoidSigmoid"while/lstm_cell_100/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_1Sigmoid"while/lstm_cell_100/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mulMul!while/lstm_cell_100/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_100/ReluRelu"while/lstm_cell_100/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_1Mulwhile/lstm_cell_100/Sigmoid:y:0&while/lstm_cell_100/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/add_1AddV2while/lstm_cell_100/mul:z:0while/lstm_cell_100/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_100/Sigmoid_2Sigmoid"while/lstm_cell_100/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_100/Relu_1Reluwhile/lstm_cell_100/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_100/mul_2Mul!while/lstm_cell_100/Sigmoid_2:y:0(while/lstm_cell_100/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_100/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_100/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_100/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_100/BiasAdd/ReadVariableOp*^while/lstm_cell_100/MatMul/ReadVariableOp,^while/lstm_cell_100/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_100_biasadd_readvariableop_resource5while_lstm_cell_100_biasadd_readvariableop_resource_0"n
4while_lstm_cell_100_matmul_1_readvariableop_resource6while_lstm_cell_100_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_100_matmul_readvariableop_resource4while_lstm_cell_100_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_100/BiasAdd/ReadVariableOp*while/lstm_cell_100/BiasAdd/ReadVariableOp2V
)while/lstm_cell_100/MatMul/ReadVariableOp)while/lstm_cell_100/MatMul/ReadVariableOp2Z
+while/lstm_cell_100/MatMul_1/ReadVariableOp+while/lstm_cell_100/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_612379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_99_612403_0:	?.
while_lstm_cell_99_612405_0:	d?*
while_lstm_cell_99_612407_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_99_612403:	?,
while_lstm_cell_99_612405:	d?(
while_lstm_cell_99_612407:	???*while/lstm_cell_99/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
*while/lstm_cell_99/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_99_612403_0while_lstm_cell_99_612405_0while_lstm_cell_99_612407_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_612320?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_99/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_99/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity3while/lstm_cell_99/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dy

while/NoOpNoOp+^while/lstm_cell_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_99_612403while_lstm_cell_99_612403_0"8
while_lstm_cell_99_612405while_lstm_cell_99_612405_0"8
while_lstm_cell_99_612407while_lstm_cell_99_612407_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_99/StatefulPartitionedCall*while/lstm_cell_99/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_348_input;
 serving_default_lstm_348_input:0?????????=
	dense_1160
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
2dense_116/kernel
:2dense_116/bias
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
0:.	?2lstm_348/lstm_cell_348/kernel
::8	d?2'lstm_348/lstm_cell_348/recurrent_kernel
*:(?2lstm_348/lstm_cell_348/bias
0:.	d?2lstm_349/lstm_cell_349/kernel
::8	2?2'lstm_349/lstm_cell_349/recurrent_kernel
*:(?2lstm_349/lstm_cell_349/bias
/:-2(2lstm_350/lstm_cell_350/kernel
9:7
(2'lstm_350/lstm_cell_350/recurrent_kernel
):'(2lstm_350/lstm_cell_350/bias
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
2Adam/dense_116/kernel/m
!:2Adam/dense_116/bias/m
5:3	?2$Adam/lstm_348/lstm_cell_348/kernel/m
?:=	d?2.Adam/lstm_348/lstm_cell_348/recurrent_kernel/m
/:-?2"Adam/lstm_348/lstm_cell_348/bias/m
5:3	d?2$Adam/lstm_349/lstm_cell_349/kernel/m
?:=	2?2.Adam/lstm_349/lstm_cell_349/recurrent_kernel/m
/:-?2"Adam/lstm_349/lstm_cell_349/bias/m
4:22(2$Adam/lstm_350/lstm_cell_350/kernel/m
>:<
(2.Adam/lstm_350/lstm_cell_350/recurrent_kernel/m
.:,(2"Adam/lstm_350/lstm_cell_350/bias/m
':%
2Adam/dense_116/kernel/v
!:2Adam/dense_116/bias/v
5:3	?2$Adam/lstm_348/lstm_cell_348/kernel/v
?:=	d?2.Adam/lstm_348/lstm_cell_348/recurrent_kernel/v
/:-?2"Adam/lstm_348/lstm_cell_348/bias/v
5:3	d?2$Adam/lstm_349/lstm_cell_349/kernel/v
?:=	2?2.Adam/lstm_349/lstm_cell_349/recurrent_kernel/v
/:-?2"Adam/lstm_349/lstm_cell_349/bias/v
4:22(2$Adam/lstm_350/lstm_cell_350/kernel/v
>:<
(2.Adam/lstm_350/lstm_cell_350/recurrent_kernel/v
.:,(2"Adam/lstm_350/lstm_cell_350/bias/v
?2?
/__inference_sequential_116_layer_call_fn_613656
/__inference_sequential_116_layer_call_fn_614394
/__inference_sequential_116_layer_call_fn_614421
/__inference_sequential_116_layer_call_fn_614272?
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_614848
J__inference_sequential_116_layer_call_and_return_conditional_losses_615275
J__inference_sequential_116_layer_call_and_return_conditional_losses_614302
J__inference_sequential_116_layer_call_and_return_conditional_losses_614332?
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
!__inference__wrapped_model_612107lstm_348_input"?
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
)__inference_lstm_348_layer_call_fn_615286
)__inference_lstm_348_layer_call_fn_615297
)__inference_lstm_348_layer_call_fn_615308
)__inference_lstm_348_layer_call_fn_615319?
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_615462
D__inference_lstm_348_layer_call_and_return_conditional_losses_615605
D__inference_lstm_348_layer_call_and_return_conditional_losses_615748
D__inference_lstm_348_layer_call_and_return_conditional_losses_615891?
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
)__inference_lstm_349_layer_call_fn_615902
)__inference_lstm_349_layer_call_fn_615913
)__inference_lstm_349_layer_call_fn_615924
)__inference_lstm_349_layer_call_fn_615935?
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_616078
D__inference_lstm_349_layer_call_and_return_conditional_losses_616221
D__inference_lstm_349_layer_call_and_return_conditional_losses_616364
D__inference_lstm_349_layer_call_and_return_conditional_losses_616507?
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
)__inference_lstm_350_layer_call_fn_616518
)__inference_lstm_350_layer_call_fn_616529
)__inference_lstm_350_layer_call_fn_616540
)__inference_lstm_350_layer_call_fn_616551?
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_616694
D__inference_lstm_350_layer_call_and_return_conditional_losses_616837
D__inference_lstm_350_layer_call_and_return_conditional_losses_616980
D__inference_lstm_350_layer_call_and_return_conditional_losses_617123?
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
*__inference_dense_116_layer_call_fn_617132?
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
E__inference_dense_116_layer_call_and_return_conditional_losses_617142?
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
$__inference_signature_wrapper_614367lstm_348_input"?
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
-__inference_lstm_cell_99_layer_call_fn_617159
-__inference_lstm_cell_99_layer_call_fn_617176?
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
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_617208
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_617240?
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
.__inference_lstm_cell_100_layer_call_fn_617257
.__inference_lstm_cell_100_layer_call_fn_617274?
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_617306
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_617338?
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
.__inference_lstm_cell_101_layer_call_fn_617355
.__inference_lstm_cell_101_layer_call_fn_617372?
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_617404
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_617436?
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
!__inference__wrapped_model_612107?-./012345!";?8
1?.
,?)
lstm_348_input?????????
? "5?2
0
	dense_116#? 
	dense_116??????????
E__inference_dense_116_layer_call_and_return_conditional_losses_617142\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_116_layer_call_fn_617132O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_348_layer_call_and_return_conditional_losses_615462?-./O?L
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_615605?-./O?L
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_615748q-./??<
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
D__inference_lstm_348_layer_call_and_return_conditional_losses_615891q-./??<
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
)__inference_lstm_348_layer_call_fn_615286}-./O?L
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
)__inference_lstm_348_layer_call_fn_615297}-./O?L
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
)__inference_lstm_348_layer_call_fn_615308d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_348_layer_call_fn_615319d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_349_layer_call_and_return_conditional_losses_616078?012O?L
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_616221?012O?L
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_616364q012??<
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
D__inference_lstm_349_layer_call_and_return_conditional_losses_616507q012??<
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
)__inference_lstm_349_layer_call_fn_615902}012O?L
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
)__inference_lstm_349_layer_call_fn_615913}012O?L
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
)__inference_lstm_349_layer_call_fn_615924d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_349_layer_call_fn_615935d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_350_layer_call_and_return_conditional_losses_616694}345O?L
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_616837}345O?L
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_616980m345??<
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
D__inference_lstm_350_layer_call_and_return_conditional_losses_617123m345??<
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
)__inference_lstm_350_layer_call_fn_616518p345O?L
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
)__inference_lstm_350_layer_call_fn_616529p345O?L
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
)__inference_lstm_350_layer_call_fn_616540`345??<
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
)__inference_lstm_350_layer_call_fn_616551`345??<
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_617306?012??}
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
I__inference_lstm_cell_100_layer_call_and_return_conditional_losses_617338?012??}
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
.__inference_lstm_cell_100_layer_call_fn_617257?012??}
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
.__inference_lstm_cell_100_layer_call_fn_617274?012??}
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_617404?345??}
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
I__inference_lstm_cell_101_layer_call_and_return_conditional_losses_617436?345??}
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
.__inference_lstm_cell_101_layer_call_fn_617355?345??}
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
.__inference_lstm_cell_101_layer_call_fn_617372?345??}
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
?
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_617208?-./??}
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
H__inference_lstm_cell_99_layer_call_and_return_conditional_losses_617240?-./??}
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
-__inference_lstm_cell_99_layer_call_fn_617159?-./??}
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
-__inference_lstm_cell_99_layer_call_fn_617176?-./??}
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
1/1?????????d?
J__inference_sequential_116_layer_call_and_return_conditional_losses_614302y-./012345!"C?@
9?6
,?)
lstm_348_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_116_layer_call_and_return_conditional_losses_614332y-./012345!"C?@
9?6
,?)
lstm_348_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_116_layer_call_and_return_conditional_losses_614848q-./012345!";?8
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
J__inference_sequential_116_layer_call_and_return_conditional_losses_615275q-./012345!";?8
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
/__inference_sequential_116_layer_call_fn_613656l-./012345!"C?@
9?6
,?)
lstm_348_input?????????
p 

 
? "???????????
/__inference_sequential_116_layer_call_fn_614272l-./012345!"C?@
9?6
,?)
lstm_348_input?????????
p

 
? "???????????
/__inference_sequential_116_layer_call_fn_614394d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_116_layer_call_fn_614421d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_614367?-./012345!"M?J
? 
C?@
>
lstm_348_input,?)
lstm_348_input?????????"5?2
0
	dense_116#? 
	dense_116?????????