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
dense_131/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_131/kernel
u
$dense_131/kernel/Read/ReadVariableOpReadVariableOpdense_131/kernel*
_output_shapes

:
*
dtype0
t
dense_131/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_131/bias
m
"dense_131/bias/Read/ReadVariableOpReadVariableOpdense_131/bias*
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
lstm_393/lstm_cell_393/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_393/lstm_cell_393/kernel
?
1lstm_393/lstm_cell_393/kernel/Read/ReadVariableOpReadVariableOplstm_393/lstm_cell_393/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_393/lstm_cell_393/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_393/lstm_cell_393/recurrent_kernel
?
;lstm_393/lstm_cell_393/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_393/lstm_cell_393/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_393/lstm_cell_393/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_393/lstm_cell_393/bias
?
/lstm_393/lstm_cell_393/bias/Read/ReadVariableOpReadVariableOplstm_393/lstm_cell_393/bias*
_output_shapes	
:?*
dtype0
?
lstm_394/lstm_cell_394/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_394/lstm_cell_394/kernel
?
1lstm_394/lstm_cell_394/kernel/Read/ReadVariableOpReadVariableOplstm_394/lstm_cell_394/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_394/lstm_cell_394/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_394/lstm_cell_394/recurrent_kernel
?
;lstm_394/lstm_cell_394/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_394/lstm_cell_394/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_394/lstm_cell_394/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_394/lstm_cell_394/bias
?
/lstm_394/lstm_cell_394/bias/Read/ReadVariableOpReadVariableOplstm_394/lstm_cell_394/bias*
_output_shapes	
:?*
dtype0
?
lstm_395/lstm_cell_395/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_395/lstm_cell_395/kernel
?
1lstm_395/lstm_cell_395/kernel/Read/ReadVariableOpReadVariableOplstm_395/lstm_cell_395/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_395/lstm_cell_395/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_395/lstm_cell_395/recurrent_kernel
?
;lstm_395/lstm_cell_395/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_395/lstm_cell_395/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_395/lstm_cell_395/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_395/lstm_cell_395/bias
?
/lstm_395/lstm_cell_395/bias/Read/ReadVariableOpReadVariableOplstm_395/lstm_cell_395/bias*
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
Adam/dense_131/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_131/kernel/m
?
+Adam/dense_131/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_131/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_131/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_131/bias/m
{
)Adam/dense_131/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_131/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_393/lstm_cell_393/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_393/lstm_cell_393/kernel/m
?
8Adam/lstm_393/lstm_cell_393/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_393/lstm_cell_393/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_393/lstm_cell_393/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_393/lstm_cell_393/recurrent_kernel/m
?
BAdam/lstm_393/lstm_cell_393/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_393/lstm_cell_393/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_393/lstm_cell_393/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_393/lstm_cell_393/bias/m
?
6Adam/lstm_393/lstm_cell_393/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_393/lstm_cell_393/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_394/lstm_cell_394/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_394/lstm_cell_394/kernel/m
?
8Adam/lstm_394/lstm_cell_394/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_394/lstm_cell_394/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_394/lstm_cell_394/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_394/lstm_cell_394/recurrent_kernel/m
?
BAdam/lstm_394/lstm_cell_394/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_394/lstm_cell_394/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_394/lstm_cell_394/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_394/lstm_cell_394/bias/m
?
6Adam/lstm_394/lstm_cell_394/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_394/lstm_cell_394/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_395/lstm_cell_395/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_395/lstm_cell_395/kernel/m
?
8Adam/lstm_395/lstm_cell_395/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_395/lstm_cell_395/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_395/lstm_cell_395/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_395/lstm_cell_395/recurrent_kernel/m
?
BAdam/lstm_395/lstm_cell_395/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_395/lstm_cell_395/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_395/lstm_cell_395/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_395/lstm_cell_395/bias/m
?
6Adam/lstm_395/lstm_cell_395/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_395/lstm_cell_395/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_131/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_131/kernel/v
?
+Adam/dense_131/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_131/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_131/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_131/bias/v
{
)Adam/dense_131/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_131/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_393/lstm_cell_393/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_393/lstm_cell_393/kernel/v
?
8Adam/lstm_393/lstm_cell_393/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_393/lstm_cell_393/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_393/lstm_cell_393/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_393/lstm_cell_393/recurrent_kernel/v
?
BAdam/lstm_393/lstm_cell_393/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_393/lstm_cell_393/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_393/lstm_cell_393/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_393/lstm_cell_393/bias/v
?
6Adam/lstm_393/lstm_cell_393/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_393/lstm_cell_393/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_394/lstm_cell_394/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_394/lstm_cell_394/kernel/v
?
8Adam/lstm_394/lstm_cell_394/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_394/lstm_cell_394/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_394/lstm_cell_394/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_394/lstm_cell_394/recurrent_kernel/v
?
BAdam/lstm_394/lstm_cell_394/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_394/lstm_cell_394/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_394/lstm_cell_394/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_394/lstm_cell_394/bias/v
?
6Adam/lstm_394/lstm_cell_394/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_394/lstm_cell_394/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_395/lstm_cell_395/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_395/lstm_cell_395/kernel/v
?
8Adam/lstm_395/lstm_cell_395/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_395/lstm_cell_395/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_395/lstm_cell_395/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_395/lstm_cell_395/recurrent_kernel/v
?
BAdam/lstm_395/lstm_cell_395/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_395/lstm_cell_395/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_395/lstm_cell_395/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_395/lstm_cell_395/bias/v
?
6Adam/lstm_395/lstm_cell_395/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_395/lstm_cell_395/bias/v*
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
VARIABLE_VALUEdense_131/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_131/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_393/lstm_cell_393/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_393/lstm_cell_393/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_393/lstm_cell_393/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_394/lstm_cell_394/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_394/lstm_cell_394/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_394/lstm_cell_394/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_395/lstm_cell_395/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_395/lstm_cell_395/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_395/lstm_cell_395/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_131/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_131/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_393/lstm_cell_393/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_393/lstm_cell_393/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_393/lstm_cell_393/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_394/lstm_cell_394/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_394/lstm_cell_394/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_394/lstm_cell_394/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_395/lstm_cell_395/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_395/lstm_cell_395/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_395/lstm_cell_395/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_131/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_131/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_393/lstm_cell_393/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_393/lstm_cell_393/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_393/lstm_cell_393/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_394/lstm_cell_394/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_394/lstm_cell_394/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_394/lstm_cell_394/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_395/lstm_cell_395/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_395/lstm_cell_395/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_395/lstm_cell_395/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_393_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_393_inputlstm_393/lstm_cell_393/kernel'lstm_393/lstm_cell_393/recurrent_kernellstm_393/lstm_cell_393/biaslstm_394/lstm_cell_394/kernel'lstm_394/lstm_cell_394/recurrent_kernellstm_394/lstm_cell_394/biaslstm_395/lstm_cell_395/kernel'lstm_395/lstm_cell_395/recurrent_kernellstm_395/lstm_cell_395/biasdense_131/kerneldense_131/bias*
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
%__inference_signature_wrapper_2373336
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_131/kernel/Read/ReadVariableOp"dense_131/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_393/lstm_cell_393/kernel/Read/ReadVariableOp;lstm_393/lstm_cell_393/recurrent_kernel/Read/ReadVariableOp/lstm_393/lstm_cell_393/bias/Read/ReadVariableOp1lstm_394/lstm_cell_394/kernel/Read/ReadVariableOp;lstm_394/lstm_cell_394/recurrent_kernel/Read/ReadVariableOp/lstm_394/lstm_cell_394/bias/Read/ReadVariableOp1lstm_395/lstm_cell_395/kernel/Read/ReadVariableOp;lstm_395/lstm_cell_395/recurrent_kernel/Read/ReadVariableOp/lstm_395/lstm_cell_395/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_131/kernel/m/Read/ReadVariableOp)Adam/dense_131/bias/m/Read/ReadVariableOp8Adam/lstm_393/lstm_cell_393/kernel/m/Read/ReadVariableOpBAdam/lstm_393/lstm_cell_393/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_393/lstm_cell_393/bias/m/Read/ReadVariableOp8Adam/lstm_394/lstm_cell_394/kernel/m/Read/ReadVariableOpBAdam/lstm_394/lstm_cell_394/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_394/lstm_cell_394/bias/m/Read/ReadVariableOp8Adam/lstm_395/lstm_cell_395/kernel/m/Read/ReadVariableOpBAdam/lstm_395/lstm_cell_395/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_395/lstm_cell_395/bias/m/Read/ReadVariableOp+Adam/dense_131/kernel/v/Read/ReadVariableOp)Adam/dense_131/bias/v/Read/ReadVariableOp8Adam/lstm_393/lstm_cell_393/kernel/v/Read/ReadVariableOpBAdam/lstm_393/lstm_cell_393/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_393/lstm_cell_393/bias/v/Read/ReadVariableOp8Adam/lstm_394/lstm_cell_394/kernel/v/Read/ReadVariableOpBAdam/lstm_394/lstm_cell_394/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_394/lstm_cell_394/bias/v/Read/ReadVariableOp8Adam/lstm_395/lstm_cell_395/kernel/v/Read/ReadVariableOpBAdam/lstm_395/lstm_cell_395/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_395/lstm_cell_395/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2376548
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_131/kerneldense_131/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_393/lstm_cell_393/kernel'lstm_393/lstm_cell_393/recurrent_kernellstm_393/lstm_cell_393/biaslstm_394/lstm_cell_394/kernel'lstm_394/lstm_cell_394/recurrent_kernellstm_394/lstm_cell_394/biaslstm_395/lstm_cell_395/kernel'lstm_395/lstm_cell_395/recurrent_kernellstm_395/lstm_cell_395/biastotalcountAdam/dense_131/kernel/mAdam/dense_131/bias/m$Adam/lstm_393/lstm_cell_393/kernel/m.Adam/lstm_393/lstm_cell_393/recurrent_kernel/m"Adam/lstm_393/lstm_cell_393/bias/m$Adam/lstm_394/lstm_cell_394/kernel/m.Adam/lstm_394/lstm_cell_394/recurrent_kernel/m"Adam/lstm_394/lstm_cell_394/bias/m$Adam/lstm_395/lstm_cell_395/kernel/m.Adam/lstm_395/lstm_cell_395/recurrent_kernel/m"Adam/lstm_395/lstm_cell_395/bias/mAdam/dense_131/kernel/vAdam/dense_131/bias/v$Adam/lstm_393/lstm_cell_393/kernel/v.Adam/lstm_393/lstm_cell_393/recurrent_kernel/v"Adam/lstm_393/lstm_cell_393/bias/v$Adam/lstm_394/lstm_cell_394/kernel/v.Adam/lstm_394/lstm_cell_394/recurrent_kernel/v"Adam/lstm_394/lstm_cell_394/bias/v$Adam/lstm_395/lstm_cell_395/kernel/v.Adam/lstm_395/lstm_cell_395/recurrent_kernel/v"Adam/lstm_395/lstm_cell_395/bias/v*4
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
#__inference__traced_restore_2376678??+
?
?
K__inference_sequential_131_layer_call_and_return_conditional_losses_2372600

inputs#
lstm_393_2372276:	?#
lstm_393_2372278:	d?
lstm_393_2372280:	?#
lstm_394_2372426:	d?#
lstm_394_2372428:	2?
lstm_394_2372430:	?"
lstm_395_2372576:2("
lstm_395_2372578:
(
lstm_395_2372580:(#
dense_131_2372594:

dense_131_2372596:
identity??!dense_131/StatefulPartitionedCall? lstm_393/StatefulPartitionedCall? lstm_394/StatefulPartitionedCall? lstm_395/StatefulPartitionedCall?
 lstm_393/StatefulPartitionedCallStatefulPartitionedCallinputslstm_393_2372276lstm_393_2372278lstm_393_2372280*
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2372275?
 lstm_394/StatefulPartitionedCallStatefulPartitionedCall)lstm_393/StatefulPartitionedCall:output:0lstm_394_2372426lstm_394_2372428lstm_394_2372430*
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372425?
 lstm_395/StatefulPartitionedCallStatefulPartitionedCall)lstm_394/StatefulPartitionedCall:output:0lstm_395_2372576lstm_395_2372578lstm_395_2372580*
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372575?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall)lstm_395/StatefulPartitionedCall:output:0dense_131_2372594dense_131_2372596*
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
F__inference_dense_131_layer_call_and_return_conditional_losses_2372593y
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_131/StatefulPartitionedCall!^lstm_393/StatefulPartitionedCall!^lstm_394/StatefulPartitionedCall!^lstm_395/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2D
 lstm_393/StatefulPartitionedCall lstm_393/StatefulPartitionedCall2D
 lstm_394/StatefulPartitionedCall lstm_394/StatefulPartitionedCall2D
 lstm_395/StatefulPartitionedCall lstm_395/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_2373336
lstm_393_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_393_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2371076o
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
_user_specified_namelstm_393_input
?
?
*__inference_lstm_395_layer_call_fn_2375520

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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372791o
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
while_cond_2372190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2372190___redundant_placeholder05
1while_while_cond_2372190___redundant_placeholder15
1while_while_cond_2372190___redundant_placeholder25
1while_while_cond_2372190___redundant_placeholder3
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
while_cond_2371856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2371856___redundant_placeholder05
1while_while_cond_2371856___redundant_placeholder15
1while_while_cond_2371856___redundant_placeholder25
1while_while_cond_2371856___redundant_placeholder3
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
/__inference_lstm_cell_390_layer_call_fn_2376145

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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371289o
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
?
*__inference_lstm_393_layer_call_fn_2374277

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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2372275s
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

lstm_394_while_body_2374015.
*lstm_394_while_lstm_394_while_loop_counter4
0lstm_394_while_lstm_394_while_maximum_iterations
lstm_394_while_placeholder 
lstm_394_while_placeholder_1 
lstm_394_while_placeholder_2 
lstm_394_while_placeholder_3-
)lstm_394_while_lstm_394_strided_slice_1_0i
elstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0:	d?R
?lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?M
>lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
lstm_394_while_identity
lstm_394_while_identity_1
lstm_394_while_identity_2
lstm_394_while_identity_3
lstm_394_while_identity_4
lstm_394_while_identity_5+
'lstm_394_while_lstm_394_strided_slice_1g
clstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensorN
;lstm_394_while_lstm_cell_391_matmul_readvariableop_resource:	d?P
=lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource:	2?K
<lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource:	???3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp?2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp?4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp?
@lstm_394/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_394/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensor_0lstm_394_while_placeholderIlstm_394/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp=lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_394/while/lstm_cell_391/MatMulMatMul9lstm_394/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp?lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_394/while/lstm_cell_391/MatMul_1MatMullstm_394_while_placeholder_2<lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_394/while/lstm_cell_391/addAddV2-lstm_394/while/lstm_cell_391/MatMul:product:0/lstm_394/while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp>lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_394/while/lstm_cell_391/BiasAddBiasAdd$lstm_394/while/lstm_cell_391/add:z:0;lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_394/while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_394/while/lstm_cell_391/splitSplit5lstm_394/while/lstm_cell_391/split/split_dim:output:0-lstm_394/while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_394/while/lstm_cell_391/SigmoidSigmoid+lstm_394/while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_394/while/lstm_cell_391/Sigmoid_1Sigmoid+lstm_394/while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_394/while/lstm_cell_391/mulMul*lstm_394/while/lstm_cell_391/Sigmoid_1:y:0lstm_394_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_394/while/lstm_cell_391/ReluRelu+lstm_394/while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_394/while/lstm_cell_391/mul_1Mul(lstm_394/while/lstm_cell_391/Sigmoid:y:0/lstm_394/while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_394/while/lstm_cell_391/add_1AddV2$lstm_394/while/lstm_cell_391/mul:z:0&lstm_394/while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_394/while/lstm_cell_391/Sigmoid_2Sigmoid+lstm_394/while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_394/while/lstm_cell_391/Relu_1Relu&lstm_394/while/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_394/while/lstm_cell_391/mul_2Mul*lstm_394/while/lstm_cell_391/Sigmoid_2:y:01lstm_394/while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_394/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_394_while_placeholder_1lstm_394_while_placeholder&lstm_394/while/lstm_cell_391/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_394/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_394/while/addAddV2lstm_394_while_placeholderlstm_394/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_394/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_394/while/add_1AddV2*lstm_394_while_lstm_394_while_loop_counterlstm_394/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_394/while/IdentityIdentitylstm_394/while/add_1:z:0^lstm_394/while/NoOp*
T0*
_output_shapes
: ?
lstm_394/while/Identity_1Identity0lstm_394_while_lstm_394_while_maximum_iterations^lstm_394/while/NoOp*
T0*
_output_shapes
: t
lstm_394/while/Identity_2Identitylstm_394/while/add:z:0^lstm_394/while/NoOp*
T0*
_output_shapes
: ?
lstm_394/while/Identity_3IdentityClstm_394/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_394/while/NoOp*
T0*
_output_shapes
: ?
lstm_394/while/Identity_4Identity&lstm_394/while/lstm_cell_391/mul_2:z:0^lstm_394/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_394/while/Identity_5Identity&lstm_394/while/lstm_cell_391/add_1:z:0^lstm_394/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_394/while/NoOpNoOp4^lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp3^lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp5^lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_394_while_identity lstm_394/while/Identity:output:0"?
lstm_394_while_identity_1"lstm_394/while/Identity_1:output:0"?
lstm_394_while_identity_2"lstm_394/while/Identity_2:output:0"?
lstm_394_while_identity_3"lstm_394/while/Identity_3:output:0"?
lstm_394_while_identity_4"lstm_394/while/Identity_4:output:0"?
lstm_394_while_identity_5"lstm_394/while/Identity_5:output:0"T
'lstm_394_while_lstm_394_strided_slice_1)lstm_394_while_lstm_394_strided_slice_1_0"~
<lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource>lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0"?
=lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource?lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0"|
;lstm_394_while_lstm_cell_391_matmul_readvariableop_resource=lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0"?
clstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensorelstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp2h
2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp2l
4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2373036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2373036___redundant_placeholder05
1while_while_cond_2373036___redundant_placeholder15
1while_while_cond_2373036___redundant_placeholder25
1while_while_cond_2373036___redundant_placeholder3
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
0__inference_sequential_131_layer_call_fn_2373363

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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2372600o
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374717

inputs?
,lstm_cell_390_matmul_readvariableop_resource:	?A
.lstm_cell_390_matmul_1_readvariableop_resource:	d?<
-lstm_cell_390_biasadd_readvariableop_resource:	?
identity??$lstm_cell_390/BiasAdd/ReadVariableOp?#lstm_cell_390/MatMul/ReadVariableOp?%lstm_cell_390/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_390/MatMul/ReadVariableOpReadVariableOp,lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_390/MatMulMatMulstrided_slice_2:output:0+lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_390/MatMul_1MatMulzeros:output:0-lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_390/addAddV2lstm_cell_390/MatMul:product:0 lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_390/BiasAddBiasAddlstm_cell_390/add:z:0,lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_390/splitSplit&lstm_cell_390/split/split_dim:output:0lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_390/SigmoidSigmoidlstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_1Sigmoidlstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_390/mulMullstm_cell_390/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_390/ReluRelulstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_1Mullstm_cell_390/Sigmoid:y:0 lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_390/add_1AddV2lstm_cell_390/mul:z:0lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_2Sigmoidlstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_390/Relu_1Relulstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_2Mullstm_cell_390/Sigmoid_2:y:0"lstm_cell_390/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_390_matmul_readvariableop_resource.lstm_cell_390_matmul_1_readvariableop_resource-lstm_cell_390_biasadd_readvariableop_resource*
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
while_body_2374633*
condR
while_cond_2374632*K
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
NoOpNoOp%^lstm_cell_390/BiasAdd/ReadVariableOp$^lstm_cell_390/MatMul/ReadVariableOp&^lstm_cell_390/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_390/BiasAdd/ReadVariableOp$lstm_cell_390/BiasAdd/ReadVariableOp2J
#lstm_cell_390/MatMul/ReadVariableOp#lstm_cell_390/MatMul/ReadVariableOp2N
%lstm_cell_390/MatMul_1/ReadVariableOp%lstm_cell_390/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_394_layer_call_and_return_conditional_losses_2371576

inputs(
lstm_cell_391_2371494:	d?(
lstm_cell_391_2371496:	2?$
lstm_cell_391_2371498:	?
identity??%lstm_cell_391/StatefulPartitionedCall?while;
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
%lstm_cell_391/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_391_2371494lstm_cell_391_2371496lstm_cell_391_2371498*
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371493n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_391_2371494lstm_cell_391_2371496lstm_cell_391_2371498*
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
while_body_2371507*
condR
while_cond_2371506*K
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
NoOpNoOp&^lstm_cell_391/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_391/StatefulPartitionedCall%lstm_cell_391/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_2374963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_391_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_391_matmul_readvariableop_resource:	d?G
4while_lstm_cell_391_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_391_biasadd_readvariableop_resource:	???*while/lstm_cell_391/BiasAdd/ReadVariableOp?)while/lstm_cell_391/MatMul/ReadVariableOp?+while/lstm_cell_391/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_391/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_391/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_391/addAddV2$while/lstm_cell_391/MatMul:product:0&while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_391/BiasAddBiasAddwhile/lstm_cell_391/add:z:02while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_391/splitSplit,while/lstm_cell_391/split/split_dim:output:0$while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_391/SigmoidSigmoid"while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_1Sigmoid"while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mulMul!while/lstm_cell_391/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_391/ReluRelu"while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_1Mulwhile/lstm_cell_391/Sigmoid:y:0&while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/add_1AddV2while/lstm_cell_391/mul:z:0while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_2Sigmoid"while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_391/Relu_1Reluwhile/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_2Mul!while/lstm_cell_391/Sigmoid_2:y:0(while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_391/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_391/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_391/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_391/BiasAdd/ReadVariableOp*^while/lstm_cell_391/MatMul/ReadVariableOp,^while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_391_biasadd_readvariableop_resource5while_lstm_cell_391_biasadd_readvariableop_resource_0"n
4while_lstm_cell_391_matmul_1_readvariableop_resource6while_lstm_cell_391_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_391_matmul_readvariableop_resource4while_lstm_cell_391_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_391/BiasAdd/ReadVariableOp*while/lstm_cell_391/BiasAdd/ReadVariableOp2V
)while/lstm_cell_391/MatMul/ReadVariableOp)while/lstm_cell_391/MatMul/ReadVariableOp2Z
+while/lstm_cell_391/MatMul_1/ReadVariableOp+while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2376405

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
?
while_body_2372872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_391_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_391_matmul_readvariableop_resource:	d?G
4while_lstm_cell_391_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_391_biasadd_readvariableop_resource:	???*while/lstm_cell_391/BiasAdd/ReadVariableOp?)while/lstm_cell_391/MatMul/ReadVariableOp?+while/lstm_cell_391/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_391/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_391/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_391/addAddV2$while/lstm_cell_391/MatMul:product:0&while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_391/BiasAddBiasAddwhile/lstm_cell_391/add:z:02while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_391/splitSplit,while/lstm_cell_391/split/split_dim:output:0$while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_391/SigmoidSigmoid"while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_1Sigmoid"while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mulMul!while/lstm_cell_391/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_391/ReluRelu"while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_1Mulwhile/lstm_cell_391/Sigmoid:y:0&while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/add_1AddV2while/lstm_cell_391/mul:z:0while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_2Sigmoid"while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_391/Relu_1Reluwhile/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_2Mul!while/lstm_cell_391/Sigmoid_2:y:0(while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_391/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_391/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_391/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_391/BiasAdd/ReadVariableOp*^while/lstm_cell_391/MatMul/ReadVariableOp,^while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_391_biasadd_readvariableop_resource5while_lstm_cell_391_biasadd_readvariableop_resource_0"n
4while_lstm_cell_391_matmul_1_readvariableop_resource6while_lstm_cell_391_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_391_matmul_readvariableop_resource4while_lstm_cell_391_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_391/BiasAdd/ReadVariableOp*while/lstm_cell_391/BiasAdd/ReadVariableOp2V
)while/lstm_cell_391/MatMul/ReadVariableOp)while/lstm_cell_391/MatMul/ReadVariableOp2Z
+while/lstm_cell_391/MatMul_1/ReadVariableOp+while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_391_layer_call_fn_2376226

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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371493o
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
*sequential_131_lstm_394_while_body_2370847L
Hsequential_131_lstm_394_while_sequential_131_lstm_394_while_loop_counterR
Nsequential_131_lstm_394_while_sequential_131_lstm_394_while_maximum_iterations-
)sequential_131_lstm_394_while_placeholder/
+sequential_131_lstm_394_while_placeholder_1/
+sequential_131_lstm_394_while_placeholder_2/
+sequential_131_lstm_394_while_placeholder_3K
Gsequential_131_lstm_394_while_sequential_131_lstm_394_strided_slice_1_0?
?sequential_131_lstm_394_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_394_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_131_lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0:	d?a
Nsequential_131_lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?\
Msequential_131_lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0:	?*
&sequential_131_lstm_394_while_identity,
(sequential_131_lstm_394_while_identity_1,
(sequential_131_lstm_394_while_identity_2,
(sequential_131_lstm_394_while_identity_3,
(sequential_131_lstm_394_while_identity_4,
(sequential_131_lstm_394_while_identity_5I
Esequential_131_lstm_394_while_sequential_131_lstm_394_strided_slice_1?
?sequential_131_lstm_394_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_394_tensorarrayunstack_tensorlistfromtensor]
Jsequential_131_lstm_394_while_lstm_cell_391_matmul_readvariableop_resource:	d?_
Lsequential_131_lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource:	2?Z
Ksequential_131_lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource:	???Bsequential_131/lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp?Asequential_131/lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp?Csequential_131/lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp?
Osequential_131/lstm_394/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_131/lstm_394/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_131_lstm_394_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_394_tensorarrayunstack_tensorlistfromtensor_0)sequential_131_lstm_394_while_placeholderXsequential_131/lstm_394/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_131/lstm_394/while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOpLsequential_131_lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_131/lstm_394/while/lstm_cell_391/MatMulMatMulHsequential_131/lstm_394/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_131/lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_131/lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOpNsequential_131_lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_131/lstm_394/while/lstm_cell_391/MatMul_1MatMul+sequential_131_lstm_394_while_placeholder_2Ksequential_131/lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_131/lstm_394/while/lstm_cell_391/addAddV2<sequential_131/lstm_394/while/lstm_cell_391/MatMul:product:0>sequential_131/lstm_394/while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_131/lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOpMsequential_131_lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_131/lstm_394/while/lstm_cell_391/BiasAddBiasAdd3sequential_131/lstm_394/while/lstm_cell_391/add:z:0Jsequential_131/lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_131/lstm_394/while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_131/lstm_394/while/lstm_cell_391/splitSplitDsequential_131/lstm_394/while/lstm_cell_391/split/split_dim:output:0<sequential_131/lstm_394/while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_131/lstm_394/while/lstm_cell_391/SigmoidSigmoid:sequential_131/lstm_394/while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_131/lstm_394/while/lstm_cell_391/Sigmoid_1Sigmoid:sequential_131/lstm_394/while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_131/lstm_394/while/lstm_cell_391/mulMul9sequential_131/lstm_394/while/lstm_cell_391/Sigmoid_1:y:0+sequential_131_lstm_394_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_131/lstm_394/while/lstm_cell_391/ReluRelu:sequential_131/lstm_394/while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_131/lstm_394/while/lstm_cell_391/mul_1Mul7sequential_131/lstm_394/while/lstm_cell_391/Sigmoid:y:0>sequential_131/lstm_394/while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_131/lstm_394/while/lstm_cell_391/add_1AddV23sequential_131/lstm_394/while/lstm_cell_391/mul:z:05sequential_131/lstm_394/while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_131/lstm_394/while/lstm_cell_391/Sigmoid_2Sigmoid:sequential_131/lstm_394/while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_131/lstm_394/while/lstm_cell_391/Relu_1Relu5sequential_131/lstm_394/while/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_131/lstm_394/while/lstm_cell_391/mul_2Mul9sequential_131/lstm_394/while/lstm_cell_391/Sigmoid_2:y:0@sequential_131/lstm_394/while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_131/lstm_394/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_131_lstm_394_while_placeholder_1)sequential_131_lstm_394_while_placeholder5sequential_131/lstm_394/while/lstm_cell_391/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_131/lstm_394/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_131/lstm_394/while/addAddV2)sequential_131_lstm_394_while_placeholder,sequential_131/lstm_394/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_131/lstm_394/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_131/lstm_394/while/add_1AddV2Hsequential_131_lstm_394_while_sequential_131_lstm_394_while_loop_counter.sequential_131/lstm_394/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_131/lstm_394/while/IdentityIdentity'sequential_131/lstm_394/while/add_1:z:0#^sequential_131/lstm_394/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_394/while/Identity_1IdentityNsequential_131_lstm_394_while_sequential_131_lstm_394_while_maximum_iterations#^sequential_131/lstm_394/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_394/while/Identity_2Identity%sequential_131/lstm_394/while/add:z:0#^sequential_131/lstm_394/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_394/while/Identity_3IdentityRsequential_131/lstm_394/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_131/lstm_394/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_394/while/Identity_4Identity5sequential_131/lstm_394/while/lstm_cell_391/mul_2:z:0#^sequential_131/lstm_394/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_131/lstm_394/while/Identity_5Identity5sequential_131/lstm_394/while/lstm_cell_391/add_1:z:0#^sequential_131/lstm_394/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_131/lstm_394/while/NoOpNoOpC^sequential_131/lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOpB^sequential_131/lstm_394/while/lstm_cell_391/MatMul/ReadVariableOpD^sequential_131/lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_131_lstm_394_while_identity/sequential_131/lstm_394/while/Identity:output:0"]
(sequential_131_lstm_394_while_identity_11sequential_131/lstm_394/while/Identity_1:output:0"]
(sequential_131_lstm_394_while_identity_21sequential_131/lstm_394/while/Identity_2:output:0"]
(sequential_131_lstm_394_while_identity_31sequential_131/lstm_394/while/Identity_3:output:0"]
(sequential_131_lstm_394_while_identity_41sequential_131/lstm_394/while/Identity_4:output:0"]
(sequential_131_lstm_394_while_identity_51sequential_131/lstm_394/while/Identity_5:output:0"?
Ksequential_131_lstm_394_while_lstm_cell_391_biasadd_readvariableop_resourceMsequential_131_lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0"?
Lsequential_131_lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resourceNsequential_131_lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0"?
Jsequential_131_lstm_394_while_lstm_cell_391_matmul_readvariableop_resourceLsequential_131_lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0"?
Esequential_131_lstm_394_while_sequential_131_lstm_394_strided_slice_1Gsequential_131_lstm_394_while_sequential_131_lstm_394_strided_slice_1_0"?
?sequential_131_lstm_394_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_394_tensorarrayunstack_tensorlistfromtensor?sequential_131_lstm_394_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_394_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_131/lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOpBsequential_131/lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp2?
Asequential_131/lstm_394/while/lstm_cell_391/MatMul/ReadVariableOpAsequential_131/lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp2?
Csequential_131/lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOpCsequential_131/lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375663
inputs_0>
,lstm_cell_392_matmul_readvariableop_resource:2(@
.lstm_cell_392_matmul_1_readvariableop_resource:
(;
-lstm_cell_392_biasadd_readvariableop_resource:(
identity??$lstm_cell_392/BiasAdd/ReadVariableOp?#lstm_cell_392/MatMul/ReadVariableOp?%lstm_cell_392/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_392/MatMul/ReadVariableOpReadVariableOp,lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_392/MatMulMatMulstrided_slice_2:output:0+lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_392/MatMul_1MatMulzeros:output:0-lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_392/addAddV2lstm_cell_392/MatMul:product:0 lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_392/BiasAddBiasAddlstm_cell_392/add:z:0,lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_392/splitSplit&lstm_cell_392/split/split_dim:output:0lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_392/SigmoidSigmoidlstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_1Sigmoidlstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_392/mulMullstm_cell_392/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_392/ReluRelulstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_1Mullstm_cell_392/Sigmoid:y:0 lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_392/add_1AddV2lstm_cell_392/mul:z:0lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_2Sigmoidlstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_392/Relu_1Relulstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_2Mullstm_cell_392/Sigmoid_2:y:0"lstm_cell_392/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_392_matmul_readvariableop_resource.lstm_cell_392_matmul_1_readvariableop_resource-lstm_cell_392_biasadd_readvariableop_resource*
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
while_body_2375579*
condR
while_cond_2375578*K
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
NoOpNoOp%^lstm_cell_392/BiasAdd/ReadVariableOp$^lstm_cell_392/MatMul/ReadVariableOp&^lstm_cell_392/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_392/BiasAdd/ReadVariableOp$lstm_cell_392/BiasAdd/ReadVariableOp2J
#lstm_cell_392/MatMul/ReadVariableOp#lstm_cell_392/MatMul/ReadVariableOp2N
%lstm_cell_392/MatMul_1/ReadVariableOp%lstm_cell_392/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?	
?
F__inference_dense_131_layer_call_and_return_conditional_losses_2376111

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
while_cond_2372871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2372871___redundant_placeholder05
1while_while_cond_2372871___redundant_placeholder15
1while_while_cond_2372871___redundant_placeholder25
1while_while_cond_2372871___redundant_placeholder3
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
lstm_393_while_cond_2373448.
*lstm_393_while_lstm_393_while_loop_counter4
0lstm_393_while_lstm_393_while_maximum_iterations
lstm_393_while_placeholder 
lstm_393_while_placeholder_1 
lstm_393_while_placeholder_2 
lstm_393_while_placeholder_30
,lstm_393_while_less_lstm_393_strided_slice_1G
Clstm_393_while_lstm_393_while_cond_2373448___redundant_placeholder0G
Clstm_393_while_lstm_393_while_cond_2373448___redundant_placeholder1G
Clstm_393_while_lstm_393_while_cond_2373448___redundant_placeholder2G
Clstm_393_while_lstm_393_while_cond_2373448___redundant_placeholder3
lstm_393_while_identity
?
lstm_393/while/LessLesslstm_393_while_placeholder,lstm_393_while_less_lstm_393_strided_slice_1*
T0*
_output_shapes
: ]
lstm_393/while/IdentityIdentitylstm_393/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_393_while_identity lstm_393/while/Identity:output:0*(
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2371767

inputs(
lstm_cell_391_2371685:	d?(
lstm_cell_391_2371687:	2?$
lstm_cell_391_2371689:	?
identity??%lstm_cell_391/StatefulPartitionedCall?while;
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
%lstm_cell_391/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_391_2371685lstm_cell_391_2371687lstm_cell_391_2371689*
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371639n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_391_2371685lstm_cell_391_2371687lstm_cell_391_2371689*
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
while_body_2371698*
condR
while_cond_2371697*K
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
NoOpNoOp&^lstm_cell_391/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_391/StatefulPartitionedCall%lstm_cell_391/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_393_layer_call_and_return_conditional_losses_2371417

inputs(
lstm_cell_390_2371335:	?(
lstm_cell_390_2371337:	d?$
lstm_cell_390_2371339:	?
identity??%lstm_cell_390/StatefulPartitionedCall?while;
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
%lstm_cell_390/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_390_2371335lstm_cell_390_2371337lstm_cell_390_2371339*
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371289n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_390_2371335lstm_cell_390_2371337lstm_cell_390_2371339*
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
while_body_2371348*
condR
while_cond_2371347*K
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
NoOpNoOp&^lstm_cell_390/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_390/StatefulPartitionedCall%lstm_cell_390/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_2372491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_392_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_392_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_392_matmul_readvariableop_resource:2(F
4while_lstm_cell_392_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_392_biasadd_readvariableop_resource:(??*while/lstm_cell_392/BiasAdd/ReadVariableOp?)while/lstm_cell_392/MatMul/ReadVariableOp?+while/lstm_cell_392/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_392/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_392/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_392/addAddV2$while/lstm_cell_392/MatMul:product:0&while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_392/BiasAddBiasAddwhile/lstm_cell_392/add:z:02while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_392/splitSplit,while/lstm_cell_392/split/split_dim:output:0$while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_392/SigmoidSigmoid"while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_1Sigmoid"while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mulMul!while/lstm_cell_392/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_392/ReluRelu"while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_1Mulwhile/lstm_cell_392/Sigmoid:y:0&while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/add_1AddV2while/lstm_cell_392/mul:z:0while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_2Sigmoid"while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_392/Relu_1Reluwhile/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_2Mul!while/lstm_cell_392/Sigmoid_2:y:0(while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_392/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_392/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_392/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_392/BiasAdd/ReadVariableOp*^while/lstm_cell_392/MatMul/ReadVariableOp,^while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_392_biasadd_readvariableop_resource5while_lstm_cell_392_biasadd_readvariableop_resource_0"n
4while_lstm_cell_392_matmul_1_readvariableop_resource6while_lstm_cell_392_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_392_matmul_readvariableop_resource4while_lstm_cell_392_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_392/BiasAdd/ReadVariableOp*while/lstm_cell_392/BiasAdd/ReadVariableOp2V
)while/lstm_cell_392/MatMul/ReadVariableOp)while/lstm_cell_392/MatMul/ReadVariableOp2Z
+while/lstm_cell_392/MatMul_1/ReadVariableOp+while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_394_layer_call_fn_2374893

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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372425s
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
?
*sequential_131_lstm_394_while_cond_2370846L
Hsequential_131_lstm_394_while_sequential_131_lstm_394_while_loop_counterR
Nsequential_131_lstm_394_while_sequential_131_lstm_394_while_maximum_iterations-
)sequential_131_lstm_394_while_placeholder/
+sequential_131_lstm_394_while_placeholder_1/
+sequential_131_lstm_394_while_placeholder_2/
+sequential_131_lstm_394_while_placeholder_3N
Jsequential_131_lstm_394_while_less_sequential_131_lstm_394_strided_slice_1e
asequential_131_lstm_394_while_sequential_131_lstm_394_while_cond_2370846___redundant_placeholder0e
asequential_131_lstm_394_while_sequential_131_lstm_394_while_cond_2370846___redundant_placeholder1e
asequential_131_lstm_394_while_sequential_131_lstm_394_while_cond_2370846___redundant_placeholder2e
asequential_131_lstm_394_while_sequential_131_lstm_394_while_cond_2370846___redundant_placeholder3*
&sequential_131_lstm_394_while_identity
?
"sequential_131/lstm_394/while/LessLess)sequential_131_lstm_394_while_placeholderJsequential_131_lstm_394_while_less_sequential_131_lstm_394_strided_slice_1*
T0*
_output_shapes
: {
&sequential_131/lstm_394/while/IdentityIdentity&sequential_131/lstm_394/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_131_lstm_394_while_identity/sequential_131/lstm_394/while/Identity:output:0*(
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
while_cond_2372047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2372047___redundant_placeholder05
1while_while_cond_2372047___redundant_placeholder15
1while_while_cond_2372047___redundant_placeholder25
1while_while_cond_2372047___redundant_placeholder3
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

lstm_394_while_body_2373588.
*lstm_394_while_lstm_394_while_loop_counter4
0lstm_394_while_lstm_394_while_maximum_iterations
lstm_394_while_placeholder 
lstm_394_while_placeholder_1 
lstm_394_while_placeholder_2 
lstm_394_while_placeholder_3-
)lstm_394_while_lstm_394_strided_slice_1_0i
elstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0:	d?R
?lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?M
>lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
lstm_394_while_identity
lstm_394_while_identity_1
lstm_394_while_identity_2
lstm_394_while_identity_3
lstm_394_while_identity_4
lstm_394_while_identity_5+
'lstm_394_while_lstm_394_strided_slice_1g
clstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensorN
;lstm_394_while_lstm_cell_391_matmul_readvariableop_resource:	d?P
=lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource:	2?K
<lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource:	???3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp?2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp?4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp?
@lstm_394/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_394/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensor_0lstm_394_while_placeholderIlstm_394/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp=lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_394/while/lstm_cell_391/MatMulMatMul9lstm_394/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp?lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_394/while/lstm_cell_391/MatMul_1MatMullstm_394_while_placeholder_2<lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_394/while/lstm_cell_391/addAddV2-lstm_394/while/lstm_cell_391/MatMul:product:0/lstm_394/while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp>lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_394/while/lstm_cell_391/BiasAddBiasAdd$lstm_394/while/lstm_cell_391/add:z:0;lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_394/while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_394/while/lstm_cell_391/splitSplit5lstm_394/while/lstm_cell_391/split/split_dim:output:0-lstm_394/while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_394/while/lstm_cell_391/SigmoidSigmoid+lstm_394/while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_394/while/lstm_cell_391/Sigmoid_1Sigmoid+lstm_394/while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_394/while/lstm_cell_391/mulMul*lstm_394/while/lstm_cell_391/Sigmoid_1:y:0lstm_394_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_394/while/lstm_cell_391/ReluRelu+lstm_394/while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_394/while/lstm_cell_391/mul_1Mul(lstm_394/while/lstm_cell_391/Sigmoid:y:0/lstm_394/while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_394/while/lstm_cell_391/add_1AddV2$lstm_394/while/lstm_cell_391/mul:z:0&lstm_394/while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_394/while/lstm_cell_391/Sigmoid_2Sigmoid+lstm_394/while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_394/while/lstm_cell_391/Relu_1Relu&lstm_394/while/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_394/while/lstm_cell_391/mul_2Mul*lstm_394/while/lstm_cell_391/Sigmoid_2:y:01lstm_394/while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_394/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_394_while_placeholder_1lstm_394_while_placeholder&lstm_394/while/lstm_cell_391/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_394/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_394/while/addAddV2lstm_394_while_placeholderlstm_394/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_394/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_394/while/add_1AddV2*lstm_394_while_lstm_394_while_loop_counterlstm_394/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_394/while/IdentityIdentitylstm_394/while/add_1:z:0^lstm_394/while/NoOp*
T0*
_output_shapes
: ?
lstm_394/while/Identity_1Identity0lstm_394_while_lstm_394_while_maximum_iterations^lstm_394/while/NoOp*
T0*
_output_shapes
: t
lstm_394/while/Identity_2Identitylstm_394/while/add:z:0^lstm_394/while/NoOp*
T0*
_output_shapes
: ?
lstm_394/while/Identity_3IdentityClstm_394/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_394/while/NoOp*
T0*
_output_shapes
: ?
lstm_394/while/Identity_4Identity&lstm_394/while/lstm_cell_391/mul_2:z:0^lstm_394/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_394/while/Identity_5Identity&lstm_394/while/lstm_cell_391/add_1:z:0^lstm_394/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_394/while/NoOpNoOp4^lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp3^lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp5^lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_394_while_identity lstm_394/while/Identity:output:0"?
lstm_394_while_identity_1"lstm_394/while/Identity_1:output:0"?
lstm_394_while_identity_2"lstm_394/while/Identity_2:output:0"?
lstm_394_while_identity_3"lstm_394/while/Identity_3:output:0"?
lstm_394_while_identity_4"lstm_394/while/Identity_4:output:0"?
lstm_394_while_identity_5"lstm_394/while/Identity_5:output:0"T
'lstm_394_while_lstm_394_strided_slice_1)lstm_394_while_lstm_394_strided_slice_1_0"~
<lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource>lstm_394_while_lstm_cell_391_biasadd_readvariableop_resource_0"?
=lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource?lstm_394_while_lstm_cell_391_matmul_1_readvariableop_resource_0"|
;lstm_394_while_lstm_cell_391_matmul_readvariableop_resource=lstm_394_while_lstm_cell_391_matmul_readvariableop_resource_0"?
clstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensorelstm_394_while_tensorarrayv2read_tensorlistgetitem_lstm_394_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp3lstm_394/while/lstm_cell_391/BiasAdd/ReadVariableOp2h
2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp2lstm_394/while/lstm_cell_391/MatMul/ReadVariableOp2l
4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp4lstm_394/while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2374633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_390_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_390_matmul_readvariableop_resource:	?G
4while_lstm_cell_390_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_390_biasadd_readvariableop_resource:	???*while/lstm_cell_390/BiasAdd/ReadVariableOp?)while/lstm_cell_390/MatMul/ReadVariableOp?+while/lstm_cell_390/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_390/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_390/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_390/addAddV2$while/lstm_cell_390/MatMul:product:0&while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_390/BiasAddBiasAddwhile/lstm_cell_390/add:z:02while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_390/splitSplit,while/lstm_cell_390/split/split_dim:output:0$while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_390/SigmoidSigmoid"while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_1Sigmoid"while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mulMul!while/lstm_cell_390/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_390/ReluRelu"while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_1Mulwhile/lstm_cell_390/Sigmoid:y:0&while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/add_1AddV2while/lstm_cell_390/mul:z:0while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_2Sigmoid"while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_390/Relu_1Reluwhile/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_2Mul!while/lstm_cell_390/Sigmoid_2:y:0(while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_390/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_390/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_390/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_390/BiasAdd/ReadVariableOp*^while/lstm_cell_390/MatMul/ReadVariableOp,^while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_390_biasadd_readvariableop_resource5while_lstm_cell_390_biasadd_readvariableop_resource_0"n
4while_lstm_cell_390_matmul_1_readvariableop_resource6while_lstm_cell_390_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_390_matmul_readvariableop_resource4while_lstm_cell_390_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_390/BiasAdd/ReadVariableOp*while/lstm_cell_390/BiasAdd/ReadVariableOp2V
)while/lstm_cell_390/MatMul/ReadVariableOp)while/lstm_cell_390/MatMul/ReadVariableOp2Z
+while/lstm_cell_390/MatMul_1/ReadVariableOp+while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375806
inputs_0>
,lstm_cell_392_matmul_readvariableop_resource:2(@
.lstm_cell_392_matmul_1_readvariableop_resource:
(;
-lstm_cell_392_biasadd_readvariableop_resource:(
identity??$lstm_cell_392/BiasAdd/ReadVariableOp?#lstm_cell_392/MatMul/ReadVariableOp?%lstm_cell_392/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_392/MatMul/ReadVariableOpReadVariableOp,lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_392/MatMulMatMulstrided_slice_2:output:0+lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_392/MatMul_1MatMulzeros:output:0-lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_392/addAddV2lstm_cell_392/MatMul:product:0 lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_392/BiasAddBiasAddlstm_cell_392/add:z:0,lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_392/splitSplit&lstm_cell_392/split/split_dim:output:0lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_392/SigmoidSigmoidlstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_1Sigmoidlstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_392/mulMullstm_cell_392/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_392/ReluRelulstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_1Mullstm_cell_392/Sigmoid:y:0 lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_392/add_1AddV2lstm_cell_392/mul:z:0lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_2Sigmoidlstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_392/Relu_1Relulstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_2Mullstm_cell_392/Sigmoid_2:y:0"lstm_cell_392/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_392_matmul_readvariableop_resource.lstm_cell_392_matmul_1_readvariableop_resource-lstm_cell_392_biasadd_readvariableop_resource*
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
while_body_2375722*
condR
while_cond_2375721*K
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
NoOpNoOp%^lstm_cell_392/BiasAdd/ReadVariableOp$^lstm_cell_392/MatMul/ReadVariableOp&^lstm_cell_392/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_392/BiasAdd/ReadVariableOp$lstm_cell_392/BiasAdd/ReadVariableOp2J
#lstm_cell_392/MatMul/ReadVariableOp#lstm_cell_392/MatMul/ReadVariableOp2N
%lstm_cell_392/MatMul_1/ReadVariableOp%lstm_cell_392/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374431
inputs_0?
,lstm_cell_390_matmul_readvariableop_resource:	?A
.lstm_cell_390_matmul_1_readvariableop_resource:	d?<
-lstm_cell_390_biasadd_readvariableop_resource:	?
identity??$lstm_cell_390/BiasAdd/ReadVariableOp?#lstm_cell_390/MatMul/ReadVariableOp?%lstm_cell_390/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_390/MatMul/ReadVariableOpReadVariableOp,lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_390/MatMulMatMulstrided_slice_2:output:0+lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_390/MatMul_1MatMulzeros:output:0-lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_390/addAddV2lstm_cell_390/MatMul:product:0 lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_390/BiasAddBiasAddlstm_cell_390/add:z:0,lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_390/splitSplit&lstm_cell_390/split/split_dim:output:0lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_390/SigmoidSigmoidlstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_1Sigmoidlstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_390/mulMullstm_cell_390/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_390/ReluRelulstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_1Mullstm_cell_390/Sigmoid:y:0 lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_390/add_1AddV2lstm_cell_390/mul:z:0lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_2Sigmoidlstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_390/Relu_1Relulstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_2Mullstm_cell_390/Sigmoid_2:y:0"lstm_cell_390/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_390_matmul_readvariableop_resource.lstm_cell_390_matmul_1_readvariableop_resource-lstm_cell_390_biasadd_readvariableop_resource*
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
while_body_2374347*
condR
while_cond_2374346*K
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
NoOpNoOp%^lstm_cell_390/BiasAdd/ReadVariableOp$^lstm_cell_390/MatMul/ReadVariableOp&^lstm_cell_390/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_390/BiasAdd/ReadVariableOp$lstm_cell_390/BiasAdd/ReadVariableOp2J
#lstm_cell_390/MatMul/ReadVariableOp#lstm_cell_390/MatMul/ReadVariableOp2N
%lstm_cell_390/MatMul_1/ReadVariableOp%lstm_cell_390/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_394_while_cond_2373587.
*lstm_394_while_lstm_394_while_loop_counter4
0lstm_394_while_lstm_394_while_maximum_iterations
lstm_394_while_placeholder 
lstm_394_while_placeholder_1 
lstm_394_while_placeholder_2 
lstm_394_while_placeholder_30
,lstm_394_while_less_lstm_394_strided_slice_1G
Clstm_394_while_lstm_394_while_cond_2373587___redundant_placeholder0G
Clstm_394_while_lstm_394_while_cond_2373587___redundant_placeholder1G
Clstm_394_while_lstm_394_while_cond_2373587___redundant_placeholder2G
Clstm_394_while_lstm_394_while_cond_2373587___redundant_placeholder3
lstm_394_while_identity
?
lstm_394/while/LessLesslstm_394_while_placeholder,lstm_394_while_less_lstm_394_strided_slice_1*
T0*
_output_shapes
: ]
lstm_394/while/IdentityIdentitylstm_394/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_394_while_identity lstm_394/while/Identity:output:0*(
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2371226

inputs(
lstm_cell_390_2371144:	?(
lstm_cell_390_2371146:	d?$
lstm_cell_390_2371148:	?
identity??%lstm_cell_390/StatefulPartitionedCall?while;
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
%lstm_cell_390/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_390_2371144lstm_cell_390_2371146lstm_cell_390_2371148*
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371143n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_390_2371144lstm_cell_390_2371146lstm_cell_390_2371148*
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
while_body_2371157*
condR
while_cond_2371156*K
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
NoOpNoOp&^lstm_cell_390/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_390/StatefulPartitionedCall%lstm_cell_390/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2374775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2374775___redundant_placeholder05
1while_while_cond_2374775___redundant_placeholder15
1while_while_cond_2374775___redundant_placeholder25
1while_while_cond_2374775___redundant_placeholder3
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
while_body_2375865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_392_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_392_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_392_matmul_readvariableop_resource:2(F
4while_lstm_cell_392_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_392_biasadd_readvariableop_resource:(??*while/lstm_cell_392/BiasAdd/ReadVariableOp?)while/lstm_cell_392/MatMul/ReadVariableOp?+while/lstm_cell_392/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_392/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_392/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_392/addAddV2$while/lstm_cell_392/MatMul:product:0&while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_392/BiasAddBiasAddwhile/lstm_cell_392/add:z:02while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_392/splitSplit,while/lstm_cell_392/split/split_dim:output:0$while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_392/SigmoidSigmoid"while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_1Sigmoid"while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mulMul!while/lstm_cell_392/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_392/ReluRelu"while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_1Mulwhile/lstm_cell_392/Sigmoid:y:0&while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/add_1AddV2while/lstm_cell_392/mul:z:0while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_2Sigmoid"while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_392/Relu_1Reluwhile/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_2Mul!while/lstm_cell_392/Sigmoid_2:y:0(while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_392/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_392/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_392/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_392/BiasAdd/ReadVariableOp*^while/lstm_cell_392/MatMul/ReadVariableOp,^while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_392_biasadd_readvariableop_resource5while_lstm_cell_392_biasadd_readvariableop_resource_0"n
4while_lstm_cell_392_matmul_1_readvariableop_resource6while_lstm_cell_392_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_392_matmul_readvariableop_resource4while_lstm_cell_392_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_392/BiasAdd/ReadVariableOp*while/lstm_cell_392/BiasAdd/ReadVariableOp2V
)while/lstm_cell_392/MatMul/ReadVariableOp)while/lstm_cell_392/MatMul/ReadVariableOp2Z
+while/lstm_cell_392/MatMul_1/ReadVariableOp+while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2375105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2375105___redundant_placeholder05
1while_while_cond_2375105___redundant_placeholder15
1while_while_cond_2375105___redundant_placeholder25
1while_while_cond_2375105___redundant_placeholder3
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
0__inference_sequential_131_layer_call_fn_2372625
lstm_393_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_393_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2372600o
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
_user_specified_namelstm_393_input
?
?
while_cond_2371506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2371506___redundant_placeholder05
1while_while_cond_2371506___redundant_placeholder15
1while_while_cond_2371506___redundant_placeholder25
1while_while_cond_2371506___redundant_placeholder3
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375333

inputs?
,lstm_cell_391_matmul_readvariableop_resource:	d?A
.lstm_cell_391_matmul_1_readvariableop_resource:	2?<
-lstm_cell_391_biasadd_readvariableop_resource:	?
identity??$lstm_cell_391/BiasAdd/ReadVariableOp?#lstm_cell_391/MatMul/ReadVariableOp?%lstm_cell_391/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_391/MatMul/ReadVariableOpReadVariableOp,lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_391/MatMulMatMulstrided_slice_2:output:0+lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_391/MatMul_1MatMulzeros:output:0-lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_391/addAddV2lstm_cell_391/MatMul:product:0 lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_391/BiasAddBiasAddlstm_cell_391/add:z:0,lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_391/splitSplit&lstm_cell_391/split/split_dim:output:0lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_391/SigmoidSigmoidlstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_1Sigmoidlstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_391/mulMullstm_cell_391/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_391/ReluRelulstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_1Mullstm_cell_391/Sigmoid:y:0 lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_391/add_1AddV2lstm_cell_391/mul:z:0lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_2Sigmoidlstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_391/Relu_1Relulstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_2Mullstm_cell_391/Sigmoid_2:y:0"lstm_cell_391/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_391_matmul_readvariableop_resource.lstm_cell_391_matmul_1_readvariableop_resource-lstm_cell_391_biasadd_readvariableop_resource*
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
while_body_2375249*
condR
while_cond_2375248*K
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
NoOpNoOp%^lstm_cell_391/BiasAdd/ReadVariableOp$^lstm_cell_391/MatMul/ReadVariableOp&^lstm_cell_391/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_391/BiasAdd/ReadVariableOp$lstm_cell_391/BiasAdd/ReadVariableOp2J
#lstm_cell_391/MatMul/ReadVariableOp#lstm_cell_391/MatMul/ReadVariableOp2N
%lstm_cell_391/MatMul_1/ReadVariableOp%lstm_cell_391/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_392_layer_call_fn_2376324

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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371843o
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
?
?
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371639

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
while_body_2375579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_392_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_392_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_392_matmul_readvariableop_resource:2(F
4while_lstm_cell_392_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_392_biasadd_readvariableop_resource:(??*while/lstm_cell_392/BiasAdd/ReadVariableOp?)while/lstm_cell_392/MatMul/ReadVariableOp?+while/lstm_cell_392/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_392/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_392/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_392/addAddV2$while/lstm_cell_392/MatMul:product:0&while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_392/BiasAddBiasAddwhile/lstm_cell_392/add:z:02while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_392/splitSplit,while/lstm_cell_392/split/split_dim:output:0$while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_392/SigmoidSigmoid"while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_1Sigmoid"while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mulMul!while/lstm_cell_392/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_392/ReluRelu"while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_1Mulwhile/lstm_cell_392/Sigmoid:y:0&while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/add_1AddV2while/lstm_cell_392/mul:z:0while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_2Sigmoid"while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_392/Relu_1Reluwhile/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_2Mul!while/lstm_cell_392/Sigmoid_2:y:0(while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_392/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_392/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_392/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_392/BiasAdd/ReadVariableOp*^while/lstm_cell_392/MatMul/ReadVariableOp,^while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_392_biasadd_readvariableop_resource5while_lstm_cell_392_biasadd_readvariableop_resource_0"n
4while_lstm_cell_392_matmul_1_readvariableop_resource6while_lstm_cell_392_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_392_matmul_readvariableop_resource4while_lstm_cell_392_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_392/BiasAdd/ReadVariableOp*while/lstm_cell_392/BiasAdd/ReadVariableOp2V
)while/lstm_cell_392/MatMul/ReadVariableOp)while/lstm_cell_392/MatMul/ReadVariableOp2Z
+while/lstm_cell_392/MatMul_1/ReadVariableOp+while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_2372048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_392_2372072_0:2(/
while_lstm_cell_392_2372074_0:
(+
while_lstm_cell_392_2372076_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_392_2372072:2(-
while_lstm_cell_392_2372074:
()
while_lstm_cell_392_2372076:(??+while/lstm_cell_392/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_392/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_392_2372072_0while_lstm_cell_392_2372074_0while_lstm_cell_392_2372076_0*
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371989?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_392/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_392/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_392/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_392/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_392_2372072while_lstm_cell_392_2372072_0"<
while_lstm_cell_392_2372074while_lstm_cell_392_2372074_0"<
while_lstm_cell_392_2372076while_lstm_cell_392_2372076_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_392/StatefulPartitionedCall+while/lstm_cell_392/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_391_layer_call_fn_2376243

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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371639o
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
while_body_2371507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_391_2371531_0:	d?0
while_lstm_cell_391_2371533_0:	2?,
while_lstm_cell_391_2371535_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_391_2371531:	d?.
while_lstm_cell_391_2371533:	2?*
while_lstm_cell_391_2371535:	???+while/lstm_cell_391/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_391/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_391_2371531_0while_lstm_cell_391_2371533_0while_lstm_cell_391_2371535_0*
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371493?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_391/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_391/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_391/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_391/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_391_2371531while_lstm_cell_391_2371531_0"<
while_lstm_cell_391_2371533while_lstm_cell_391_2371533_0"<
while_lstm_cell_391_2371535while_lstm_cell_391_2371535_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_391/StatefulPartitionedCall+while/lstm_cell_391/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_2376678
file_prefix3
!assignvariableop_dense_131_kernel:
/
!assignvariableop_1_dense_131_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_393_lstm_cell_393_kernel:	?M
:assignvariableop_8_lstm_393_lstm_cell_393_recurrent_kernel:	d?=
.assignvariableop_9_lstm_393_lstm_cell_393_bias:	?D
1assignvariableop_10_lstm_394_lstm_cell_394_kernel:	d?N
;assignvariableop_11_lstm_394_lstm_cell_394_recurrent_kernel:	2?>
/assignvariableop_12_lstm_394_lstm_cell_394_bias:	?C
1assignvariableop_13_lstm_395_lstm_cell_395_kernel:2(M
;assignvariableop_14_lstm_395_lstm_cell_395_recurrent_kernel:
(=
/assignvariableop_15_lstm_395_lstm_cell_395_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_131_kernel_m:
7
)assignvariableop_19_adam_dense_131_bias_m:K
8assignvariableop_20_adam_lstm_393_lstm_cell_393_kernel_m:	?U
Bassignvariableop_21_adam_lstm_393_lstm_cell_393_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_393_lstm_cell_393_bias_m:	?K
8assignvariableop_23_adam_lstm_394_lstm_cell_394_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_394_lstm_cell_394_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_394_lstm_cell_394_bias_m:	?J
8assignvariableop_26_adam_lstm_395_lstm_cell_395_kernel_m:2(T
Bassignvariableop_27_adam_lstm_395_lstm_cell_395_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_395_lstm_cell_395_bias_m:(=
+assignvariableop_29_adam_dense_131_kernel_v:
7
)assignvariableop_30_adam_dense_131_bias_v:K
8assignvariableop_31_adam_lstm_393_lstm_cell_393_kernel_v:	?U
Bassignvariableop_32_adam_lstm_393_lstm_cell_393_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_393_lstm_cell_393_bias_v:	?K
8assignvariableop_34_adam_lstm_394_lstm_cell_394_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_394_lstm_cell_394_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_394_lstm_cell_394_bias_v:	?J
8assignvariableop_37_adam_lstm_395_lstm_cell_395_kernel_v:2(T
Bassignvariableop_38_adam_lstm_395_lstm_cell_395_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_395_lstm_cell_395_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_131_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_131_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_393_lstm_cell_393_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_393_lstm_cell_393_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_393_lstm_cell_393_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_394_lstm_cell_394_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_394_lstm_cell_394_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_394_lstm_cell_394_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_395_lstm_cell_395_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_395_lstm_cell_395_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_395_lstm_cell_395_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_131_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_131_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_393_lstm_cell_393_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_393_lstm_cell_393_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_393_lstm_cell_393_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_394_lstm_cell_394_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_394_lstm_cell_394_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_394_lstm_cell_394_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_395_lstm_cell_395_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_395_lstm_cell_395_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_395_lstm_cell_395_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_131_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_131_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_393_lstm_cell_393_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_393_lstm_cell_393_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_393_lstm_cell_393_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_394_lstm_cell_394_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_394_lstm_cell_394_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_394_lstm_cell_394_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_395_lstm_cell_395_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_395_lstm_cell_395_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_395_lstm_cell_395_bias_vIdentity_39:output:0"/device:CPU:0*
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

?
lstm_393_while_cond_2373875.
*lstm_393_while_lstm_393_while_loop_counter4
0lstm_393_while_lstm_393_while_maximum_iterations
lstm_393_while_placeholder 
lstm_393_while_placeholder_1 
lstm_393_while_placeholder_2 
lstm_393_while_placeholder_30
,lstm_393_while_less_lstm_393_strided_slice_1G
Clstm_393_while_lstm_393_while_cond_2373875___redundant_placeholder0G
Clstm_393_while_lstm_393_while_cond_2373875___redundant_placeholder1G
Clstm_393_while_lstm_393_while_cond_2373875___redundant_placeholder2G
Clstm_393_while_lstm_393_while_cond_2373875___redundant_placeholder3
lstm_393_while_identity
?
lstm_393/while/LessLesslstm_393_while_placeholder,lstm_393_while_less_lstm_393_strided_slice_1*
T0*
_output_shapes
: ]
lstm_393/while/IdentityIdentitylstm_393/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_393_while_identity lstm_393/while/Identity:output:0*(
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
while_cond_2374962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2374962___redundant_placeholder05
1while_while_cond_2374962___redundant_placeholder15
1while_while_cond_2374962___redundant_placeholder25
1while_while_cond_2374962___redundant_placeholder3
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2372275

inputs?
,lstm_cell_390_matmul_readvariableop_resource:	?A
.lstm_cell_390_matmul_1_readvariableop_resource:	d?<
-lstm_cell_390_biasadd_readvariableop_resource:	?
identity??$lstm_cell_390/BiasAdd/ReadVariableOp?#lstm_cell_390/MatMul/ReadVariableOp?%lstm_cell_390/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_390/MatMul/ReadVariableOpReadVariableOp,lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_390/MatMulMatMulstrided_slice_2:output:0+lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_390/MatMul_1MatMulzeros:output:0-lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_390/addAddV2lstm_cell_390/MatMul:product:0 lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_390/BiasAddBiasAddlstm_cell_390/add:z:0,lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_390/splitSplit&lstm_cell_390/split/split_dim:output:0lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_390/SigmoidSigmoidlstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_1Sigmoidlstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_390/mulMullstm_cell_390/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_390/ReluRelulstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_1Mullstm_cell_390/Sigmoid:y:0 lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_390/add_1AddV2lstm_cell_390/mul:z:0lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_2Sigmoidlstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_390/Relu_1Relulstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_2Mullstm_cell_390/Sigmoid_2:y:0"lstm_cell_390/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_390_matmul_readvariableop_resource.lstm_cell_390_matmul_1_readvariableop_resource-lstm_cell_390_biasadd_readvariableop_resource*
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
while_body_2372191*
condR
while_cond_2372190*K
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
NoOpNoOp%^lstm_cell_390/BiasAdd/ReadVariableOp$^lstm_cell_390/MatMul/ReadVariableOp&^lstm_cell_390/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_390/BiasAdd/ReadVariableOp$lstm_cell_390/BiasAdd/ReadVariableOp2J
#lstm_cell_390/MatMul/ReadVariableOp#lstm_cell_390/MatMul/ReadVariableOp2N
%lstm_cell_390/MatMul_1/ReadVariableOp%lstm_cell_390/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373271
lstm_393_input#
lstm_393_2373244:	?#
lstm_393_2373246:	d?
lstm_393_2373248:	?#
lstm_394_2373251:	d?#
lstm_394_2373253:	2?
lstm_394_2373255:	?"
lstm_395_2373258:2("
lstm_395_2373260:
(
lstm_395_2373262:(#
dense_131_2373265:

dense_131_2373267:
identity??!dense_131/StatefulPartitionedCall? lstm_393/StatefulPartitionedCall? lstm_394/StatefulPartitionedCall? lstm_395/StatefulPartitionedCall?
 lstm_393/StatefulPartitionedCallStatefulPartitionedCalllstm_393_inputlstm_393_2373244lstm_393_2373246lstm_393_2373248*
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2372275?
 lstm_394/StatefulPartitionedCallStatefulPartitionedCall)lstm_393/StatefulPartitionedCall:output:0lstm_394_2373251lstm_394_2373253lstm_394_2373255*
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372425?
 lstm_395/StatefulPartitionedCallStatefulPartitionedCall)lstm_394/StatefulPartitionedCall:output:0lstm_395_2373258lstm_395_2373260lstm_395_2373262*
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372575?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall)lstm_395/StatefulPartitionedCall:output:0dense_131_2373265dense_131_2373267*
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
F__inference_dense_131_layer_call_and_return_conditional_losses_2372593y
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_131/StatefulPartitionedCall!^lstm_393/StatefulPartitionedCall!^lstm_394/StatefulPartitionedCall!^lstm_395/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2D
 lstm_393/StatefulPartitionedCall lstm_393/StatefulPartitionedCall2D
 lstm_394/StatefulPartitionedCall lstm_394/StatefulPartitionedCall2D
 lstm_395/StatefulPartitionedCall lstm_395/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_393_input
?8
?
while_body_2372707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_392_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_392_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_392_matmul_readvariableop_resource:2(F
4while_lstm_cell_392_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_392_biasadd_readvariableop_resource:(??*while/lstm_cell_392/BiasAdd/ReadVariableOp?)while/lstm_cell_392/MatMul/ReadVariableOp?+while/lstm_cell_392/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_392/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_392/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_392/addAddV2$while/lstm_cell_392/MatMul:product:0&while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_392/BiasAddBiasAddwhile/lstm_cell_392/add:z:02while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_392/splitSplit,while/lstm_cell_392/split/split_dim:output:0$while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_392/SigmoidSigmoid"while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_1Sigmoid"while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mulMul!while/lstm_cell_392/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_392/ReluRelu"while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_1Mulwhile/lstm_cell_392/Sigmoid:y:0&while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/add_1AddV2while/lstm_cell_392/mul:z:0while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_2Sigmoid"while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_392/Relu_1Reluwhile/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_2Mul!while/lstm_cell_392/Sigmoid_2:y:0(while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_392/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_392/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_392/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_392/BiasAdd/ReadVariableOp*^while/lstm_cell_392/MatMul/ReadVariableOp,^while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_392_biasadd_readvariableop_resource5while_lstm_cell_392_biasadd_readvariableop_resource_0"n
4while_lstm_cell_392_matmul_1_readvariableop_resource6while_lstm_cell_392_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_392_matmul_readvariableop_resource4while_lstm_cell_392_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_392/BiasAdd/ReadVariableOp*while/lstm_cell_392/BiasAdd/ReadVariableOp2V
)while/lstm_cell_392/MatMul/ReadVariableOp)while/lstm_cell_392/MatMul/ReadVariableOp2Z
+while/lstm_cell_392/MatMul_1/ReadVariableOp+while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2374776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_390_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_390_matmul_readvariableop_resource:	?G
4while_lstm_cell_390_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_390_biasadd_readvariableop_resource:	???*while/lstm_cell_390/BiasAdd/ReadVariableOp?)while/lstm_cell_390/MatMul/ReadVariableOp?+while/lstm_cell_390/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_390/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_390/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_390/addAddV2$while/lstm_cell_390/MatMul:product:0&while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_390/BiasAddBiasAddwhile/lstm_cell_390/add:z:02while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_390/splitSplit,while/lstm_cell_390/split/split_dim:output:0$while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_390/SigmoidSigmoid"while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_1Sigmoid"while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mulMul!while/lstm_cell_390/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_390/ReluRelu"while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_1Mulwhile/lstm_cell_390/Sigmoid:y:0&while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/add_1AddV2while/lstm_cell_390/mul:z:0while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_2Sigmoid"while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_390/Relu_1Reluwhile/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_2Mul!while/lstm_cell_390/Sigmoid_2:y:0(while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_390/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_390/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_390/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_390/BiasAdd/ReadVariableOp*^while/lstm_cell_390/MatMul/ReadVariableOp,^while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_390_biasadd_readvariableop_resource5while_lstm_cell_390_biasadd_readvariableop_resource_0"n
4while_lstm_cell_390_matmul_1_readvariableop_resource6while_lstm_cell_390_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_390_matmul_readvariableop_resource4while_lstm_cell_390_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_390/BiasAdd/ReadVariableOp*while/lstm_cell_390/BiasAdd/ReadVariableOp2V
)while/lstm_cell_390/MatMul/ReadVariableOp)while/lstm_cell_390/MatMul/ReadVariableOp2Z
+while/lstm_cell_390/MatMul_1/ReadVariableOp+while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_2376548
file_prefix/
+savev2_dense_131_kernel_read_readvariableop-
)savev2_dense_131_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_393_lstm_cell_393_kernel_read_readvariableopF
Bsavev2_lstm_393_lstm_cell_393_recurrent_kernel_read_readvariableop:
6savev2_lstm_393_lstm_cell_393_bias_read_readvariableop<
8savev2_lstm_394_lstm_cell_394_kernel_read_readvariableopF
Bsavev2_lstm_394_lstm_cell_394_recurrent_kernel_read_readvariableop:
6savev2_lstm_394_lstm_cell_394_bias_read_readvariableop<
8savev2_lstm_395_lstm_cell_395_kernel_read_readvariableopF
Bsavev2_lstm_395_lstm_cell_395_recurrent_kernel_read_readvariableop:
6savev2_lstm_395_lstm_cell_395_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_131_kernel_m_read_readvariableop4
0savev2_adam_dense_131_bias_m_read_readvariableopC
?savev2_adam_lstm_393_lstm_cell_393_kernel_m_read_readvariableopM
Isavev2_adam_lstm_393_lstm_cell_393_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_393_lstm_cell_393_bias_m_read_readvariableopC
?savev2_adam_lstm_394_lstm_cell_394_kernel_m_read_readvariableopM
Isavev2_adam_lstm_394_lstm_cell_394_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_394_lstm_cell_394_bias_m_read_readvariableopC
?savev2_adam_lstm_395_lstm_cell_395_kernel_m_read_readvariableopM
Isavev2_adam_lstm_395_lstm_cell_395_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_395_lstm_cell_395_bias_m_read_readvariableop6
2savev2_adam_dense_131_kernel_v_read_readvariableop4
0savev2_adam_dense_131_bias_v_read_readvariableopC
?savev2_adam_lstm_393_lstm_cell_393_kernel_v_read_readvariableopM
Isavev2_adam_lstm_393_lstm_cell_393_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_393_lstm_cell_393_bias_v_read_readvariableopC
?savev2_adam_lstm_394_lstm_cell_394_kernel_v_read_readvariableopM
Isavev2_adam_lstm_394_lstm_cell_394_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_394_lstm_cell_394_bias_v_read_readvariableopC
?savev2_adam_lstm_395_lstm_cell_395_kernel_v_read_readvariableopM
Isavev2_adam_lstm_395_lstm_cell_395_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_395_lstm_cell_395_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_131_kernel_read_readvariableop)savev2_dense_131_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_393_lstm_cell_393_kernel_read_readvariableopBsavev2_lstm_393_lstm_cell_393_recurrent_kernel_read_readvariableop6savev2_lstm_393_lstm_cell_393_bias_read_readvariableop8savev2_lstm_394_lstm_cell_394_kernel_read_readvariableopBsavev2_lstm_394_lstm_cell_394_recurrent_kernel_read_readvariableop6savev2_lstm_394_lstm_cell_394_bias_read_readvariableop8savev2_lstm_395_lstm_cell_395_kernel_read_readvariableopBsavev2_lstm_395_lstm_cell_395_recurrent_kernel_read_readvariableop6savev2_lstm_395_lstm_cell_395_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_131_kernel_m_read_readvariableop0savev2_adam_dense_131_bias_m_read_readvariableop?savev2_adam_lstm_393_lstm_cell_393_kernel_m_read_readvariableopIsavev2_adam_lstm_393_lstm_cell_393_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_393_lstm_cell_393_bias_m_read_readvariableop?savev2_adam_lstm_394_lstm_cell_394_kernel_m_read_readvariableopIsavev2_adam_lstm_394_lstm_cell_394_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_394_lstm_cell_394_bias_m_read_readvariableop?savev2_adam_lstm_395_lstm_cell_395_kernel_m_read_readvariableopIsavev2_adam_lstm_395_lstm_cell_395_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_395_lstm_cell_395_bias_m_read_readvariableop2savev2_adam_dense_131_kernel_v_read_readvariableop0savev2_adam_dense_131_bias_v_read_readvariableop?savev2_adam_lstm_393_lstm_cell_393_kernel_v_read_readvariableopIsavev2_adam_lstm_393_lstm_cell_393_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_393_lstm_cell_393_bias_v_read_readvariableop?savev2_adam_lstm_394_lstm_cell_394_kernel_v_read_readvariableopIsavev2_adam_lstm_394_lstm_cell_394_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_394_lstm_cell_394_bias_v_read_readvariableop?savev2_adam_lstm_395_lstm_cell_395_kernel_v_read_readvariableopIsavev2_adam_lstm_395_lstm_cell_395_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_395_lstm_cell_395_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?J
?
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375949

inputs>
,lstm_cell_392_matmul_readvariableop_resource:2(@
.lstm_cell_392_matmul_1_readvariableop_resource:
(;
-lstm_cell_392_biasadd_readvariableop_resource:(
identity??$lstm_cell_392/BiasAdd/ReadVariableOp?#lstm_cell_392/MatMul/ReadVariableOp?%lstm_cell_392/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_392/MatMul/ReadVariableOpReadVariableOp,lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_392/MatMulMatMulstrided_slice_2:output:0+lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_392/MatMul_1MatMulzeros:output:0-lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_392/addAddV2lstm_cell_392/MatMul:product:0 lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_392/BiasAddBiasAddlstm_cell_392/add:z:0,lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_392/splitSplit&lstm_cell_392/split/split_dim:output:0lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_392/SigmoidSigmoidlstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_1Sigmoidlstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_392/mulMullstm_cell_392/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_392/ReluRelulstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_1Mullstm_cell_392/Sigmoid:y:0 lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_392/add_1AddV2lstm_cell_392/mul:z:0lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_2Sigmoidlstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_392/Relu_1Relulstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_2Mullstm_cell_392/Sigmoid_2:y:0"lstm_cell_392/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_392_matmul_readvariableop_resource.lstm_cell_392_matmul_1_readvariableop_resource-lstm_cell_392_biasadd_readvariableop_resource*
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
while_body_2375865*
condR
while_cond_2375864*K
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
NoOpNoOp%^lstm_cell_392/BiasAdd/ReadVariableOp$^lstm_cell_392/MatMul/ReadVariableOp&^lstm_cell_392/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_392/BiasAdd/ReadVariableOp$lstm_cell_392/BiasAdd/ReadVariableOp2J
#lstm_cell_392/MatMul/ReadVariableOp#lstm_cell_392/MatMul/ReadVariableOp2N
%lstm_cell_392/MatMul_1/ReadVariableOp%lstm_cell_392/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_395_layer_call_and_return_conditional_losses_2371926

inputs'
lstm_cell_392_2371844:2('
lstm_cell_392_2371846:
(#
lstm_cell_392_2371848:(
identity??%lstm_cell_392/StatefulPartitionedCall?while;
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
%lstm_cell_392/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_392_2371844lstm_cell_392_2371846lstm_cell_392_2371848*
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371843n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_392_2371844lstm_cell_392_2371846lstm_cell_392_2371848*
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
while_body_2371857*
condR
while_cond_2371856*K
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
NoOpNoOp&^lstm_cell_392/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_392/StatefulPartitionedCall%lstm_cell_392/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_394_layer_call_fn_2374871
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2371576|
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

lstm_393_while_body_2373449.
*lstm_393_while_lstm_393_while_loop_counter4
0lstm_393_while_lstm_393_while_maximum_iterations
lstm_393_while_placeholder 
lstm_393_while_placeholder_1 
lstm_393_while_placeholder_2 
lstm_393_while_placeholder_3-
)lstm_393_while_lstm_393_strided_slice_1_0i
elstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0:	?R
?lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?M
>lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
lstm_393_while_identity
lstm_393_while_identity_1
lstm_393_while_identity_2
lstm_393_while_identity_3
lstm_393_while_identity_4
lstm_393_while_identity_5+
'lstm_393_while_lstm_393_strided_slice_1g
clstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensorN
;lstm_393_while_lstm_cell_390_matmul_readvariableop_resource:	?P
=lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource:	d?K
<lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource:	???3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp?2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp?4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp?
@lstm_393/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_393/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensor_0lstm_393_while_placeholderIlstm_393/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp=lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_393/while/lstm_cell_390/MatMulMatMul9lstm_393/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp?lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_393/while/lstm_cell_390/MatMul_1MatMullstm_393_while_placeholder_2<lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_393/while/lstm_cell_390/addAddV2-lstm_393/while/lstm_cell_390/MatMul:product:0/lstm_393/while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp>lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_393/while/lstm_cell_390/BiasAddBiasAdd$lstm_393/while/lstm_cell_390/add:z:0;lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_393/while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_393/while/lstm_cell_390/splitSplit5lstm_393/while/lstm_cell_390/split/split_dim:output:0-lstm_393/while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_393/while/lstm_cell_390/SigmoidSigmoid+lstm_393/while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_393/while/lstm_cell_390/Sigmoid_1Sigmoid+lstm_393/while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_393/while/lstm_cell_390/mulMul*lstm_393/while/lstm_cell_390/Sigmoid_1:y:0lstm_393_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_393/while/lstm_cell_390/ReluRelu+lstm_393/while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_393/while/lstm_cell_390/mul_1Mul(lstm_393/while/lstm_cell_390/Sigmoid:y:0/lstm_393/while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_393/while/lstm_cell_390/add_1AddV2$lstm_393/while/lstm_cell_390/mul:z:0&lstm_393/while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_393/while/lstm_cell_390/Sigmoid_2Sigmoid+lstm_393/while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_393/while/lstm_cell_390/Relu_1Relu&lstm_393/while/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_393/while/lstm_cell_390/mul_2Mul*lstm_393/while/lstm_cell_390/Sigmoid_2:y:01lstm_393/while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_393/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_393_while_placeholder_1lstm_393_while_placeholder&lstm_393/while/lstm_cell_390/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_393/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_393/while/addAddV2lstm_393_while_placeholderlstm_393/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_393/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_393/while/add_1AddV2*lstm_393_while_lstm_393_while_loop_counterlstm_393/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_393/while/IdentityIdentitylstm_393/while/add_1:z:0^lstm_393/while/NoOp*
T0*
_output_shapes
: ?
lstm_393/while/Identity_1Identity0lstm_393_while_lstm_393_while_maximum_iterations^lstm_393/while/NoOp*
T0*
_output_shapes
: t
lstm_393/while/Identity_2Identitylstm_393/while/add:z:0^lstm_393/while/NoOp*
T0*
_output_shapes
: ?
lstm_393/while/Identity_3IdentityClstm_393/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_393/while/NoOp*
T0*
_output_shapes
: ?
lstm_393/while/Identity_4Identity&lstm_393/while/lstm_cell_390/mul_2:z:0^lstm_393/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_393/while/Identity_5Identity&lstm_393/while/lstm_cell_390/add_1:z:0^lstm_393/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_393/while/NoOpNoOp4^lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp3^lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp5^lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_393_while_identity lstm_393/while/Identity:output:0"?
lstm_393_while_identity_1"lstm_393/while/Identity_1:output:0"?
lstm_393_while_identity_2"lstm_393/while/Identity_2:output:0"?
lstm_393_while_identity_3"lstm_393/while/Identity_3:output:0"?
lstm_393_while_identity_4"lstm_393/while/Identity_4:output:0"?
lstm_393_while_identity_5"lstm_393/while/Identity_5:output:0"T
'lstm_393_while_lstm_393_strided_slice_1)lstm_393_while_lstm_393_strided_slice_1_0"~
<lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource>lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0"?
=lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource?lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0"|
;lstm_393_while_lstm_cell_390_matmul_readvariableop_resource=lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0"?
clstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensorelstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp2h
2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp2l
4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_131_lstm_393_while_cond_2370707L
Hsequential_131_lstm_393_while_sequential_131_lstm_393_while_loop_counterR
Nsequential_131_lstm_393_while_sequential_131_lstm_393_while_maximum_iterations-
)sequential_131_lstm_393_while_placeholder/
+sequential_131_lstm_393_while_placeholder_1/
+sequential_131_lstm_393_while_placeholder_2/
+sequential_131_lstm_393_while_placeholder_3N
Jsequential_131_lstm_393_while_less_sequential_131_lstm_393_strided_slice_1e
asequential_131_lstm_393_while_sequential_131_lstm_393_while_cond_2370707___redundant_placeholder0e
asequential_131_lstm_393_while_sequential_131_lstm_393_while_cond_2370707___redundant_placeholder1e
asequential_131_lstm_393_while_sequential_131_lstm_393_while_cond_2370707___redundant_placeholder2e
asequential_131_lstm_393_while_sequential_131_lstm_393_while_cond_2370707___redundant_placeholder3*
&sequential_131_lstm_393_while_identity
?
"sequential_131/lstm_393/while/LessLess)sequential_131_lstm_393_while_placeholderJsequential_131_lstm_393_while_less_sequential_131_lstm_393_strided_slice_1*
T0*
_output_shapes
: {
&sequential_131/lstm_393/while/IdentityIdentity&sequential_131/lstm_393/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_131_lstm_393_while_identity/sequential_131/lstm_393/while/Identity:output:0*(
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
*__inference_lstm_393_layer_call_fn_2374266
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2371417|
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
*__inference_lstm_394_layer_call_fn_2374904

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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372956s
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
lstm_395_while_cond_2373726.
*lstm_395_while_lstm_395_while_loop_counter4
0lstm_395_while_lstm_395_while_maximum_iterations
lstm_395_while_placeholder 
lstm_395_while_placeholder_1 
lstm_395_while_placeholder_2 
lstm_395_while_placeholder_30
,lstm_395_while_less_lstm_395_strided_slice_1G
Clstm_395_while_lstm_395_while_cond_2373726___redundant_placeholder0G
Clstm_395_while_lstm_395_while_cond_2373726___redundant_placeholder1G
Clstm_395_while_lstm_395_while_cond_2373726___redundant_placeholder2G
Clstm_395_while_lstm_395_while_cond_2373726___redundant_placeholder3
lstm_395_while_identity
?
lstm_395/while/LessLesslstm_395_while_placeholder,lstm_395_while_less_lstm_395_strided_slice_1*
T0*
_output_shapes
: ]
lstm_395/while/IdentityIdentitylstm_395/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_395_while_identity lstm_395/while/Identity:output:0*(
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371843

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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2376373

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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371143

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
?
while_body_2375249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_391_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_391_matmul_readvariableop_resource:	d?G
4while_lstm_cell_391_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_391_biasadd_readvariableop_resource:	???*while/lstm_cell_391/BiasAdd/ReadVariableOp?)while/lstm_cell_391/MatMul/ReadVariableOp?+while/lstm_cell_391/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_391/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_391/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_391/addAddV2$while/lstm_cell_391/MatMul:product:0&while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_391/BiasAddBiasAddwhile/lstm_cell_391/add:z:02while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_391/splitSplit,while/lstm_cell_391/split/split_dim:output:0$while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_391/SigmoidSigmoid"while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_1Sigmoid"while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mulMul!while/lstm_cell_391/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_391/ReluRelu"while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_1Mulwhile/lstm_cell_391/Sigmoid:y:0&while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/add_1AddV2while/lstm_cell_391/mul:z:0while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_2Sigmoid"while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_391/Relu_1Reluwhile/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_2Mul!while/lstm_cell_391/Sigmoid_2:y:0(while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_391/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_391/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_391/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_391/BiasAdd/ReadVariableOp*^while/lstm_cell_391/MatMul/ReadVariableOp,^while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_391_biasadd_readvariableop_resource5while_lstm_cell_391_biasadd_readvariableop_resource_0"n
4while_lstm_cell_391_matmul_1_readvariableop_resource6while_lstm_cell_391_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_391_matmul_readvariableop_resource4while_lstm_cell_391_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_391/BiasAdd/ReadVariableOp*while/lstm_cell_391/BiasAdd/ReadVariableOp2V
)while/lstm_cell_391/MatMul/ReadVariableOp)while/lstm_cell_391/MatMul/ReadVariableOp2Z
+while/lstm_cell_391/MatMul_1/ReadVariableOp+while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2375248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2375248___redundant_placeholder05
1while_while_cond_2375248___redundant_placeholder15
1while_while_cond_2375248___redundant_placeholder25
1while_while_cond_2375248___redundant_placeholder3
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
while_body_2371857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_392_2371881_0:2(/
while_lstm_cell_392_2371883_0:
(+
while_lstm_cell_392_2371885_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_392_2371881:2(-
while_lstm_cell_392_2371883:
()
while_lstm_cell_392_2371885:(??+while/lstm_cell_392/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_392/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_392_2371881_0while_lstm_cell_392_2371883_0while_lstm_cell_392_2371885_0*
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371843?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_392/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_392/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_392/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_392/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_392_2371881while_lstm_cell_392_2371881_0"<
while_lstm_cell_392_2371883while_lstm_cell_392_2371883_0"<
while_lstm_cell_392_2371885while_lstm_cell_392_2371885_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_392/StatefulPartitionedCall+while/lstm_cell_392/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372117

inputs'
lstm_cell_392_2372035:2('
lstm_cell_392_2372037:
(#
lstm_cell_392_2372039:(
identity??%lstm_cell_392/StatefulPartitionedCall?while;
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
%lstm_cell_392/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_392_2372035lstm_cell_392_2372037lstm_cell_392_2372039*
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371989n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_392_2372035lstm_cell_392_2372037lstm_cell_392_2372039*
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
while_body_2372048*
condR
while_cond_2372047*K
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
NoOpNoOp&^lstm_cell_392/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_392/StatefulPartitionedCall%lstm_cell_392/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_395_layer_call_fn_2375498
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372117o
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
lstm_394_while_cond_2374014.
*lstm_394_while_lstm_394_while_loop_counter4
0lstm_394_while_lstm_394_while_maximum_iterations
lstm_394_while_placeholder 
lstm_394_while_placeholder_1 
lstm_394_while_placeholder_2 
lstm_394_while_placeholder_30
,lstm_394_while_less_lstm_394_strided_slice_1G
Clstm_394_while_lstm_394_while_cond_2374014___redundant_placeholder0G
Clstm_394_while_lstm_394_while_cond_2374014___redundant_placeholder1G
Clstm_394_while_lstm_394_while_cond_2374014___redundant_placeholder2G
Clstm_394_while_lstm_394_while_cond_2374014___redundant_placeholder3
lstm_394_while_identity
?
lstm_394/while/LessLesslstm_394_while_placeholder,lstm_394_while_less_lstm_394_strided_slice_1*
T0*
_output_shapes
: ]
lstm_394/while/IdentityIdentitylstm_394/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_394_while_identity lstm_394/while/Identity:output:0*(
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
while_cond_2375864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2375864___redundant_placeholder05
1while_while_cond_2375864___redundant_placeholder15
1while_while_cond_2375864___redundant_placeholder25
1while_while_cond_2375864___redundant_placeholder3
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2373121

inputs?
,lstm_cell_390_matmul_readvariableop_resource:	?A
.lstm_cell_390_matmul_1_readvariableop_resource:	d?<
-lstm_cell_390_biasadd_readvariableop_resource:	?
identity??$lstm_cell_390/BiasAdd/ReadVariableOp?#lstm_cell_390/MatMul/ReadVariableOp?%lstm_cell_390/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_390/MatMul/ReadVariableOpReadVariableOp,lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_390/MatMulMatMulstrided_slice_2:output:0+lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_390/MatMul_1MatMulzeros:output:0-lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_390/addAddV2lstm_cell_390/MatMul:product:0 lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_390/BiasAddBiasAddlstm_cell_390/add:z:0,lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_390/splitSplit&lstm_cell_390/split/split_dim:output:0lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_390/SigmoidSigmoidlstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_1Sigmoidlstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_390/mulMullstm_cell_390/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_390/ReluRelulstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_1Mullstm_cell_390/Sigmoid:y:0 lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_390/add_1AddV2lstm_cell_390/mul:z:0lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_2Sigmoidlstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_390/Relu_1Relulstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_2Mullstm_cell_390/Sigmoid_2:y:0"lstm_cell_390/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_390_matmul_readvariableop_resource.lstm_cell_390_matmul_1_readvariableop_resource-lstm_cell_390_biasadd_readvariableop_resource*
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
while_body_2373037*
condR
while_cond_2373036*K
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
NoOpNoOp%^lstm_cell_390/BiasAdd/ReadVariableOp$^lstm_cell_390/MatMul/ReadVariableOp&^lstm_cell_390/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_390/BiasAdd/ReadVariableOp$lstm_cell_390/BiasAdd/ReadVariableOp2J
#lstm_cell_390/MatMul/ReadVariableOp#lstm_cell_390/MatMul/ReadVariableOp2N
%lstm_cell_390/MatMul_1/ReadVariableOp%lstm_cell_390/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375190
inputs_0?
,lstm_cell_391_matmul_readvariableop_resource:	d?A
.lstm_cell_391_matmul_1_readvariableop_resource:	2?<
-lstm_cell_391_biasadd_readvariableop_resource:	?
identity??$lstm_cell_391/BiasAdd/ReadVariableOp?#lstm_cell_391/MatMul/ReadVariableOp?%lstm_cell_391/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_391/MatMul/ReadVariableOpReadVariableOp,lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_391/MatMulMatMulstrided_slice_2:output:0+lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_391/MatMul_1MatMulzeros:output:0-lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_391/addAddV2lstm_cell_391/MatMul:product:0 lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_391/BiasAddBiasAddlstm_cell_391/add:z:0,lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_391/splitSplit&lstm_cell_391/split/split_dim:output:0lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_391/SigmoidSigmoidlstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_1Sigmoidlstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_391/mulMullstm_cell_391/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_391/ReluRelulstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_1Mullstm_cell_391/Sigmoid:y:0 lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_391/add_1AddV2lstm_cell_391/mul:z:0lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_2Sigmoidlstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_391/Relu_1Relulstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_2Mullstm_cell_391/Sigmoid_2:y:0"lstm_cell_391/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_391_matmul_readvariableop_resource.lstm_cell_391_matmul_1_readvariableop_resource-lstm_cell_391_biasadd_readvariableop_resource*
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
while_body_2375106*
condR
while_cond_2375105*K
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
NoOpNoOp%^lstm_cell_391/BiasAdd/ReadVariableOp$^lstm_cell_391/MatMul/ReadVariableOp&^lstm_cell_391/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_391/BiasAdd/ReadVariableOp$lstm_cell_391/BiasAdd/ReadVariableOp2J
#lstm_cell_391/MatMul/ReadVariableOp#lstm_cell_391/MatMul/ReadVariableOp2N
%lstm_cell_391/MatMul_1/ReadVariableOp%lstm_cell_391/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_131_layer_call_fn_2373241
lstm_393_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_393_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373189o
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
_user_specified_namelstm_393_input
?8
?
while_body_2374347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_390_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_390_matmul_readvariableop_resource:	?G
4while_lstm_cell_390_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_390_biasadd_readvariableop_resource:	???*while/lstm_cell_390/BiasAdd/ReadVariableOp?)while/lstm_cell_390/MatMul/ReadVariableOp?+while/lstm_cell_390/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_390/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_390/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_390/addAddV2$while/lstm_cell_390/MatMul:product:0&while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_390/BiasAddBiasAddwhile/lstm_cell_390/add:z:02while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_390/splitSplit,while/lstm_cell_390/split/split_dim:output:0$while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_390/SigmoidSigmoid"while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_1Sigmoid"while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mulMul!while/lstm_cell_390/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_390/ReluRelu"while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_1Mulwhile/lstm_cell_390/Sigmoid:y:0&while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/add_1AddV2while/lstm_cell_390/mul:z:0while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_2Sigmoid"while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_390/Relu_1Reluwhile/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_2Mul!while/lstm_cell_390/Sigmoid_2:y:0(while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_390/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_390/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_390/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_390/BiasAdd/ReadVariableOp*^while/lstm_cell_390/MatMul/ReadVariableOp,^while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_390_biasadd_readvariableop_resource5while_lstm_cell_390_biasadd_readvariableop_resource_0"n
4while_lstm_cell_390_matmul_1_readvariableop_resource6while_lstm_cell_390_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_390_matmul_readvariableop_resource4while_lstm_cell_390_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_390/BiasAdd/ReadVariableOp*while/lstm_cell_390/BiasAdd/ReadVariableOp2V
)while/lstm_cell_390/MatMul/ReadVariableOp)while/lstm_cell_390/MatMul/ReadVariableOp2Z
+while/lstm_cell_390/MatMul_1/ReadVariableOp+while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371289

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
?C
?

lstm_395_while_body_2373727.
*lstm_395_while_lstm_395_while_loop_counter4
0lstm_395_while_lstm_395_while_maximum_iterations
lstm_395_while_placeholder 
lstm_395_while_placeholder_1 
lstm_395_while_placeholder_2 
lstm_395_while_placeholder_3-
)lstm_395_while_lstm_395_strided_slice_1_0i
elstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0:2(Q
?lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(L
>lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0:(
lstm_395_while_identity
lstm_395_while_identity_1
lstm_395_while_identity_2
lstm_395_while_identity_3
lstm_395_while_identity_4
lstm_395_while_identity_5+
'lstm_395_while_lstm_395_strided_slice_1g
clstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensorM
;lstm_395_while_lstm_cell_392_matmul_readvariableop_resource:2(O
=lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource:
(J
<lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource:(??3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp?2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp?4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp?
@lstm_395/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_395/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensor_0lstm_395_while_placeholderIlstm_395/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp=lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_395/while/lstm_cell_392/MatMulMatMul9lstm_395/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp?lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_395/while/lstm_cell_392/MatMul_1MatMullstm_395_while_placeholder_2<lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_395/while/lstm_cell_392/addAddV2-lstm_395/while/lstm_cell_392/MatMul:product:0/lstm_395/while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp>lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_395/while/lstm_cell_392/BiasAddBiasAdd$lstm_395/while/lstm_cell_392/add:z:0;lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_395/while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_395/while/lstm_cell_392/splitSplit5lstm_395/while/lstm_cell_392/split/split_dim:output:0-lstm_395/while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_395/while/lstm_cell_392/SigmoidSigmoid+lstm_395/while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_395/while/lstm_cell_392/Sigmoid_1Sigmoid+lstm_395/while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_395/while/lstm_cell_392/mulMul*lstm_395/while/lstm_cell_392/Sigmoid_1:y:0lstm_395_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_395/while/lstm_cell_392/ReluRelu+lstm_395/while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_395/while/lstm_cell_392/mul_1Mul(lstm_395/while/lstm_cell_392/Sigmoid:y:0/lstm_395/while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_395/while/lstm_cell_392/add_1AddV2$lstm_395/while/lstm_cell_392/mul:z:0&lstm_395/while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_395/while/lstm_cell_392/Sigmoid_2Sigmoid+lstm_395/while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_395/while/lstm_cell_392/Relu_1Relu&lstm_395/while/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_395/while/lstm_cell_392/mul_2Mul*lstm_395/while/lstm_cell_392/Sigmoid_2:y:01lstm_395/while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_395/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_395_while_placeholder_1lstm_395_while_placeholder&lstm_395/while/lstm_cell_392/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_395/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_395/while/addAddV2lstm_395_while_placeholderlstm_395/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_395/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_395/while/add_1AddV2*lstm_395_while_lstm_395_while_loop_counterlstm_395/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_395/while/IdentityIdentitylstm_395/while/add_1:z:0^lstm_395/while/NoOp*
T0*
_output_shapes
: ?
lstm_395/while/Identity_1Identity0lstm_395_while_lstm_395_while_maximum_iterations^lstm_395/while/NoOp*
T0*
_output_shapes
: t
lstm_395/while/Identity_2Identitylstm_395/while/add:z:0^lstm_395/while/NoOp*
T0*
_output_shapes
: ?
lstm_395/while/Identity_3IdentityClstm_395/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_395/while/NoOp*
T0*
_output_shapes
: ?
lstm_395/while/Identity_4Identity&lstm_395/while/lstm_cell_392/mul_2:z:0^lstm_395/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_395/while/Identity_5Identity&lstm_395/while/lstm_cell_392/add_1:z:0^lstm_395/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_395/while/NoOpNoOp4^lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp3^lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp5^lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_395_while_identity lstm_395/while/Identity:output:0"?
lstm_395_while_identity_1"lstm_395/while/Identity_1:output:0"?
lstm_395_while_identity_2"lstm_395/while/Identity_2:output:0"?
lstm_395_while_identity_3"lstm_395/while/Identity_3:output:0"?
lstm_395_while_identity_4"lstm_395/while/Identity_4:output:0"?
lstm_395_while_identity_5"lstm_395/while/Identity_5:output:0"T
'lstm_395_while_lstm_395_strided_slice_1)lstm_395_while_lstm_395_strided_slice_1_0"~
<lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource>lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0"?
=lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource?lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0"|
;lstm_395_while_lstm_cell_392_matmul_readvariableop_resource=lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0"?
clstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensorelstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp2h
2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp2l
4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_131_layer_call_fn_2373390

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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373189o
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
while_body_2372341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_391_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_391_matmul_readvariableop_resource:	d?G
4while_lstm_cell_391_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_391_biasadd_readvariableop_resource:	???*while/lstm_cell_391/BiasAdd/ReadVariableOp?)while/lstm_cell_391/MatMul/ReadVariableOp?+while/lstm_cell_391/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_391/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_391/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_391/addAddV2$while/lstm_cell_391/MatMul:product:0&while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_391/BiasAddBiasAddwhile/lstm_cell_391/add:z:02while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_391/splitSplit,while/lstm_cell_391/split/split_dim:output:0$while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_391/SigmoidSigmoid"while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_1Sigmoid"while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mulMul!while/lstm_cell_391/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_391/ReluRelu"while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_1Mulwhile/lstm_cell_391/Sigmoid:y:0&while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/add_1AddV2while/lstm_cell_391/mul:z:0while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_2Sigmoid"while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_391/Relu_1Reluwhile/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_2Mul!while/lstm_cell_391/Sigmoid_2:y:0(while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_391/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_391/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_391/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_391/BiasAdd/ReadVariableOp*^while/lstm_cell_391/MatMul/ReadVariableOp,^while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_391_biasadd_readvariableop_resource5while_lstm_cell_391_biasadd_readvariableop_resource_0"n
4while_lstm_cell_391_matmul_1_readvariableop_resource6while_lstm_cell_391_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_391_matmul_readvariableop_resource4while_lstm_cell_391_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_391/BiasAdd/ReadVariableOp*while/lstm_cell_391/BiasAdd/ReadVariableOp2V
)while/lstm_cell_391/MatMul/ReadVariableOp)while/lstm_cell_391/MatMul/ReadVariableOp2Z
+while/lstm_cell_391/MatMul_1/ReadVariableOp+while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2371697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2371697___redundant_placeholder05
1while_while_cond_2371697___redundant_placeholder15
1while_while_cond_2371697___redundant_placeholder25
1while_while_cond_2371697___redundant_placeholder3
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371989

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
?
?
*__inference_lstm_395_layer_call_fn_2375509

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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372575o
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
?C
?

lstm_393_while_body_2373876.
*lstm_393_while_lstm_393_while_loop_counter4
0lstm_393_while_lstm_393_while_maximum_iterations
lstm_393_while_placeholder 
lstm_393_while_placeholder_1 
lstm_393_while_placeholder_2 
lstm_393_while_placeholder_3-
)lstm_393_while_lstm_393_strided_slice_1_0i
elstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0:	?R
?lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?M
>lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
lstm_393_while_identity
lstm_393_while_identity_1
lstm_393_while_identity_2
lstm_393_while_identity_3
lstm_393_while_identity_4
lstm_393_while_identity_5+
'lstm_393_while_lstm_393_strided_slice_1g
clstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensorN
;lstm_393_while_lstm_cell_390_matmul_readvariableop_resource:	?P
=lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource:	d?K
<lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource:	???3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp?2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp?4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp?
@lstm_393/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_393/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensor_0lstm_393_while_placeholderIlstm_393/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp=lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_393/while/lstm_cell_390/MatMulMatMul9lstm_393/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp?lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_393/while/lstm_cell_390/MatMul_1MatMullstm_393_while_placeholder_2<lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_393/while/lstm_cell_390/addAddV2-lstm_393/while/lstm_cell_390/MatMul:product:0/lstm_393/while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp>lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_393/while/lstm_cell_390/BiasAddBiasAdd$lstm_393/while/lstm_cell_390/add:z:0;lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_393/while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_393/while/lstm_cell_390/splitSplit5lstm_393/while/lstm_cell_390/split/split_dim:output:0-lstm_393/while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_393/while/lstm_cell_390/SigmoidSigmoid+lstm_393/while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_393/while/lstm_cell_390/Sigmoid_1Sigmoid+lstm_393/while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_393/while/lstm_cell_390/mulMul*lstm_393/while/lstm_cell_390/Sigmoid_1:y:0lstm_393_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_393/while/lstm_cell_390/ReluRelu+lstm_393/while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_393/while/lstm_cell_390/mul_1Mul(lstm_393/while/lstm_cell_390/Sigmoid:y:0/lstm_393/while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_393/while/lstm_cell_390/add_1AddV2$lstm_393/while/lstm_cell_390/mul:z:0&lstm_393/while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_393/while/lstm_cell_390/Sigmoid_2Sigmoid+lstm_393/while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_393/while/lstm_cell_390/Relu_1Relu&lstm_393/while/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_393/while/lstm_cell_390/mul_2Mul*lstm_393/while/lstm_cell_390/Sigmoid_2:y:01lstm_393/while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_393/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_393_while_placeholder_1lstm_393_while_placeholder&lstm_393/while/lstm_cell_390/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_393/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_393/while/addAddV2lstm_393_while_placeholderlstm_393/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_393/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_393/while/add_1AddV2*lstm_393_while_lstm_393_while_loop_counterlstm_393/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_393/while/IdentityIdentitylstm_393/while/add_1:z:0^lstm_393/while/NoOp*
T0*
_output_shapes
: ?
lstm_393/while/Identity_1Identity0lstm_393_while_lstm_393_while_maximum_iterations^lstm_393/while/NoOp*
T0*
_output_shapes
: t
lstm_393/while/Identity_2Identitylstm_393/while/add:z:0^lstm_393/while/NoOp*
T0*
_output_shapes
: ?
lstm_393/while/Identity_3IdentityClstm_393/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_393/while/NoOp*
T0*
_output_shapes
: ?
lstm_393/while/Identity_4Identity&lstm_393/while/lstm_cell_390/mul_2:z:0^lstm_393/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_393/while/Identity_5Identity&lstm_393/while/lstm_cell_390/add_1:z:0^lstm_393/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_393/while/NoOpNoOp4^lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp3^lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp5^lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_393_while_identity lstm_393/while/Identity:output:0"?
lstm_393_while_identity_1"lstm_393/while/Identity_1:output:0"?
lstm_393_while_identity_2"lstm_393/while/Identity_2:output:0"?
lstm_393_while_identity_3"lstm_393/while/Identity_3:output:0"?
lstm_393_while_identity_4"lstm_393/while/Identity_4:output:0"?
lstm_393_while_identity_5"lstm_393/while/Identity_5:output:0"T
'lstm_393_while_lstm_393_strided_slice_1)lstm_393_while_lstm_393_strided_slice_1_0"~
<lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource>lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0"?
=lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource?lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0"|
;lstm_393_while_lstm_cell_390_matmul_readvariableop_resource=lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0"?
clstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensorelstm_393_while_tensorarrayv2read_tensorlistgetitem_lstm_393_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp3lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp2h
2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp2lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp2l
4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp4lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_393_layer_call_fn_2374255
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2371226|
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375476

inputs?
,lstm_cell_391_matmul_readvariableop_resource:	d?A
.lstm_cell_391_matmul_1_readvariableop_resource:	2?<
-lstm_cell_391_biasadd_readvariableop_resource:	?
identity??$lstm_cell_391/BiasAdd/ReadVariableOp?#lstm_cell_391/MatMul/ReadVariableOp?%lstm_cell_391/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_391/MatMul/ReadVariableOpReadVariableOp,lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_391/MatMulMatMulstrided_slice_2:output:0+lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_391/MatMul_1MatMulzeros:output:0-lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_391/addAddV2lstm_cell_391/MatMul:product:0 lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_391/BiasAddBiasAddlstm_cell_391/add:z:0,lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_391/splitSplit&lstm_cell_391/split/split_dim:output:0lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_391/SigmoidSigmoidlstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_1Sigmoidlstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_391/mulMullstm_cell_391/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_391/ReluRelulstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_1Mullstm_cell_391/Sigmoid:y:0 lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_391/add_1AddV2lstm_cell_391/mul:z:0lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_2Sigmoidlstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_391/Relu_1Relulstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_2Mullstm_cell_391/Sigmoid_2:y:0"lstm_cell_391/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_391_matmul_readvariableop_resource.lstm_cell_391_matmul_1_readvariableop_resource-lstm_cell_391_biasadd_readvariableop_resource*
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
while_body_2375392*
condR
while_cond_2375391*K
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
NoOpNoOp%^lstm_cell_391/BiasAdd/ReadVariableOp$^lstm_cell_391/MatMul/ReadVariableOp&^lstm_cell_391/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_391/BiasAdd/ReadVariableOp$lstm_cell_391/BiasAdd/ReadVariableOp2J
#lstm_cell_391/MatMul/ReadVariableOp#lstm_cell_391/MatMul/ReadVariableOp2N
%lstm_cell_391/MatMul_1/ReadVariableOp%lstm_cell_391/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2375722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_392_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_392_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_392_matmul_readvariableop_resource:2(F
4while_lstm_cell_392_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_392_biasadd_readvariableop_resource:(??*while/lstm_cell_392/BiasAdd/ReadVariableOp?)while/lstm_cell_392/MatMul/ReadVariableOp?+while/lstm_cell_392/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_392/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_392/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_392/addAddV2$while/lstm_cell_392/MatMul:product:0&while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_392/BiasAddBiasAddwhile/lstm_cell_392/add:z:02while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_392/splitSplit,while/lstm_cell_392/split/split_dim:output:0$while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_392/SigmoidSigmoid"while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_1Sigmoid"while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mulMul!while/lstm_cell_392/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_392/ReluRelu"while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_1Mulwhile/lstm_cell_392/Sigmoid:y:0&while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/add_1AddV2while/lstm_cell_392/mul:z:0while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_2Sigmoid"while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_392/Relu_1Reluwhile/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_2Mul!while/lstm_cell_392/Sigmoid_2:y:0(while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_392/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_392/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_392/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_392/BiasAdd/ReadVariableOp*^while/lstm_cell_392/MatMul/ReadVariableOp,^while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_392_biasadd_readvariableop_resource5while_lstm_cell_392_biasadd_readvariableop_resource_0"n
4while_lstm_cell_392_matmul_1_readvariableop_resource6while_lstm_cell_392_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_392_matmul_readvariableop_resource4while_lstm_cell_392_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_392/BiasAdd/ReadVariableOp*while/lstm_cell_392/BiasAdd/ReadVariableOp2V
)while/lstm_cell_392/MatMul/ReadVariableOp)while/lstm_cell_392/MatMul/ReadVariableOp2Z
+while/lstm_cell_392/MatMul_1/ReadVariableOp+while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374860

inputs?
,lstm_cell_390_matmul_readvariableop_resource:	?A
.lstm_cell_390_matmul_1_readvariableop_resource:	d?<
-lstm_cell_390_biasadd_readvariableop_resource:	?
identity??$lstm_cell_390/BiasAdd/ReadVariableOp?#lstm_cell_390/MatMul/ReadVariableOp?%lstm_cell_390/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_390/MatMul/ReadVariableOpReadVariableOp,lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_390/MatMulMatMulstrided_slice_2:output:0+lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_390/MatMul_1MatMulzeros:output:0-lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_390/addAddV2lstm_cell_390/MatMul:product:0 lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_390/BiasAddBiasAddlstm_cell_390/add:z:0,lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_390/splitSplit&lstm_cell_390/split/split_dim:output:0lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_390/SigmoidSigmoidlstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_1Sigmoidlstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_390/mulMullstm_cell_390/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_390/ReluRelulstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_1Mullstm_cell_390/Sigmoid:y:0 lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_390/add_1AddV2lstm_cell_390/mul:z:0lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_2Sigmoidlstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_390/Relu_1Relulstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_2Mullstm_cell_390/Sigmoid_2:y:0"lstm_cell_390/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_390_matmul_readvariableop_resource.lstm_cell_390_matmul_1_readvariableop_resource-lstm_cell_390_biasadd_readvariableop_resource*
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
while_body_2374776*
condR
while_cond_2374775*K
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
NoOpNoOp%^lstm_cell_390/BiasAdd/ReadVariableOp$^lstm_cell_390/MatMul/ReadVariableOp&^lstm_cell_390/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_390/BiasAdd/ReadVariableOp$lstm_cell_390/BiasAdd/ReadVariableOp2J
#lstm_cell_390/MatMul/ReadVariableOp#lstm_cell_390/MatMul/ReadVariableOp2N
%lstm_cell_390/MatMul_1/ReadVariableOp%lstm_cell_390/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2376307

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
while_body_2371698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_391_2371722_0:	d?0
while_lstm_cell_391_2371724_0:	2?,
while_lstm_cell_391_2371726_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_391_2371722:	d?.
while_lstm_cell_391_2371724:	2?*
while_lstm_cell_391_2371726:	???+while/lstm_cell_391/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_391/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_391_2371722_0while_lstm_cell_391_2371724_0while_lstm_cell_391_2371726_0*
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371639?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_391/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_391/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_391/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_391/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_391_2371722while_lstm_cell_391_2371722_0"<
while_lstm_cell_391_2371724while_lstm_cell_391_2371724_0"<
while_lstm_cell_391_2371726while_lstm_cell_391_2371726_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_391/StatefulPartitionedCall+while/lstm_cell_391/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2375578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2375578___redundant_placeholder05
1while_while_cond_2375578___redundant_placeholder15
1while_while_cond_2375578___redundant_placeholder25
1while_while_cond_2375578___redundant_placeholder3
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
while_cond_2374346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2374346___redundant_placeholder05
1while_while_cond_2374346___redundant_placeholder15
1while_while_cond_2374346___redundant_placeholder25
1while_while_cond_2374346___redundant_placeholder3
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374574
inputs_0?
,lstm_cell_390_matmul_readvariableop_resource:	?A
.lstm_cell_390_matmul_1_readvariableop_resource:	d?<
-lstm_cell_390_biasadd_readvariableop_resource:	?
identity??$lstm_cell_390/BiasAdd/ReadVariableOp?#lstm_cell_390/MatMul/ReadVariableOp?%lstm_cell_390/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_390/MatMul/ReadVariableOpReadVariableOp,lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_390/MatMulMatMulstrided_slice_2:output:0+lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_390/MatMul_1MatMulzeros:output:0-lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_390/addAddV2lstm_cell_390/MatMul:product:0 lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_390/BiasAddBiasAddlstm_cell_390/add:z:0,lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_390/splitSplit&lstm_cell_390/split/split_dim:output:0lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_390/SigmoidSigmoidlstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_1Sigmoidlstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_390/mulMullstm_cell_390/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_390/ReluRelulstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_1Mullstm_cell_390/Sigmoid:y:0 lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_390/add_1AddV2lstm_cell_390/mul:z:0lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_390/Sigmoid_2Sigmoidlstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_390/Relu_1Relulstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_390/mul_2Mullstm_cell_390/Sigmoid_2:y:0"lstm_cell_390/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_390_matmul_readvariableop_resource.lstm_cell_390_matmul_1_readvariableop_resource-lstm_cell_390_biasadd_readvariableop_resource*
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
while_body_2374490*
condR
while_cond_2374489*K
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
NoOpNoOp%^lstm_cell_390/BiasAdd/ReadVariableOp$^lstm_cell_390/MatMul/ReadVariableOp&^lstm_cell_390/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_390/BiasAdd/ReadVariableOp$lstm_cell_390/BiasAdd/ReadVariableOp2J
#lstm_cell_390/MatMul/ReadVariableOp#lstm_cell_390/MatMul/ReadVariableOp2N
%lstm_cell_390/MatMul_1/ReadVariableOp%lstm_cell_390/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_2372191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_390_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_390_matmul_readvariableop_resource:	?G
4while_lstm_cell_390_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_390_biasadd_readvariableop_resource:	???*while/lstm_cell_390/BiasAdd/ReadVariableOp?)while/lstm_cell_390/MatMul/ReadVariableOp?+while/lstm_cell_390/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_390/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_390/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_390/addAddV2$while/lstm_cell_390/MatMul:product:0&while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_390/BiasAddBiasAddwhile/lstm_cell_390/add:z:02while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_390/splitSplit,while/lstm_cell_390/split/split_dim:output:0$while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_390/SigmoidSigmoid"while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_1Sigmoid"while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mulMul!while/lstm_cell_390/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_390/ReluRelu"while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_1Mulwhile/lstm_cell_390/Sigmoid:y:0&while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/add_1AddV2while/lstm_cell_390/mul:z:0while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_2Sigmoid"while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_390/Relu_1Reluwhile/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_2Mul!while/lstm_cell_390/Sigmoid_2:y:0(while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_390/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_390/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_390/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_390/BiasAdd/ReadVariableOp*^while/lstm_cell_390/MatMul/ReadVariableOp,^while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_390_biasadd_readvariableop_resource5while_lstm_cell_390_biasadd_readvariableop_resource_0"n
4while_lstm_cell_390_matmul_1_readvariableop_resource6while_lstm_cell_390_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_390_matmul_readvariableop_resource4while_lstm_cell_390_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_390/BiasAdd/ReadVariableOp*while/lstm_cell_390/BiasAdd/ReadVariableOp2V
)while/lstm_cell_390/MatMul/ReadVariableOp)while/lstm_cell_390/MatMul/ReadVariableOp2Z
+while/lstm_cell_390/MatMul_1/ReadVariableOp+while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_2371076
lstm_393_inputW
Dsequential_131_lstm_393_lstm_cell_390_matmul_readvariableop_resource:	?Y
Fsequential_131_lstm_393_lstm_cell_390_matmul_1_readvariableop_resource:	d?T
Esequential_131_lstm_393_lstm_cell_390_biasadd_readvariableop_resource:	?W
Dsequential_131_lstm_394_lstm_cell_391_matmul_readvariableop_resource:	d?Y
Fsequential_131_lstm_394_lstm_cell_391_matmul_1_readvariableop_resource:	2?T
Esequential_131_lstm_394_lstm_cell_391_biasadd_readvariableop_resource:	?V
Dsequential_131_lstm_395_lstm_cell_392_matmul_readvariableop_resource:2(X
Fsequential_131_lstm_395_lstm_cell_392_matmul_1_readvariableop_resource:
(S
Esequential_131_lstm_395_lstm_cell_392_biasadd_readvariableop_resource:(I
7sequential_131_dense_131_matmul_readvariableop_resource:
F
8sequential_131_dense_131_biasadd_readvariableop_resource:
identity??/sequential_131/dense_131/BiasAdd/ReadVariableOp?.sequential_131/dense_131/MatMul/ReadVariableOp?<sequential_131/lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp?;sequential_131/lstm_393/lstm_cell_390/MatMul/ReadVariableOp?=sequential_131/lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp?sequential_131/lstm_393/while?<sequential_131/lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp?;sequential_131/lstm_394/lstm_cell_391/MatMul/ReadVariableOp?=sequential_131/lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp?sequential_131/lstm_394/while?<sequential_131/lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp?;sequential_131/lstm_395/lstm_cell_392/MatMul/ReadVariableOp?=sequential_131/lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp?sequential_131/lstm_395/while[
sequential_131/lstm_393/ShapeShapelstm_393_input*
T0*
_output_shapes
:u
+sequential_131/lstm_393/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_131/lstm_393/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_131/lstm_393/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_131/lstm_393/strided_sliceStridedSlice&sequential_131/lstm_393/Shape:output:04sequential_131/lstm_393/strided_slice/stack:output:06sequential_131/lstm_393/strided_slice/stack_1:output:06sequential_131/lstm_393/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_131/lstm_393/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_131/lstm_393/zeros/packedPack.sequential_131/lstm_393/strided_slice:output:0/sequential_131/lstm_393/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_131/lstm_393/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_131/lstm_393/zerosFill-sequential_131/lstm_393/zeros/packed:output:0,sequential_131/lstm_393/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_131/lstm_393/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_131/lstm_393/zeros_1/packedPack.sequential_131/lstm_393/strided_slice:output:01sequential_131/lstm_393/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_131/lstm_393/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_131/lstm_393/zeros_1Fill/sequential_131/lstm_393/zeros_1/packed:output:0.sequential_131/lstm_393/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_131/lstm_393/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_131/lstm_393/transpose	Transposelstm_393_input/sequential_131/lstm_393/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_131/lstm_393/Shape_1Shape%sequential_131/lstm_393/transpose:y:0*
T0*
_output_shapes
:w
-sequential_131/lstm_393/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_393/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_131/lstm_393/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_393/strided_slice_1StridedSlice(sequential_131/lstm_393/Shape_1:output:06sequential_131/lstm_393/strided_slice_1/stack:output:08sequential_131/lstm_393/strided_slice_1/stack_1:output:08sequential_131/lstm_393/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_131/lstm_393/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_131/lstm_393/TensorArrayV2TensorListReserve<sequential_131/lstm_393/TensorArrayV2/element_shape:output:00sequential_131/lstm_393/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_131/lstm_393/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_131/lstm_393/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_131/lstm_393/transpose:y:0Vsequential_131/lstm_393/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_131/lstm_393/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_393/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_131/lstm_393/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_393/strided_slice_2StridedSlice%sequential_131/lstm_393/transpose:y:06sequential_131/lstm_393/strided_slice_2/stack:output:08sequential_131/lstm_393/strided_slice_2/stack_1:output:08sequential_131/lstm_393/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_131/lstm_393/lstm_cell_390/MatMul/ReadVariableOpReadVariableOpDsequential_131_lstm_393_lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_131/lstm_393/lstm_cell_390/MatMulMatMul0sequential_131/lstm_393/strided_slice_2:output:0Csequential_131/lstm_393/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_131/lstm_393/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOpFsequential_131_lstm_393_lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_131/lstm_393/lstm_cell_390/MatMul_1MatMul&sequential_131/lstm_393/zeros:output:0Esequential_131/lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_131/lstm_393/lstm_cell_390/addAddV26sequential_131/lstm_393/lstm_cell_390/MatMul:product:08sequential_131/lstm_393/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_131/lstm_393/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOpEsequential_131_lstm_393_lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_131/lstm_393/lstm_cell_390/BiasAddBiasAdd-sequential_131/lstm_393/lstm_cell_390/add:z:0Dsequential_131/lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_131/lstm_393/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_131/lstm_393/lstm_cell_390/splitSplit>sequential_131/lstm_393/lstm_cell_390/split/split_dim:output:06sequential_131/lstm_393/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_131/lstm_393/lstm_cell_390/SigmoidSigmoid4sequential_131/lstm_393/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_131/lstm_393/lstm_cell_390/Sigmoid_1Sigmoid4sequential_131/lstm_393/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_131/lstm_393/lstm_cell_390/mulMul3sequential_131/lstm_393/lstm_cell_390/Sigmoid_1:y:0(sequential_131/lstm_393/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_131/lstm_393/lstm_cell_390/ReluRelu4sequential_131/lstm_393/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_131/lstm_393/lstm_cell_390/mul_1Mul1sequential_131/lstm_393/lstm_cell_390/Sigmoid:y:08sequential_131/lstm_393/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_131/lstm_393/lstm_cell_390/add_1AddV2-sequential_131/lstm_393/lstm_cell_390/mul:z:0/sequential_131/lstm_393/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_131/lstm_393/lstm_cell_390/Sigmoid_2Sigmoid4sequential_131/lstm_393/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_131/lstm_393/lstm_cell_390/Relu_1Relu/sequential_131/lstm_393/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_131/lstm_393/lstm_cell_390/mul_2Mul3sequential_131/lstm_393/lstm_cell_390/Sigmoid_2:y:0:sequential_131/lstm_393/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_131/lstm_393/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_131/lstm_393/TensorArrayV2_1TensorListReserve>sequential_131/lstm_393/TensorArrayV2_1/element_shape:output:00sequential_131/lstm_393/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_131/lstm_393/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_131/lstm_393/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_131/lstm_393/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_131/lstm_393/whileWhile3sequential_131/lstm_393/while/loop_counter:output:09sequential_131/lstm_393/while/maximum_iterations:output:0%sequential_131/lstm_393/time:output:00sequential_131/lstm_393/TensorArrayV2_1:handle:0&sequential_131/lstm_393/zeros:output:0(sequential_131/lstm_393/zeros_1:output:00sequential_131/lstm_393/strided_slice_1:output:0Osequential_131/lstm_393/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_131_lstm_393_lstm_cell_390_matmul_readvariableop_resourceFsequential_131_lstm_393_lstm_cell_390_matmul_1_readvariableop_resourceEsequential_131_lstm_393_lstm_cell_390_biasadd_readvariableop_resource*
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
*sequential_131_lstm_393_while_body_2370708*6
cond.R,
*sequential_131_lstm_393_while_cond_2370707*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_131/lstm_393/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_131/lstm_393/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_131/lstm_393/while:output:3Qsequential_131/lstm_393/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_131/lstm_393/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_131/lstm_393/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_393/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_393/strided_slice_3StridedSliceCsequential_131/lstm_393/TensorArrayV2Stack/TensorListStack:tensor:06sequential_131/lstm_393/strided_slice_3/stack:output:08sequential_131/lstm_393/strided_slice_3/stack_1:output:08sequential_131/lstm_393/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_131/lstm_393/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_131/lstm_393/transpose_1	TransposeCsequential_131/lstm_393/TensorArrayV2Stack/TensorListStack:tensor:01sequential_131/lstm_393/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_131/lstm_393/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_131/lstm_394/ShapeShape'sequential_131/lstm_393/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_131/lstm_394/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_131/lstm_394/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_131/lstm_394/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_131/lstm_394/strided_sliceStridedSlice&sequential_131/lstm_394/Shape:output:04sequential_131/lstm_394/strided_slice/stack:output:06sequential_131/lstm_394/strided_slice/stack_1:output:06sequential_131/lstm_394/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_131/lstm_394/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_131/lstm_394/zeros/packedPack.sequential_131/lstm_394/strided_slice:output:0/sequential_131/lstm_394/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_131/lstm_394/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_131/lstm_394/zerosFill-sequential_131/lstm_394/zeros/packed:output:0,sequential_131/lstm_394/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_131/lstm_394/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_131/lstm_394/zeros_1/packedPack.sequential_131/lstm_394/strided_slice:output:01sequential_131/lstm_394/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_131/lstm_394/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_131/lstm_394/zeros_1Fill/sequential_131/lstm_394/zeros_1/packed:output:0.sequential_131/lstm_394/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_131/lstm_394/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_131/lstm_394/transpose	Transpose'sequential_131/lstm_393/transpose_1:y:0/sequential_131/lstm_394/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_131/lstm_394/Shape_1Shape%sequential_131/lstm_394/transpose:y:0*
T0*
_output_shapes
:w
-sequential_131/lstm_394/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_394/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_131/lstm_394/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_394/strided_slice_1StridedSlice(sequential_131/lstm_394/Shape_1:output:06sequential_131/lstm_394/strided_slice_1/stack:output:08sequential_131/lstm_394/strided_slice_1/stack_1:output:08sequential_131/lstm_394/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_131/lstm_394/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_131/lstm_394/TensorArrayV2TensorListReserve<sequential_131/lstm_394/TensorArrayV2/element_shape:output:00sequential_131/lstm_394/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_131/lstm_394/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_131/lstm_394/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_131/lstm_394/transpose:y:0Vsequential_131/lstm_394/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_131/lstm_394/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_394/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_131/lstm_394/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_394/strided_slice_2StridedSlice%sequential_131/lstm_394/transpose:y:06sequential_131/lstm_394/strided_slice_2/stack:output:08sequential_131/lstm_394/strided_slice_2/stack_1:output:08sequential_131/lstm_394/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_131/lstm_394/lstm_cell_391/MatMul/ReadVariableOpReadVariableOpDsequential_131_lstm_394_lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_131/lstm_394/lstm_cell_391/MatMulMatMul0sequential_131/lstm_394/strided_slice_2:output:0Csequential_131/lstm_394/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_131/lstm_394/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOpFsequential_131_lstm_394_lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_131/lstm_394/lstm_cell_391/MatMul_1MatMul&sequential_131/lstm_394/zeros:output:0Esequential_131/lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_131/lstm_394/lstm_cell_391/addAddV26sequential_131/lstm_394/lstm_cell_391/MatMul:product:08sequential_131/lstm_394/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_131/lstm_394/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOpEsequential_131_lstm_394_lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_131/lstm_394/lstm_cell_391/BiasAddBiasAdd-sequential_131/lstm_394/lstm_cell_391/add:z:0Dsequential_131/lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_131/lstm_394/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_131/lstm_394/lstm_cell_391/splitSplit>sequential_131/lstm_394/lstm_cell_391/split/split_dim:output:06sequential_131/lstm_394/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_131/lstm_394/lstm_cell_391/SigmoidSigmoid4sequential_131/lstm_394/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_131/lstm_394/lstm_cell_391/Sigmoid_1Sigmoid4sequential_131/lstm_394/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_131/lstm_394/lstm_cell_391/mulMul3sequential_131/lstm_394/lstm_cell_391/Sigmoid_1:y:0(sequential_131/lstm_394/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_131/lstm_394/lstm_cell_391/ReluRelu4sequential_131/lstm_394/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_131/lstm_394/lstm_cell_391/mul_1Mul1sequential_131/lstm_394/lstm_cell_391/Sigmoid:y:08sequential_131/lstm_394/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_131/lstm_394/lstm_cell_391/add_1AddV2-sequential_131/lstm_394/lstm_cell_391/mul:z:0/sequential_131/lstm_394/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_131/lstm_394/lstm_cell_391/Sigmoid_2Sigmoid4sequential_131/lstm_394/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_131/lstm_394/lstm_cell_391/Relu_1Relu/sequential_131/lstm_394/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_131/lstm_394/lstm_cell_391/mul_2Mul3sequential_131/lstm_394/lstm_cell_391/Sigmoid_2:y:0:sequential_131/lstm_394/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_131/lstm_394/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_131/lstm_394/TensorArrayV2_1TensorListReserve>sequential_131/lstm_394/TensorArrayV2_1/element_shape:output:00sequential_131/lstm_394/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_131/lstm_394/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_131/lstm_394/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_131/lstm_394/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_131/lstm_394/whileWhile3sequential_131/lstm_394/while/loop_counter:output:09sequential_131/lstm_394/while/maximum_iterations:output:0%sequential_131/lstm_394/time:output:00sequential_131/lstm_394/TensorArrayV2_1:handle:0&sequential_131/lstm_394/zeros:output:0(sequential_131/lstm_394/zeros_1:output:00sequential_131/lstm_394/strided_slice_1:output:0Osequential_131/lstm_394/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_131_lstm_394_lstm_cell_391_matmul_readvariableop_resourceFsequential_131_lstm_394_lstm_cell_391_matmul_1_readvariableop_resourceEsequential_131_lstm_394_lstm_cell_391_biasadd_readvariableop_resource*
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
*sequential_131_lstm_394_while_body_2370847*6
cond.R,
*sequential_131_lstm_394_while_cond_2370846*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_131/lstm_394/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_131/lstm_394/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_131/lstm_394/while:output:3Qsequential_131/lstm_394/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_131/lstm_394/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_131/lstm_394/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_394/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_394/strided_slice_3StridedSliceCsequential_131/lstm_394/TensorArrayV2Stack/TensorListStack:tensor:06sequential_131/lstm_394/strided_slice_3/stack:output:08sequential_131/lstm_394/strided_slice_3/stack_1:output:08sequential_131/lstm_394/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_131/lstm_394/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_131/lstm_394/transpose_1	TransposeCsequential_131/lstm_394/TensorArrayV2Stack/TensorListStack:tensor:01sequential_131/lstm_394/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_131/lstm_394/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_131/lstm_395/ShapeShape'sequential_131/lstm_394/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_131/lstm_395/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_131/lstm_395/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_131/lstm_395/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_131/lstm_395/strided_sliceStridedSlice&sequential_131/lstm_395/Shape:output:04sequential_131/lstm_395/strided_slice/stack:output:06sequential_131/lstm_395/strided_slice/stack_1:output:06sequential_131/lstm_395/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_131/lstm_395/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_131/lstm_395/zeros/packedPack.sequential_131/lstm_395/strided_slice:output:0/sequential_131/lstm_395/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_131/lstm_395/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_131/lstm_395/zerosFill-sequential_131/lstm_395/zeros/packed:output:0,sequential_131/lstm_395/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_131/lstm_395/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_131/lstm_395/zeros_1/packedPack.sequential_131/lstm_395/strided_slice:output:01sequential_131/lstm_395/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_131/lstm_395/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_131/lstm_395/zeros_1Fill/sequential_131/lstm_395/zeros_1/packed:output:0.sequential_131/lstm_395/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_131/lstm_395/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_131/lstm_395/transpose	Transpose'sequential_131/lstm_394/transpose_1:y:0/sequential_131/lstm_395/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_131/lstm_395/Shape_1Shape%sequential_131/lstm_395/transpose:y:0*
T0*
_output_shapes
:w
-sequential_131/lstm_395/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_395/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_131/lstm_395/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_395/strided_slice_1StridedSlice(sequential_131/lstm_395/Shape_1:output:06sequential_131/lstm_395/strided_slice_1/stack:output:08sequential_131/lstm_395/strided_slice_1/stack_1:output:08sequential_131/lstm_395/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_131/lstm_395/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_131/lstm_395/TensorArrayV2TensorListReserve<sequential_131/lstm_395/TensorArrayV2/element_shape:output:00sequential_131/lstm_395/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_131/lstm_395/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_131/lstm_395/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_131/lstm_395/transpose:y:0Vsequential_131/lstm_395/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_131/lstm_395/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_395/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_131/lstm_395/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_395/strided_slice_2StridedSlice%sequential_131/lstm_395/transpose:y:06sequential_131/lstm_395/strided_slice_2/stack:output:08sequential_131/lstm_395/strided_slice_2/stack_1:output:08sequential_131/lstm_395/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_131/lstm_395/lstm_cell_392/MatMul/ReadVariableOpReadVariableOpDsequential_131_lstm_395_lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_131/lstm_395/lstm_cell_392/MatMulMatMul0sequential_131/lstm_395/strided_slice_2:output:0Csequential_131/lstm_395/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_131/lstm_395/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOpFsequential_131_lstm_395_lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_131/lstm_395/lstm_cell_392/MatMul_1MatMul&sequential_131/lstm_395/zeros:output:0Esequential_131/lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_131/lstm_395/lstm_cell_392/addAddV26sequential_131/lstm_395/lstm_cell_392/MatMul:product:08sequential_131/lstm_395/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_131/lstm_395/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOpEsequential_131_lstm_395_lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_131/lstm_395/lstm_cell_392/BiasAddBiasAdd-sequential_131/lstm_395/lstm_cell_392/add:z:0Dsequential_131/lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_131/lstm_395/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_131/lstm_395/lstm_cell_392/splitSplit>sequential_131/lstm_395/lstm_cell_392/split/split_dim:output:06sequential_131/lstm_395/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_131/lstm_395/lstm_cell_392/SigmoidSigmoid4sequential_131/lstm_395/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_131/lstm_395/lstm_cell_392/Sigmoid_1Sigmoid4sequential_131/lstm_395/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_131/lstm_395/lstm_cell_392/mulMul3sequential_131/lstm_395/lstm_cell_392/Sigmoid_1:y:0(sequential_131/lstm_395/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_131/lstm_395/lstm_cell_392/ReluRelu4sequential_131/lstm_395/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_131/lstm_395/lstm_cell_392/mul_1Mul1sequential_131/lstm_395/lstm_cell_392/Sigmoid:y:08sequential_131/lstm_395/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_131/lstm_395/lstm_cell_392/add_1AddV2-sequential_131/lstm_395/lstm_cell_392/mul:z:0/sequential_131/lstm_395/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_131/lstm_395/lstm_cell_392/Sigmoid_2Sigmoid4sequential_131/lstm_395/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_131/lstm_395/lstm_cell_392/Relu_1Relu/sequential_131/lstm_395/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_131/lstm_395/lstm_cell_392/mul_2Mul3sequential_131/lstm_395/lstm_cell_392/Sigmoid_2:y:0:sequential_131/lstm_395/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_131/lstm_395/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_131/lstm_395/TensorArrayV2_1TensorListReserve>sequential_131/lstm_395/TensorArrayV2_1/element_shape:output:00sequential_131/lstm_395/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_131/lstm_395/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_131/lstm_395/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_131/lstm_395/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_131/lstm_395/whileWhile3sequential_131/lstm_395/while/loop_counter:output:09sequential_131/lstm_395/while/maximum_iterations:output:0%sequential_131/lstm_395/time:output:00sequential_131/lstm_395/TensorArrayV2_1:handle:0&sequential_131/lstm_395/zeros:output:0(sequential_131/lstm_395/zeros_1:output:00sequential_131/lstm_395/strided_slice_1:output:0Osequential_131/lstm_395/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_131_lstm_395_lstm_cell_392_matmul_readvariableop_resourceFsequential_131_lstm_395_lstm_cell_392_matmul_1_readvariableop_resourceEsequential_131_lstm_395_lstm_cell_392_biasadd_readvariableop_resource*
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
*sequential_131_lstm_395_while_body_2370986*6
cond.R,
*sequential_131_lstm_395_while_cond_2370985*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_131/lstm_395/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_131/lstm_395/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_131/lstm_395/while:output:3Qsequential_131/lstm_395/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_131/lstm_395/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_131/lstm_395/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_131/lstm_395/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_131/lstm_395/strided_slice_3StridedSliceCsequential_131/lstm_395/TensorArrayV2Stack/TensorListStack:tensor:06sequential_131/lstm_395/strided_slice_3/stack:output:08sequential_131/lstm_395/strided_slice_3/stack_1:output:08sequential_131/lstm_395/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_131/lstm_395/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_131/lstm_395/transpose_1	TransposeCsequential_131/lstm_395/TensorArrayV2Stack/TensorListStack:tensor:01sequential_131/lstm_395/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_131/lstm_395/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_131/dense_131/MatMul/ReadVariableOpReadVariableOp7sequential_131_dense_131_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_131/dense_131/MatMulMatMul0sequential_131/lstm_395/strided_slice_3:output:06sequential_131/dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_131/dense_131/BiasAdd/ReadVariableOpReadVariableOp8sequential_131_dense_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_131/dense_131/BiasAddBiasAdd)sequential_131/dense_131/MatMul:product:07sequential_131/dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_131/dense_131/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_131/dense_131/BiasAdd/ReadVariableOp/^sequential_131/dense_131/MatMul/ReadVariableOp=^sequential_131/lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp<^sequential_131/lstm_393/lstm_cell_390/MatMul/ReadVariableOp>^sequential_131/lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp^sequential_131/lstm_393/while=^sequential_131/lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp<^sequential_131/lstm_394/lstm_cell_391/MatMul/ReadVariableOp>^sequential_131/lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp^sequential_131/lstm_394/while=^sequential_131/lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp<^sequential_131/lstm_395/lstm_cell_392/MatMul/ReadVariableOp>^sequential_131/lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp^sequential_131/lstm_395/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_131/dense_131/BiasAdd/ReadVariableOp/sequential_131/dense_131/BiasAdd/ReadVariableOp2`
.sequential_131/dense_131/MatMul/ReadVariableOp.sequential_131/dense_131/MatMul/ReadVariableOp2|
<sequential_131/lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp<sequential_131/lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp2z
;sequential_131/lstm_393/lstm_cell_390/MatMul/ReadVariableOp;sequential_131/lstm_393/lstm_cell_390/MatMul/ReadVariableOp2~
=sequential_131/lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp=sequential_131/lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp2>
sequential_131/lstm_393/whilesequential_131/lstm_393/while2|
<sequential_131/lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp<sequential_131/lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp2z
;sequential_131/lstm_394/lstm_cell_391/MatMul/ReadVariableOp;sequential_131/lstm_394/lstm_cell_391/MatMul/ReadVariableOp2~
=sequential_131/lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp=sequential_131/lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp2>
sequential_131/lstm_394/whilesequential_131/lstm_394/while2|
<sequential_131/lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp<sequential_131/lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp2z
;sequential_131/lstm_395/lstm_cell_392/MatMul/ReadVariableOp;sequential_131/lstm_395/lstm_cell_392/MatMul/ReadVariableOp2~
=sequential_131/lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp=sequential_131/lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp2>
sequential_131/lstm_395/whilesequential_131/lstm_395/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_393_input
?J
?
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372425

inputs?
,lstm_cell_391_matmul_readvariableop_resource:	d?A
.lstm_cell_391_matmul_1_readvariableop_resource:	2?<
-lstm_cell_391_biasadd_readvariableop_resource:	?
identity??$lstm_cell_391/BiasAdd/ReadVariableOp?#lstm_cell_391/MatMul/ReadVariableOp?%lstm_cell_391/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_391/MatMul/ReadVariableOpReadVariableOp,lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_391/MatMulMatMulstrided_slice_2:output:0+lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_391/MatMul_1MatMulzeros:output:0-lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_391/addAddV2lstm_cell_391/MatMul:product:0 lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_391/BiasAddBiasAddlstm_cell_391/add:z:0,lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_391/splitSplit&lstm_cell_391/split/split_dim:output:0lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_391/SigmoidSigmoidlstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_1Sigmoidlstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_391/mulMullstm_cell_391/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_391/ReluRelulstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_1Mullstm_cell_391/Sigmoid:y:0 lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_391/add_1AddV2lstm_cell_391/mul:z:0lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_2Sigmoidlstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_391/Relu_1Relulstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_2Mullstm_cell_391/Sigmoid_2:y:0"lstm_cell_391/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_391_matmul_readvariableop_resource.lstm_cell_391_matmul_1_readvariableop_resource-lstm_cell_391_biasadd_readvariableop_resource*
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
while_body_2372341*
condR
while_cond_2372340*K
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
NoOpNoOp%^lstm_cell_391/BiasAdd/ReadVariableOp$^lstm_cell_391/MatMul/ReadVariableOp&^lstm_cell_391/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_391/BiasAdd/ReadVariableOp$lstm_cell_391/BiasAdd/ReadVariableOp2J
#lstm_cell_391/MatMul/ReadVariableOp#lstm_cell_391/MatMul/ReadVariableOp2N
%lstm_cell_391/MatMul_1/ReadVariableOp%lstm_cell_391/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_131_lstm_395_while_cond_2370985L
Hsequential_131_lstm_395_while_sequential_131_lstm_395_while_loop_counterR
Nsequential_131_lstm_395_while_sequential_131_lstm_395_while_maximum_iterations-
)sequential_131_lstm_395_while_placeholder/
+sequential_131_lstm_395_while_placeholder_1/
+sequential_131_lstm_395_while_placeholder_2/
+sequential_131_lstm_395_while_placeholder_3N
Jsequential_131_lstm_395_while_less_sequential_131_lstm_395_strided_slice_1e
asequential_131_lstm_395_while_sequential_131_lstm_395_while_cond_2370985___redundant_placeholder0e
asequential_131_lstm_395_while_sequential_131_lstm_395_while_cond_2370985___redundant_placeholder1e
asequential_131_lstm_395_while_sequential_131_lstm_395_while_cond_2370985___redundant_placeholder2e
asequential_131_lstm_395_while_sequential_131_lstm_395_while_cond_2370985___redundant_placeholder3*
&sequential_131_lstm_395_while_identity
?
"sequential_131/lstm_395/while/LessLess)sequential_131_lstm_395_while_placeholderJsequential_131_lstm_395_while_less_sequential_131_lstm_395_strided_slice_1*
T0*
_output_shapes
: {
&sequential_131/lstm_395/while/IdentityIdentity&sequential_131/lstm_395/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_131_lstm_395_while_identity/sequential_131/lstm_395/while/Identity:output:0*(
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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2374244

inputsH
5lstm_393_lstm_cell_390_matmul_readvariableop_resource:	?J
7lstm_393_lstm_cell_390_matmul_1_readvariableop_resource:	d?E
6lstm_393_lstm_cell_390_biasadd_readvariableop_resource:	?H
5lstm_394_lstm_cell_391_matmul_readvariableop_resource:	d?J
7lstm_394_lstm_cell_391_matmul_1_readvariableop_resource:	2?E
6lstm_394_lstm_cell_391_biasadd_readvariableop_resource:	?G
5lstm_395_lstm_cell_392_matmul_readvariableop_resource:2(I
7lstm_395_lstm_cell_392_matmul_1_readvariableop_resource:
(D
6lstm_395_lstm_cell_392_biasadd_readvariableop_resource:(:
(dense_131_matmul_readvariableop_resource:
7
)dense_131_biasadd_readvariableop_resource:
identity?? dense_131/BiasAdd/ReadVariableOp?dense_131/MatMul/ReadVariableOp?-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp?,lstm_393/lstm_cell_390/MatMul/ReadVariableOp?.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp?lstm_393/while?-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp?,lstm_394/lstm_cell_391/MatMul/ReadVariableOp?.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp?lstm_394/while?-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp?,lstm_395/lstm_cell_392/MatMul/ReadVariableOp?.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp?lstm_395/whileD
lstm_393/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_393/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_393/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_393/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_sliceStridedSlicelstm_393/Shape:output:0%lstm_393/strided_slice/stack:output:0'lstm_393/strided_slice/stack_1:output:0'lstm_393/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_393/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_393/zeros/packedPacklstm_393/strided_slice:output:0 lstm_393/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_393/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_393/zerosFilllstm_393/zeros/packed:output:0lstm_393/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_393/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_393/zeros_1/packedPacklstm_393/strided_slice:output:0"lstm_393/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_393/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_393/zeros_1Fill lstm_393/zeros_1/packed:output:0lstm_393/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_393/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_393/transpose	Transposeinputs lstm_393/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_393/Shape_1Shapelstm_393/transpose:y:0*
T0*
_output_shapes
:h
lstm_393/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_393/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_393/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_slice_1StridedSlicelstm_393/Shape_1:output:0'lstm_393/strided_slice_1/stack:output:0)lstm_393/strided_slice_1/stack_1:output:0)lstm_393/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_393/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_393/TensorArrayV2TensorListReserve-lstm_393/TensorArrayV2/element_shape:output:0!lstm_393/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_393/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_393/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_393/transpose:y:0Glstm_393/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_393/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_393/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_393/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_slice_2StridedSlicelstm_393/transpose:y:0'lstm_393/strided_slice_2/stack:output:0)lstm_393/strided_slice_2/stack_1:output:0)lstm_393/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_393/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp5lstm_393_lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_393/lstm_cell_390/MatMulMatMul!lstm_393/strided_slice_2:output:04lstm_393/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp7lstm_393_lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_393/lstm_cell_390/MatMul_1MatMullstm_393/zeros:output:06lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_393/lstm_cell_390/addAddV2'lstm_393/lstm_cell_390/MatMul:product:0)lstm_393/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp6lstm_393_lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_393/lstm_cell_390/BiasAddBiasAddlstm_393/lstm_cell_390/add:z:05lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_393/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_393/lstm_cell_390/splitSplit/lstm_393/lstm_cell_390/split/split_dim:output:0'lstm_393/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_393/lstm_cell_390/SigmoidSigmoid%lstm_393/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_393/lstm_cell_390/Sigmoid_1Sigmoid%lstm_393/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/mulMul$lstm_393/lstm_cell_390/Sigmoid_1:y:0lstm_393/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_393/lstm_cell_390/ReluRelu%lstm_393/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/mul_1Mul"lstm_393/lstm_cell_390/Sigmoid:y:0)lstm_393/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/add_1AddV2lstm_393/lstm_cell_390/mul:z:0 lstm_393/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_393/lstm_cell_390/Sigmoid_2Sigmoid%lstm_393/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_393/lstm_cell_390/Relu_1Relu lstm_393/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/mul_2Mul$lstm_393/lstm_cell_390/Sigmoid_2:y:0+lstm_393/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_393/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_393/TensorArrayV2_1TensorListReserve/lstm_393/TensorArrayV2_1/element_shape:output:0!lstm_393/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_393/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_393/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_393/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_393/whileWhile$lstm_393/while/loop_counter:output:0*lstm_393/while/maximum_iterations:output:0lstm_393/time:output:0!lstm_393/TensorArrayV2_1:handle:0lstm_393/zeros:output:0lstm_393/zeros_1:output:0!lstm_393/strided_slice_1:output:0@lstm_393/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_393_lstm_cell_390_matmul_readvariableop_resource7lstm_393_lstm_cell_390_matmul_1_readvariableop_resource6lstm_393_lstm_cell_390_biasadd_readvariableop_resource*
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
lstm_393_while_body_2373876*'
condR
lstm_393_while_cond_2373875*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_393/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_393/TensorArrayV2Stack/TensorListStackTensorListStacklstm_393/while:output:3Blstm_393/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_393/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_393/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_393/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_slice_3StridedSlice4lstm_393/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_393/strided_slice_3/stack:output:0)lstm_393/strided_slice_3/stack_1:output:0)lstm_393/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_393/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_393/transpose_1	Transpose4lstm_393/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_393/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_393/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_394/ShapeShapelstm_393/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_394/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_394/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_394/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_sliceStridedSlicelstm_394/Shape:output:0%lstm_394/strided_slice/stack:output:0'lstm_394/strided_slice/stack_1:output:0'lstm_394/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_394/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_394/zeros/packedPacklstm_394/strided_slice:output:0 lstm_394/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_394/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_394/zerosFilllstm_394/zeros/packed:output:0lstm_394/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_394/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_394/zeros_1/packedPacklstm_394/strided_slice:output:0"lstm_394/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_394/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_394/zeros_1Fill lstm_394/zeros_1/packed:output:0lstm_394/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_394/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_394/transpose	Transposelstm_393/transpose_1:y:0 lstm_394/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_394/Shape_1Shapelstm_394/transpose:y:0*
T0*
_output_shapes
:h
lstm_394/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_394/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_394/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_slice_1StridedSlicelstm_394/Shape_1:output:0'lstm_394/strided_slice_1/stack:output:0)lstm_394/strided_slice_1/stack_1:output:0)lstm_394/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_394/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_394/TensorArrayV2TensorListReserve-lstm_394/TensorArrayV2/element_shape:output:0!lstm_394/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_394/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_394/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_394/transpose:y:0Glstm_394/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_394/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_394/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_394/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_slice_2StridedSlicelstm_394/transpose:y:0'lstm_394/strided_slice_2/stack:output:0)lstm_394/strided_slice_2/stack_1:output:0)lstm_394/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_394/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp5lstm_394_lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_394/lstm_cell_391/MatMulMatMul!lstm_394/strided_slice_2:output:04lstm_394/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp7lstm_394_lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_394/lstm_cell_391/MatMul_1MatMullstm_394/zeros:output:06lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_394/lstm_cell_391/addAddV2'lstm_394/lstm_cell_391/MatMul:product:0)lstm_394/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp6lstm_394_lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_394/lstm_cell_391/BiasAddBiasAddlstm_394/lstm_cell_391/add:z:05lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_394/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_394/lstm_cell_391/splitSplit/lstm_394/lstm_cell_391/split/split_dim:output:0'lstm_394/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_394/lstm_cell_391/SigmoidSigmoid%lstm_394/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_394/lstm_cell_391/Sigmoid_1Sigmoid%lstm_394/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/mulMul$lstm_394/lstm_cell_391/Sigmoid_1:y:0lstm_394/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_394/lstm_cell_391/ReluRelu%lstm_394/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/mul_1Mul"lstm_394/lstm_cell_391/Sigmoid:y:0)lstm_394/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/add_1AddV2lstm_394/lstm_cell_391/mul:z:0 lstm_394/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_394/lstm_cell_391/Sigmoid_2Sigmoid%lstm_394/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_394/lstm_cell_391/Relu_1Relu lstm_394/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/mul_2Mul$lstm_394/lstm_cell_391/Sigmoid_2:y:0+lstm_394/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_394/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_394/TensorArrayV2_1TensorListReserve/lstm_394/TensorArrayV2_1/element_shape:output:0!lstm_394/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_394/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_394/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_394/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_394/whileWhile$lstm_394/while/loop_counter:output:0*lstm_394/while/maximum_iterations:output:0lstm_394/time:output:0!lstm_394/TensorArrayV2_1:handle:0lstm_394/zeros:output:0lstm_394/zeros_1:output:0!lstm_394/strided_slice_1:output:0@lstm_394/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_394_lstm_cell_391_matmul_readvariableop_resource7lstm_394_lstm_cell_391_matmul_1_readvariableop_resource6lstm_394_lstm_cell_391_biasadd_readvariableop_resource*
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
lstm_394_while_body_2374015*'
condR
lstm_394_while_cond_2374014*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_394/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_394/TensorArrayV2Stack/TensorListStackTensorListStacklstm_394/while:output:3Blstm_394/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_394/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_394/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_394/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_slice_3StridedSlice4lstm_394/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_394/strided_slice_3/stack:output:0)lstm_394/strided_slice_3/stack_1:output:0)lstm_394/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_394/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_394/transpose_1	Transpose4lstm_394/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_394/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_394/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_395/ShapeShapelstm_394/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_395/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_395/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_395/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_sliceStridedSlicelstm_395/Shape:output:0%lstm_395/strided_slice/stack:output:0'lstm_395/strided_slice/stack_1:output:0'lstm_395/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_395/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_395/zeros/packedPacklstm_395/strided_slice:output:0 lstm_395/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_395/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_395/zerosFilllstm_395/zeros/packed:output:0lstm_395/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_395/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_395/zeros_1/packedPacklstm_395/strided_slice:output:0"lstm_395/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_395/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_395/zeros_1Fill lstm_395/zeros_1/packed:output:0lstm_395/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_395/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_395/transpose	Transposelstm_394/transpose_1:y:0 lstm_395/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_395/Shape_1Shapelstm_395/transpose:y:0*
T0*
_output_shapes
:h
lstm_395/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_395/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_395/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_slice_1StridedSlicelstm_395/Shape_1:output:0'lstm_395/strided_slice_1/stack:output:0)lstm_395/strided_slice_1/stack_1:output:0)lstm_395/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_395/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_395/TensorArrayV2TensorListReserve-lstm_395/TensorArrayV2/element_shape:output:0!lstm_395/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_395/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_395/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_395/transpose:y:0Glstm_395/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_395/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_395/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_395/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_slice_2StridedSlicelstm_395/transpose:y:0'lstm_395/strided_slice_2/stack:output:0)lstm_395/strided_slice_2/stack_1:output:0)lstm_395/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_395/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp5lstm_395_lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_395/lstm_cell_392/MatMulMatMul!lstm_395/strided_slice_2:output:04lstm_395/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp7lstm_395_lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_395/lstm_cell_392/MatMul_1MatMullstm_395/zeros:output:06lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_395/lstm_cell_392/addAddV2'lstm_395/lstm_cell_392/MatMul:product:0)lstm_395/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp6lstm_395_lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_395/lstm_cell_392/BiasAddBiasAddlstm_395/lstm_cell_392/add:z:05lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_395/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_395/lstm_cell_392/splitSplit/lstm_395/lstm_cell_392/split/split_dim:output:0'lstm_395/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_395/lstm_cell_392/SigmoidSigmoid%lstm_395/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_395/lstm_cell_392/Sigmoid_1Sigmoid%lstm_395/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/mulMul$lstm_395/lstm_cell_392/Sigmoid_1:y:0lstm_395/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_395/lstm_cell_392/ReluRelu%lstm_395/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/mul_1Mul"lstm_395/lstm_cell_392/Sigmoid:y:0)lstm_395/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/add_1AddV2lstm_395/lstm_cell_392/mul:z:0 lstm_395/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_395/lstm_cell_392/Sigmoid_2Sigmoid%lstm_395/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_395/lstm_cell_392/Relu_1Relu lstm_395/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/mul_2Mul$lstm_395/lstm_cell_392/Sigmoid_2:y:0+lstm_395/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_395/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_395/TensorArrayV2_1TensorListReserve/lstm_395/TensorArrayV2_1/element_shape:output:0!lstm_395/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_395/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_395/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_395/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_395/whileWhile$lstm_395/while/loop_counter:output:0*lstm_395/while/maximum_iterations:output:0lstm_395/time:output:0!lstm_395/TensorArrayV2_1:handle:0lstm_395/zeros:output:0lstm_395/zeros_1:output:0!lstm_395/strided_slice_1:output:0@lstm_395/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_395_lstm_cell_392_matmul_readvariableop_resource7lstm_395_lstm_cell_392_matmul_1_readvariableop_resource6lstm_395_lstm_cell_392_biasadd_readvariableop_resource*
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
lstm_395_while_body_2374154*'
condR
lstm_395_while_cond_2374153*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_395/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_395/TensorArrayV2Stack/TensorListStackTensorListStacklstm_395/while:output:3Blstm_395/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_395/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_395/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_395/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_slice_3StridedSlice4lstm_395/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_395/strided_slice_3/stack:output:0)lstm_395/strided_slice_3/stack_1:output:0)lstm_395/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_395/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_395/transpose_1	Transpose4lstm_395/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_395/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_395/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_131/MatMul/ReadVariableOpReadVariableOp(dense_131_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_131/MatMulMatMul!lstm_395/strided_slice_3:output:0'dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_131/BiasAdd/ReadVariableOpReadVariableOp)dense_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_131/BiasAddBiasAdddense_131/MatMul:product:0(dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_131/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_131/BiasAdd/ReadVariableOp ^dense_131/MatMul/ReadVariableOp.^lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp-^lstm_393/lstm_cell_390/MatMul/ReadVariableOp/^lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp^lstm_393/while.^lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp-^lstm_394/lstm_cell_391/MatMul/ReadVariableOp/^lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp^lstm_394/while.^lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp-^lstm_395/lstm_cell_392/MatMul/ReadVariableOp/^lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp^lstm_395/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_131/BiasAdd/ReadVariableOp dense_131/BiasAdd/ReadVariableOp2B
dense_131/MatMul/ReadVariableOpdense_131/MatMul/ReadVariableOp2^
-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp2\
,lstm_393/lstm_cell_390/MatMul/ReadVariableOp,lstm_393/lstm_cell_390/MatMul/ReadVariableOp2`
.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp2 
lstm_393/whilelstm_393/while2^
-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp2\
,lstm_394/lstm_cell_391/MatMul/ReadVariableOp,lstm_394/lstm_cell_391/MatMul/ReadVariableOp2`
.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp2 
lstm_394/whilelstm_394/while2^
-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp2\
,lstm_395/lstm_cell_392/MatMul/ReadVariableOp,lstm_395/lstm_cell_392/MatMul/ReadVariableOp2`
.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp2 
lstm_395/whilelstm_395/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373817

inputsH
5lstm_393_lstm_cell_390_matmul_readvariableop_resource:	?J
7lstm_393_lstm_cell_390_matmul_1_readvariableop_resource:	d?E
6lstm_393_lstm_cell_390_biasadd_readvariableop_resource:	?H
5lstm_394_lstm_cell_391_matmul_readvariableop_resource:	d?J
7lstm_394_lstm_cell_391_matmul_1_readvariableop_resource:	2?E
6lstm_394_lstm_cell_391_biasadd_readvariableop_resource:	?G
5lstm_395_lstm_cell_392_matmul_readvariableop_resource:2(I
7lstm_395_lstm_cell_392_matmul_1_readvariableop_resource:
(D
6lstm_395_lstm_cell_392_biasadd_readvariableop_resource:(:
(dense_131_matmul_readvariableop_resource:
7
)dense_131_biasadd_readvariableop_resource:
identity?? dense_131/BiasAdd/ReadVariableOp?dense_131/MatMul/ReadVariableOp?-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp?,lstm_393/lstm_cell_390/MatMul/ReadVariableOp?.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp?lstm_393/while?-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp?,lstm_394/lstm_cell_391/MatMul/ReadVariableOp?.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp?lstm_394/while?-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp?,lstm_395/lstm_cell_392/MatMul/ReadVariableOp?.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp?lstm_395/whileD
lstm_393/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_393/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_393/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_393/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_sliceStridedSlicelstm_393/Shape:output:0%lstm_393/strided_slice/stack:output:0'lstm_393/strided_slice/stack_1:output:0'lstm_393/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_393/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_393/zeros/packedPacklstm_393/strided_slice:output:0 lstm_393/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_393/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_393/zerosFilllstm_393/zeros/packed:output:0lstm_393/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_393/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_393/zeros_1/packedPacklstm_393/strided_slice:output:0"lstm_393/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_393/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_393/zeros_1Fill lstm_393/zeros_1/packed:output:0lstm_393/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_393/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_393/transpose	Transposeinputs lstm_393/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_393/Shape_1Shapelstm_393/transpose:y:0*
T0*
_output_shapes
:h
lstm_393/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_393/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_393/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_slice_1StridedSlicelstm_393/Shape_1:output:0'lstm_393/strided_slice_1/stack:output:0)lstm_393/strided_slice_1/stack_1:output:0)lstm_393/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_393/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_393/TensorArrayV2TensorListReserve-lstm_393/TensorArrayV2/element_shape:output:0!lstm_393/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_393/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_393/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_393/transpose:y:0Glstm_393/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_393/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_393/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_393/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_slice_2StridedSlicelstm_393/transpose:y:0'lstm_393/strided_slice_2/stack:output:0)lstm_393/strided_slice_2/stack_1:output:0)lstm_393/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_393/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp5lstm_393_lstm_cell_390_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_393/lstm_cell_390/MatMulMatMul!lstm_393/strided_slice_2:output:04lstm_393/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp7lstm_393_lstm_cell_390_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_393/lstm_cell_390/MatMul_1MatMullstm_393/zeros:output:06lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_393/lstm_cell_390/addAddV2'lstm_393/lstm_cell_390/MatMul:product:0)lstm_393/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp6lstm_393_lstm_cell_390_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_393/lstm_cell_390/BiasAddBiasAddlstm_393/lstm_cell_390/add:z:05lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_393/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_393/lstm_cell_390/splitSplit/lstm_393/lstm_cell_390/split/split_dim:output:0'lstm_393/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_393/lstm_cell_390/SigmoidSigmoid%lstm_393/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_393/lstm_cell_390/Sigmoid_1Sigmoid%lstm_393/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/mulMul$lstm_393/lstm_cell_390/Sigmoid_1:y:0lstm_393/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_393/lstm_cell_390/ReluRelu%lstm_393/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/mul_1Mul"lstm_393/lstm_cell_390/Sigmoid:y:0)lstm_393/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/add_1AddV2lstm_393/lstm_cell_390/mul:z:0 lstm_393/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_393/lstm_cell_390/Sigmoid_2Sigmoid%lstm_393/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_393/lstm_cell_390/Relu_1Relu lstm_393/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_393/lstm_cell_390/mul_2Mul$lstm_393/lstm_cell_390/Sigmoid_2:y:0+lstm_393/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_393/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_393/TensorArrayV2_1TensorListReserve/lstm_393/TensorArrayV2_1/element_shape:output:0!lstm_393/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_393/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_393/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_393/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_393/whileWhile$lstm_393/while/loop_counter:output:0*lstm_393/while/maximum_iterations:output:0lstm_393/time:output:0!lstm_393/TensorArrayV2_1:handle:0lstm_393/zeros:output:0lstm_393/zeros_1:output:0!lstm_393/strided_slice_1:output:0@lstm_393/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_393_lstm_cell_390_matmul_readvariableop_resource7lstm_393_lstm_cell_390_matmul_1_readvariableop_resource6lstm_393_lstm_cell_390_biasadd_readvariableop_resource*
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
lstm_393_while_body_2373449*'
condR
lstm_393_while_cond_2373448*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_393/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_393/TensorArrayV2Stack/TensorListStackTensorListStacklstm_393/while:output:3Blstm_393/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_393/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_393/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_393/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_393/strided_slice_3StridedSlice4lstm_393/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_393/strided_slice_3/stack:output:0)lstm_393/strided_slice_3/stack_1:output:0)lstm_393/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_393/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_393/transpose_1	Transpose4lstm_393/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_393/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_393/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_394/ShapeShapelstm_393/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_394/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_394/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_394/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_sliceStridedSlicelstm_394/Shape:output:0%lstm_394/strided_slice/stack:output:0'lstm_394/strided_slice/stack_1:output:0'lstm_394/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_394/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_394/zeros/packedPacklstm_394/strided_slice:output:0 lstm_394/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_394/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_394/zerosFilllstm_394/zeros/packed:output:0lstm_394/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_394/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_394/zeros_1/packedPacklstm_394/strided_slice:output:0"lstm_394/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_394/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_394/zeros_1Fill lstm_394/zeros_1/packed:output:0lstm_394/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_394/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_394/transpose	Transposelstm_393/transpose_1:y:0 lstm_394/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_394/Shape_1Shapelstm_394/transpose:y:0*
T0*
_output_shapes
:h
lstm_394/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_394/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_394/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_slice_1StridedSlicelstm_394/Shape_1:output:0'lstm_394/strided_slice_1/stack:output:0)lstm_394/strided_slice_1/stack_1:output:0)lstm_394/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_394/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_394/TensorArrayV2TensorListReserve-lstm_394/TensorArrayV2/element_shape:output:0!lstm_394/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_394/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_394/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_394/transpose:y:0Glstm_394/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_394/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_394/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_394/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_slice_2StridedSlicelstm_394/transpose:y:0'lstm_394/strided_slice_2/stack:output:0)lstm_394/strided_slice_2/stack_1:output:0)lstm_394/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_394/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp5lstm_394_lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_394/lstm_cell_391/MatMulMatMul!lstm_394/strided_slice_2:output:04lstm_394/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp7lstm_394_lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_394/lstm_cell_391/MatMul_1MatMullstm_394/zeros:output:06lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_394/lstm_cell_391/addAddV2'lstm_394/lstm_cell_391/MatMul:product:0)lstm_394/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp6lstm_394_lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_394/lstm_cell_391/BiasAddBiasAddlstm_394/lstm_cell_391/add:z:05lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_394/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_394/lstm_cell_391/splitSplit/lstm_394/lstm_cell_391/split/split_dim:output:0'lstm_394/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_394/lstm_cell_391/SigmoidSigmoid%lstm_394/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_394/lstm_cell_391/Sigmoid_1Sigmoid%lstm_394/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/mulMul$lstm_394/lstm_cell_391/Sigmoid_1:y:0lstm_394/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_394/lstm_cell_391/ReluRelu%lstm_394/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/mul_1Mul"lstm_394/lstm_cell_391/Sigmoid:y:0)lstm_394/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/add_1AddV2lstm_394/lstm_cell_391/mul:z:0 lstm_394/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_394/lstm_cell_391/Sigmoid_2Sigmoid%lstm_394/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_394/lstm_cell_391/Relu_1Relu lstm_394/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_394/lstm_cell_391/mul_2Mul$lstm_394/lstm_cell_391/Sigmoid_2:y:0+lstm_394/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_394/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_394/TensorArrayV2_1TensorListReserve/lstm_394/TensorArrayV2_1/element_shape:output:0!lstm_394/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_394/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_394/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_394/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_394/whileWhile$lstm_394/while/loop_counter:output:0*lstm_394/while/maximum_iterations:output:0lstm_394/time:output:0!lstm_394/TensorArrayV2_1:handle:0lstm_394/zeros:output:0lstm_394/zeros_1:output:0!lstm_394/strided_slice_1:output:0@lstm_394/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_394_lstm_cell_391_matmul_readvariableop_resource7lstm_394_lstm_cell_391_matmul_1_readvariableop_resource6lstm_394_lstm_cell_391_biasadd_readvariableop_resource*
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
lstm_394_while_body_2373588*'
condR
lstm_394_while_cond_2373587*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_394/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_394/TensorArrayV2Stack/TensorListStackTensorListStacklstm_394/while:output:3Blstm_394/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_394/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_394/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_394/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_394/strided_slice_3StridedSlice4lstm_394/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_394/strided_slice_3/stack:output:0)lstm_394/strided_slice_3/stack_1:output:0)lstm_394/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_394/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_394/transpose_1	Transpose4lstm_394/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_394/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_394/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_395/ShapeShapelstm_394/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_395/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_395/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_395/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_sliceStridedSlicelstm_395/Shape:output:0%lstm_395/strided_slice/stack:output:0'lstm_395/strided_slice/stack_1:output:0'lstm_395/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_395/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_395/zeros/packedPacklstm_395/strided_slice:output:0 lstm_395/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_395/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_395/zerosFilllstm_395/zeros/packed:output:0lstm_395/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_395/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_395/zeros_1/packedPacklstm_395/strided_slice:output:0"lstm_395/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_395/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_395/zeros_1Fill lstm_395/zeros_1/packed:output:0lstm_395/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_395/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_395/transpose	Transposelstm_394/transpose_1:y:0 lstm_395/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_395/Shape_1Shapelstm_395/transpose:y:0*
T0*
_output_shapes
:h
lstm_395/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_395/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_395/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_slice_1StridedSlicelstm_395/Shape_1:output:0'lstm_395/strided_slice_1/stack:output:0)lstm_395/strided_slice_1/stack_1:output:0)lstm_395/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_395/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_395/TensorArrayV2TensorListReserve-lstm_395/TensorArrayV2/element_shape:output:0!lstm_395/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_395/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_395/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_395/transpose:y:0Glstm_395/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_395/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_395/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_395/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_slice_2StridedSlicelstm_395/transpose:y:0'lstm_395/strided_slice_2/stack:output:0)lstm_395/strided_slice_2/stack_1:output:0)lstm_395/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_395/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp5lstm_395_lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_395/lstm_cell_392/MatMulMatMul!lstm_395/strided_slice_2:output:04lstm_395/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp7lstm_395_lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_395/lstm_cell_392/MatMul_1MatMullstm_395/zeros:output:06lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_395/lstm_cell_392/addAddV2'lstm_395/lstm_cell_392/MatMul:product:0)lstm_395/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp6lstm_395_lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_395/lstm_cell_392/BiasAddBiasAddlstm_395/lstm_cell_392/add:z:05lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_395/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_395/lstm_cell_392/splitSplit/lstm_395/lstm_cell_392/split/split_dim:output:0'lstm_395/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_395/lstm_cell_392/SigmoidSigmoid%lstm_395/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_395/lstm_cell_392/Sigmoid_1Sigmoid%lstm_395/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/mulMul$lstm_395/lstm_cell_392/Sigmoid_1:y:0lstm_395/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_395/lstm_cell_392/ReluRelu%lstm_395/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/mul_1Mul"lstm_395/lstm_cell_392/Sigmoid:y:0)lstm_395/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/add_1AddV2lstm_395/lstm_cell_392/mul:z:0 lstm_395/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_395/lstm_cell_392/Sigmoid_2Sigmoid%lstm_395/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_395/lstm_cell_392/Relu_1Relu lstm_395/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_395/lstm_cell_392/mul_2Mul$lstm_395/lstm_cell_392/Sigmoid_2:y:0+lstm_395/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_395/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_395/TensorArrayV2_1TensorListReserve/lstm_395/TensorArrayV2_1/element_shape:output:0!lstm_395/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_395/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_395/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_395/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_395/whileWhile$lstm_395/while/loop_counter:output:0*lstm_395/while/maximum_iterations:output:0lstm_395/time:output:0!lstm_395/TensorArrayV2_1:handle:0lstm_395/zeros:output:0lstm_395/zeros_1:output:0!lstm_395/strided_slice_1:output:0@lstm_395/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_395_lstm_cell_392_matmul_readvariableop_resource7lstm_395_lstm_cell_392_matmul_1_readvariableop_resource6lstm_395_lstm_cell_392_biasadd_readvariableop_resource*
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
lstm_395_while_body_2373727*'
condR
lstm_395_while_cond_2373726*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_395/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_395/TensorArrayV2Stack/TensorListStackTensorListStacklstm_395/while:output:3Blstm_395/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_395/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_395/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_395/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_395/strided_slice_3StridedSlice4lstm_395/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_395/strided_slice_3/stack:output:0)lstm_395/strided_slice_3/stack_1:output:0)lstm_395/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_395/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_395/transpose_1	Transpose4lstm_395/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_395/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_395/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_131/MatMul/ReadVariableOpReadVariableOp(dense_131_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_131/MatMulMatMul!lstm_395/strided_slice_3:output:0'dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_131/BiasAdd/ReadVariableOpReadVariableOp)dense_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_131/BiasAddBiasAdddense_131/MatMul:product:0(dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_131/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_131/BiasAdd/ReadVariableOp ^dense_131/MatMul/ReadVariableOp.^lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp-^lstm_393/lstm_cell_390/MatMul/ReadVariableOp/^lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp^lstm_393/while.^lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp-^lstm_394/lstm_cell_391/MatMul/ReadVariableOp/^lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp^lstm_394/while.^lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp-^lstm_395/lstm_cell_392/MatMul/ReadVariableOp/^lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp^lstm_395/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_131/BiasAdd/ReadVariableOp dense_131/BiasAdd/ReadVariableOp2B
dense_131/MatMul/ReadVariableOpdense_131/MatMul/ReadVariableOp2^
-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp-lstm_393/lstm_cell_390/BiasAdd/ReadVariableOp2\
,lstm_393/lstm_cell_390/MatMul/ReadVariableOp,lstm_393/lstm_cell_390/MatMul/ReadVariableOp2`
.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp.lstm_393/lstm_cell_390/MatMul_1/ReadVariableOp2 
lstm_393/whilelstm_393/while2^
-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp-lstm_394/lstm_cell_391/BiasAdd/ReadVariableOp2\
,lstm_394/lstm_cell_391/MatMul/ReadVariableOp,lstm_394/lstm_cell_391/MatMul/ReadVariableOp2`
.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp.lstm_394/lstm_cell_391/MatMul_1/ReadVariableOp2 
lstm_394/whilelstm_394/while2^
-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp-lstm_395/lstm_cell_392/BiasAdd/ReadVariableOp2\
,lstm_395/lstm_cell_392/MatMul/ReadVariableOp,lstm_395/lstm_cell_392/MatMul/ReadVariableOp2`
.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp.lstm_395/lstm_cell_392/MatMul_1/ReadVariableOp2 
lstm_395/whilelstm_395/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372575

inputs>
,lstm_cell_392_matmul_readvariableop_resource:2(@
.lstm_cell_392_matmul_1_readvariableop_resource:
(;
-lstm_cell_392_biasadd_readvariableop_resource:(
identity??$lstm_cell_392/BiasAdd/ReadVariableOp?#lstm_cell_392/MatMul/ReadVariableOp?%lstm_cell_392/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_392/MatMul/ReadVariableOpReadVariableOp,lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_392/MatMulMatMulstrided_slice_2:output:0+lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_392/MatMul_1MatMulzeros:output:0-lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_392/addAddV2lstm_cell_392/MatMul:product:0 lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_392/BiasAddBiasAddlstm_cell_392/add:z:0,lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_392/splitSplit&lstm_cell_392/split/split_dim:output:0lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_392/SigmoidSigmoidlstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_1Sigmoidlstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_392/mulMullstm_cell_392/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_392/ReluRelulstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_1Mullstm_cell_392/Sigmoid:y:0 lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_392/add_1AddV2lstm_cell_392/mul:z:0lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_2Sigmoidlstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_392/Relu_1Relulstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_2Mullstm_cell_392/Sigmoid_2:y:0"lstm_cell_392/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_392_matmul_readvariableop_resource.lstm_cell_392_matmul_1_readvariableop_resource-lstm_cell_392_biasadd_readvariableop_resource*
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
while_body_2372491*
condR
while_cond_2372490*K
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
NoOpNoOp%^lstm_cell_392/BiasAdd/ReadVariableOp$^lstm_cell_392/MatMul/ReadVariableOp&^lstm_cell_392/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_392/BiasAdd/ReadVariableOp$lstm_cell_392/BiasAdd/ReadVariableOp2J
#lstm_cell_392/MatMul/ReadVariableOp#lstm_cell_392/MatMul/ReadVariableOp2N
%lstm_cell_392/MatMul_1/ReadVariableOp%lstm_cell_392/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_394_layer_call_fn_2374882
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2371767|
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
?
?
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373189

inputs#
lstm_393_2373162:	?#
lstm_393_2373164:	d?
lstm_393_2373166:	?#
lstm_394_2373169:	d?#
lstm_394_2373171:	2?
lstm_394_2373173:	?"
lstm_395_2373176:2("
lstm_395_2373178:
(
lstm_395_2373180:(#
dense_131_2373183:

dense_131_2373185:
identity??!dense_131/StatefulPartitionedCall? lstm_393/StatefulPartitionedCall? lstm_394/StatefulPartitionedCall? lstm_395/StatefulPartitionedCall?
 lstm_393/StatefulPartitionedCallStatefulPartitionedCallinputslstm_393_2373162lstm_393_2373164lstm_393_2373166*
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2373121?
 lstm_394/StatefulPartitionedCallStatefulPartitionedCall)lstm_393/StatefulPartitionedCall:output:0lstm_394_2373169lstm_394_2373171lstm_394_2373173*
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372956?
 lstm_395/StatefulPartitionedCallStatefulPartitionedCall)lstm_394/StatefulPartitionedCall:output:0lstm_395_2373176lstm_395_2373178lstm_395_2373180*
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372791?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall)lstm_395/StatefulPartitionedCall:output:0dense_131_2373183dense_131_2373185*
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
F__inference_dense_131_layer_call_and_return_conditional_losses_2372593y
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_131/StatefulPartitionedCall!^lstm_393/StatefulPartitionedCall!^lstm_394/StatefulPartitionedCall!^lstm_395/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2D
 lstm_393/StatefulPartitionedCall lstm_393/StatefulPartitionedCall2D
 lstm_394/StatefulPartitionedCall lstm_394/StatefulPartitionedCall2D
 lstm_395/StatefulPartitionedCall lstm_395/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_390_layer_call_fn_2376128

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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371143o
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
while_cond_2376007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2376007___redundant_placeholder05
1while_while_cond_2376007___redundant_placeholder15
1while_while_cond_2376007___redundant_placeholder25
1while_while_cond_2376007___redundant_placeholder3
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
+__inference_dense_131_layer_call_fn_2376101

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
F__inference_dense_131_layer_call_and_return_conditional_losses_2372593o
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
?8
?
while_body_2373037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_390_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_390_matmul_readvariableop_resource:	?G
4while_lstm_cell_390_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_390_biasadd_readvariableop_resource:	???*while/lstm_cell_390/BiasAdd/ReadVariableOp?)while/lstm_cell_390/MatMul/ReadVariableOp?+while/lstm_cell_390/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_390/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_390/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_390/addAddV2$while/lstm_cell_390/MatMul:product:0&while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_390/BiasAddBiasAddwhile/lstm_cell_390/add:z:02while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_390/splitSplit,while/lstm_cell_390/split/split_dim:output:0$while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_390/SigmoidSigmoid"while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_1Sigmoid"while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mulMul!while/lstm_cell_390/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_390/ReluRelu"while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_1Mulwhile/lstm_cell_390/Sigmoid:y:0&while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/add_1AddV2while/lstm_cell_390/mul:z:0while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_2Sigmoid"while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_390/Relu_1Reluwhile/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_2Mul!while/lstm_cell_390/Sigmoid_2:y:0(while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_390/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_390/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_390/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_390/BiasAdd/ReadVariableOp*^while/lstm_cell_390/MatMul/ReadVariableOp,^while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_390_biasadd_readvariableop_resource5while_lstm_cell_390_biasadd_readvariableop_resource_0"n
4while_lstm_cell_390_matmul_1_readvariableop_resource6while_lstm_cell_390_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_390_matmul_readvariableop_resource4while_lstm_cell_390_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_390/BiasAdd/ReadVariableOp*while/lstm_cell_390/BiasAdd/ReadVariableOp2V
)while/lstm_cell_390/MatMul/ReadVariableOp)while/lstm_cell_390/MatMul/ReadVariableOp2Z
+while/lstm_cell_390/MatMul_1/ReadVariableOp+while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372956

inputs?
,lstm_cell_391_matmul_readvariableop_resource:	d?A
.lstm_cell_391_matmul_1_readvariableop_resource:	2?<
-lstm_cell_391_biasadd_readvariableop_resource:	?
identity??$lstm_cell_391/BiasAdd/ReadVariableOp?#lstm_cell_391/MatMul/ReadVariableOp?%lstm_cell_391/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_391/MatMul/ReadVariableOpReadVariableOp,lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_391/MatMulMatMulstrided_slice_2:output:0+lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_391/MatMul_1MatMulzeros:output:0-lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_391/addAddV2lstm_cell_391/MatMul:product:0 lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_391/BiasAddBiasAddlstm_cell_391/add:z:0,lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_391/splitSplit&lstm_cell_391/split/split_dim:output:0lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_391/SigmoidSigmoidlstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_1Sigmoidlstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_391/mulMullstm_cell_391/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_391/ReluRelulstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_1Mullstm_cell_391/Sigmoid:y:0 lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_391/add_1AddV2lstm_cell_391/mul:z:0lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_2Sigmoidlstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_391/Relu_1Relulstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_2Mullstm_cell_391/Sigmoid_2:y:0"lstm_cell_391/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_391_matmul_readvariableop_resource.lstm_cell_391_matmul_1_readvariableop_resource-lstm_cell_391_biasadd_readvariableop_resource*
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
while_body_2372872*
condR
while_cond_2372871*K
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
NoOpNoOp%^lstm_cell_391/BiasAdd/ReadVariableOp$^lstm_cell_391/MatMul/ReadVariableOp&^lstm_cell_391/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_391/BiasAdd/ReadVariableOp$lstm_cell_391/BiasAdd/ReadVariableOp2J
#lstm_cell_391/MatMul/ReadVariableOp#lstm_cell_391/MatMul/ReadVariableOp2N
%lstm_cell_391/MatMul_1/ReadVariableOp%lstm_cell_391/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_395_while_body_2374154.
*lstm_395_while_lstm_395_while_loop_counter4
0lstm_395_while_lstm_395_while_maximum_iterations
lstm_395_while_placeholder 
lstm_395_while_placeholder_1 
lstm_395_while_placeholder_2 
lstm_395_while_placeholder_3-
)lstm_395_while_lstm_395_strided_slice_1_0i
elstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0:2(Q
?lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(L
>lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0:(
lstm_395_while_identity
lstm_395_while_identity_1
lstm_395_while_identity_2
lstm_395_while_identity_3
lstm_395_while_identity_4
lstm_395_while_identity_5+
'lstm_395_while_lstm_395_strided_slice_1g
clstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensorM
;lstm_395_while_lstm_cell_392_matmul_readvariableop_resource:2(O
=lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource:
(J
<lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource:(??3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp?2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp?4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp?
@lstm_395/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_395/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensor_0lstm_395_while_placeholderIlstm_395/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp=lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_395/while/lstm_cell_392/MatMulMatMul9lstm_395/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp?lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_395/while/lstm_cell_392/MatMul_1MatMullstm_395_while_placeholder_2<lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_395/while/lstm_cell_392/addAddV2-lstm_395/while/lstm_cell_392/MatMul:product:0/lstm_395/while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp>lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_395/while/lstm_cell_392/BiasAddBiasAdd$lstm_395/while/lstm_cell_392/add:z:0;lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_395/while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_395/while/lstm_cell_392/splitSplit5lstm_395/while/lstm_cell_392/split/split_dim:output:0-lstm_395/while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_395/while/lstm_cell_392/SigmoidSigmoid+lstm_395/while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_395/while/lstm_cell_392/Sigmoid_1Sigmoid+lstm_395/while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_395/while/lstm_cell_392/mulMul*lstm_395/while/lstm_cell_392/Sigmoid_1:y:0lstm_395_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_395/while/lstm_cell_392/ReluRelu+lstm_395/while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_395/while/lstm_cell_392/mul_1Mul(lstm_395/while/lstm_cell_392/Sigmoid:y:0/lstm_395/while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_395/while/lstm_cell_392/add_1AddV2$lstm_395/while/lstm_cell_392/mul:z:0&lstm_395/while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_395/while/lstm_cell_392/Sigmoid_2Sigmoid+lstm_395/while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_395/while/lstm_cell_392/Relu_1Relu&lstm_395/while/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_395/while/lstm_cell_392/mul_2Mul*lstm_395/while/lstm_cell_392/Sigmoid_2:y:01lstm_395/while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_395/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_395_while_placeholder_1lstm_395_while_placeholder&lstm_395/while/lstm_cell_392/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_395/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_395/while/addAddV2lstm_395_while_placeholderlstm_395/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_395/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_395/while/add_1AddV2*lstm_395_while_lstm_395_while_loop_counterlstm_395/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_395/while/IdentityIdentitylstm_395/while/add_1:z:0^lstm_395/while/NoOp*
T0*
_output_shapes
: ?
lstm_395/while/Identity_1Identity0lstm_395_while_lstm_395_while_maximum_iterations^lstm_395/while/NoOp*
T0*
_output_shapes
: t
lstm_395/while/Identity_2Identitylstm_395/while/add:z:0^lstm_395/while/NoOp*
T0*
_output_shapes
: ?
lstm_395/while/Identity_3IdentityClstm_395/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_395/while/NoOp*
T0*
_output_shapes
: ?
lstm_395/while/Identity_4Identity&lstm_395/while/lstm_cell_392/mul_2:z:0^lstm_395/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_395/while/Identity_5Identity&lstm_395/while/lstm_cell_392/add_1:z:0^lstm_395/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_395/while/NoOpNoOp4^lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp3^lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp5^lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_395_while_identity lstm_395/while/Identity:output:0"?
lstm_395_while_identity_1"lstm_395/while/Identity_1:output:0"?
lstm_395_while_identity_2"lstm_395/while/Identity_2:output:0"?
lstm_395_while_identity_3"lstm_395/while/Identity_3:output:0"?
lstm_395_while_identity_4"lstm_395/while/Identity_4:output:0"?
lstm_395_while_identity_5"lstm_395/while/Identity_5:output:0"T
'lstm_395_while_lstm_395_strided_slice_1)lstm_395_while_lstm_395_strided_slice_1_0"~
<lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource>lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0"?
=lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource?lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0"|
;lstm_395_while_lstm_cell_392_matmul_readvariableop_resource=lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0"?
clstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensorelstm_395_while_tensorarrayv2read_tensorlistgetitem_lstm_395_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp3lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp2h
2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp2lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp2l
4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp4lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_392_layer_call_fn_2376341

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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2371989o
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372791

inputs>
,lstm_cell_392_matmul_readvariableop_resource:2(@
.lstm_cell_392_matmul_1_readvariableop_resource:
(;
-lstm_cell_392_biasadd_readvariableop_resource:(
identity??$lstm_cell_392/BiasAdd/ReadVariableOp?#lstm_cell_392/MatMul/ReadVariableOp?%lstm_cell_392/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_392/MatMul/ReadVariableOpReadVariableOp,lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_392/MatMulMatMulstrided_slice_2:output:0+lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_392/MatMul_1MatMulzeros:output:0-lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_392/addAddV2lstm_cell_392/MatMul:product:0 lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_392/BiasAddBiasAddlstm_cell_392/add:z:0,lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_392/splitSplit&lstm_cell_392/split/split_dim:output:0lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_392/SigmoidSigmoidlstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_1Sigmoidlstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_392/mulMullstm_cell_392/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_392/ReluRelulstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_1Mullstm_cell_392/Sigmoid:y:0 lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_392/add_1AddV2lstm_cell_392/mul:z:0lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_2Sigmoidlstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_392/Relu_1Relulstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_2Mullstm_cell_392/Sigmoid_2:y:0"lstm_cell_392/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_392_matmul_readvariableop_resource.lstm_cell_392_matmul_1_readvariableop_resource-lstm_cell_392_biasadd_readvariableop_resource*
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
while_body_2372707*
condR
while_cond_2372706*K
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
NoOpNoOp%^lstm_cell_392/BiasAdd/ReadVariableOp$^lstm_cell_392/MatMul/ReadVariableOp&^lstm_cell_392/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_392/BiasAdd/ReadVariableOp$lstm_cell_392/BiasAdd/ReadVariableOp2J
#lstm_cell_392/MatMul/ReadVariableOp#lstm_cell_392/MatMul/ReadVariableOp2N
%lstm_cell_392/MatMul_1/ReadVariableOp%lstm_cell_392/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375047
inputs_0?
,lstm_cell_391_matmul_readvariableop_resource:	d?A
.lstm_cell_391_matmul_1_readvariableop_resource:	2?<
-lstm_cell_391_biasadd_readvariableop_resource:	?
identity??$lstm_cell_391/BiasAdd/ReadVariableOp?#lstm_cell_391/MatMul/ReadVariableOp?%lstm_cell_391/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_391/MatMul/ReadVariableOpReadVariableOp,lstm_cell_391_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_391/MatMulMatMulstrided_slice_2:output:0+lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_391_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_391/MatMul_1MatMulzeros:output:0-lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_391/addAddV2lstm_cell_391/MatMul:product:0 lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_391_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_391/BiasAddBiasAddlstm_cell_391/add:z:0,lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_391/splitSplit&lstm_cell_391/split/split_dim:output:0lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_391/SigmoidSigmoidlstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_1Sigmoidlstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_391/mulMullstm_cell_391/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_391/ReluRelulstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_1Mullstm_cell_391/Sigmoid:y:0 lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_391/add_1AddV2lstm_cell_391/mul:z:0lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_391/Sigmoid_2Sigmoidlstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_391/Relu_1Relulstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_391/mul_2Mullstm_cell_391/Sigmoid_2:y:0"lstm_cell_391/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_391_matmul_readvariableop_resource.lstm_cell_391_matmul_1_readvariableop_resource-lstm_cell_391_biasadd_readvariableop_resource*
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
while_body_2374963*
condR
while_cond_2374962*K
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
NoOpNoOp%^lstm_cell_391/BiasAdd/ReadVariableOp$^lstm_cell_391/MatMul/ReadVariableOp&^lstm_cell_391/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_391/BiasAdd/ReadVariableOp$lstm_cell_391/BiasAdd/ReadVariableOp2J
#lstm_cell_391/MatMul/ReadVariableOp#lstm_cell_391/MatMul/ReadVariableOp2N
%lstm_cell_391/MatMul_1/ReadVariableOp%lstm_cell_391/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_395_layer_call_fn_2375487
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2371926o
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
while_body_2376008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_392_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_392_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_392_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_392_matmul_readvariableop_resource:2(F
4while_lstm_cell_392_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_392_biasadd_readvariableop_resource:(??*while/lstm_cell_392/BiasAdd/ReadVariableOp?)while/lstm_cell_392/MatMul/ReadVariableOp?+while/lstm_cell_392/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_392/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_392/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_392/addAddV2$while/lstm_cell_392/MatMul:product:0&while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_392/BiasAddBiasAddwhile/lstm_cell_392/add:z:02while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_392/splitSplit,while/lstm_cell_392/split/split_dim:output:0$while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_392/SigmoidSigmoid"while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_1Sigmoid"while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mulMul!while/lstm_cell_392/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_392/ReluRelu"while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_1Mulwhile/lstm_cell_392/Sigmoid:y:0&while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/add_1AddV2while/lstm_cell_392/mul:z:0while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_392/Sigmoid_2Sigmoid"while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_392/Relu_1Reluwhile/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_392/mul_2Mul!while/lstm_cell_392/Sigmoid_2:y:0(while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_392/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_392/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_392/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_392/BiasAdd/ReadVariableOp*^while/lstm_cell_392/MatMul/ReadVariableOp,^while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_392_biasadd_readvariableop_resource5while_lstm_cell_392_biasadd_readvariableop_resource_0"n
4while_lstm_cell_392_matmul_1_readvariableop_resource6while_lstm_cell_392_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_392_matmul_readvariableop_resource4while_lstm_cell_392_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_392/BiasAdd/ReadVariableOp*while/lstm_cell_392/BiasAdd/ReadVariableOp2V
)while/lstm_cell_392/MatMul/ReadVariableOp)while/lstm_cell_392/MatMul/ReadVariableOp2Z
+while/lstm_cell_392/MatMul_1/ReadVariableOp+while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_2371348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_390_2371372_0:	?0
while_lstm_cell_390_2371374_0:	d?,
while_lstm_cell_390_2371376_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_390_2371372:	?.
while_lstm_cell_390_2371374:	d?*
while_lstm_cell_390_2371376:	???+while/lstm_cell_390/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_390/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_390_2371372_0while_lstm_cell_390_2371374_0while_lstm_cell_390_2371376_0*
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371289?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_390/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_390/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_390/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_390/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_390_2371372while_lstm_cell_390_2371372_0"<
while_lstm_cell_390_2371374while_lstm_cell_390_2371374_0"<
while_lstm_cell_390_2371376while_lstm_cell_390_2371376_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_390/StatefulPartitionedCall+while/lstm_cell_390/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2374490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_390_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_390_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_390_matmul_readvariableop_resource:	?G
4while_lstm_cell_390_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_390_biasadd_readvariableop_resource:	???*while/lstm_cell_390/BiasAdd/ReadVariableOp?)while/lstm_cell_390/MatMul/ReadVariableOp?+while/lstm_cell_390/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_390/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_390/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_390/addAddV2$while/lstm_cell_390/MatMul:product:0&while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_390/BiasAddBiasAddwhile/lstm_cell_390/add:z:02while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_390/splitSplit,while/lstm_cell_390/split/split_dim:output:0$while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_390/SigmoidSigmoid"while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_1Sigmoid"while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mulMul!while/lstm_cell_390/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_390/ReluRelu"while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_1Mulwhile/lstm_cell_390/Sigmoid:y:0&while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/add_1AddV2while/lstm_cell_390/mul:z:0while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_390/Sigmoid_2Sigmoid"while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_390/Relu_1Reluwhile/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_390/mul_2Mul!while/lstm_cell_390/Sigmoid_2:y:0(while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_390/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_390/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_390/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_390/BiasAdd/ReadVariableOp*^while/lstm_cell_390/MatMul/ReadVariableOp,^while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_390_biasadd_readvariableop_resource5while_lstm_cell_390_biasadd_readvariableop_resource_0"n
4while_lstm_cell_390_matmul_1_readvariableop_resource6while_lstm_cell_390_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_390_matmul_readvariableop_resource4while_lstm_cell_390_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_390/BiasAdd/ReadVariableOp*while/lstm_cell_390/BiasAdd/ReadVariableOp2V
)while/lstm_cell_390/MatMul/ReadVariableOp)while/lstm_cell_390/MatMul/ReadVariableOp2Z
+while/lstm_cell_390/MatMul_1/ReadVariableOp+while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_131_layer_call_and_return_conditional_losses_2372593

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
while_body_2375106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_391_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_391_matmul_readvariableop_resource:	d?G
4while_lstm_cell_391_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_391_biasadd_readvariableop_resource:	???*while/lstm_cell_391/BiasAdd/ReadVariableOp?)while/lstm_cell_391/MatMul/ReadVariableOp?+while/lstm_cell_391/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_391/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_391/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_391/addAddV2$while/lstm_cell_391/MatMul:product:0&while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_391/BiasAddBiasAddwhile/lstm_cell_391/add:z:02while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_391/splitSplit,while/lstm_cell_391/split/split_dim:output:0$while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_391/SigmoidSigmoid"while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_1Sigmoid"while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mulMul!while/lstm_cell_391/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_391/ReluRelu"while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_1Mulwhile/lstm_cell_391/Sigmoid:y:0&while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/add_1AddV2while/lstm_cell_391/mul:z:0while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_2Sigmoid"while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_391/Relu_1Reluwhile/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_2Mul!while/lstm_cell_391/Sigmoid_2:y:0(while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_391/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_391/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_391/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_391/BiasAdd/ReadVariableOp*^while/lstm_cell_391/MatMul/ReadVariableOp,^while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_391_biasadd_readvariableop_resource5while_lstm_cell_391_biasadd_readvariableop_resource_0"n
4while_lstm_cell_391_matmul_1_readvariableop_resource6while_lstm_cell_391_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_391_matmul_readvariableop_resource4while_lstm_cell_391_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_391/BiasAdd/ReadVariableOp*while/lstm_cell_391/BiasAdd/ReadVariableOp2V
)while/lstm_cell_391/MatMul/ReadVariableOp)while/lstm_cell_391/MatMul/ReadVariableOp2Z
+while/lstm_cell_391/MatMul_1/ReadVariableOp+while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2376177

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
while_cond_2374632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2374632___redundant_placeholder05
1while_while_cond_2374632___redundant_placeholder15
1while_while_cond_2374632___redundant_placeholder25
1while_while_cond_2374632___redundant_placeholder3
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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373301
lstm_393_input#
lstm_393_2373274:	?#
lstm_393_2373276:	d?
lstm_393_2373278:	?#
lstm_394_2373281:	d?#
lstm_394_2373283:	2?
lstm_394_2373285:	?"
lstm_395_2373288:2("
lstm_395_2373290:
(
lstm_395_2373292:(#
dense_131_2373295:

dense_131_2373297:
identity??!dense_131/StatefulPartitionedCall? lstm_393/StatefulPartitionedCall? lstm_394/StatefulPartitionedCall? lstm_395/StatefulPartitionedCall?
 lstm_393/StatefulPartitionedCallStatefulPartitionedCalllstm_393_inputlstm_393_2373274lstm_393_2373276lstm_393_2373278*
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2373121?
 lstm_394/StatefulPartitionedCallStatefulPartitionedCall)lstm_393/StatefulPartitionedCall:output:0lstm_394_2373281lstm_394_2373283lstm_394_2373285*
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2372956?
 lstm_395/StatefulPartitionedCallStatefulPartitionedCall)lstm_394/StatefulPartitionedCall:output:0lstm_395_2373288lstm_395_2373290lstm_395_2373292*
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2372791?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall)lstm_395/StatefulPartitionedCall:output:0dense_131_2373295dense_131_2373297*
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
F__inference_dense_131_layer_call_and_return_conditional_losses_2372593y
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_131/StatefulPartitionedCall!^lstm_393/StatefulPartitionedCall!^lstm_394/StatefulPartitionedCall!^lstm_395/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2D
 lstm_393/StatefulPartitionedCall lstm_393/StatefulPartitionedCall2D
 lstm_394/StatefulPartitionedCall lstm_394/StatefulPartitionedCall2D
 lstm_395/StatefulPartitionedCall lstm_395/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_393_input
?T
?
*sequential_131_lstm_395_while_body_2370986L
Hsequential_131_lstm_395_while_sequential_131_lstm_395_while_loop_counterR
Nsequential_131_lstm_395_while_sequential_131_lstm_395_while_maximum_iterations-
)sequential_131_lstm_395_while_placeholder/
+sequential_131_lstm_395_while_placeholder_1/
+sequential_131_lstm_395_while_placeholder_2/
+sequential_131_lstm_395_while_placeholder_3K
Gsequential_131_lstm_395_while_sequential_131_lstm_395_strided_slice_1_0?
?sequential_131_lstm_395_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_395_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_131_lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0:2(`
Nsequential_131_lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0:
([
Msequential_131_lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0:(*
&sequential_131_lstm_395_while_identity,
(sequential_131_lstm_395_while_identity_1,
(sequential_131_lstm_395_while_identity_2,
(sequential_131_lstm_395_while_identity_3,
(sequential_131_lstm_395_while_identity_4,
(sequential_131_lstm_395_while_identity_5I
Esequential_131_lstm_395_while_sequential_131_lstm_395_strided_slice_1?
?sequential_131_lstm_395_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_395_tensorarrayunstack_tensorlistfromtensor\
Jsequential_131_lstm_395_while_lstm_cell_392_matmul_readvariableop_resource:2(^
Lsequential_131_lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource:
(Y
Ksequential_131_lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource:(??Bsequential_131/lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp?Asequential_131/lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp?Csequential_131/lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp?
Osequential_131/lstm_395/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_131/lstm_395/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_131_lstm_395_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_395_tensorarrayunstack_tensorlistfromtensor_0)sequential_131_lstm_395_while_placeholderXsequential_131/lstm_395/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_131/lstm_395/while/lstm_cell_392/MatMul/ReadVariableOpReadVariableOpLsequential_131_lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_131/lstm_395/while/lstm_cell_392/MatMulMatMulHsequential_131/lstm_395/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_131/lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_131/lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOpNsequential_131_lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_131/lstm_395/while/lstm_cell_392/MatMul_1MatMul+sequential_131_lstm_395_while_placeholder_2Ksequential_131/lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_131/lstm_395/while/lstm_cell_392/addAddV2<sequential_131/lstm_395/while/lstm_cell_392/MatMul:product:0>sequential_131/lstm_395/while/lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_131/lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOpMsequential_131_lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_131/lstm_395/while/lstm_cell_392/BiasAddBiasAdd3sequential_131/lstm_395/while/lstm_cell_392/add:z:0Jsequential_131/lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_131/lstm_395/while/lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_131/lstm_395/while/lstm_cell_392/splitSplitDsequential_131/lstm_395/while/lstm_cell_392/split/split_dim:output:0<sequential_131/lstm_395/while/lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_131/lstm_395/while/lstm_cell_392/SigmoidSigmoid:sequential_131/lstm_395/while/lstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_131/lstm_395/while/lstm_cell_392/Sigmoid_1Sigmoid:sequential_131/lstm_395/while/lstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_131/lstm_395/while/lstm_cell_392/mulMul9sequential_131/lstm_395/while/lstm_cell_392/Sigmoid_1:y:0+sequential_131_lstm_395_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_131/lstm_395/while/lstm_cell_392/ReluRelu:sequential_131/lstm_395/while/lstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_131/lstm_395/while/lstm_cell_392/mul_1Mul7sequential_131/lstm_395/while/lstm_cell_392/Sigmoid:y:0>sequential_131/lstm_395/while/lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_131/lstm_395/while/lstm_cell_392/add_1AddV23sequential_131/lstm_395/while/lstm_cell_392/mul:z:05sequential_131/lstm_395/while/lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_131/lstm_395/while/lstm_cell_392/Sigmoid_2Sigmoid:sequential_131/lstm_395/while/lstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_131/lstm_395/while/lstm_cell_392/Relu_1Relu5sequential_131/lstm_395/while/lstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_131/lstm_395/while/lstm_cell_392/mul_2Mul9sequential_131/lstm_395/while/lstm_cell_392/Sigmoid_2:y:0@sequential_131/lstm_395/while/lstm_cell_392/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_131/lstm_395/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_131_lstm_395_while_placeholder_1)sequential_131_lstm_395_while_placeholder5sequential_131/lstm_395/while/lstm_cell_392/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_131/lstm_395/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_131/lstm_395/while/addAddV2)sequential_131_lstm_395_while_placeholder,sequential_131/lstm_395/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_131/lstm_395/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_131/lstm_395/while/add_1AddV2Hsequential_131_lstm_395_while_sequential_131_lstm_395_while_loop_counter.sequential_131/lstm_395/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_131/lstm_395/while/IdentityIdentity'sequential_131/lstm_395/while/add_1:z:0#^sequential_131/lstm_395/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_395/while/Identity_1IdentityNsequential_131_lstm_395_while_sequential_131_lstm_395_while_maximum_iterations#^sequential_131/lstm_395/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_395/while/Identity_2Identity%sequential_131/lstm_395/while/add:z:0#^sequential_131/lstm_395/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_395/while/Identity_3IdentityRsequential_131/lstm_395/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_131/lstm_395/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_395/while/Identity_4Identity5sequential_131/lstm_395/while/lstm_cell_392/mul_2:z:0#^sequential_131/lstm_395/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_131/lstm_395/while/Identity_5Identity5sequential_131/lstm_395/while/lstm_cell_392/add_1:z:0#^sequential_131/lstm_395/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_131/lstm_395/while/NoOpNoOpC^sequential_131/lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOpB^sequential_131/lstm_395/while/lstm_cell_392/MatMul/ReadVariableOpD^sequential_131/lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_131_lstm_395_while_identity/sequential_131/lstm_395/while/Identity:output:0"]
(sequential_131_lstm_395_while_identity_11sequential_131/lstm_395/while/Identity_1:output:0"]
(sequential_131_lstm_395_while_identity_21sequential_131/lstm_395/while/Identity_2:output:0"]
(sequential_131_lstm_395_while_identity_31sequential_131/lstm_395/while/Identity_3:output:0"]
(sequential_131_lstm_395_while_identity_41sequential_131/lstm_395/while/Identity_4:output:0"]
(sequential_131_lstm_395_while_identity_51sequential_131/lstm_395/while/Identity_5:output:0"?
Ksequential_131_lstm_395_while_lstm_cell_392_biasadd_readvariableop_resourceMsequential_131_lstm_395_while_lstm_cell_392_biasadd_readvariableop_resource_0"?
Lsequential_131_lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resourceNsequential_131_lstm_395_while_lstm_cell_392_matmul_1_readvariableop_resource_0"?
Jsequential_131_lstm_395_while_lstm_cell_392_matmul_readvariableop_resourceLsequential_131_lstm_395_while_lstm_cell_392_matmul_readvariableop_resource_0"?
Esequential_131_lstm_395_while_sequential_131_lstm_395_strided_slice_1Gsequential_131_lstm_395_while_sequential_131_lstm_395_strided_slice_1_0"?
?sequential_131_lstm_395_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_395_tensorarrayunstack_tensorlistfromtensor?sequential_131_lstm_395_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_395_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_131/lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOpBsequential_131/lstm_395/while/lstm_cell_392/BiasAdd/ReadVariableOp2?
Asequential_131/lstm_395/while/lstm_cell_392/MatMul/ReadVariableOpAsequential_131/lstm_395/while/lstm_cell_392/MatMul/ReadVariableOp2?
Csequential_131/lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOpCsequential_131/lstm_395/while/lstm_cell_392/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2371156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2371156___redundant_placeholder05
1while_while_cond_2371156___redundant_placeholder15
1while_while_cond_2371156___redundant_placeholder25
1while_while_cond_2371156___redundant_placeholder3
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
while_cond_2372340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2372340___redundant_placeholder05
1while_while_cond_2372340___redundant_placeholder15
1while_while_cond_2372340___redundant_placeholder25
1while_while_cond_2372340___redundant_placeholder3
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
while_cond_2372490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2372490___redundant_placeholder05
1while_while_cond_2372490___redundant_placeholder15
1while_while_cond_2372490___redundant_placeholder25
1while_while_cond_2372490___redundant_placeholder3
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
while_body_2375392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_391_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_391_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_391_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_391_matmul_readvariableop_resource:	d?G
4while_lstm_cell_391_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_391_biasadd_readvariableop_resource:	???*while/lstm_cell_391/BiasAdd/ReadVariableOp?)while/lstm_cell_391/MatMul/ReadVariableOp?+while/lstm_cell_391/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_391/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_391_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_391/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_391/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_391/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_391_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_391/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_391/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_391/addAddV2$while/lstm_cell_391/MatMul:product:0&while/lstm_cell_391/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_391/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_391_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_391/BiasAddBiasAddwhile/lstm_cell_391/add:z:02while/lstm_cell_391/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_391/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_391/splitSplit,while/lstm_cell_391/split/split_dim:output:0$while/lstm_cell_391/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_391/SigmoidSigmoid"while/lstm_cell_391/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_1Sigmoid"while/lstm_cell_391/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mulMul!while/lstm_cell_391/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_391/ReluRelu"while/lstm_cell_391/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_1Mulwhile/lstm_cell_391/Sigmoid:y:0&while/lstm_cell_391/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/add_1AddV2while/lstm_cell_391/mul:z:0while/lstm_cell_391/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_391/Sigmoid_2Sigmoid"while/lstm_cell_391/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_391/Relu_1Reluwhile/lstm_cell_391/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_391/mul_2Mul!while/lstm_cell_391/Sigmoid_2:y:0(while/lstm_cell_391/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_391/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_391/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_391/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_391/BiasAdd/ReadVariableOp*^while/lstm_cell_391/MatMul/ReadVariableOp,^while/lstm_cell_391/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_391_biasadd_readvariableop_resource5while_lstm_cell_391_biasadd_readvariableop_resource_0"n
4while_lstm_cell_391_matmul_1_readvariableop_resource6while_lstm_cell_391_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_391_matmul_readvariableop_resource4while_lstm_cell_391_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_391/BiasAdd/ReadVariableOp*while/lstm_cell_391/BiasAdd/ReadVariableOp2V
)while/lstm_cell_391/MatMul/ReadVariableOp)while/lstm_cell_391/MatMul/ReadVariableOp2Z
+while/lstm_cell_391/MatMul_1/ReadVariableOp+while/lstm_cell_391/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_395_while_cond_2374153.
*lstm_395_while_lstm_395_while_loop_counter4
0lstm_395_while_lstm_395_while_maximum_iterations
lstm_395_while_placeholder 
lstm_395_while_placeholder_1 
lstm_395_while_placeholder_2 
lstm_395_while_placeholder_30
,lstm_395_while_less_lstm_395_strided_slice_1G
Clstm_395_while_lstm_395_while_cond_2374153___redundant_placeholder0G
Clstm_395_while_lstm_395_while_cond_2374153___redundant_placeholder1G
Clstm_395_while_lstm_395_while_cond_2374153___redundant_placeholder2G
Clstm_395_while_lstm_395_while_cond_2374153___redundant_placeholder3
lstm_395_while_identity
?
lstm_395/while/LessLesslstm_395_while_placeholder,lstm_395_while_less_lstm_395_strided_slice_1*
T0*
_output_shapes
: ]
lstm_395/while/IdentityIdentitylstm_395/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_395_while_identity lstm_395/while/Identity:output:0*(
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
while_cond_2375721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2375721___redundant_placeholder05
1while_while_cond_2375721___redundant_placeholder15
1while_while_cond_2375721___redundant_placeholder25
1while_while_cond_2375721___redundant_placeholder3
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
while_cond_2371347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2371347___redundant_placeholder05
1while_while_cond_2371347___redundant_placeholder15
1while_while_cond_2371347___redundant_placeholder25
1while_while_cond_2371347___redundant_placeholder3
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
while_cond_2374489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2374489___redundant_placeholder05
1while_while_cond_2374489___redundant_placeholder15
1while_while_cond_2374489___redundant_placeholder25
1while_while_cond_2374489___redundant_placeholder3
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2371493

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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2376275

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
?
?
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2376209

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
while_cond_2372706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2372706___redundant_placeholder05
1while_while_cond_2372706___redundant_placeholder15
1while_while_cond_2372706___redundant_placeholder25
1while_while_cond_2372706___redundant_placeholder3
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
while_cond_2375391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2375391___redundant_placeholder05
1while_while_cond_2375391___redundant_placeholder15
1while_while_cond_2375391___redundant_placeholder25
1while_while_cond_2375391___redundant_placeholder3
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2376092

inputs>
,lstm_cell_392_matmul_readvariableop_resource:2(@
.lstm_cell_392_matmul_1_readvariableop_resource:
(;
-lstm_cell_392_biasadd_readvariableop_resource:(
identity??$lstm_cell_392/BiasAdd/ReadVariableOp?#lstm_cell_392/MatMul/ReadVariableOp?%lstm_cell_392/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_392/MatMul/ReadVariableOpReadVariableOp,lstm_cell_392_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_392/MatMulMatMulstrided_slice_2:output:0+lstm_cell_392/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_392/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_392_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_392/MatMul_1MatMulzeros:output:0-lstm_cell_392/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_392/addAddV2lstm_cell_392/MatMul:product:0 lstm_cell_392/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_392/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_392_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_392/BiasAddBiasAddlstm_cell_392/add:z:0,lstm_cell_392/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_392/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_392/splitSplit&lstm_cell_392/split/split_dim:output:0lstm_cell_392/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_392/SigmoidSigmoidlstm_cell_392/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_1Sigmoidlstm_cell_392/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_392/mulMullstm_cell_392/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_392/ReluRelulstm_cell_392/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_1Mullstm_cell_392/Sigmoid:y:0 lstm_cell_392/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_392/add_1AddV2lstm_cell_392/mul:z:0lstm_cell_392/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_392/Sigmoid_2Sigmoidlstm_cell_392/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_392/Relu_1Relulstm_cell_392/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_392/mul_2Mullstm_cell_392/Sigmoid_2:y:0"lstm_cell_392/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_392_matmul_readvariableop_resource.lstm_cell_392_matmul_1_readvariableop_resource-lstm_cell_392_biasadd_readvariableop_resource*
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
while_body_2376008*
condR
while_cond_2376007*K
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
NoOpNoOp%^lstm_cell_392/BiasAdd/ReadVariableOp$^lstm_cell_392/MatMul/ReadVariableOp&^lstm_cell_392/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_392/BiasAdd/ReadVariableOp$lstm_cell_392/BiasAdd/ReadVariableOp2J
#lstm_cell_392/MatMul/ReadVariableOp#lstm_cell_392/MatMul/ReadVariableOp2N
%lstm_cell_392/MatMul_1/ReadVariableOp%lstm_cell_392/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_2371157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_390_2371181_0:	?0
while_lstm_cell_390_2371183_0:	d?,
while_lstm_cell_390_2371185_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_390_2371181:	?.
while_lstm_cell_390_2371183:	d?*
while_lstm_cell_390_2371185:	???+while/lstm_cell_390/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_390/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_390_2371181_0while_lstm_cell_390_2371183_0while_lstm_cell_390_2371185_0*
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2371143?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_390/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_390/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_390/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_390/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_390_2371181while_lstm_cell_390_2371181_0"<
while_lstm_cell_390_2371183while_lstm_cell_390_2371183_0"<
while_lstm_cell_390_2371185while_lstm_cell_390_2371185_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_390/StatefulPartitionedCall+while/lstm_cell_390/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_393_layer_call_fn_2374288

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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2373121s
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
?T
?
*sequential_131_lstm_393_while_body_2370708L
Hsequential_131_lstm_393_while_sequential_131_lstm_393_while_loop_counterR
Nsequential_131_lstm_393_while_sequential_131_lstm_393_while_maximum_iterations-
)sequential_131_lstm_393_while_placeholder/
+sequential_131_lstm_393_while_placeholder_1/
+sequential_131_lstm_393_while_placeholder_2/
+sequential_131_lstm_393_while_placeholder_3K
Gsequential_131_lstm_393_while_sequential_131_lstm_393_strided_slice_1_0?
?sequential_131_lstm_393_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_393_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_131_lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0:	?a
Nsequential_131_lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0:	d?\
Msequential_131_lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0:	?*
&sequential_131_lstm_393_while_identity,
(sequential_131_lstm_393_while_identity_1,
(sequential_131_lstm_393_while_identity_2,
(sequential_131_lstm_393_while_identity_3,
(sequential_131_lstm_393_while_identity_4,
(sequential_131_lstm_393_while_identity_5I
Esequential_131_lstm_393_while_sequential_131_lstm_393_strided_slice_1?
?sequential_131_lstm_393_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_393_tensorarrayunstack_tensorlistfromtensor]
Jsequential_131_lstm_393_while_lstm_cell_390_matmul_readvariableop_resource:	?_
Lsequential_131_lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource:	d?Z
Ksequential_131_lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource:	???Bsequential_131/lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp?Asequential_131/lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp?Csequential_131/lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp?
Osequential_131/lstm_393/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_131/lstm_393/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_131_lstm_393_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_393_tensorarrayunstack_tensorlistfromtensor_0)sequential_131_lstm_393_while_placeholderXsequential_131/lstm_393/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_131/lstm_393/while/lstm_cell_390/MatMul/ReadVariableOpReadVariableOpLsequential_131_lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_131/lstm_393/while/lstm_cell_390/MatMulMatMulHsequential_131/lstm_393/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_131/lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_131/lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOpReadVariableOpNsequential_131_lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_131/lstm_393/while/lstm_cell_390/MatMul_1MatMul+sequential_131_lstm_393_while_placeholder_2Ksequential_131/lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_131/lstm_393/while/lstm_cell_390/addAddV2<sequential_131/lstm_393/while/lstm_cell_390/MatMul:product:0>sequential_131/lstm_393/while/lstm_cell_390/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_131/lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOpReadVariableOpMsequential_131_lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_131/lstm_393/while/lstm_cell_390/BiasAddBiasAdd3sequential_131/lstm_393/while/lstm_cell_390/add:z:0Jsequential_131/lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_131/lstm_393/while/lstm_cell_390/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_131/lstm_393/while/lstm_cell_390/splitSplitDsequential_131/lstm_393/while/lstm_cell_390/split/split_dim:output:0<sequential_131/lstm_393/while/lstm_cell_390/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_131/lstm_393/while/lstm_cell_390/SigmoidSigmoid:sequential_131/lstm_393/while/lstm_cell_390/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_131/lstm_393/while/lstm_cell_390/Sigmoid_1Sigmoid:sequential_131/lstm_393/while/lstm_cell_390/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_131/lstm_393/while/lstm_cell_390/mulMul9sequential_131/lstm_393/while/lstm_cell_390/Sigmoid_1:y:0+sequential_131_lstm_393_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_131/lstm_393/while/lstm_cell_390/ReluRelu:sequential_131/lstm_393/while/lstm_cell_390/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_131/lstm_393/while/lstm_cell_390/mul_1Mul7sequential_131/lstm_393/while/lstm_cell_390/Sigmoid:y:0>sequential_131/lstm_393/while/lstm_cell_390/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_131/lstm_393/while/lstm_cell_390/add_1AddV23sequential_131/lstm_393/while/lstm_cell_390/mul:z:05sequential_131/lstm_393/while/lstm_cell_390/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_131/lstm_393/while/lstm_cell_390/Sigmoid_2Sigmoid:sequential_131/lstm_393/while/lstm_cell_390/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_131/lstm_393/while/lstm_cell_390/Relu_1Relu5sequential_131/lstm_393/while/lstm_cell_390/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_131/lstm_393/while/lstm_cell_390/mul_2Mul9sequential_131/lstm_393/while/lstm_cell_390/Sigmoid_2:y:0@sequential_131/lstm_393/while/lstm_cell_390/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_131/lstm_393/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_131_lstm_393_while_placeholder_1)sequential_131_lstm_393_while_placeholder5sequential_131/lstm_393/while/lstm_cell_390/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_131/lstm_393/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_131/lstm_393/while/addAddV2)sequential_131_lstm_393_while_placeholder,sequential_131/lstm_393/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_131/lstm_393/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_131/lstm_393/while/add_1AddV2Hsequential_131_lstm_393_while_sequential_131_lstm_393_while_loop_counter.sequential_131/lstm_393/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_131/lstm_393/while/IdentityIdentity'sequential_131/lstm_393/while/add_1:z:0#^sequential_131/lstm_393/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_393/while/Identity_1IdentityNsequential_131_lstm_393_while_sequential_131_lstm_393_while_maximum_iterations#^sequential_131/lstm_393/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_393/while/Identity_2Identity%sequential_131/lstm_393/while/add:z:0#^sequential_131/lstm_393/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_393/while/Identity_3IdentityRsequential_131/lstm_393/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_131/lstm_393/while/NoOp*
T0*
_output_shapes
: ?
(sequential_131/lstm_393/while/Identity_4Identity5sequential_131/lstm_393/while/lstm_cell_390/mul_2:z:0#^sequential_131/lstm_393/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_131/lstm_393/while/Identity_5Identity5sequential_131/lstm_393/while/lstm_cell_390/add_1:z:0#^sequential_131/lstm_393/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_131/lstm_393/while/NoOpNoOpC^sequential_131/lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOpB^sequential_131/lstm_393/while/lstm_cell_390/MatMul/ReadVariableOpD^sequential_131/lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_131_lstm_393_while_identity/sequential_131/lstm_393/while/Identity:output:0"]
(sequential_131_lstm_393_while_identity_11sequential_131/lstm_393/while/Identity_1:output:0"]
(sequential_131_lstm_393_while_identity_21sequential_131/lstm_393/while/Identity_2:output:0"]
(sequential_131_lstm_393_while_identity_31sequential_131/lstm_393/while/Identity_3:output:0"]
(sequential_131_lstm_393_while_identity_41sequential_131/lstm_393/while/Identity_4:output:0"]
(sequential_131_lstm_393_while_identity_51sequential_131/lstm_393/while/Identity_5:output:0"?
Ksequential_131_lstm_393_while_lstm_cell_390_biasadd_readvariableop_resourceMsequential_131_lstm_393_while_lstm_cell_390_biasadd_readvariableop_resource_0"?
Lsequential_131_lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resourceNsequential_131_lstm_393_while_lstm_cell_390_matmul_1_readvariableop_resource_0"?
Jsequential_131_lstm_393_while_lstm_cell_390_matmul_readvariableop_resourceLsequential_131_lstm_393_while_lstm_cell_390_matmul_readvariableop_resource_0"?
Esequential_131_lstm_393_while_sequential_131_lstm_393_strided_slice_1Gsequential_131_lstm_393_while_sequential_131_lstm_393_strided_slice_1_0"?
?sequential_131_lstm_393_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_393_tensorarrayunstack_tensorlistfromtensor?sequential_131_lstm_393_while_tensorarrayv2read_tensorlistgetitem_sequential_131_lstm_393_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_131/lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOpBsequential_131/lstm_393/while/lstm_cell_390/BiasAdd/ReadVariableOp2?
Asequential_131/lstm_393/while/lstm_cell_390/MatMul/ReadVariableOpAsequential_131/lstm_393/while/lstm_cell_390/MatMul/ReadVariableOp2?
Csequential_131/lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOpCsequential_131/lstm_393/while/lstm_cell_390/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_393_input;
 serving_default_lstm_393_input:0?????????=
	dense_1310
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
2dense_131/kernel
:2dense_131/bias
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
0:.	?2lstm_393/lstm_cell_393/kernel
::8	d?2'lstm_393/lstm_cell_393/recurrent_kernel
*:(?2lstm_393/lstm_cell_393/bias
0:.	d?2lstm_394/lstm_cell_394/kernel
::8	2?2'lstm_394/lstm_cell_394/recurrent_kernel
*:(?2lstm_394/lstm_cell_394/bias
/:-2(2lstm_395/lstm_cell_395/kernel
9:7
(2'lstm_395/lstm_cell_395/recurrent_kernel
):'(2lstm_395/lstm_cell_395/bias
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
2Adam/dense_131/kernel/m
!:2Adam/dense_131/bias/m
5:3	?2$Adam/lstm_393/lstm_cell_393/kernel/m
?:=	d?2.Adam/lstm_393/lstm_cell_393/recurrent_kernel/m
/:-?2"Adam/lstm_393/lstm_cell_393/bias/m
5:3	d?2$Adam/lstm_394/lstm_cell_394/kernel/m
?:=	2?2.Adam/lstm_394/lstm_cell_394/recurrent_kernel/m
/:-?2"Adam/lstm_394/lstm_cell_394/bias/m
4:22(2$Adam/lstm_395/lstm_cell_395/kernel/m
>:<
(2.Adam/lstm_395/lstm_cell_395/recurrent_kernel/m
.:,(2"Adam/lstm_395/lstm_cell_395/bias/m
':%
2Adam/dense_131/kernel/v
!:2Adam/dense_131/bias/v
5:3	?2$Adam/lstm_393/lstm_cell_393/kernel/v
?:=	d?2.Adam/lstm_393/lstm_cell_393/recurrent_kernel/v
/:-?2"Adam/lstm_393/lstm_cell_393/bias/v
5:3	d?2$Adam/lstm_394/lstm_cell_394/kernel/v
?:=	2?2.Adam/lstm_394/lstm_cell_394/recurrent_kernel/v
/:-?2"Adam/lstm_394/lstm_cell_394/bias/v
4:22(2$Adam/lstm_395/lstm_cell_395/kernel/v
>:<
(2.Adam/lstm_395/lstm_cell_395/recurrent_kernel/v
.:,(2"Adam/lstm_395/lstm_cell_395/bias/v
?2?
0__inference_sequential_131_layer_call_fn_2372625
0__inference_sequential_131_layer_call_fn_2373363
0__inference_sequential_131_layer_call_fn_2373390
0__inference_sequential_131_layer_call_fn_2373241?
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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373817
K__inference_sequential_131_layer_call_and_return_conditional_losses_2374244
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373271
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373301?
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
"__inference__wrapped_model_2371076lstm_393_input"?
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
*__inference_lstm_393_layer_call_fn_2374255
*__inference_lstm_393_layer_call_fn_2374266
*__inference_lstm_393_layer_call_fn_2374277
*__inference_lstm_393_layer_call_fn_2374288?
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374431
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374574
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374717
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374860?
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
*__inference_lstm_394_layer_call_fn_2374871
*__inference_lstm_394_layer_call_fn_2374882
*__inference_lstm_394_layer_call_fn_2374893
*__inference_lstm_394_layer_call_fn_2374904?
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375047
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375190
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375333
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375476?
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
*__inference_lstm_395_layer_call_fn_2375487
*__inference_lstm_395_layer_call_fn_2375498
*__inference_lstm_395_layer_call_fn_2375509
*__inference_lstm_395_layer_call_fn_2375520?
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375663
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375806
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375949
E__inference_lstm_395_layer_call_and_return_conditional_losses_2376092?
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
+__inference_dense_131_layer_call_fn_2376101?
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
F__inference_dense_131_layer_call_and_return_conditional_losses_2376111?
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
%__inference_signature_wrapper_2373336lstm_393_input"?
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
/__inference_lstm_cell_390_layer_call_fn_2376128
/__inference_lstm_cell_390_layer_call_fn_2376145?
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2376177
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2376209?
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
/__inference_lstm_cell_391_layer_call_fn_2376226
/__inference_lstm_cell_391_layer_call_fn_2376243?
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2376275
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2376307?
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
/__inference_lstm_cell_392_layer_call_fn_2376324
/__inference_lstm_cell_392_layer_call_fn_2376341?
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2376373
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2376405?
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
"__inference__wrapped_model_2371076?-./012345!";?8
1?.
,?)
lstm_393_input?????????
? "5?2
0
	dense_131#? 
	dense_131??????????
F__inference_dense_131_layer_call_and_return_conditional_losses_2376111\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_131_layer_call_fn_2376101O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374431?-./O?L
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374574?-./O?L
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374717q-./??<
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
E__inference_lstm_393_layer_call_and_return_conditional_losses_2374860q-./??<
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
*__inference_lstm_393_layer_call_fn_2374255}-./O?L
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
*__inference_lstm_393_layer_call_fn_2374266}-./O?L
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
*__inference_lstm_393_layer_call_fn_2374277d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_393_layer_call_fn_2374288d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375047?012O?L
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375190?012O?L
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375333q012??<
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
E__inference_lstm_394_layer_call_and_return_conditional_losses_2375476q012??<
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
*__inference_lstm_394_layer_call_fn_2374871}012O?L
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
*__inference_lstm_394_layer_call_fn_2374882}012O?L
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
*__inference_lstm_394_layer_call_fn_2374893d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_394_layer_call_fn_2374904d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375663}345O?L
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375806}345O?L
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2375949m345??<
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
E__inference_lstm_395_layer_call_and_return_conditional_losses_2376092m345??<
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
*__inference_lstm_395_layer_call_fn_2375487p345O?L
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
*__inference_lstm_395_layer_call_fn_2375498p345O?L
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
*__inference_lstm_395_layer_call_fn_2375509`345??<
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
*__inference_lstm_395_layer_call_fn_2375520`345??<
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2376177?-./??}
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
J__inference_lstm_cell_390_layer_call_and_return_conditional_losses_2376209?-./??}
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
/__inference_lstm_cell_390_layer_call_fn_2376128?-./??}
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
/__inference_lstm_cell_390_layer_call_fn_2376145?-./??}
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2376275?012??}
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
J__inference_lstm_cell_391_layer_call_and_return_conditional_losses_2376307?012??}
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
/__inference_lstm_cell_391_layer_call_fn_2376226?012??}
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
/__inference_lstm_cell_391_layer_call_fn_2376243?012??}
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2376373?345??}
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
J__inference_lstm_cell_392_layer_call_and_return_conditional_losses_2376405?345??}
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
/__inference_lstm_cell_392_layer_call_fn_2376324?345??}
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
/__inference_lstm_cell_392_layer_call_fn_2376341?345??}
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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373271y-./012345!"C?@
9?6
,?)
lstm_393_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373301y-./012345!"C?@
9?6
,?)
lstm_393_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_131_layer_call_and_return_conditional_losses_2373817q-./012345!";?8
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
K__inference_sequential_131_layer_call_and_return_conditional_losses_2374244q-./012345!";?8
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
0__inference_sequential_131_layer_call_fn_2372625l-./012345!"C?@
9?6
,?)
lstm_393_input?????????
p 

 
? "???????????
0__inference_sequential_131_layer_call_fn_2373241l-./012345!"C?@
9?6
,?)
lstm_393_input?????????
p

 
? "???????????
0__inference_sequential_131_layer_call_fn_2373363d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_131_layer_call_fn_2373390d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2373336?-./012345!"M?J
? 
C?@
>
lstm_393_input,?)
lstm_393_input?????????"5?2
0
	dense_131#? 
	dense_131?????????