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
dense_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_135/kernel
u
$dense_135/kernel/Read/ReadVariableOpReadVariableOpdense_135/kernel*
_output_shapes

:
*
dtype0
t
dense_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_135/bias
m
"dense_135/bias/Read/ReadVariableOpReadVariableOpdense_135/bias*
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
lstm_405/lstm_cell_405/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_405/lstm_cell_405/kernel
?
1lstm_405/lstm_cell_405/kernel/Read/ReadVariableOpReadVariableOplstm_405/lstm_cell_405/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_405/lstm_cell_405/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_405/lstm_cell_405/recurrent_kernel
?
;lstm_405/lstm_cell_405/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_405/lstm_cell_405/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_405/lstm_cell_405/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_405/lstm_cell_405/bias
?
/lstm_405/lstm_cell_405/bias/Read/ReadVariableOpReadVariableOplstm_405/lstm_cell_405/bias*
_output_shapes	
:?*
dtype0
?
lstm_406/lstm_cell_406/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_406/lstm_cell_406/kernel
?
1lstm_406/lstm_cell_406/kernel/Read/ReadVariableOpReadVariableOplstm_406/lstm_cell_406/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_406/lstm_cell_406/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_406/lstm_cell_406/recurrent_kernel
?
;lstm_406/lstm_cell_406/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_406/lstm_cell_406/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_406/lstm_cell_406/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_406/lstm_cell_406/bias
?
/lstm_406/lstm_cell_406/bias/Read/ReadVariableOpReadVariableOplstm_406/lstm_cell_406/bias*
_output_shapes	
:?*
dtype0
?
lstm_407/lstm_cell_407/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_407/lstm_cell_407/kernel
?
1lstm_407/lstm_cell_407/kernel/Read/ReadVariableOpReadVariableOplstm_407/lstm_cell_407/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_407/lstm_cell_407/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_407/lstm_cell_407/recurrent_kernel
?
;lstm_407/lstm_cell_407/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_407/lstm_cell_407/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_407/lstm_cell_407/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_407/lstm_cell_407/bias
?
/lstm_407/lstm_cell_407/bias/Read/ReadVariableOpReadVariableOplstm_407/lstm_cell_407/bias*
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
Adam/dense_135/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_135/kernel/m
?
+Adam/dense_135/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_135/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_135/bias/m
{
)Adam/dense_135/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_405/lstm_cell_405/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_405/lstm_cell_405/kernel/m
?
8Adam/lstm_405/lstm_cell_405/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_405/lstm_cell_405/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_405/lstm_cell_405/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_405/lstm_cell_405/recurrent_kernel/m
?
BAdam/lstm_405/lstm_cell_405/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_405/lstm_cell_405/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_405/lstm_cell_405/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_405/lstm_cell_405/bias/m
?
6Adam/lstm_405/lstm_cell_405/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_405/lstm_cell_405/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_406/lstm_cell_406/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_406/lstm_cell_406/kernel/m
?
8Adam/lstm_406/lstm_cell_406/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_406/lstm_cell_406/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_406/lstm_cell_406/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_406/lstm_cell_406/recurrent_kernel/m
?
BAdam/lstm_406/lstm_cell_406/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_406/lstm_cell_406/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_406/lstm_cell_406/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_406/lstm_cell_406/bias/m
?
6Adam/lstm_406/lstm_cell_406/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_406/lstm_cell_406/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_407/lstm_cell_407/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_407/lstm_cell_407/kernel/m
?
8Adam/lstm_407/lstm_cell_407/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_407/lstm_cell_407/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_407/lstm_cell_407/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_407/lstm_cell_407/recurrent_kernel/m
?
BAdam/lstm_407/lstm_cell_407/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_407/lstm_cell_407/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_407/lstm_cell_407/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_407/lstm_cell_407/bias/m
?
6Adam/lstm_407/lstm_cell_407/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_407/lstm_cell_407/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_135/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_135/kernel/v
?
+Adam/dense_135/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_135/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_135/bias/v
{
)Adam/dense_135/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_405/lstm_cell_405/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_405/lstm_cell_405/kernel/v
?
8Adam/lstm_405/lstm_cell_405/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_405/lstm_cell_405/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_405/lstm_cell_405/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_405/lstm_cell_405/recurrent_kernel/v
?
BAdam/lstm_405/lstm_cell_405/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_405/lstm_cell_405/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_405/lstm_cell_405/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_405/lstm_cell_405/bias/v
?
6Adam/lstm_405/lstm_cell_405/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_405/lstm_cell_405/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_406/lstm_cell_406/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_406/lstm_cell_406/kernel/v
?
8Adam/lstm_406/lstm_cell_406/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_406/lstm_cell_406/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_406/lstm_cell_406/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_406/lstm_cell_406/recurrent_kernel/v
?
BAdam/lstm_406/lstm_cell_406/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_406/lstm_cell_406/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_406/lstm_cell_406/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_406/lstm_cell_406/bias/v
?
6Adam/lstm_406/lstm_cell_406/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_406/lstm_cell_406/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_407/lstm_cell_407/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_407/lstm_cell_407/kernel/v
?
8Adam/lstm_407/lstm_cell_407/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_407/lstm_cell_407/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_407/lstm_cell_407/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_407/lstm_cell_407/recurrent_kernel/v
?
BAdam/lstm_407/lstm_cell_407/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_407/lstm_cell_407/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_407/lstm_cell_407/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_407/lstm_cell_407/bias/v
?
6Adam/lstm_407/lstm_cell_407/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_407/lstm_cell_407/bias/v*
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
VARIABLE_VALUEdense_135/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_135/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_405/lstm_cell_405/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_405/lstm_cell_405/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_405/lstm_cell_405/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_406/lstm_cell_406/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_406/lstm_cell_406/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_406/lstm_cell_406/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_407/lstm_cell_407/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_407/lstm_cell_407/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_407/lstm_cell_407/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_135/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_405/lstm_cell_405/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_405/lstm_cell_405/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_405/lstm_cell_405/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_406/lstm_cell_406/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_406/lstm_cell_406/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_406/lstm_cell_406/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_407/lstm_cell_407/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_407/lstm_cell_407/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_407/lstm_cell_407/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_135/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_405/lstm_cell_405/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_405/lstm_cell_405/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_405/lstm_cell_405/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_406/lstm_cell_406/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_406/lstm_cell_406/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_406/lstm_cell_406/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_407/lstm_cell_407/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_407/lstm_cell_407/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_407/lstm_cell_407/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_405_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_405_inputlstm_405/lstm_cell_405/kernel'lstm_405/lstm_cell_405/recurrent_kernellstm_405/lstm_cell_405/biaslstm_406/lstm_cell_406/kernel'lstm_406/lstm_cell_406/recurrent_kernellstm_406/lstm_cell_406/biaslstm_407/lstm_cell_407/kernel'lstm_407/lstm_cell_407/recurrent_kernellstm_407/lstm_cell_407/biasdense_135/kerneldense_135/bias*
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
$__inference_signature_wrapper_758785
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_135/kernel/Read/ReadVariableOp"dense_135/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_405/lstm_cell_405/kernel/Read/ReadVariableOp;lstm_405/lstm_cell_405/recurrent_kernel/Read/ReadVariableOp/lstm_405/lstm_cell_405/bias/Read/ReadVariableOp1lstm_406/lstm_cell_406/kernel/Read/ReadVariableOp;lstm_406/lstm_cell_406/recurrent_kernel/Read/ReadVariableOp/lstm_406/lstm_cell_406/bias/Read/ReadVariableOp1lstm_407/lstm_cell_407/kernel/Read/ReadVariableOp;lstm_407/lstm_cell_407/recurrent_kernel/Read/ReadVariableOp/lstm_407/lstm_cell_407/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_135/kernel/m/Read/ReadVariableOp)Adam/dense_135/bias/m/Read/ReadVariableOp8Adam/lstm_405/lstm_cell_405/kernel/m/Read/ReadVariableOpBAdam/lstm_405/lstm_cell_405/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_405/lstm_cell_405/bias/m/Read/ReadVariableOp8Adam/lstm_406/lstm_cell_406/kernel/m/Read/ReadVariableOpBAdam/lstm_406/lstm_cell_406/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_406/lstm_cell_406/bias/m/Read/ReadVariableOp8Adam/lstm_407/lstm_cell_407/kernel/m/Read/ReadVariableOpBAdam/lstm_407/lstm_cell_407/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_407/lstm_cell_407/bias/m/Read/ReadVariableOp+Adam/dense_135/kernel/v/Read/ReadVariableOp)Adam/dense_135/bias/v/Read/ReadVariableOp8Adam/lstm_405/lstm_cell_405/kernel/v/Read/ReadVariableOpBAdam/lstm_405/lstm_cell_405/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_405/lstm_cell_405/bias/v/Read/ReadVariableOp8Adam/lstm_406/lstm_cell_406/kernel/v/Read/ReadVariableOpBAdam/lstm_406/lstm_cell_406/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_406/lstm_cell_406/bias/v/Read/ReadVariableOp8Adam/lstm_407/lstm_cell_407/kernel/v/Read/ReadVariableOpBAdam/lstm_407/lstm_cell_407/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_407/lstm_cell_407/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_761997
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_135/kerneldense_135/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_405/lstm_cell_405/kernel'lstm_405/lstm_cell_405/recurrent_kernellstm_405/lstm_cell_405/biaslstm_406/lstm_cell_406/kernel'lstm_406/lstm_cell_406/recurrent_kernellstm_406/lstm_cell_406/biaslstm_407/lstm_cell_407/kernel'lstm_407/lstm_cell_407/recurrent_kernellstm_407/lstm_cell_407/biastotalcountAdam/dense_135/kernel/mAdam/dense_135/bias/m$Adam/lstm_405/lstm_cell_405/kernel/m.Adam/lstm_405/lstm_cell_405/recurrent_kernel/m"Adam/lstm_405/lstm_cell_405/bias/m$Adam/lstm_406/lstm_cell_406/kernel/m.Adam/lstm_406/lstm_cell_406/recurrent_kernel/m"Adam/lstm_406/lstm_cell_406/bias/m$Adam/lstm_407/lstm_cell_407/kernel/m.Adam/lstm_407/lstm_cell_407/recurrent_kernel/m"Adam/lstm_407/lstm_cell_407/bias/mAdam/dense_135/kernel/vAdam/dense_135/bias/v$Adam/lstm_405/lstm_cell_405/kernel/v.Adam/lstm_405/lstm_cell_405/recurrent_kernel/v"Adam/lstm_405/lstm_cell_405/bias/v$Adam/lstm_406/lstm_cell_406/kernel/v.Adam/lstm_406/lstm_cell_406/recurrent_kernel/v"Adam/lstm_406/lstm_cell_406/bias/v$Adam/lstm_407/lstm_cell_407/kernel/v.Adam/lstm_407/lstm_cell_407/recurrent_kernel/v"Adam/lstm_407/lstm_cell_407/bias/v*4
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
"__inference__traced_restore_762127??+
?

?
lstm_406_while_cond_759463.
*lstm_406_while_lstm_406_while_loop_counter4
0lstm_406_while_lstm_406_while_maximum_iterations
lstm_406_while_placeholder 
lstm_406_while_placeholder_1 
lstm_406_while_placeholder_2 
lstm_406_while_placeholder_30
,lstm_406_while_less_lstm_406_strided_slice_1F
Blstm_406_while_lstm_406_while_cond_759463___redundant_placeholder0F
Blstm_406_while_lstm_406_while_cond_759463___redundant_placeholder1F
Blstm_406_while_lstm_406_while_cond_759463___redundant_placeholder2F
Blstm_406_while_lstm_406_while_cond_759463___redundant_placeholder3
lstm_406_while_identity
?
lstm_406/while/LessLesslstm_406_while_placeholder,lstm_406_while_less_lstm_406_strided_slice_1*
T0*
_output_shapes
: ]
lstm_406/while/IdentityIdentitylstm_406/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_406_while_identity lstm_406/while/Identity:output:0*(
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758240

inputs>
,lstm_cell_125_matmul_readvariableop_resource:2(@
.lstm_cell_125_matmul_1_readvariableop_resource:
(;
-lstm_cell_125_biasadd_readvariableop_resource:(
identity??$lstm_cell_125/BiasAdd/ReadVariableOp?#lstm_cell_125/MatMul/ReadVariableOp?%lstm_cell_125/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_125/MatMul/ReadVariableOpReadVariableOp,lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_125/MatMulMatMulstrided_slice_2:output:0+lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_125/MatMul_1MatMulzeros:output:0-lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_125/addAddV2lstm_cell_125/MatMul:product:0 lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_125/BiasAddBiasAddlstm_cell_125/add:z:0,lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_125/splitSplit&lstm_cell_125/split/split_dim:output:0lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_125/SigmoidSigmoidlstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_1Sigmoidlstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_125/mulMullstm_cell_125/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_125/ReluRelulstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_1Mullstm_cell_125/Sigmoid:y:0 lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_125/add_1AddV2lstm_cell_125/mul:z:0lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_2Sigmoidlstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_125/Relu_1Relulstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_2Mullstm_cell_125/Sigmoid_2:y:0"lstm_cell_125/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_125_matmul_readvariableop_resource.lstm_cell_125_matmul_1_readvariableop_resource-lstm_cell_125_biasadd_readvariableop_resource*
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
while_body_758156*
condR
while_cond_758155*K
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
NoOpNoOp%^lstm_cell_125/BiasAdd/ReadVariableOp$^lstm_cell_125/MatMul/ReadVariableOp&^lstm_cell_125/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_125/BiasAdd/ReadVariableOp$lstm_cell_125/BiasAdd/ReadVariableOp2J
#lstm_cell_125/MatMul/ReadVariableOp#lstm_cell_125/MatMul/ReadVariableOp2N
%lstm_cell_125/MatMul_1/ReadVariableOp%lstm_cell_125/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_135_layer_call_fn_758690
lstm_405_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_405_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_135_layer_call_and_return_conditional_losses_758638o
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
_user_specified_namelstm_405_input
?
?
J__inference_sequential_135_layer_call_and_return_conditional_losses_758750
lstm_405_input"
lstm_405_758723:	?"
lstm_405_758725:	d?
lstm_405_758727:	?"
lstm_406_758730:	d?"
lstm_406_758732:	2?
lstm_406_758734:	?!
lstm_407_758737:2(!
lstm_407_758739:
(
lstm_407_758741:("
dense_135_758744:

dense_135_758746:
identity??!dense_135/StatefulPartitionedCall? lstm_405/StatefulPartitionedCall? lstm_406/StatefulPartitionedCall? lstm_407/StatefulPartitionedCall?
 lstm_405/StatefulPartitionedCallStatefulPartitionedCalllstm_405_inputlstm_405_758723lstm_405_758725lstm_405_758727*
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_758570?
 lstm_406/StatefulPartitionedCallStatefulPartitionedCall)lstm_405/StatefulPartitionedCall:output:0lstm_406_758730lstm_406_758732lstm_406_758734*
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_758405?
 lstm_407/StatefulPartitionedCallStatefulPartitionedCall)lstm_406/StatefulPartitionedCall:output:0lstm_407_758737lstm_407_758739lstm_407_758741*
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758240?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall)lstm_407/StatefulPartitionedCall:output:0dense_135_758744dense_135_758746*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_758042y
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_135/StatefulPartitionedCall!^lstm_405/StatefulPartitionedCall!^lstm_406/StatefulPartitionedCall!^lstm_407/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2D
 lstm_405/StatefulPartitionedCall lstm_405/StatefulPartitionedCall2D
 lstm_406/StatefulPartitionedCall lstm_406/StatefulPartitionedCall2D
 lstm_407/StatefulPartitionedCall lstm_407/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_405_input
?W
?
__inference__traced_save_761997
file_prefix/
+savev2_dense_135_kernel_read_readvariableop-
)savev2_dense_135_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_405_lstm_cell_405_kernel_read_readvariableopF
Bsavev2_lstm_405_lstm_cell_405_recurrent_kernel_read_readvariableop:
6savev2_lstm_405_lstm_cell_405_bias_read_readvariableop<
8savev2_lstm_406_lstm_cell_406_kernel_read_readvariableopF
Bsavev2_lstm_406_lstm_cell_406_recurrent_kernel_read_readvariableop:
6savev2_lstm_406_lstm_cell_406_bias_read_readvariableop<
8savev2_lstm_407_lstm_cell_407_kernel_read_readvariableopF
Bsavev2_lstm_407_lstm_cell_407_recurrent_kernel_read_readvariableop:
6savev2_lstm_407_lstm_cell_407_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_135_kernel_m_read_readvariableop4
0savev2_adam_dense_135_bias_m_read_readvariableopC
?savev2_adam_lstm_405_lstm_cell_405_kernel_m_read_readvariableopM
Isavev2_adam_lstm_405_lstm_cell_405_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_405_lstm_cell_405_bias_m_read_readvariableopC
?savev2_adam_lstm_406_lstm_cell_406_kernel_m_read_readvariableopM
Isavev2_adam_lstm_406_lstm_cell_406_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_406_lstm_cell_406_bias_m_read_readvariableopC
?savev2_adam_lstm_407_lstm_cell_407_kernel_m_read_readvariableopM
Isavev2_adam_lstm_407_lstm_cell_407_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_407_lstm_cell_407_bias_m_read_readvariableop6
2savev2_adam_dense_135_kernel_v_read_readvariableop4
0savev2_adam_dense_135_bias_v_read_readvariableopC
?savev2_adam_lstm_405_lstm_cell_405_kernel_v_read_readvariableopM
Isavev2_adam_lstm_405_lstm_cell_405_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_405_lstm_cell_405_bias_v_read_readvariableopC
?savev2_adam_lstm_406_lstm_cell_406_kernel_v_read_readvariableopM
Isavev2_adam_lstm_406_lstm_cell_406_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_406_lstm_cell_406_bias_v_read_readvariableopC
?savev2_adam_lstm_407_lstm_cell_407_kernel_v_read_readvariableopM
Isavev2_adam_lstm_407_lstm_cell_407_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_407_lstm_cell_407_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_135_kernel_read_readvariableop)savev2_dense_135_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_405_lstm_cell_405_kernel_read_readvariableopBsavev2_lstm_405_lstm_cell_405_recurrent_kernel_read_readvariableop6savev2_lstm_405_lstm_cell_405_bias_read_readvariableop8savev2_lstm_406_lstm_cell_406_kernel_read_readvariableopBsavev2_lstm_406_lstm_cell_406_recurrent_kernel_read_readvariableop6savev2_lstm_406_lstm_cell_406_bias_read_readvariableop8savev2_lstm_407_lstm_cell_407_kernel_read_readvariableopBsavev2_lstm_407_lstm_cell_407_recurrent_kernel_read_readvariableop6savev2_lstm_407_lstm_cell_407_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_135_kernel_m_read_readvariableop0savev2_adam_dense_135_bias_m_read_readvariableop?savev2_adam_lstm_405_lstm_cell_405_kernel_m_read_readvariableopIsavev2_adam_lstm_405_lstm_cell_405_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_405_lstm_cell_405_bias_m_read_readvariableop?savev2_adam_lstm_406_lstm_cell_406_kernel_m_read_readvariableopIsavev2_adam_lstm_406_lstm_cell_406_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_406_lstm_cell_406_bias_m_read_readvariableop?savev2_adam_lstm_407_lstm_cell_407_kernel_m_read_readvariableopIsavev2_adam_lstm_407_lstm_cell_407_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_407_lstm_cell_407_bias_m_read_readvariableop2savev2_adam_dense_135_kernel_v_read_readvariableop0savev2_adam_dense_135_bias_v_read_readvariableop?savev2_adam_lstm_405_lstm_cell_405_kernel_v_read_readvariableopIsavev2_adam_lstm_405_lstm_cell_405_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_405_lstm_cell_405_bias_v_read_readvariableop?savev2_adam_lstm_406_lstm_cell_406_kernel_v_read_readvariableopIsavev2_adam_lstm_406_lstm_cell_406_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_406_lstm_cell_406_bias_v_read_readvariableop?savev2_adam_lstm_407_lstm_cell_407_kernel_v_read_readvariableopIsavev2_adam_lstm_407_lstm_cell_407_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_407_lstm_cell_407_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?"
?
while_body_757147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_124_757171_0:	d?/
while_lstm_cell_124_757173_0:	2?+
while_lstm_cell_124_757175_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_124_757171:	d?-
while_lstm_cell_124_757173:	2?)
while_lstm_cell_124_757175:	???+while/lstm_cell_124/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_124/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_124_757171_0while_lstm_cell_124_757173_0while_lstm_cell_124_757175_0*
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_757088?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_124/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_124/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_124/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_124/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_124_757171while_lstm_cell_124_757171_0":
while_lstm_cell_124_757173while_lstm_cell_124_757173_0":
while_lstm_cell_124_757175while_lstm_cell_124_757175_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_124/StatefulPartitionedCall+while/lstm_cell_124/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_756606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_123_756630_0:	?/
while_lstm_cell_123_756632_0:	d?+
while_lstm_cell_123_756634_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_123_756630:	?-
while_lstm_cell_123_756632:	d?)
while_lstm_cell_123_756634:	???+while/lstm_cell_123/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_123/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_123_756630_0while_lstm_cell_123_756632_0while_lstm_cell_123_756634_0*
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756592?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_123/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_123/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_123/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_123/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_123_756630while_lstm_cell_123_756630_0":
while_lstm_cell_123_756632while_lstm_cell_123_756632_0":
while_lstm_cell_123_756634while_lstm_cell_123_756634_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_123/StatefulPartitionedCall+while/lstm_cell_123/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757025

inputs'
lstm_cell_124_756943:	d?'
lstm_cell_124_756945:	2?#
lstm_cell_124_756947:	?
identity??%lstm_cell_124/StatefulPartitionedCall?while;
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
%lstm_cell_124/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_124_756943lstm_cell_124_756945lstm_cell_124_756947*
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_756942n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_124_756943lstm_cell_124_756945lstm_cell_124_756947*
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
while_body_756956*
condR
while_cond_756955*K
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
NoOpNoOp&^lstm_cell_124/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_124/StatefulPartitionedCall%lstm_cell_124/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_406_while_cond_759036.
*lstm_406_while_lstm_406_while_loop_counter4
0lstm_406_while_lstm_406_while_maximum_iterations
lstm_406_while_placeholder 
lstm_406_while_placeholder_1 
lstm_406_while_placeholder_2 
lstm_406_while_placeholder_30
,lstm_406_while_less_lstm_406_strided_slice_1F
Blstm_406_while_lstm_406_while_cond_759036___redundant_placeholder0F
Blstm_406_while_lstm_406_while_cond_759036___redundant_placeholder1F
Blstm_406_while_lstm_406_while_cond_759036___redundant_placeholder2F
Blstm_406_while_lstm_406_while_cond_759036___redundant_placeholder3
lstm_406_while_identity
?
lstm_406/while/LessLesslstm_406_while_placeholder,lstm_406_while_less_lstm_406_strided_slice_1*
T0*
_output_shapes
: ]
lstm_406/while/IdentityIdentitylstm_406/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_406_while_identity lstm_406/while/Identity:output:0*(
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
!__inference__wrapped_model_756525
lstm_405_inputW
Dsequential_135_lstm_405_lstm_cell_123_matmul_readvariableop_resource:	?Y
Fsequential_135_lstm_405_lstm_cell_123_matmul_1_readvariableop_resource:	d?T
Esequential_135_lstm_405_lstm_cell_123_biasadd_readvariableop_resource:	?W
Dsequential_135_lstm_406_lstm_cell_124_matmul_readvariableop_resource:	d?Y
Fsequential_135_lstm_406_lstm_cell_124_matmul_1_readvariableop_resource:	2?T
Esequential_135_lstm_406_lstm_cell_124_biasadd_readvariableop_resource:	?V
Dsequential_135_lstm_407_lstm_cell_125_matmul_readvariableop_resource:2(X
Fsequential_135_lstm_407_lstm_cell_125_matmul_1_readvariableop_resource:
(S
Esequential_135_lstm_407_lstm_cell_125_biasadd_readvariableop_resource:(I
7sequential_135_dense_135_matmul_readvariableop_resource:
F
8sequential_135_dense_135_biasadd_readvariableop_resource:
identity??/sequential_135/dense_135/BiasAdd/ReadVariableOp?.sequential_135/dense_135/MatMul/ReadVariableOp?<sequential_135/lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp?;sequential_135/lstm_405/lstm_cell_123/MatMul/ReadVariableOp?=sequential_135/lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp?sequential_135/lstm_405/while?<sequential_135/lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp?;sequential_135/lstm_406/lstm_cell_124/MatMul/ReadVariableOp?=sequential_135/lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp?sequential_135/lstm_406/while?<sequential_135/lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp?;sequential_135/lstm_407/lstm_cell_125/MatMul/ReadVariableOp?=sequential_135/lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp?sequential_135/lstm_407/while[
sequential_135/lstm_405/ShapeShapelstm_405_input*
T0*
_output_shapes
:u
+sequential_135/lstm_405/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_135/lstm_405/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_135/lstm_405/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_135/lstm_405/strided_sliceStridedSlice&sequential_135/lstm_405/Shape:output:04sequential_135/lstm_405/strided_slice/stack:output:06sequential_135/lstm_405/strided_slice/stack_1:output:06sequential_135/lstm_405/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_135/lstm_405/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_135/lstm_405/zeros/packedPack.sequential_135/lstm_405/strided_slice:output:0/sequential_135/lstm_405/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_135/lstm_405/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_135/lstm_405/zerosFill-sequential_135/lstm_405/zeros/packed:output:0,sequential_135/lstm_405/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_135/lstm_405/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_135/lstm_405/zeros_1/packedPack.sequential_135/lstm_405/strided_slice:output:01sequential_135/lstm_405/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_135/lstm_405/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_135/lstm_405/zeros_1Fill/sequential_135/lstm_405/zeros_1/packed:output:0.sequential_135/lstm_405/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_135/lstm_405/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_135/lstm_405/transpose	Transposelstm_405_input/sequential_135/lstm_405/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_135/lstm_405/Shape_1Shape%sequential_135/lstm_405/transpose:y:0*
T0*
_output_shapes
:w
-sequential_135/lstm_405/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_405/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_135/lstm_405/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_405/strided_slice_1StridedSlice(sequential_135/lstm_405/Shape_1:output:06sequential_135/lstm_405/strided_slice_1/stack:output:08sequential_135/lstm_405/strided_slice_1/stack_1:output:08sequential_135/lstm_405/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_135/lstm_405/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_135/lstm_405/TensorArrayV2TensorListReserve<sequential_135/lstm_405/TensorArrayV2/element_shape:output:00sequential_135/lstm_405/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_135/lstm_405/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_135/lstm_405/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_135/lstm_405/transpose:y:0Vsequential_135/lstm_405/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_135/lstm_405/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_405/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_135/lstm_405/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_405/strided_slice_2StridedSlice%sequential_135/lstm_405/transpose:y:06sequential_135/lstm_405/strided_slice_2/stack:output:08sequential_135/lstm_405/strided_slice_2/stack_1:output:08sequential_135/lstm_405/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_135/lstm_405/lstm_cell_123/MatMul/ReadVariableOpReadVariableOpDsequential_135_lstm_405_lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_135/lstm_405/lstm_cell_123/MatMulMatMul0sequential_135/lstm_405/strided_slice_2:output:0Csequential_135/lstm_405/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_135/lstm_405/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOpFsequential_135_lstm_405_lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_135/lstm_405/lstm_cell_123/MatMul_1MatMul&sequential_135/lstm_405/zeros:output:0Esequential_135/lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_135/lstm_405/lstm_cell_123/addAddV26sequential_135/lstm_405/lstm_cell_123/MatMul:product:08sequential_135/lstm_405/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_135/lstm_405/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOpEsequential_135_lstm_405_lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_135/lstm_405/lstm_cell_123/BiasAddBiasAdd-sequential_135/lstm_405/lstm_cell_123/add:z:0Dsequential_135/lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_135/lstm_405/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_135/lstm_405/lstm_cell_123/splitSplit>sequential_135/lstm_405/lstm_cell_123/split/split_dim:output:06sequential_135/lstm_405/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_135/lstm_405/lstm_cell_123/SigmoidSigmoid4sequential_135/lstm_405/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_135/lstm_405/lstm_cell_123/Sigmoid_1Sigmoid4sequential_135/lstm_405/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_135/lstm_405/lstm_cell_123/mulMul3sequential_135/lstm_405/lstm_cell_123/Sigmoid_1:y:0(sequential_135/lstm_405/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_135/lstm_405/lstm_cell_123/ReluRelu4sequential_135/lstm_405/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_135/lstm_405/lstm_cell_123/mul_1Mul1sequential_135/lstm_405/lstm_cell_123/Sigmoid:y:08sequential_135/lstm_405/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_135/lstm_405/lstm_cell_123/add_1AddV2-sequential_135/lstm_405/lstm_cell_123/mul:z:0/sequential_135/lstm_405/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_135/lstm_405/lstm_cell_123/Sigmoid_2Sigmoid4sequential_135/lstm_405/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_135/lstm_405/lstm_cell_123/Relu_1Relu/sequential_135/lstm_405/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_135/lstm_405/lstm_cell_123/mul_2Mul3sequential_135/lstm_405/lstm_cell_123/Sigmoid_2:y:0:sequential_135/lstm_405/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_135/lstm_405/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_135/lstm_405/TensorArrayV2_1TensorListReserve>sequential_135/lstm_405/TensorArrayV2_1/element_shape:output:00sequential_135/lstm_405/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_135/lstm_405/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_135/lstm_405/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_135/lstm_405/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_135/lstm_405/whileWhile3sequential_135/lstm_405/while/loop_counter:output:09sequential_135/lstm_405/while/maximum_iterations:output:0%sequential_135/lstm_405/time:output:00sequential_135/lstm_405/TensorArrayV2_1:handle:0&sequential_135/lstm_405/zeros:output:0(sequential_135/lstm_405/zeros_1:output:00sequential_135/lstm_405/strided_slice_1:output:0Osequential_135/lstm_405/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_135_lstm_405_lstm_cell_123_matmul_readvariableop_resourceFsequential_135_lstm_405_lstm_cell_123_matmul_1_readvariableop_resourceEsequential_135_lstm_405_lstm_cell_123_biasadd_readvariableop_resource*
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
)sequential_135_lstm_405_while_body_756157*5
cond-R+
)sequential_135_lstm_405_while_cond_756156*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_135/lstm_405/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_135/lstm_405/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_135/lstm_405/while:output:3Qsequential_135/lstm_405/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_135/lstm_405/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_135/lstm_405/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_405/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_405/strided_slice_3StridedSliceCsequential_135/lstm_405/TensorArrayV2Stack/TensorListStack:tensor:06sequential_135/lstm_405/strided_slice_3/stack:output:08sequential_135/lstm_405/strided_slice_3/stack_1:output:08sequential_135/lstm_405/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_135/lstm_405/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_135/lstm_405/transpose_1	TransposeCsequential_135/lstm_405/TensorArrayV2Stack/TensorListStack:tensor:01sequential_135/lstm_405/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_135/lstm_405/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_135/lstm_406/ShapeShape'sequential_135/lstm_405/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_135/lstm_406/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_135/lstm_406/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_135/lstm_406/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_135/lstm_406/strided_sliceStridedSlice&sequential_135/lstm_406/Shape:output:04sequential_135/lstm_406/strided_slice/stack:output:06sequential_135/lstm_406/strided_slice/stack_1:output:06sequential_135/lstm_406/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_135/lstm_406/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_135/lstm_406/zeros/packedPack.sequential_135/lstm_406/strided_slice:output:0/sequential_135/lstm_406/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_135/lstm_406/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_135/lstm_406/zerosFill-sequential_135/lstm_406/zeros/packed:output:0,sequential_135/lstm_406/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_135/lstm_406/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_135/lstm_406/zeros_1/packedPack.sequential_135/lstm_406/strided_slice:output:01sequential_135/lstm_406/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_135/lstm_406/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_135/lstm_406/zeros_1Fill/sequential_135/lstm_406/zeros_1/packed:output:0.sequential_135/lstm_406/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_135/lstm_406/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_135/lstm_406/transpose	Transpose'sequential_135/lstm_405/transpose_1:y:0/sequential_135/lstm_406/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_135/lstm_406/Shape_1Shape%sequential_135/lstm_406/transpose:y:0*
T0*
_output_shapes
:w
-sequential_135/lstm_406/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_406/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_135/lstm_406/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_406/strided_slice_1StridedSlice(sequential_135/lstm_406/Shape_1:output:06sequential_135/lstm_406/strided_slice_1/stack:output:08sequential_135/lstm_406/strided_slice_1/stack_1:output:08sequential_135/lstm_406/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_135/lstm_406/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_135/lstm_406/TensorArrayV2TensorListReserve<sequential_135/lstm_406/TensorArrayV2/element_shape:output:00sequential_135/lstm_406/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_135/lstm_406/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_135/lstm_406/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_135/lstm_406/transpose:y:0Vsequential_135/lstm_406/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_135/lstm_406/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_406/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_135/lstm_406/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_406/strided_slice_2StridedSlice%sequential_135/lstm_406/transpose:y:06sequential_135/lstm_406/strided_slice_2/stack:output:08sequential_135/lstm_406/strided_slice_2/stack_1:output:08sequential_135/lstm_406/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_135/lstm_406/lstm_cell_124/MatMul/ReadVariableOpReadVariableOpDsequential_135_lstm_406_lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_135/lstm_406/lstm_cell_124/MatMulMatMul0sequential_135/lstm_406/strided_slice_2:output:0Csequential_135/lstm_406/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_135/lstm_406/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOpFsequential_135_lstm_406_lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_135/lstm_406/lstm_cell_124/MatMul_1MatMul&sequential_135/lstm_406/zeros:output:0Esequential_135/lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_135/lstm_406/lstm_cell_124/addAddV26sequential_135/lstm_406/lstm_cell_124/MatMul:product:08sequential_135/lstm_406/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_135/lstm_406/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOpEsequential_135_lstm_406_lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_135/lstm_406/lstm_cell_124/BiasAddBiasAdd-sequential_135/lstm_406/lstm_cell_124/add:z:0Dsequential_135/lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_135/lstm_406/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_135/lstm_406/lstm_cell_124/splitSplit>sequential_135/lstm_406/lstm_cell_124/split/split_dim:output:06sequential_135/lstm_406/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_135/lstm_406/lstm_cell_124/SigmoidSigmoid4sequential_135/lstm_406/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_135/lstm_406/lstm_cell_124/Sigmoid_1Sigmoid4sequential_135/lstm_406/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_135/lstm_406/lstm_cell_124/mulMul3sequential_135/lstm_406/lstm_cell_124/Sigmoid_1:y:0(sequential_135/lstm_406/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_135/lstm_406/lstm_cell_124/ReluRelu4sequential_135/lstm_406/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_135/lstm_406/lstm_cell_124/mul_1Mul1sequential_135/lstm_406/lstm_cell_124/Sigmoid:y:08sequential_135/lstm_406/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_135/lstm_406/lstm_cell_124/add_1AddV2-sequential_135/lstm_406/lstm_cell_124/mul:z:0/sequential_135/lstm_406/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_135/lstm_406/lstm_cell_124/Sigmoid_2Sigmoid4sequential_135/lstm_406/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_135/lstm_406/lstm_cell_124/Relu_1Relu/sequential_135/lstm_406/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_135/lstm_406/lstm_cell_124/mul_2Mul3sequential_135/lstm_406/lstm_cell_124/Sigmoid_2:y:0:sequential_135/lstm_406/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_135/lstm_406/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_135/lstm_406/TensorArrayV2_1TensorListReserve>sequential_135/lstm_406/TensorArrayV2_1/element_shape:output:00sequential_135/lstm_406/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_135/lstm_406/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_135/lstm_406/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_135/lstm_406/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_135/lstm_406/whileWhile3sequential_135/lstm_406/while/loop_counter:output:09sequential_135/lstm_406/while/maximum_iterations:output:0%sequential_135/lstm_406/time:output:00sequential_135/lstm_406/TensorArrayV2_1:handle:0&sequential_135/lstm_406/zeros:output:0(sequential_135/lstm_406/zeros_1:output:00sequential_135/lstm_406/strided_slice_1:output:0Osequential_135/lstm_406/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_135_lstm_406_lstm_cell_124_matmul_readvariableop_resourceFsequential_135_lstm_406_lstm_cell_124_matmul_1_readvariableop_resourceEsequential_135_lstm_406_lstm_cell_124_biasadd_readvariableop_resource*
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
)sequential_135_lstm_406_while_body_756296*5
cond-R+
)sequential_135_lstm_406_while_cond_756295*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_135/lstm_406/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_135/lstm_406/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_135/lstm_406/while:output:3Qsequential_135/lstm_406/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_135/lstm_406/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_135/lstm_406/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_406/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_406/strided_slice_3StridedSliceCsequential_135/lstm_406/TensorArrayV2Stack/TensorListStack:tensor:06sequential_135/lstm_406/strided_slice_3/stack:output:08sequential_135/lstm_406/strided_slice_3/stack_1:output:08sequential_135/lstm_406/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_135/lstm_406/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_135/lstm_406/transpose_1	TransposeCsequential_135/lstm_406/TensorArrayV2Stack/TensorListStack:tensor:01sequential_135/lstm_406/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_135/lstm_406/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_135/lstm_407/ShapeShape'sequential_135/lstm_406/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_135/lstm_407/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_135/lstm_407/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_135/lstm_407/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_135/lstm_407/strided_sliceStridedSlice&sequential_135/lstm_407/Shape:output:04sequential_135/lstm_407/strided_slice/stack:output:06sequential_135/lstm_407/strided_slice/stack_1:output:06sequential_135/lstm_407/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_135/lstm_407/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_135/lstm_407/zeros/packedPack.sequential_135/lstm_407/strided_slice:output:0/sequential_135/lstm_407/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_135/lstm_407/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_135/lstm_407/zerosFill-sequential_135/lstm_407/zeros/packed:output:0,sequential_135/lstm_407/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_135/lstm_407/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_135/lstm_407/zeros_1/packedPack.sequential_135/lstm_407/strided_slice:output:01sequential_135/lstm_407/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_135/lstm_407/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_135/lstm_407/zeros_1Fill/sequential_135/lstm_407/zeros_1/packed:output:0.sequential_135/lstm_407/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_135/lstm_407/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_135/lstm_407/transpose	Transpose'sequential_135/lstm_406/transpose_1:y:0/sequential_135/lstm_407/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_135/lstm_407/Shape_1Shape%sequential_135/lstm_407/transpose:y:0*
T0*
_output_shapes
:w
-sequential_135/lstm_407/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_407/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_135/lstm_407/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_407/strided_slice_1StridedSlice(sequential_135/lstm_407/Shape_1:output:06sequential_135/lstm_407/strided_slice_1/stack:output:08sequential_135/lstm_407/strided_slice_1/stack_1:output:08sequential_135/lstm_407/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_135/lstm_407/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_135/lstm_407/TensorArrayV2TensorListReserve<sequential_135/lstm_407/TensorArrayV2/element_shape:output:00sequential_135/lstm_407/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_135/lstm_407/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_135/lstm_407/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_135/lstm_407/transpose:y:0Vsequential_135/lstm_407/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_135/lstm_407/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_407/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_135/lstm_407/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_407/strided_slice_2StridedSlice%sequential_135/lstm_407/transpose:y:06sequential_135/lstm_407/strided_slice_2/stack:output:08sequential_135/lstm_407/strided_slice_2/stack_1:output:08sequential_135/lstm_407/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_135/lstm_407/lstm_cell_125/MatMul/ReadVariableOpReadVariableOpDsequential_135_lstm_407_lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_135/lstm_407/lstm_cell_125/MatMulMatMul0sequential_135/lstm_407/strided_slice_2:output:0Csequential_135/lstm_407/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_135/lstm_407/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOpFsequential_135_lstm_407_lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_135/lstm_407/lstm_cell_125/MatMul_1MatMul&sequential_135/lstm_407/zeros:output:0Esequential_135/lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_135/lstm_407/lstm_cell_125/addAddV26sequential_135/lstm_407/lstm_cell_125/MatMul:product:08sequential_135/lstm_407/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_135/lstm_407/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOpEsequential_135_lstm_407_lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_135/lstm_407/lstm_cell_125/BiasAddBiasAdd-sequential_135/lstm_407/lstm_cell_125/add:z:0Dsequential_135/lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_135/lstm_407/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_135/lstm_407/lstm_cell_125/splitSplit>sequential_135/lstm_407/lstm_cell_125/split/split_dim:output:06sequential_135/lstm_407/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_135/lstm_407/lstm_cell_125/SigmoidSigmoid4sequential_135/lstm_407/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_135/lstm_407/lstm_cell_125/Sigmoid_1Sigmoid4sequential_135/lstm_407/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_135/lstm_407/lstm_cell_125/mulMul3sequential_135/lstm_407/lstm_cell_125/Sigmoid_1:y:0(sequential_135/lstm_407/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_135/lstm_407/lstm_cell_125/ReluRelu4sequential_135/lstm_407/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_135/lstm_407/lstm_cell_125/mul_1Mul1sequential_135/lstm_407/lstm_cell_125/Sigmoid:y:08sequential_135/lstm_407/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_135/lstm_407/lstm_cell_125/add_1AddV2-sequential_135/lstm_407/lstm_cell_125/mul:z:0/sequential_135/lstm_407/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_135/lstm_407/lstm_cell_125/Sigmoid_2Sigmoid4sequential_135/lstm_407/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_135/lstm_407/lstm_cell_125/Relu_1Relu/sequential_135/lstm_407/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_135/lstm_407/lstm_cell_125/mul_2Mul3sequential_135/lstm_407/lstm_cell_125/Sigmoid_2:y:0:sequential_135/lstm_407/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_135/lstm_407/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_135/lstm_407/TensorArrayV2_1TensorListReserve>sequential_135/lstm_407/TensorArrayV2_1/element_shape:output:00sequential_135/lstm_407/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_135/lstm_407/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_135/lstm_407/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_135/lstm_407/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_135/lstm_407/whileWhile3sequential_135/lstm_407/while/loop_counter:output:09sequential_135/lstm_407/while/maximum_iterations:output:0%sequential_135/lstm_407/time:output:00sequential_135/lstm_407/TensorArrayV2_1:handle:0&sequential_135/lstm_407/zeros:output:0(sequential_135/lstm_407/zeros_1:output:00sequential_135/lstm_407/strided_slice_1:output:0Osequential_135/lstm_407/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_135_lstm_407_lstm_cell_125_matmul_readvariableop_resourceFsequential_135_lstm_407_lstm_cell_125_matmul_1_readvariableop_resourceEsequential_135_lstm_407_lstm_cell_125_biasadd_readvariableop_resource*
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
)sequential_135_lstm_407_while_body_756435*5
cond-R+
)sequential_135_lstm_407_while_cond_756434*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_135/lstm_407/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_135/lstm_407/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_135/lstm_407/while:output:3Qsequential_135/lstm_407/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_135/lstm_407/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_135/lstm_407/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_135/lstm_407/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_135/lstm_407/strided_slice_3StridedSliceCsequential_135/lstm_407/TensorArrayV2Stack/TensorListStack:tensor:06sequential_135/lstm_407/strided_slice_3/stack:output:08sequential_135/lstm_407/strided_slice_3/stack_1:output:08sequential_135/lstm_407/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_135/lstm_407/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_135/lstm_407/transpose_1	TransposeCsequential_135/lstm_407/TensorArrayV2Stack/TensorListStack:tensor:01sequential_135/lstm_407/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_135/lstm_407/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_135/dense_135/MatMul/ReadVariableOpReadVariableOp7sequential_135_dense_135_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_135/dense_135/MatMulMatMul0sequential_135/lstm_407/strided_slice_3:output:06sequential_135/dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_135/dense_135/BiasAdd/ReadVariableOpReadVariableOp8sequential_135_dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_135/dense_135/BiasAddBiasAdd)sequential_135/dense_135/MatMul:product:07sequential_135/dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_135/dense_135/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_135/dense_135/BiasAdd/ReadVariableOp/^sequential_135/dense_135/MatMul/ReadVariableOp=^sequential_135/lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp<^sequential_135/lstm_405/lstm_cell_123/MatMul/ReadVariableOp>^sequential_135/lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp^sequential_135/lstm_405/while=^sequential_135/lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp<^sequential_135/lstm_406/lstm_cell_124/MatMul/ReadVariableOp>^sequential_135/lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp^sequential_135/lstm_406/while=^sequential_135/lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp<^sequential_135/lstm_407/lstm_cell_125/MatMul/ReadVariableOp>^sequential_135/lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp^sequential_135/lstm_407/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_135/dense_135/BiasAdd/ReadVariableOp/sequential_135/dense_135/BiasAdd/ReadVariableOp2`
.sequential_135/dense_135/MatMul/ReadVariableOp.sequential_135/dense_135/MatMul/ReadVariableOp2|
<sequential_135/lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp<sequential_135/lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp2z
;sequential_135/lstm_405/lstm_cell_123/MatMul/ReadVariableOp;sequential_135/lstm_405/lstm_cell_123/MatMul/ReadVariableOp2~
=sequential_135/lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp=sequential_135/lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp2>
sequential_135/lstm_405/whilesequential_135/lstm_405/while2|
<sequential_135/lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp<sequential_135/lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp2z
;sequential_135/lstm_406/lstm_cell_124/MatMul/ReadVariableOp;sequential_135/lstm_406/lstm_cell_124/MatMul/ReadVariableOp2~
=sequential_135/lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp=sequential_135/lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp2>
sequential_135/lstm_406/whilesequential_135/lstm_406/while2|
<sequential_135/lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp<sequential_135/lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp2z
;sequential_135/lstm_407/lstm_cell_125/MatMul/ReadVariableOp;sequential_135/lstm_407/lstm_cell_125/MatMul/ReadVariableOp2~
=sequential_135/lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp=sequential_135/lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp2>
sequential_135/lstm_407/whilesequential_135/lstm_407/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_405_input
?8
?
while_body_760841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_124_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_124_matmul_readvariableop_resource:	d?G
4while_lstm_cell_124_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_124_biasadd_readvariableop_resource:	???*while/lstm_cell_124/BiasAdd/ReadVariableOp?)while/lstm_cell_124/MatMul/ReadVariableOp?+while/lstm_cell_124/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_124/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_124/addAddV2$while/lstm_cell_124/MatMul:product:0&while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_124/BiasAddBiasAddwhile/lstm_cell_124/add:z:02while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_124/splitSplit,while/lstm_cell_124/split/split_dim:output:0$while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_124/SigmoidSigmoid"while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_1Sigmoid"while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mulMul!while/lstm_cell_124/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_124/ReluRelu"while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_1Mulwhile/lstm_cell_124/Sigmoid:y:0&while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/add_1AddV2while/lstm_cell_124/mul:z:0while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_2Sigmoid"while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_124/Relu_1Reluwhile/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_2Mul!while/lstm_cell_124/Sigmoid_2:y:0(while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_124/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_124/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_124/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_124/BiasAdd/ReadVariableOp*^while/lstm_cell_124/MatMul/ReadVariableOp,^while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_124_biasadd_readvariableop_resource5while_lstm_cell_124_biasadd_readvariableop_resource_0"n
4while_lstm_cell_124_matmul_1_readvariableop_resource6while_lstm_cell_124_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_124_matmul_readvariableop_resource4while_lstm_cell_124_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_124/BiasAdd/ReadVariableOp*while/lstm_cell_124/BiasAdd/ReadVariableOp2V
)while/lstm_cell_124/MatMul/ReadVariableOp)while/lstm_cell_124/MatMul/ReadVariableOp2Z
+while/lstm_cell_124/MatMul_1/ReadVariableOp+while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_405_while_cond_759324.
*lstm_405_while_lstm_405_while_loop_counter4
0lstm_405_while_lstm_405_while_maximum_iterations
lstm_405_while_placeholder 
lstm_405_while_placeholder_1 
lstm_405_while_placeholder_2 
lstm_405_while_placeholder_30
,lstm_405_while_less_lstm_405_strided_slice_1F
Blstm_405_while_lstm_405_while_cond_759324___redundant_placeholder0F
Blstm_405_while_lstm_405_while_cond_759324___redundant_placeholder1F
Blstm_405_while_lstm_405_while_cond_759324___redundant_placeholder2F
Blstm_405_while_lstm_405_while_cond_759324___redundant_placeholder3
lstm_405_while_identity
?
lstm_405/while/LessLesslstm_405_while_placeholder,lstm_405_while_less_lstm_405_strided_slice_1*
T0*
_output_shapes
: ]
lstm_405/while/IdentityIdentitylstm_405/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_405_while_identity lstm_405/while/Identity:output:0*(
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

lstm_407_while_body_759603.
*lstm_407_while_lstm_407_while_loop_counter4
0lstm_407_while_lstm_407_while_maximum_iterations
lstm_407_while_placeholder 
lstm_407_while_placeholder_1 
lstm_407_while_placeholder_2 
lstm_407_while_placeholder_3-
)lstm_407_while_lstm_407_strided_slice_1_0i
elstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0:2(Q
?lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(L
>lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0:(
lstm_407_while_identity
lstm_407_while_identity_1
lstm_407_while_identity_2
lstm_407_while_identity_3
lstm_407_while_identity_4
lstm_407_while_identity_5+
'lstm_407_while_lstm_407_strided_slice_1g
clstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensorM
;lstm_407_while_lstm_cell_125_matmul_readvariableop_resource:2(O
=lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource:
(J
<lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource:(??3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp?2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp?4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp?
@lstm_407/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_407/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensor_0lstm_407_while_placeholderIlstm_407/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp=lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_407/while/lstm_cell_125/MatMulMatMul9lstm_407/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp?lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_407/while/lstm_cell_125/MatMul_1MatMullstm_407_while_placeholder_2<lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_407/while/lstm_cell_125/addAddV2-lstm_407/while/lstm_cell_125/MatMul:product:0/lstm_407/while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp>lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_407/while/lstm_cell_125/BiasAddBiasAdd$lstm_407/while/lstm_cell_125/add:z:0;lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_407/while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_407/while/lstm_cell_125/splitSplit5lstm_407/while/lstm_cell_125/split/split_dim:output:0-lstm_407/while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_407/while/lstm_cell_125/SigmoidSigmoid+lstm_407/while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_407/while/lstm_cell_125/Sigmoid_1Sigmoid+lstm_407/while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_407/while/lstm_cell_125/mulMul*lstm_407/while/lstm_cell_125/Sigmoid_1:y:0lstm_407_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_407/while/lstm_cell_125/ReluRelu+lstm_407/while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_407/while/lstm_cell_125/mul_1Mul(lstm_407/while/lstm_cell_125/Sigmoid:y:0/lstm_407/while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_407/while/lstm_cell_125/add_1AddV2$lstm_407/while/lstm_cell_125/mul:z:0&lstm_407/while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_407/while/lstm_cell_125/Sigmoid_2Sigmoid+lstm_407/while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_407/while/lstm_cell_125/Relu_1Relu&lstm_407/while/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_407/while/lstm_cell_125/mul_2Mul*lstm_407/while/lstm_cell_125/Sigmoid_2:y:01lstm_407/while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_407/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_407_while_placeholder_1lstm_407_while_placeholder&lstm_407/while/lstm_cell_125/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_407/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_407/while/addAddV2lstm_407_while_placeholderlstm_407/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_407/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_407/while/add_1AddV2*lstm_407_while_lstm_407_while_loop_counterlstm_407/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_407/while/IdentityIdentitylstm_407/while/add_1:z:0^lstm_407/while/NoOp*
T0*
_output_shapes
: ?
lstm_407/while/Identity_1Identity0lstm_407_while_lstm_407_while_maximum_iterations^lstm_407/while/NoOp*
T0*
_output_shapes
: t
lstm_407/while/Identity_2Identitylstm_407/while/add:z:0^lstm_407/while/NoOp*
T0*
_output_shapes
: ?
lstm_407/while/Identity_3IdentityClstm_407/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_407/while/NoOp*
T0*
_output_shapes
: ?
lstm_407/while/Identity_4Identity&lstm_407/while/lstm_cell_125/mul_2:z:0^lstm_407/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_407/while/Identity_5Identity&lstm_407/while/lstm_cell_125/add_1:z:0^lstm_407/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_407/while/NoOpNoOp4^lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp3^lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp5^lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_407_while_identity lstm_407/while/Identity:output:0"?
lstm_407_while_identity_1"lstm_407/while/Identity_1:output:0"?
lstm_407_while_identity_2"lstm_407/while/Identity_2:output:0"?
lstm_407_while_identity_3"lstm_407/while/Identity_3:output:0"?
lstm_407_while_identity_4"lstm_407/while/Identity_4:output:0"?
lstm_407_while_identity_5"lstm_407/while/Identity_5:output:0"T
'lstm_407_while_lstm_407_strided_slice_1)lstm_407_while_lstm_407_strided_slice_1_0"~
<lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource>lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0"?
=lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource?lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0"|
;lstm_407_while_lstm_cell_125_matmul_readvariableop_resource=lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0"?
clstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensorelstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp2h
2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp2l
4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_760309

inputs?
,lstm_cell_123_matmul_readvariableop_resource:	?A
.lstm_cell_123_matmul_1_readvariableop_resource:	d?<
-lstm_cell_123_biasadd_readvariableop_resource:	?
identity??$lstm_cell_123/BiasAdd/ReadVariableOp?#lstm_cell_123/MatMul/ReadVariableOp?%lstm_cell_123/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_123/MatMul/ReadVariableOpReadVariableOp,lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_123/MatMulMatMulstrided_slice_2:output:0+lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_123/MatMul_1MatMulzeros:output:0-lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_123/addAddV2lstm_cell_123/MatMul:product:0 lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_123/BiasAddBiasAddlstm_cell_123/add:z:0,lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_123/splitSplit&lstm_cell_123/split/split_dim:output:0lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_123/SigmoidSigmoidlstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_1Sigmoidlstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_123/mulMullstm_cell_123/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_123/ReluRelulstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_1Mullstm_cell_123/Sigmoid:y:0 lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_123/add_1AddV2lstm_cell_123/mul:z:0lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_2Sigmoidlstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_123/Relu_1Relulstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_2Mullstm_cell_123/Sigmoid_2:y:0"lstm_cell_123/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_123_matmul_readvariableop_resource.lstm_cell_123_matmul_1_readvariableop_resource-lstm_cell_123_biasadd_readvariableop_resource*
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
while_body_760225*
condR
while_cond_760224*K
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
NoOpNoOp%^lstm_cell_123/BiasAdd/ReadVariableOp$^lstm_cell_123/MatMul/ReadVariableOp&^lstm_cell_123/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_123/BiasAdd/ReadVariableOp$lstm_cell_123/BiasAdd/ReadVariableOp2J
#lstm_cell_123/MatMul/ReadVariableOp#lstm_cell_123/MatMul/ReadVariableOp2N
%lstm_cell_123/MatMul_1/ReadVariableOp%lstm_cell_123/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
)sequential_135_lstm_405_while_body_756157L
Hsequential_135_lstm_405_while_sequential_135_lstm_405_while_loop_counterR
Nsequential_135_lstm_405_while_sequential_135_lstm_405_while_maximum_iterations-
)sequential_135_lstm_405_while_placeholder/
+sequential_135_lstm_405_while_placeholder_1/
+sequential_135_lstm_405_while_placeholder_2/
+sequential_135_lstm_405_while_placeholder_3K
Gsequential_135_lstm_405_while_sequential_135_lstm_405_strided_slice_1_0?
?sequential_135_lstm_405_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_405_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_135_lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0:	?a
Nsequential_135_lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?\
Msequential_135_lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0:	?*
&sequential_135_lstm_405_while_identity,
(sequential_135_lstm_405_while_identity_1,
(sequential_135_lstm_405_while_identity_2,
(sequential_135_lstm_405_while_identity_3,
(sequential_135_lstm_405_while_identity_4,
(sequential_135_lstm_405_while_identity_5I
Esequential_135_lstm_405_while_sequential_135_lstm_405_strided_slice_1?
?sequential_135_lstm_405_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_405_tensorarrayunstack_tensorlistfromtensor]
Jsequential_135_lstm_405_while_lstm_cell_123_matmul_readvariableop_resource:	?_
Lsequential_135_lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource:	d?Z
Ksequential_135_lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource:	???Bsequential_135/lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp?Asequential_135/lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp?Csequential_135/lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp?
Osequential_135/lstm_405/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_135/lstm_405/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_135_lstm_405_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_405_tensorarrayunstack_tensorlistfromtensor_0)sequential_135_lstm_405_while_placeholderXsequential_135/lstm_405/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_135/lstm_405/while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOpLsequential_135_lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_135/lstm_405/while/lstm_cell_123/MatMulMatMulHsequential_135/lstm_405/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_135/lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_135/lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOpNsequential_135_lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_135/lstm_405/while/lstm_cell_123/MatMul_1MatMul+sequential_135_lstm_405_while_placeholder_2Ksequential_135/lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_135/lstm_405/while/lstm_cell_123/addAddV2<sequential_135/lstm_405/while/lstm_cell_123/MatMul:product:0>sequential_135/lstm_405/while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_135/lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOpMsequential_135_lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_135/lstm_405/while/lstm_cell_123/BiasAddBiasAdd3sequential_135/lstm_405/while/lstm_cell_123/add:z:0Jsequential_135/lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_135/lstm_405/while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_135/lstm_405/while/lstm_cell_123/splitSplitDsequential_135/lstm_405/while/lstm_cell_123/split/split_dim:output:0<sequential_135/lstm_405/while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_135/lstm_405/while/lstm_cell_123/SigmoidSigmoid:sequential_135/lstm_405/while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_135/lstm_405/while/lstm_cell_123/Sigmoid_1Sigmoid:sequential_135/lstm_405/while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_135/lstm_405/while/lstm_cell_123/mulMul9sequential_135/lstm_405/while/lstm_cell_123/Sigmoid_1:y:0+sequential_135_lstm_405_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_135/lstm_405/while/lstm_cell_123/ReluRelu:sequential_135/lstm_405/while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_135/lstm_405/while/lstm_cell_123/mul_1Mul7sequential_135/lstm_405/while/lstm_cell_123/Sigmoid:y:0>sequential_135/lstm_405/while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_135/lstm_405/while/lstm_cell_123/add_1AddV23sequential_135/lstm_405/while/lstm_cell_123/mul:z:05sequential_135/lstm_405/while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_135/lstm_405/while/lstm_cell_123/Sigmoid_2Sigmoid:sequential_135/lstm_405/while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_135/lstm_405/while/lstm_cell_123/Relu_1Relu5sequential_135/lstm_405/while/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_135/lstm_405/while/lstm_cell_123/mul_2Mul9sequential_135/lstm_405/while/lstm_cell_123/Sigmoid_2:y:0@sequential_135/lstm_405/while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_135/lstm_405/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_135_lstm_405_while_placeholder_1)sequential_135_lstm_405_while_placeholder5sequential_135/lstm_405/while/lstm_cell_123/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_135/lstm_405/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_135/lstm_405/while/addAddV2)sequential_135_lstm_405_while_placeholder,sequential_135/lstm_405/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_135/lstm_405/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_135/lstm_405/while/add_1AddV2Hsequential_135_lstm_405_while_sequential_135_lstm_405_while_loop_counter.sequential_135/lstm_405/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_135/lstm_405/while/IdentityIdentity'sequential_135/lstm_405/while/add_1:z:0#^sequential_135/lstm_405/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_405/while/Identity_1IdentityNsequential_135_lstm_405_while_sequential_135_lstm_405_while_maximum_iterations#^sequential_135/lstm_405/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_405/while/Identity_2Identity%sequential_135/lstm_405/while/add:z:0#^sequential_135/lstm_405/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_405/while/Identity_3IdentityRsequential_135/lstm_405/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_135/lstm_405/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_405/while/Identity_4Identity5sequential_135/lstm_405/while/lstm_cell_123/mul_2:z:0#^sequential_135/lstm_405/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_135/lstm_405/while/Identity_5Identity5sequential_135/lstm_405/while/lstm_cell_123/add_1:z:0#^sequential_135/lstm_405/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_135/lstm_405/while/NoOpNoOpC^sequential_135/lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOpB^sequential_135/lstm_405/while/lstm_cell_123/MatMul/ReadVariableOpD^sequential_135/lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_135_lstm_405_while_identity/sequential_135/lstm_405/while/Identity:output:0"]
(sequential_135_lstm_405_while_identity_11sequential_135/lstm_405/while/Identity_1:output:0"]
(sequential_135_lstm_405_while_identity_21sequential_135/lstm_405/while/Identity_2:output:0"]
(sequential_135_lstm_405_while_identity_31sequential_135/lstm_405/while/Identity_3:output:0"]
(sequential_135_lstm_405_while_identity_41sequential_135/lstm_405/while/Identity_4:output:0"]
(sequential_135_lstm_405_while_identity_51sequential_135/lstm_405/while/Identity_5:output:0"?
Ksequential_135_lstm_405_while_lstm_cell_123_biasadd_readvariableop_resourceMsequential_135_lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0"?
Lsequential_135_lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resourceNsequential_135_lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0"?
Jsequential_135_lstm_405_while_lstm_cell_123_matmul_readvariableop_resourceLsequential_135_lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0"?
Esequential_135_lstm_405_while_sequential_135_lstm_405_strided_slice_1Gsequential_135_lstm_405_while_sequential_135_lstm_405_strided_slice_1_0"?
?sequential_135_lstm_405_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_405_tensorarrayunstack_tensorlistfromtensor?sequential_135_lstm_405_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_405_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_135/lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOpBsequential_135/lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp2?
Asequential_135/lstm_405/while/lstm_cell_123/MatMul/ReadVariableOpAsequential_135/lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp2?
Csequential_135/lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOpCsequential_135/lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_407_layer_call_fn_760969

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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758240o
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
lstm_407_while_cond_759602.
*lstm_407_while_lstm_407_while_loop_counter4
0lstm_407_while_lstm_407_while_maximum_iterations
lstm_407_while_placeholder 
lstm_407_while_placeholder_1 
lstm_407_while_placeholder_2 
lstm_407_while_placeholder_30
,lstm_407_while_less_lstm_407_strided_slice_1F
Blstm_407_while_lstm_407_while_cond_759602___redundant_placeholder0F
Blstm_407_while_lstm_407_while_cond_759602___redundant_placeholder1F
Blstm_407_while_lstm_407_while_cond_759602___redundant_placeholder2F
Blstm_407_while_lstm_407_while_cond_759602___redundant_placeholder3
lstm_407_while_identity
?
lstm_407/while/LessLesslstm_407_while_placeholder,lstm_407_while_less_lstm_407_strided_slice_1*
T0*
_output_shapes
: ]
lstm_407/while/IdentityIdentitylstm_407/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_407_while_identity lstm_407/while/Identity:output:0*(
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
while_cond_758320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_758320___redundant_placeholder04
0while_while_cond_758320___redundant_placeholder14
0while_while_cond_758320___redundant_placeholder24
0while_while_cond_758320___redundant_placeholder3
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
??
?
"__inference__traced_restore_762127
file_prefix3
!assignvariableop_dense_135_kernel:
/
!assignvariableop_1_dense_135_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_405_lstm_cell_405_kernel:	?M
:assignvariableop_8_lstm_405_lstm_cell_405_recurrent_kernel:	d?=
.assignvariableop_9_lstm_405_lstm_cell_405_bias:	?D
1assignvariableop_10_lstm_406_lstm_cell_406_kernel:	d?N
;assignvariableop_11_lstm_406_lstm_cell_406_recurrent_kernel:	2?>
/assignvariableop_12_lstm_406_lstm_cell_406_bias:	?C
1assignvariableop_13_lstm_407_lstm_cell_407_kernel:2(M
;assignvariableop_14_lstm_407_lstm_cell_407_recurrent_kernel:
(=
/assignvariableop_15_lstm_407_lstm_cell_407_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_135_kernel_m:
7
)assignvariableop_19_adam_dense_135_bias_m:K
8assignvariableop_20_adam_lstm_405_lstm_cell_405_kernel_m:	?U
Bassignvariableop_21_adam_lstm_405_lstm_cell_405_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_405_lstm_cell_405_bias_m:	?K
8assignvariableop_23_adam_lstm_406_lstm_cell_406_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_406_lstm_cell_406_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_406_lstm_cell_406_bias_m:	?J
8assignvariableop_26_adam_lstm_407_lstm_cell_407_kernel_m:2(T
Bassignvariableop_27_adam_lstm_407_lstm_cell_407_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_407_lstm_cell_407_bias_m:(=
+assignvariableop_29_adam_dense_135_kernel_v:
7
)assignvariableop_30_adam_dense_135_bias_v:K
8assignvariableop_31_adam_lstm_405_lstm_cell_405_kernel_v:	?U
Bassignvariableop_32_adam_lstm_405_lstm_cell_405_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_405_lstm_cell_405_bias_v:	?K
8assignvariableop_34_adam_lstm_406_lstm_cell_406_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_406_lstm_cell_406_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_406_lstm_cell_406_bias_v:	?J
8assignvariableop_37_adam_lstm_407_lstm_cell_407_kernel_v:2(T
Bassignvariableop_38_adam_lstm_407_lstm_cell_407_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_407_lstm_cell_407_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_135_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_135_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_405_lstm_cell_405_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_405_lstm_cell_405_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_405_lstm_cell_405_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_406_lstm_cell_406_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_406_lstm_cell_406_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_406_lstm_cell_406_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_407_lstm_cell_407_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_407_lstm_cell_407_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_407_lstm_cell_407_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_135_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_135_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_405_lstm_cell_405_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_405_lstm_cell_405_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_405_lstm_cell_405_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_406_lstm_cell_406_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_406_lstm_cell_406_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_406_lstm_cell_406_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_407_lstm_cell_407_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_407_lstm_cell_407_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_407_lstm_cell_407_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_135_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_135_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_405_lstm_cell_405_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_405_lstm_cell_405_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_405_lstm_cell_405_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_406_lstm_cell_406_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_406_lstm_cell_406_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_406_lstm_cell_406_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_407_lstm_cell_407_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_407_lstm_cell_407_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_407_lstm_cell_407_bias_vIdentity_39:output:0"/device:CPU:0*
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
?8
?
while_body_761314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_125_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_125_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_125_matmul_readvariableop_resource:2(F
4while_lstm_cell_125_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_125_biasadd_readvariableop_resource:(??*while/lstm_cell_125/BiasAdd/ReadVariableOp?)while/lstm_cell_125/MatMul/ReadVariableOp?+while/lstm_cell_125/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_125/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_125/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_125/addAddV2$while/lstm_cell_125/MatMul:product:0&while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_125/BiasAddBiasAddwhile/lstm_cell_125/add:z:02while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_125/splitSplit,while/lstm_cell_125/split/split_dim:output:0$while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_125/SigmoidSigmoid"while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_1Sigmoid"while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mulMul!while/lstm_cell_125/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_125/ReluRelu"while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_1Mulwhile/lstm_cell_125/Sigmoid:y:0&while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/add_1AddV2while/lstm_cell_125/mul:z:0while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_2Sigmoid"while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_125/Relu_1Reluwhile/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_2Mul!while/lstm_cell_125/Sigmoid_2:y:0(while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_125/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_125/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_125/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_125/BiasAdd/ReadVariableOp*^while/lstm_cell_125/MatMul/ReadVariableOp,^while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_125_biasadd_readvariableop_resource5while_lstm_cell_125_biasadd_readvariableop_resource_0"n
4while_lstm_cell_125_matmul_1_readvariableop_resource6while_lstm_cell_125_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_125_matmul_readvariableop_resource4while_lstm_cell_125_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_125/BiasAdd/ReadVariableOp*while/lstm_cell_125/BiasAdd/ReadVariableOp2V
)while/lstm_cell_125/MatMul/ReadVariableOp)while/lstm_cell_125/MatMul/ReadVariableOp2Z
+while/lstm_cell_125/MatMul_1/ReadVariableOp+while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
)sequential_135_lstm_406_while_body_756296L
Hsequential_135_lstm_406_while_sequential_135_lstm_406_while_loop_counterR
Nsequential_135_lstm_406_while_sequential_135_lstm_406_while_maximum_iterations-
)sequential_135_lstm_406_while_placeholder/
+sequential_135_lstm_406_while_placeholder_1/
+sequential_135_lstm_406_while_placeholder_2/
+sequential_135_lstm_406_while_placeholder_3K
Gsequential_135_lstm_406_while_sequential_135_lstm_406_strided_slice_1_0?
?sequential_135_lstm_406_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_406_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_135_lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0:	d?a
Nsequential_135_lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?\
Msequential_135_lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0:	?*
&sequential_135_lstm_406_while_identity,
(sequential_135_lstm_406_while_identity_1,
(sequential_135_lstm_406_while_identity_2,
(sequential_135_lstm_406_while_identity_3,
(sequential_135_lstm_406_while_identity_4,
(sequential_135_lstm_406_while_identity_5I
Esequential_135_lstm_406_while_sequential_135_lstm_406_strided_slice_1?
?sequential_135_lstm_406_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_406_tensorarrayunstack_tensorlistfromtensor]
Jsequential_135_lstm_406_while_lstm_cell_124_matmul_readvariableop_resource:	d?_
Lsequential_135_lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource:	2?Z
Ksequential_135_lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource:	???Bsequential_135/lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp?Asequential_135/lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp?Csequential_135/lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp?
Osequential_135/lstm_406/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_135/lstm_406/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_135_lstm_406_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_406_tensorarrayunstack_tensorlistfromtensor_0)sequential_135_lstm_406_while_placeholderXsequential_135/lstm_406/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_135/lstm_406/while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOpLsequential_135_lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_135/lstm_406/while/lstm_cell_124/MatMulMatMulHsequential_135/lstm_406/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_135/lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_135/lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOpNsequential_135_lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_135/lstm_406/while/lstm_cell_124/MatMul_1MatMul+sequential_135_lstm_406_while_placeholder_2Ksequential_135/lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_135/lstm_406/while/lstm_cell_124/addAddV2<sequential_135/lstm_406/while/lstm_cell_124/MatMul:product:0>sequential_135/lstm_406/while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_135/lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOpMsequential_135_lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_135/lstm_406/while/lstm_cell_124/BiasAddBiasAdd3sequential_135/lstm_406/while/lstm_cell_124/add:z:0Jsequential_135/lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_135/lstm_406/while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_135/lstm_406/while/lstm_cell_124/splitSplitDsequential_135/lstm_406/while/lstm_cell_124/split/split_dim:output:0<sequential_135/lstm_406/while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_135/lstm_406/while/lstm_cell_124/SigmoidSigmoid:sequential_135/lstm_406/while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_135/lstm_406/while/lstm_cell_124/Sigmoid_1Sigmoid:sequential_135/lstm_406/while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_135/lstm_406/while/lstm_cell_124/mulMul9sequential_135/lstm_406/while/lstm_cell_124/Sigmoid_1:y:0+sequential_135_lstm_406_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_135/lstm_406/while/lstm_cell_124/ReluRelu:sequential_135/lstm_406/while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_135/lstm_406/while/lstm_cell_124/mul_1Mul7sequential_135/lstm_406/while/lstm_cell_124/Sigmoid:y:0>sequential_135/lstm_406/while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_135/lstm_406/while/lstm_cell_124/add_1AddV23sequential_135/lstm_406/while/lstm_cell_124/mul:z:05sequential_135/lstm_406/while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_135/lstm_406/while/lstm_cell_124/Sigmoid_2Sigmoid:sequential_135/lstm_406/while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_135/lstm_406/while/lstm_cell_124/Relu_1Relu5sequential_135/lstm_406/while/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_135/lstm_406/while/lstm_cell_124/mul_2Mul9sequential_135/lstm_406/while/lstm_cell_124/Sigmoid_2:y:0@sequential_135/lstm_406/while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_135/lstm_406/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_135_lstm_406_while_placeholder_1)sequential_135_lstm_406_while_placeholder5sequential_135/lstm_406/while/lstm_cell_124/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_135/lstm_406/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_135/lstm_406/while/addAddV2)sequential_135_lstm_406_while_placeholder,sequential_135/lstm_406/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_135/lstm_406/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_135/lstm_406/while/add_1AddV2Hsequential_135_lstm_406_while_sequential_135_lstm_406_while_loop_counter.sequential_135/lstm_406/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_135/lstm_406/while/IdentityIdentity'sequential_135/lstm_406/while/add_1:z:0#^sequential_135/lstm_406/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_406/while/Identity_1IdentityNsequential_135_lstm_406_while_sequential_135_lstm_406_while_maximum_iterations#^sequential_135/lstm_406/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_406/while/Identity_2Identity%sequential_135/lstm_406/while/add:z:0#^sequential_135/lstm_406/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_406/while/Identity_3IdentityRsequential_135/lstm_406/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_135/lstm_406/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_406/while/Identity_4Identity5sequential_135/lstm_406/while/lstm_cell_124/mul_2:z:0#^sequential_135/lstm_406/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_135/lstm_406/while/Identity_5Identity5sequential_135/lstm_406/while/lstm_cell_124/add_1:z:0#^sequential_135/lstm_406/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_135/lstm_406/while/NoOpNoOpC^sequential_135/lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOpB^sequential_135/lstm_406/while/lstm_cell_124/MatMul/ReadVariableOpD^sequential_135/lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_135_lstm_406_while_identity/sequential_135/lstm_406/while/Identity:output:0"]
(sequential_135_lstm_406_while_identity_11sequential_135/lstm_406/while/Identity_1:output:0"]
(sequential_135_lstm_406_while_identity_21sequential_135/lstm_406/while/Identity_2:output:0"]
(sequential_135_lstm_406_while_identity_31sequential_135/lstm_406/while/Identity_3:output:0"]
(sequential_135_lstm_406_while_identity_41sequential_135/lstm_406/while/Identity_4:output:0"]
(sequential_135_lstm_406_while_identity_51sequential_135/lstm_406/while/Identity_5:output:0"?
Ksequential_135_lstm_406_while_lstm_cell_124_biasadd_readvariableop_resourceMsequential_135_lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0"?
Lsequential_135_lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resourceNsequential_135_lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0"?
Jsequential_135_lstm_406_while_lstm_cell_124_matmul_readvariableop_resourceLsequential_135_lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0"?
Esequential_135_lstm_406_while_sequential_135_lstm_406_strided_slice_1Gsequential_135_lstm_406_while_sequential_135_lstm_406_strided_slice_1_0"?
?sequential_135_lstm_406_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_406_tensorarrayunstack_tensorlistfromtensor?sequential_135_lstm_406_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_406_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_135/lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOpBsequential_135/lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp2?
Asequential_135/lstm_406/while/lstm_cell_124/MatMul/ReadVariableOpAsequential_135/lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp2?
Csequential_135/lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOpCsequential_135/lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
$__inference_signature_wrapper_758785
lstm_405_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_405_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_756525o
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
_user_specified_namelstm_405_input
?
?
)sequential_135_lstm_405_while_cond_756156L
Hsequential_135_lstm_405_while_sequential_135_lstm_405_while_loop_counterR
Nsequential_135_lstm_405_while_sequential_135_lstm_405_while_maximum_iterations-
)sequential_135_lstm_405_while_placeholder/
+sequential_135_lstm_405_while_placeholder_1/
+sequential_135_lstm_405_while_placeholder_2/
+sequential_135_lstm_405_while_placeholder_3N
Jsequential_135_lstm_405_while_less_sequential_135_lstm_405_strided_slice_1d
`sequential_135_lstm_405_while_sequential_135_lstm_405_while_cond_756156___redundant_placeholder0d
`sequential_135_lstm_405_while_sequential_135_lstm_405_while_cond_756156___redundant_placeholder1d
`sequential_135_lstm_405_while_sequential_135_lstm_405_while_cond_756156___redundant_placeholder2d
`sequential_135_lstm_405_while_sequential_135_lstm_405_while_cond_756156___redundant_placeholder3*
&sequential_135_lstm_405_while_identity
?
"sequential_135/lstm_405/while/LessLess)sequential_135_lstm_405_while_placeholderJsequential_135_lstm_405_while_less_sequential_135_lstm_405_strided_slice_1*
T0*
_output_shapes
: {
&sequential_135/lstm_405/while/IdentityIdentity&sequential_135/lstm_405/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_135_lstm_405_while_identity/sequential_135/lstm_405/while/Identity:output:0*(
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
while_body_756797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_123_756821_0:	?/
while_lstm_cell_123_756823_0:	d?+
while_lstm_cell_123_756825_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_123_756821:	?-
while_lstm_cell_123_756823:	d?)
while_lstm_cell_123_756825:	???+while/lstm_cell_123/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_123/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_123_756821_0while_lstm_cell_123_756823_0while_lstm_cell_123_756825_0*
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756738?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_123/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_123/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_123/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_123/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_123_756821while_lstm_cell_123_756821_0":
while_lstm_cell_123_756823while_lstm_cell_123_756823_0":
while_lstm_cell_123_756825while_lstm_cell_123_756825_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_123/StatefulPartitionedCall+while/lstm_cell_123/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_405_while_body_758898.
*lstm_405_while_lstm_405_while_loop_counter4
0lstm_405_while_lstm_405_while_maximum_iterations
lstm_405_while_placeholder 
lstm_405_while_placeholder_1 
lstm_405_while_placeholder_2 
lstm_405_while_placeholder_3-
)lstm_405_while_lstm_405_strided_slice_1_0i
elstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0:	?R
?lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?M
>lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
lstm_405_while_identity
lstm_405_while_identity_1
lstm_405_while_identity_2
lstm_405_while_identity_3
lstm_405_while_identity_4
lstm_405_while_identity_5+
'lstm_405_while_lstm_405_strided_slice_1g
clstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensorN
;lstm_405_while_lstm_cell_123_matmul_readvariableop_resource:	?P
=lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource:	d?K
<lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource:	???3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp?2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp?4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp?
@lstm_405/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_405/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensor_0lstm_405_while_placeholderIlstm_405/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp=lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_405/while/lstm_cell_123/MatMulMatMul9lstm_405/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp?lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_405/while/lstm_cell_123/MatMul_1MatMullstm_405_while_placeholder_2<lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_405/while/lstm_cell_123/addAddV2-lstm_405/while/lstm_cell_123/MatMul:product:0/lstm_405/while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp>lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_405/while/lstm_cell_123/BiasAddBiasAdd$lstm_405/while/lstm_cell_123/add:z:0;lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_405/while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_405/while/lstm_cell_123/splitSplit5lstm_405/while/lstm_cell_123/split/split_dim:output:0-lstm_405/while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_405/while/lstm_cell_123/SigmoidSigmoid+lstm_405/while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_405/while/lstm_cell_123/Sigmoid_1Sigmoid+lstm_405/while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_405/while/lstm_cell_123/mulMul*lstm_405/while/lstm_cell_123/Sigmoid_1:y:0lstm_405_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_405/while/lstm_cell_123/ReluRelu+lstm_405/while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_405/while/lstm_cell_123/mul_1Mul(lstm_405/while/lstm_cell_123/Sigmoid:y:0/lstm_405/while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_405/while/lstm_cell_123/add_1AddV2$lstm_405/while/lstm_cell_123/mul:z:0&lstm_405/while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_405/while/lstm_cell_123/Sigmoid_2Sigmoid+lstm_405/while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_405/while/lstm_cell_123/Relu_1Relu&lstm_405/while/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_405/while/lstm_cell_123/mul_2Mul*lstm_405/while/lstm_cell_123/Sigmoid_2:y:01lstm_405/while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_405/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_405_while_placeholder_1lstm_405_while_placeholder&lstm_405/while/lstm_cell_123/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_405/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_405/while/addAddV2lstm_405_while_placeholderlstm_405/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_405/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_405/while/add_1AddV2*lstm_405_while_lstm_405_while_loop_counterlstm_405/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_405/while/IdentityIdentitylstm_405/while/add_1:z:0^lstm_405/while/NoOp*
T0*
_output_shapes
: ?
lstm_405/while/Identity_1Identity0lstm_405_while_lstm_405_while_maximum_iterations^lstm_405/while/NoOp*
T0*
_output_shapes
: t
lstm_405/while/Identity_2Identitylstm_405/while/add:z:0^lstm_405/while/NoOp*
T0*
_output_shapes
: ?
lstm_405/while/Identity_3IdentityClstm_405/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_405/while/NoOp*
T0*
_output_shapes
: ?
lstm_405/while/Identity_4Identity&lstm_405/while/lstm_cell_123/mul_2:z:0^lstm_405/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_405/while/Identity_5Identity&lstm_405/while/lstm_cell_123/add_1:z:0^lstm_405/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_405/while/NoOpNoOp4^lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp3^lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp5^lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_405_while_identity lstm_405/while/Identity:output:0"?
lstm_405_while_identity_1"lstm_405/while/Identity_1:output:0"?
lstm_405_while_identity_2"lstm_405/while/Identity_2:output:0"?
lstm_405_while_identity_3"lstm_405/while/Identity_3:output:0"?
lstm_405_while_identity_4"lstm_405/while/Identity_4:output:0"?
lstm_405_while_identity_5"lstm_405/while/Identity_5:output:0"T
'lstm_405_while_lstm_405_strided_slice_1)lstm_405_while_lstm_405_strided_slice_1_0"~
<lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource>lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0"?
=lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource?lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0"|
;lstm_405_while_lstm_cell_123_matmul_readvariableop_resource=lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0"?
clstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensorelstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp2h
2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp2l
4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_761027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_761027___redundant_placeholder04
0while_while_cond_761027___redundant_placeholder14
0while_while_cond_761027___redundant_placeholder24
0while_while_cond_761027___redundant_placeholder3
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757874

inputs?
,lstm_cell_124_matmul_readvariableop_resource:	d?A
.lstm_cell_124_matmul_1_readvariableop_resource:	2?<
-lstm_cell_124_biasadd_readvariableop_resource:	?
identity??$lstm_cell_124/BiasAdd/ReadVariableOp?#lstm_cell_124/MatMul/ReadVariableOp?%lstm_cell_124/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_124/MatMul/ReadVariableOpReadVariableOp,lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_124/MatMulMatMulstrided_slice_2:output:0+lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_124/MatMul_1MatMulzeros:output:0-lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_124/addAddV2lstm_cell_124/MatMul:product:0 lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_124/BiasAddBiasAddlstm_cell_124/add:z:0,lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_124/splitSplit&lstm_cell_124/split/split_dim:output:0lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_124/SigmoidSigmoidlstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_1Sigmoidlstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_124/mulMullstm_cell_124/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_124/ReluRelulstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_1Mullstm_cell_124/Sigmoid:y:0 lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_124/add_1AddV2lstm_cell_124/mul:z:0lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_2Sigmoidlstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_124/Relu_1Relulstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_2Mullstm_cell_124/Sigmoid_2:y:0"lstm_cell_124/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_124_matmul_readvariableop_resource.lstm_cell_124_matmul_1_readvariableop_resource-lstm_cell_124_biasadd_readvariableop_resource*
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
while_body_757790*
condR
while_cond_757789*K
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
NoOpNoOp%^lstm_cell_124/BiasAdd/ReadVariableOp$^lstm_cell_124/MatMul/ReadVariableOp&^lstm_cell_124/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_124/BiasAdd/ReadVariableOp$lstm_cell_124/BiasAdd/ReadVariableOp2J
#lstm_cell_124/MatMul/ReadVariableOp#lstm_cell_124/MatMul/ReadVariableOp2N
%lstm_cell_124/MatMul_1/ReadVariableOp%lstm_cell_124/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
D__inference_lstm_406_layer_call_and_return_conditional_losses_760496
inputs_0?
,lstm_cell_124_matmul_readvariableop_resource:	d?A
.lstm_cell_124_matmul_1_readvariableop_resource:	2?<
-lstm_cell_124_biasadd_readvariableop_resource:	?
identity??$lstm_cell_124/BiasAdd/ReadVariableOp?#lstm_cell_124/MatMul/ReadVariableOp?%lstm_cell_124/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_124/MatMul/ReadVariableOpReadVariableOp,lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_124/MatMulMatMulstrided_slice_2:output:0+lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_124/MatMul_1MatMulzeros:output:0-lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_124/addAddV2lstm_cell_124/MatMul:product:0 lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_124/BiasAddBiasAddlstm_cell_124/add:z:0,lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_124/splitSplit&lstm_cell_124/split/split_dim:output:0lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_124/SigmoidSigmoidlstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_1Sigmoidlstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_124/mulMullstm_cell_124/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_124/ReluRelulstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_1Mullstm_cell_124/Sigmoid:y:0 lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_124/add_1AddV2lstm_cell_124/mul:z:0lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_2Sigmoidlstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_124/Relu_1Relulstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_2Mullstm_cell_124/Sigmoid_2:y:0"lstm_cell_124/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_124_matmul_readvariableop_resource.lstm_cell_124_matmul_1_readvariableop_resource-lstm_cell_124_biasadd_readvariableop_resource*
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
while_body_760412*
condR
while_cond_760411*K
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
NoOpNoOp%^lstm_cell_124/BiasAdd/ReadVariableOp$^lstm_cell_124/MatMul/ReadVariableOp&^lstm_cell_124/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_124/BiasAdd/ReadVariableOp$lstm_cell_124/BiasAdd/ReadVariableOp2J
#lstm_cell_124/MatMul/ReadVariableOp#lstm_cell_124/MatMul/ReadVariableOp2N
%lstm_cell_124/MatMul_1/ReadVariableOp%lstm_cell_124/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_761170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_761170___redundant_placeholder04
0while_while_cond_761170___redundant_placeholder14
0while_while_cond_761170___redundant_placeholder24
0while_while_cond_761170___redundant_placeholder3
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
)__inference_lstm_405_layer_call_fn_759704
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_756675|
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
)__inference_lstm_407_layer_call_fn_760936
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_757375o
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
while_body_760082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_123_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_123_matmul_readvariableop_resource:	?G
4while_lstm_cell_123_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_123_biasadd_readvariableop_resource:	???*while/lstm_cell_123/BiasAdd/ReadVariableOp?)while/lstm_cell_123/MatMul/ReadVariableOp?+while/lstm_cell_123/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_123/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_123/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_123/addAddV2$while/lstm_cell_123/MatMul:product:0&while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_123/BiasAddBiasAddwhile/lstm_cell_123/add:z:02while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_123/splitSplit,while/lstm_cell_123/split/split_dim:output:0$while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_123/SigmoidSigmoid"while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_1Sigmoid"while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mulMul!while/lstm_cell_123/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_123/ReluRelu"while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_1Mulwhile/lstm_cell_123/Sigmoid:y:0&while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/add_1AddV2while/lstm_cell_123/mul:z:0while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_2Sigmoid"while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_123/Relu_1Reluwhile/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_2Mul!while/lstm_cell_123/Sigmoid_2:y:0(while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_123/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_123/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_123/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_123/BiasAdd/ReadVariableOp*^while/lstm_cell_123/MatMul/ReadVariableOp,^while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_123_biasadd_readvariableop_resource5while_lstm_cell_123_biasadd_readvariableop_resource_0"n
4while_lstm_cell_123_matmul_1_readvariableop_resource6while_lstm_cell_123_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_123_matmul_readvariableop_resource4while_lstm_cell_123_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_123/BiasAdd/ReadVariableOp*while/lstm_cell_123/BiasAdd/ReadVariableOp2V
)while/lstm_cell_123/MatMul/ReadVariableOp)while/lstm_cell_123/MatMul/ReadVariableOp2Z
+while/lstm_cell_123/MatMul_1/ReadVariableOp+while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_760925

inputs?
,lstm_cell_124_matmul_readvariableop_resource:	d?A
.lstm_cell_124_matmul_1_readvariableop_resource:	2?<
-lstm_cell_124_biasadd_readvariableop_resource:	?
identity??$lstm_cell_124/BiasAdd/ReadVariableOp?#lstm_cell_124/MatMul/ReadVariableOp?%lstm_cell_124/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_124/MatMul/ReadVariableOpReadVariableOp,lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_124/MatMulMatMulstrided_slice_2:output:0+lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_124/MatMul_1MatMulzeros:output:0-lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_124/addAddV2lstm_cell_124/MatMul:product:0 lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_124/BiasAddBiasAddlstm_cell_124/add:z:0,lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_124/splitSplit&lstm_cell_124/split/split_dim:output:0lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_124/SigmoidSigmoidlstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_1Sigmoidlstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_124/mulMullstm_cell_124/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_124/ReluRelulstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_1Mullstm_cell_124/Sigmoid:y:0 lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_124/add_1AddV2lstm_cell_124/mul:z:0lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_2Sigmoidlstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_124/Relu_1Relulstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_2Mullstm_cell_124/Sigmoid_2:y:0"lstm_cell_124/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_124_matmul_readvariableop_resource.lstm_cell_124_matmul_1_readvariableop_resource-lstm_cell_124_biasadd_readvariableop_resource*
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
while_body_760841*
condR
while_cond_760840*K
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
NoOpNoOp%^lstm_cell_124/BiasAdd/ReadVariableOp$^lstm_cell_124/MatMul/ReadVariableOp&^lstm_cell_124/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_124/BiasAdd/ReadVariableOp$lstm_cell_124/BiasAdd/ReadVariableOp2J
#lstm_cell_124/MatMul/ReadVariableOp#lstm_cell_124/MatMul/ReadVariableOp2N
%lstm_cell_124/MatMul_1/ReadVariableOp%lstm_cell_124/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_135_layer_call_and_return_conditional_losses_758720
lstm_405_input"
lstm_405_758693:	?"
lstm_405_758695:	d?
lstm_405_758697:	?"
lstm_406_758700:	d?"
lstm_406_758702:	2?
lstm_406_758704:	?!
lstm_407_758707:2(!
lstm_407_758709:
(
lstm_407_758711:("
dense_135_758714:

dense_135_758716:
identity??!dense_135/StatefulPartitionedCall? lstm_405/StatefulPartitionedCall? lstm_406/StatefulPartitionedCall? lstm_407/StatefulPartitionedCall?
 lstm_405/StatefulPartitionedCallStatefulPartitionedCalllstm_405_inputlstm_405_758693lstm_405_758695lstm_405_758697*
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_757724?
 lstm_406/StatefulPartitionedCallStatefulPartitionedCall)lstm_405/StatefulPartitionedCall:output:0lstm_406_758700lstm_406_758702lstm_406_758704*
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757874?
 lstm_407/StatefulPartitionedCallStatefulPartitionedCall)lstm_406/StatefulPartitionedCall:output:0lstm_407_758707lstm_407_758709lstm_407_758711*
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758024?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall)lstm_407/StatefulPartitionedCall:output:0dense_135_758714dense_135_758716*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_758042y
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_135/StatefulPartitionedCall!^lstm_405/StatefulPartitionedCall!^lstm_406/StatefulPartitionedCall!^lstm_407/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2D
 lstm_405/StatefulPartitionedCall lstm_405/StatefulPartitionedCall2D
 lstm_406/StatefulPartitionedCall lstm_406/StatefulPartitionedCall2D
 lstm_407/StatefulPartitionedCall lstm_407/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_405_input
?
?
while_cond_760224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_760224___redundant_placeholder04
0while_while_cond_760224___redundant_placeholder14
0while_while_cond_760224___redundant_placeholder24
0while_while_cond_760224___redundant_placeholder3
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
while_cond_759795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_759795___redundant_placeholder04
0while_while_cond_759795___redundant_placeholder14
0while_while_cond_759795___redundant_placeholder24
0while_while_cond_759795___redundant_placeholder3
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
while_cond_757305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_757305___redundant_placeholder04
0while_while_cond_757305___redundant_placeholder14
0while_while_cond_757305___redundant_placeholder24
0while_while_cond_757305___redundant_placeholder3
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
*__inference_dense_135_layer_call_fn_761550

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
E__inference_dense_135_layer_call_and_return_conditional_losses_758042o
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_757724

inputs?
,lstm_cell_123_matmul_readvariableop_resource:	?A
.lstm_cell_123_matmul_1_readvariableop_resource:	d?<
-lstm_cell_123_biasadd_readvariableop_resource:	?
identity??$lstm_cell_123/BiasAdd/ReadVariableOp?#lstm_cell_123/MatMul/ReadVariableOp?%lstm_cell_123/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_123/MatMul/ReadVariableOpReadVariableOp,lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_123/MatMulMatMulstrided_slice_2:output:0+lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_123/MatMul_1MatMulzeros:output:0-lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_123/addAddV2lstm_cell_123/MatMul:product:0 lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_123/BiasAddBiasAddlstm_cell_123/add:z:0,lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_123/splitSplit&lstm_cell_123/split/split_dim:output:0lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_123/SigmoidSigmoidlstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_1Sigmoidlstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_123/mulMullstm_cell_123/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_123/ReluRelulstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_1Mullstm_cell_123/Sigmoid:y:0 lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_123/add_1AddV2lstm_cell_123/mul:z:0lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_2Sigmoidlstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_123/Relu_1Relulstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_2Mullstm_cell_123/Sigmoid_2:y:0"lstm_cell_123/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_123_matmul_readvariableop_resource.lstm_cell_123_matmul_1_readvariableop_resource-lstm_cell_123_biasadd_readvariableop_resource*
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
while_body_757640*
condR
while_cond_757639*K
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
NoOpNoOp%^lstm_cell_123/BiasAdd/ReadVariableOp$^lstm_cell_123/MatMul/ReadVariableOp&^lstm_cell_123/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_123/BiasAdd/ReadVariableOp$lstm_cell_123/BiasAdd/ReadVariableOp2J
#lstm_cell_123/MatMul/ReadVariableOp#lstm_cell_123/MatMul/ReadVariableOp2N
%lstm_cell_123/MatMul_1/ReadVariableOp%lstm_cell_123/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_760554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_760554___redundant_placeholder04
0while_while_cond_760554___redundant_placeholder14
0while_while_cond_760554___redundant_placeholder24
0while_while_cond_760554___redundant_placeholder3
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
while_cond_757496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_757496___redundant_placeholder04
0while_while_cond_757496___redundant_placeholder14
0while_while_cond_757496___redundant_placeholder24
0while_while_cond_757496___redundant_placeholder3
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
while_body_757497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_125_757521_0:2(.
while_lstm_cell_125_757523_0:
(*
while_lstm_cell_125_757525_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_125_757521:2(,
while_lstm_cell_125_757523:
((
while_lstm_cell_125_757525:(??+while/lstm_cell_125/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_125/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_125_757521_0while_lstm_cell_125_757523_0while_lstm_cell_125_757525_0*
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757438?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_125/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_125/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_125/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_125_757521while_lstm_cell_125_757521_0":
while_lstm_cell_125_757523while_lstm_cell_125_757523_0":
while_lstm_cell_125_757525while_lstm_cell_125_757525_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_125/StatefulPartitionedCall+while/lstm_cell_125/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_761541

inputs>
,lstm_cell_125_matmul_readvariableop_resource:2(@
.lstm_cell_125_matmul_1_readvariableop_resource:
(;
-lstm_cell_125_biasadd_readvariableop_resource:(
identity??$lstm_cell_125/BiasAdd/ReadVariableOp?#lstm_cell_125/MatMul/ReadVariableOp?%lstm_cell_125/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_125/MatMul/ReadVariableOpReadVariableOp,lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_125/MatMulMatMulstrided_slice_2:output:0+lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_125/MatMul_1MatMulzeros:output:0-lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_125/addAddV2lstm_cell_125/MatMul:product:0 lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_125/BiasAddBiasAddlstm_cell_125/add:z:0,lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_125/splitSplit&lstm_cell_125/split/split_dim:output:0lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_125/SigmoidSigmoidlstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_1Sigmoidlstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_125/mulMullstm_cell_125/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_125/ReluRelulstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_1Mullstm_cell_125/Sigmoid:y:0 lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_125/add_1AddV2lstm_cell_125/mul:z:0lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_2Sigmoidlstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_125/Relu_1Relulstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_2Mullstm_cell_125/Sigmoid_2:y:0"lstm_cell_125/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_125_matmul_readvariableop_resource.lstm_cell_125_matmul_1_readvariableop_resource-lstm_cell_125_biasadd_readvariableop_resource*
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
while_body_761457*
condR
while_cond_761456*K
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
NoOpNoOp%^lstm_cell_125/BiasAdd/ReadVariableOp$^lstm_cell_125/MatMul/ReadVariableOp&^lstm_cell_125/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_125/BiasAdd/ReadVariableOp$lstm_cell_125/BiasAdd/ReadVariableOp2J
#lstm_cell_125/MatMul/ReadVariableOp#lstm_cell_125/MatMul/ReadVariableOp2N
%lstm_cell_125/MatMul_1/ReadVariableOp%lstm_cell_125/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
D__inference_lstm_405_layer_call_and_return_conditional_losses_756866

inputs'
lstm_cell_123_756784:	?'
lstm_cell_123_756786:	d?#
lstm_cell_123_756788:	?
identity??%lstm_cell_123/StatefulPartitionedCall?while;
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
%lstm_cell_123/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_123_756784lstm_cell_123_756786lstm_cell_123_756788*
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756738n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_123_756784lstm_cell_123_756786lstm_cell_123_756788*
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
while_body_756797*
condR
while_cond_756796*K
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
NoOpNoOp&^lstm_cell_123/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_123/StatefulPartitionedCall%lstm_cell_123/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_761724

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
while_body_758321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_124_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_124_matmul_readvariableop_resource:	d?G
4while_lstm_cell_124_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_124_biasadd_readvariableop_resource:	???*while/lstm_cell_124/BiasAdd/ReadVariableOp?)while/lstm_cell_124/MatMul/ReadVariableOp?+while/lstm_cell_124/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_124/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_124/addAddV2$while/lstm_cell_124/MatMul:product:0&while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_124/BiasAddBiasAddwhile/lstm_cell_124/add:z:02while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_124/splitSplit,while/lstm_cell_124/split/split_dim:output:0$while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_124/SigmoidSigmoid"while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_1Sigmoid"while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mulMul!while/lstm_cell_124/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_124/ReluRelu"while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_1Mulwhile/lstm_cell_124/Sigmoid:y:0&while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/add_1AddV2while/lstm_cell_124/mul:z:0while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_2Sigmoid"while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_124/Relu_1Reluwhile/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_2Mul!while/lstm_cell_124/Sigmoid_2:y:0(while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_124/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_124/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_124/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_124/BiasAdd/ReadVariableOp*^while/lstm_cell_124/MatMul/ReadVariableOp,^while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_124_biasadd_readvariableop_resource5while_lstm_cell_124_biasadd_readvariableop_resource_0"n
4while_lstm_cell_124_matmul_1_readvariableop_resource6while_lstm_cell_124_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_124_matmul_readvariableop_resource4while_lstm_cell_124_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_124/BiasAdd/ReadVariableOp*while/lstm_cell_124/BiasAdd/ReadVariableOp2V
)while/lstm_cell_124/MatMul/ReadVariableOp)while/lstm_cell_124/MatMul/ReadVariableOp2Z
+while/lstm_cell_124/MatMul_1/ReadVariableOp+while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_135_layer_call_and_return_conditional_losses_758049

inputs"
lstm_405_757725:	?"
lstm_405_757727:	d?
lstm_405_757729:	?"
lstm_406_757875:	d?"
lstm_406_757877:	2?
lstm_406_757879:	?!
lstm_407_758025:2(!
lstm_407_758027:
(
lstm_407_758029:("
dense_135_758043:

dense_135_758045:
identity??!dense_135/StatefulPartitionedCall? lstm_405/StatefulPartitionedCall? lstm_406/StatefulPartitionedCall? lstm_407/StatefulPartitionedCall?
 lstm_405/StatefulPartitionedCallStatefulPartitionedCallinputslstm_405_757725lstm_405_757727lstm_405_757729*
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_757724?
 lstm_406/StatefulPartitionedCallStatefulPartitionedCall)lstm_405/StatefulPartitionedCall:output:0lstm_406_757875lstm_406_757877lstm_406_757879*
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757874?
 lstm_407/StatefulPartitionedCallStatefulPartitionedCall)lstm_406/StatefulPartitionedCall:output:0lstm_407_758025lstm_407_758027lstm_407_758029*
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758024?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall)lstm_407/StatefulPartitionedCall:output:0dense_135_758043dense_135_758045*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_758042y
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_135/StatefulPartitionedCall!^lstm_405/StatefulPartitionedCall!^lstm_406/StatefulPartitionedCall!^lstm_407/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2D
 lstm_405/StatefulPartitionedCall lstm_405/StatefulPartitionedCall2D
 lstm_406/StatefulPartitionedCall lstm_406/StatefulPartitionedCall2D
 lstm_407/StatefulPartitionedCall lstm_407/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_760081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_760081___redundant_placeholder04
0while_while_cond_760081___redundant_placeholder14
0while_while_cond_760081___redundant_placeholder24
0while_while_cond_760081___redundant_placeholder3
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
while_cond_756796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_756796___redundant_placeholder04
0while_while_cond_756796___redundant_placeholder14
0while_while_cond_756796___redundant_placeholder24
0while_while_cond_756796___redundant_placeholder3
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
/__inference_sequential_135_layer_call_fn_758839

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
J__inference_sequential_135_layer_call_and_return_conditional_losses_758638o
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
while_body_760412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_124_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_124_matmul_readvariableop_resource:	d?G
4while_lstm_cell_124_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_124_biasadd_readvariableop_resource:	???*while/lstm_cell_124/BiasAdd/ReadVariableOp?)while/lstm_cell_124/MatMul/ReadVariableOp?+while/lstm_cell_124/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_124/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_124/addAddV2$while/lstm_cell_124/MatMul:product:0&while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_124/BiasAddBiasAddwhile/lstm_cell_124/add:z:02while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_124/splitSplit,while/lstm_cell_124/split/split_dim:output:0$while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_124/SigmoidSigmoid"while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_1Sigmoid"while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mulMul!while/lstm_cell_124/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_124/ReluRelu"while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_1Mulwhile/lstm_cell_124/Sigmoid:y:0&while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/add_1AddV2while/lstm_cell_124/mul:z:0while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_2Sigmoid"while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_124/Relu_1Reluwhile/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_2Mul!while/lstm_cell_124/Sigmoid_2:y:0(while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_124/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_124/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_124/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_124/BiasAdd/ReadVariableOp*^while/lstm_cell_124/MatMul/ReadVariableOp,^while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_124_biasadd_readvariableop_resource5while_lstm_cell_124_biasadd_readvariableop_resource_0"n
4while_lstm_cell_124_matmul_1_readvariableop_resource6while_lstm_cell_124_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_124_matmul_readvariableop_resource4while_lstm_cell_124_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_124/BiasAdd/ReadVariableOp*while/lstm_cell_124/BiasAdd/ReadVariableOp2V
)while/lstm_cell_124/MatMul/ReadVariableOp)while/lstm_cell_124/MatMul/ReadVariableOp2Z
+while/lstm_cell_124/MatMul_1/ReadVariableOp+while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_757088

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
?
?
)__inference_lstm_406_layer_call_fn_760353

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
D__inference_lstm_406_layer_call_and_return_conditional_losses_758405s
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
while_body_760698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_124_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_124_matmul_readvariableop_resource:	d?G
4while_lstm_cell_124_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_124_biasadd_readvariableop_resource:	???*while/lstm_cell_124/BiasAdd/ReadVariableOp?)while/lstm_cell_124/MatMul/ReadVariableOp?+while/lstm_cell_124/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_124/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_124/addAddV2$while/lstm_cell_124/MatMul:product:0&while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_124/BiasAddBiasAddwhile/lstm_cell_124/add:z:02while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_124/splitSplit,while/lstm_cell_124/split/split_dim:output:0$while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_124/SigmoidSigmoid"while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_1Sigmoid"while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mulMul!while/lstm_cell_124/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_124/ReluRelu"while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_1Mulwhile/lstm_cell_124/Sigmoid:y:0&while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/add_1AddV2while/lstm_cell_124/mul:z:0while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_2Sigmoid"while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_124/Relu_1Reluwhile/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_2Mul!while/lstm_cell_124/Sigmoid_2:y:0(while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_124/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_124/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_124/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_124/BiasAdd/ReadVariableOp*^while/lstm_cell_124/MatMul/ReadVariableOp,^while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_124_biasadd_readvariableop_resource5while_lstm_cell_124_biasadd_readvariableop_resource_0"n
4while_lstm_cell_124_matmul_1_readvariableop_resource6while_lstm_cell_124_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_124_matmul_readvariableop_resource4while_lstm_cell_124_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_124/BiasAdd/ReadVariableOp*while/lstm_cell_124/BiasAdd/ReadVariableOp2V
)while/lstm_cell_124/MatMul/ReadVariableOp)while/lstm_cell_124/MatMul/ReadVariableOp2Z
+while/lstm_cell_124/MatMul_1/ReadVariableOp+while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_757640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_123_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_123_matmul_readvariableop_resource:	?G
4while_lstm_cell_123_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_123_biasadd_readvariableop_resource:	???*while/lstm_cell_123/BiasAdd/ReadVariableOp?)while/lstm_cell_123/MatMul/ReadVariableOp?+while/lstm_cell_123/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_123/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_123/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_123/addAddV2$while/lstm_cell_123/MatMul:product:0&while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_123/BiasAddBiasAddwhile/lstm_cell_123/add:z:02while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_123/splitSplit,while/lstm_cell_123/split/split_dim:output:0$while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_123/SigmoidSigmoid"while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_1Sigmoid"while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mulMul!while/lstm_cell_123/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_123/ReluRelu"while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_1Mulwhile/lstm_cell_123/Sigmoid:y:0&while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/add_1AddV2while/lstm_cell_123/mul:z:0while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_2Sigmoid"while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_123/Relu_1Reluwhile/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_2Mul!while/lstm_cell_123/Sigmoid_2:y:0(while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_123/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_123/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_123/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_123/BiasAdd/ReadVariableOp*^while/lstm_cell_123/MatMul/ReadVariableOp,^while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_123_biasadd_readvariableop_resource5while_lstm_cell_123_biasadd_readvariableop_resource_0"n
4while_lstm_cell_123_matmul_1_readvariableop_resource6while_lstm_cell_123_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_123_matmul_readvariableop_resource4while_lstm_cell_123_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_123/BiasAdd/ReadVariableOp*while/lstm_cell_123/BiasAdd/ReadVariableOp2V
)while/lstm_cell_123/MatMul/ReadVariableOp)while/lstm_cell_123/MatMul/ReadVariableOp2Z
+while/lstm_cell_123/MatMul_1/ReadVariableOp+while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_759938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_759938___redundant_placeholder04
0while_while_cond_759938___redundant_placeholder14
0while_while_cond_759938___redundant_placeholder24
0while_while_cond_759938___redundant_placeholder3
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
while_cond_760411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_760411___redundant_placeholder04
0while_while_cond_760411___redundant_placeholder14
0while_while_cond_760411___redundant_placeholder24
0while_while_cond_760411___redundant_placeholder3
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757216

inputs'
lstm_cell_124_757134:	d?'
lstm_cell_124_757136:	2?#
lstm_cell_124_757138:	?
identity??%lstm_cell_124/StatefulPartitionedCall?while;
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
%lstm_cell_124/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_124_757134lstm_cell_124_757136lstm_cell_124_757138*
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_757088n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_124_757134lstm_cell_124_757136lstm_cell_124_757138*
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
while_body_757147*
condR
while_cond_757146*K
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
NoOpNoOp&^lstm_cell_124/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_124/StatefulPartitionedCall%lstm_cell_124/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_757939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_757939___redundant_placeholder04
0while_while_cond_757939___redundant_placeholder14
0while_while_cond_757939___redundant_placeholder24
0while_while_cond_757939___redundant_placeholder3
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
)__inference_lstm_406_layer_call_fn_760342

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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757874s
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758024

inputs>
,lstm_cell_125_matmul_readvariableop_resource:2(@
.lstm_cell_125_matmul_1_readvariableop_resource:
(;
-lstm_cell_125_biasadd_readvariableop_resource:(
identity??$lstm_cell_125/BiasAdd/ReadVariableOp?#lstm_cell_125/MatMul/ReadVariableOp?%lstm_cell_125/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_125/MatMul/ReadVariableOpReadVariableOp,lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_125/MatMulMatMulstrided_slice_2:output:0+lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_125/MatMul_1MatMulzeros:output:0-lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_125/addAddV2lstm_cell_125/MatMul:product:0 lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_125/BiasAddBiasAddlstm_cell_125/add:z:0,lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_125/splitSplit&lstm_cell_125/split/split_dim:output:0lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_125/SigmoidSigmoidlstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_1Sigmoidlstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_125/mulMullstm_cell_125/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_125/ReluRelulstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_1Mullstm_cell_125/Sigmoid:y:0 lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_125/add_1AddV2lstm_cell_125/mul:z:0lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_2Sigmoidlstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_125/Relu_1Relulstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_2Mullstm_cell_125/Sigmoid_2:y:0"lstm_cell_125/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_125_matmul_readvariableop_resource.lstm_cell_125_matmul_1_readvariableop_resource-lstm_cell_125_biasadd_readvariableop_resource*
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
while_body_757940*
condR
while_cond_757939*K
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
NoOpNoOp%^lstm_cell_125/BiasAdd/ReadVariableOp$^lstm_cell_125/MatMul/ReadVariableOp&^lstm_cell_125/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_125/BiasAdd/ReadVariableOp$lstm_cell_125/BiasAdd/ReadVariableOp2J
#lstm_cell_125/MatMul/ReadVariableOp#lstm_cell_125/MatMul/ReadVariableOp2N
%lstm_cell_125/MatMul_1/ReadVariableOp%lstm_cell_125/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?"
?
while_body_757306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_125_757330_0:2(.
while_lstm_cell_125_757332_0:
(*
while_lstm_cell_125_757334_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_125_757330:2(,
while_lstm_cell_125_757332:
((
while_lstm_cell_125_757334:(??+while/lstm_cell_125/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_125/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_125_757330_0while_lstm_cell_125_757332_0while_lstm_cell_125_757334_0*
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757292?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_125/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_125/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_125/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_125_757330while_lstm_cell_125_757330_0":
while_lstm_cell_125_757332while_lstm_cell_125_757332_0":
while_lstm_cell_125_757334while_lstm_cell_125_757334_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_125/StatefulPartitionedCall+while/lstm_cell_125/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_761171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_125_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_125_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_125_matmul_readvariableop_resource:2(F
4while_lstm_cell_125_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_125_biasadd_readvariableop_resource:(??*while/lstm_cell_125/BiasAdd/ReadVariableOp?)while/lstm_cell_125/MatMul/ReadVariableOp?+while/lstm_cell_125/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_125/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_125/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_125/addAddV2$while/lstm_cell_125/MatMul:product:0&while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_125/BiasAddBiasAddwhile/lstm_cell_125/add:z:02while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_125/splitSplit,while/lstm_cell_125/split/split_dim:output:0$while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_125/SigmoidSigmoid"while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_1Sigmoid"while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mulMul!while/lstm_cell_125/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_125/ReluRelu"while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_1Mulwhile/lstm_cell_125/Sigmoid:y:0&while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/add_1AddV2while/lstm_cell_125/mul:z:0while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_2Sigmoid"while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_125/Relu_1Reluwhile/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_2Mul!while/lstm_cell_125/Sigmoid_2:y:0(while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_125/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_125/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_125/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_125/BiasAdd/ReadVariableOp*^while/lstm_cell_125/MatMul/ReadVariableOp,^while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_125_biasadd_readvariableop_resource5while_lstm_cell_125_biasadd_readvariableop_resource_0"n
4while_lstm_cell_125_matmul_1_readvariableop_resource6while_lstm_cell_125_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_125_matmul_readvariableop_resource4while_lstm_cell_125_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_125/BiasAdd/ReadVariableOp*while/lstm_cell_125/BiasAdd/ReadVariableOp2V
)while/lstm_cell_125/MatMul/ReadVariableOp)while/lstm_cell_125/MatMul/ReadVariableOp2Z
+while/lstm_cell_125/MatMul_1/ReadVariableOp+while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_407_layer_call_fn_760947
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_757566o
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
while_cond_761313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_761313___redundant_placeholder04
0while_while_cond_761313___redundant_placeholder14
0while_while_cond_761313___redundant_placeholder24
0while_while_cond_761313___redundant_placeholder3
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
while_cond_757789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_757789___redundant_placeholder04
0while_while_cond_757789___redundant_placeholder14
0while_while_cond_757789___redundant_placeholder24
0while_while_cond_757789___redundant_placeholder3
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757292

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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_761756

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

lstm_407_while_body_759176.
*lstm_407_while_lstm_407_while_loop_counter4
0lstm_407_while_lstm_407_while_maximum_iterations
lstm_407_while_placeholder 
lstm_407_while_placeholder_1 
lstm_407_while_placeholder_2 
lstm_407_while_placeholder_3-
)lstm_407_while_lstm_407_strided_slice_1_0i
elstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0:2(Q
?lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(L
>lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0:(
lstm_407_while_identity
lstm_407_while_identity_1
lstm_407_while_identity_2
lstm_407_while_identity_3
lstm_407_while_identity_4
lstm_407_while_identity_5+
'lstm_407_while_lstm_407_strided_slice_1g
clstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensorM
;lstm_407_while_lstm_cell_125_matmul_readvariableop_resource:2(O
=lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource:
(J
<lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource:(??3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp?2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp?4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp?
@lstm_407/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_407/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensor_0lstm_407_while_placeholderIlstm_407/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp=lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_407/while/lstm_cell_125/MatMulMatMul9lstm_407/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp?lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_407/while/lstm_cell_125/MatMul_1MatMullstm_407_while_placeholder_2<lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_407/while/lstm_cell_125/addAddV2-lstm_407/while/lstm_cell_125/MatMul:product:0/lstm_407/while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp>lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_407/while/lstm_cell_125/BiasAddBiasAdd$lstm_407/while/lstm_cell_125/add:z:0;lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_407/while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_407/while/lstm_cell_125/splitSplit5lstm_407/while/lstm_cell_125/split/split_dim:output:0-lstm_407/while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_407/while/lstm_cell_125/SigmoidSigmoid+lstm_407/while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_407/while/lstm_cell_125/Sigmoid_1Sigmoid+lstm_407/while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_407/while/lstm_cell_125/mulMul*lstm_407/while/lstm_cell_125/Sigmoid_1:y:0lstm_407_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_407/while/lstm_cell_125/ReluRelu+lstm_407/while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_407/while/lstm_cell_125/mul_1Mul(lstm_407/while/lstm_cell_125/Sigmoid:y:0/lstm_407/while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_407/while/lstm_cell_125/add_1AddV2$lstm_407/while/lstm_cell_125/mul:z:0&lstm_407/while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_407/while/lstm_cell_125/Sigmoid_2Sigmoid+lstm_407/while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_407/while/lstm_cell_125/Relu_1Relu&lstm_407/while/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_407/while/lstm_cell_125/mul_2Mul*lstm_407/while/lstm_cell_125/Sigmoid_2:y:01lstm_407/while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_407/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_407_while_placeholder_1lstm_407_while_placeholder&lstm_407/while/lstm_cell_125/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_407/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_407/while/addAddV2lstm_407_while_placeholderlstm_407/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_407/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_407/while/add_1AddV2*lstm_407_while_lstm_407_while_loop_counterlstm_407/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_407/while/IdentityIdentitylstm_407/while/add_1:z:0^lstm_407/while/NoOp*
T0*
_output_shapes
: ?
lstm_407/while/Identity_1Identity0lstm_407_while_lstm_407_while_maximum_iterations^lstm_407/while/NoOp*
T0*
_output_shapes
: t
lstm_407/while/Identity_2Identitylstm_407/while/add:z:0^lstm_407/while/NoOp*
T0*
_output_shapes
: ?
lstm_407/while/Identity_3IdentityClstm_407/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_407/while/NoOp*
T0*
_output_shapes
: ?
lstm_407/while/Identity_4Identity&lstm_407/while/lstm_cell_125/mul_2:z:0^lstm_407/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_407/while/Identity_5Identity&lstm_407/while/lstm_cell_125/add_1:z:0^lstm_407/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_407/while/NoOpNoOp4^lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp3^lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp5^lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_407_while_identity lstm_407/while/Identity:output:0"?
lstm_407_while_identity_1"lstm_407/while/Identity_1:output:0"?
lstm_407_while_identity_2"lstm_407/while/Identity_2:output:0"?
lstm_407_while_identity_3"lstm_407/while/Identity_3:output:0"?
lstm_407_while_identity_4"lstm_407/while/Identity_4:output:0"?
lstm_407_while_identity_5"lstm_407/while/Identity_5:output:0"T
'lstm_407_while_lstm_407_strided_slice_1)lstm_407_while_lstm_407_strided_slice_1_0"~
<lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource>lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0"?
=lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource?lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0"|
;lstm_407_while_lstm_cell_125_matmul_readvariableop_resource=lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0"?
clstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensorelstm_407_while_tensorarrayv2read_tensorlistgetitem_lstm_407_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp3lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp2h
2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp2lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp2l
4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp4lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_758155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_758155___redundant_placeholder04
0while_while_cond_758155___redundant_placeholder14
0while_while_cond_758155___redundant_placeholder24
0while_while_cond_758155___redundant_placeholder3
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

lstm_405_while_body_759325.
*lstm_405_while_lstm_405_while_loop_counter4
0lstm_405_while_lstm_405_while_maximum_iterations
lstm_405_while_placeholder 
lstm_405_while_placeholder_1 
lstm_405_while_placeholder_2 
lstm_405_while_placeholder_3-
)lstm_405_while_lstm_405_strided_slice_1_0i
elstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0:	?R
?lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?M
>lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
lstm_405_while_identity
lstm_405_while_identity_1
lstm_405_while_identity_2
lstm_405_while_identity_3
lstm_405_while_identity_4
lstm_405_while_identity_5+
'lstm_405_while_lstm_405_strided_slice_1g
clstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensorN
;lstm_405_while_lstm_cell_123_matmul_readvariableop_resource:	?P
=lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource:	d?K
<lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource:	???3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp?2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp?4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp?
@lstm_405/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_405/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensor_0lstm_405_while_placeholderIlstm_405/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp=lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_405/while/lstm_cell_123/MatMulMatMul9lstm_405/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp?lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_405/while/lstm_cell_123/MatMul_1MatMullstm_405_while_placeholder_2<lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_405/while/lstm_cell_123/addAddV2-lstm_405/while/lstm_cell_123/MatMul:product:0/lstm_405/while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp>lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_405/while/lstm_cell_123/BiasAddBiasAdd$lstm_405/while/lstm_cell_123/add:z:0;lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_405/while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_405/while/lstm_cell_123/splitSplit5lstm_405/while/lstm_cell_123/split/split_dim:output:0-lstm_405/while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_405/while/lstm_cell_123/SigmoidSigmoid+lstm_405/while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_405/while/lstm_cell_123/Sigmoid_1Sigmoid+lstm_405/while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_405/while/lstm_cell_123/mulMul*lstm_405/while/lstm_cell_123/Sigmoid_1:y:0lstm_405_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_405/while/lstm_cell_123/ReluRelu+lstm_405/while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_405/while/lstm_cell_123/mul_1Mul(lstm_405/while/lstm_cell_123/Sigmoid:y:0/lstm_405/while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_405/while/lstm_cell_123/add_1AddV2$lstm_405/while/lstm_cell_123/mul:z:0&lstm_405/while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_405/while/lstm_cell_123/Sigmoid_2Sigmoid+lstm_405/while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_405/while/lstm_cell_123/Relu_1Relu&lstm_405/while/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_405/while/lstm_cell_123/mul_2Mul*lstm_405/while/lstm_cell_123/Sigmoid_2:y:01lstm_405/while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_405/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_405_while_placeholder_1lstm_405_while_placeholder&lstm_405/while/lstm_cell_123/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_405/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_405/while/addAddV2lstm_405_while_placeholderlstm_405/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_405/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_405/while/add_1AddV2*lstm_405_while_lstm_405_while_loop_counterlstm_405/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_405/while/IdentityIdentitylstm_405/while/add_1:z:0^lstm_405/while/NoOp*
T0*
_output_shapes
: ?
lstm_405/while/Identity_1Identity0lstm_405_while_lstm_405_while_maximum_iterations^lstm_405/while/NoOp*
T0*
_output_shapes
: t
lstm_405/while/Identity_2Identitylstm_405/while/add:z:0^lstm_405/while/NoOp*
T0*
_output_shapes
: ?
lstm_405/while/Identity_3IdentityClstm_405/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_405/while/NoOp*
T0*
_output_shapes
: ?
lstm_405/while/Identity_4Identity&lstm_405/while/lstm_cell_123/mul_2:z:0^lstm_405/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_405/while/Identity_5Identity&lstm_405/while/lstm_cell_123/add_1:z:0^lstm_405/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_405/while/NoOpNoOp4^lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp3^lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp5^lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_405_while_identity lstm_405/while/Identity:output:0"?
lstm_405_while_identity_1"lstm_405/while/Identity_1:output:0"?
lstm_405_while_identity_2"lstm_405/while/Identity_2:output:0"?
lstm_405_while_identity_3"lstm_405/while/Identity_3:output:0"?
lstm_405_while_identity_4"lstm_405/while/Identity_4:output:0"?
lstm_405_while_identity_5"lstm_405/while/Identity_5:output:0"T
'lstm_405_while_lstm_405_strided_slice_1)lstm_405_while_lstm_405_strided_slice_1_0"~
<lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource>lstm_405_while_lstm_cell_123_biasadd_readvariableop_resource_0"?
=lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource?lstm_405_while_lstm_cell_123_matmul_1_readvariableop_resource_0"|
;lstm_405_while_lstm_cell_123_matmul_readvariableop_resource=lstm_405_while_lstm_cell_123_matmul_readvariableop_resource_0"?
clstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensorelstm_405_while_tensorarrayv2read_tensorlistgetitem_lstm_405_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp3lstm_405/while/lstm_cell_123/BiasAdd/ReadVariableOp2h
2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp2lstm_405/while/lstm_cell_123/MatMul/ReadVariableOp2l
4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp4lstm_405/while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_760166

inputs?
,lstm_cell_123_matmul_readvariableop_resource:	?A
.lstm_cell_123_matmul_1_readvariableop_resource:	d?<
-lstm_cell_123_biasadd_readvariableop_resource:	?
identity??$lstm_cell_123/BiasAdd/ReadVariableOp?#lstm_cell_123/MatMul/ReadVariableOp?%lstm_cell_123/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_123/MatMul/ReadVariableOpReadVariableOp,lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_123/MatMulMatMulstrided_slice_2:output:0+lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_123/MatMul_1MatMulzeros:output:0-lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_123/addAddV2lstm_cell_123/MatMul:product:0 lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_123/BiasAddBiasAddlstm_cell_123/add:z:0,lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_123/splitSplit&lstm_cell_123/split/split_dim:output:0lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_123/SigmoidSigmoidlstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_1Sigmoidlstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_123/mulMullstm_cell_123/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_123/ReluRelulstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_1Mullstm_cell_123/Sigmoid:y:0 lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_123/add_1AddV2lstm_cell_123/mul:z:0lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_2Sigmoidlstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_123/Relu_1Relulstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_2Mullstm_cell_123/Sigmoid_2:y:0"lstm_cell_123/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_123_matmul_readvariableop_resource.lstm_cell_123_matmul_1_readvariableop_resource-lstm_cell_123_biasadd_readvariableop_resource*
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
while_body_760082*
condR
while_cond_760081*K
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
NoOpNoOp%^lstm_cell_123/BiasAdd/ReadVariableOp$^lstm_cell_123/MatMul/ReadVariableOp&^lstm_cell_123/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_123/BiasAdd/ReadVariableOp$lstm_cell_123/BiasAdd/ReadVariableOp2J
#lstm_cell_123/MatMul/ReadVariableOp#lstm_cell_123/MatMul/ReadVariableOp2N
%lstm_cell_123/MatMul_1/ReadVariableOp%lstm_cell_123/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_761822

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
D__inference_lstm_407_layer_call_and_return_conditional_losses_761255
inputs_0>
,lstm_cell_125_matmul_readvariableop_resource:2(@
.lstm_cell_125_matmul_1_readvariableop_resource:
(;
-lstm_cell_125_biasadd_readvariableop_resource:(
identity??$lstm_cell_125/BiasAdd/ReadVariableOp?#lstm_cell_125/MatMul/ReadVariableOp?%lstm_cell_125/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_125/MatMul/ReadVariableOpReadVariableOp,lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_125/MatMulMatMulstrided_slice_2:output:0+lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_125/MatMul_1MatMulzeros:output:0-lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_125/addAddV2lstm_cell_125/MatMul:product:0 lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_125/BiasAddBiasAddlstm_cell_125/add:z:0,lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_125/splitSplit&lstm_cell_125/split/split_dim:output:0lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_125/SigmoidSigmoidlstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_1Sigmoidlstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_125/mulMullstm_cell_125/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_125/ReluRelulstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_1Mullstm_cell_125/Sigmoid:y:0 lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_125/add_1AddV2lstm_cell_125/mul:z:0lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_2Sigmoidlstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_125/Relu_1Relulstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_2Mullstm_cell_125/Sigmoid_2:y:0"lstm_cell_125/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_125_matmul_readvariableop_resource.lstm_cell_125_matmul_1_readvariableop_resource-lstm_cell_125_biasadd_readvariableop_resource*
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
while_body_761171*
condR
while_cond_761170*K
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
NoOpNoOp%^lstm_cell_125/BiasAdd/ReadVariableOp$^lstm_cell_125/MatMul/ReadVariableOp&^lstm_cell_125/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_125/BiasAdd/ReadVariableOp$lstm_cell_125/BiasAdd/ReadVariableOp2J
#lstm_cell_125/MatMul/ReadVariableOp#lstm_cell_125/MatMul/ReadVariableOp2N
%lstm_cell_125/MatMul_1/ReadVariableOp%lstm_cell_125/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_405_layer_call_fn_759726

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
D__inference_lstm_405_layer_call_and_return_conditional_losses_757724s
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
while_cond_761456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_761456___redundant_placeholder04
0while_while_cond_761456___redundant_placeholder14
0while_while_cond_761456___redundant_placeholder24
0while_while_cond_761456___redundant_placeholder3
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_761626

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
J__inference_sequential_135_layer_call_and_return_conditional_losses_758638

inputs"
lstm_405_758611:	?"
lstm_405_758613:	d?
lstm_405_758615:	?"
lstm_406_758618:	d?"
lstm_406_758620:	2?
lstm_406_758622:	?!
lstm_407_758625:2(!
lstm_407_758627:
(
lstm_407_758629:("
dense_135_758632:

dense_135_758634:
identity??!dense_135/StatefulPartitionedCall? lstm_405/StatefulPartitionedCall? lstm_406/StatefulPartitionedCall? lstm_407/StatefulPartitionedCall?
 lstm_405/StatefulPartitionedCallStatefulPartitionedCallinputslstm_405_758611lstm_405_758613lstm_405_758615*
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_758570?
 lstm_406/StatefulPartitionedCallStatefulPartitionedCall)lstm_405/StatefulPartitionedCall:output:0lstm_406_758618lstm_406_758620lstm_406_758622*
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_758405?
 lstm_407/StatefulPartitionedCallStatefulPartitionedCall)lstm_406/StatefulPartitionedCall:output:0lstm_407_758625lstm_407_758627lstm_407_758629*
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758240?
!dense_135/StatefulPartitionedCallStatefulPartitionedCall)lstm_407/StatefulPartitionedCall:output:0dense_135_758632dense_135_758634*
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
E__inference_dense_135_layer_call_and_return_conditional_losses_758042y
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_135/StatefulPartitionedCall!^lstm_405/StatefulPartitionedCall!^lstm_406/StatefulPartitionedCall!^lstm_407/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2D
 lstm_405/StatefulPartitionedCall lstm_405/StatefulPartitionedCall2D
 lstm_406/StatefulPartitionedCall lstm_406/StatefulPartitionedCall2D
 lstm_407/StatefulPartitionedCall lstm_407/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_135_layer_call_and_return_conditional_losses_758042

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
)__inference_lstm_405_layer_call_fn_759737

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
D__inference_lstm_405_layer_call_and_return_conditional_losses_758570s
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

?
/__inference_sequential_135_layer_call_fn_758812

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
J__inference_sequential_135_layer_call_and_return_conditional_losses_758049o
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
while_body_759939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_123_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_123_matmul_readvariableop_resource:	?G
4while_lstm_cell_123_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_123_biasadd_readvariableop_resource:	???*while/lstm_cell_123/BiasAdd/ReadVariableOp?)while/lstm_cell_123/MatMul/ReadVariableOp?+while/lstm_cell_123/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_123/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_123/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_123/addAddV2$while/lstm_cell_123/MatMul:product:0&while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_123/BiasAddBiasAddwhile/lstm_cell_123/add:z:02while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_123/splitSplit,while/lstm_cell_123/split/split_dim:output:0$while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_123/SigmoidSigmoid"while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_1Sigmoid"while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mulMul!while/lstm_cell_123/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_123/ReluRelu"while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_1Mulwhile/lstm_cell_123/Sigmoid:y:0&while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/add_1AddV2while/lstm_cell_123/mul:z:0while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_2Sigmoid"while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_123/Relu_1Reluwhile/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_2Mul!while/lstm_cell_123/Sigmoid_2:y:0(while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_123/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_123/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_123/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_123/BiasAdd/ReadVariableOp*^while/lstm_cell_123/MatMul/ReadVariableOp,^while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_123_biasadd_readvariableop_resource5while_lstm_cell_123_biasadd_readvariableop_resource_0"n
4while_lstm_cell_123_matmul_1_readvariableop_resource6while_lstm_cell_123_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_123_matmul_readvariableop_resource4while_lstm_cell_123_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_123/BiasAdd/ReadVariableOp*while/lstm_cell_123/BiasAdd/ReadVariableOp2V
)while/lstm_cell_123/MatMul/ReadVariableOp)while/lstm_cell_123/MatMul/ReadVariableOp2Z
+while/lstm_cell_123/MatMul_1/ReadVariableOp+while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_760782

inputs?
,lstm_cell_124_matmul_readvariableop_resource:	d?A
.lstm_cell_124_matmul_1_readvariableop_resource:	2?<
-lstm_cell_124_biasadd_readvariableop_resource:	?
identity??$lstm_cell_124/BiasAdd/ReadVariableOp?#lstm_cell_124/MatMul/ReadVariableOp?%lstm_cell_124/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_124/MatMul/ReadVariableOpReadVariableOp,lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_124/MatMulMatMulstrided_slice_2:output:0+lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_124/MatMul_1MatMulzeros:output:0-lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_124/addAddV2lstm_cell_124/MatMul:product:0 lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_124/BiasAddBiasAddlstm_cell_124/add:z:0,lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_124/splitSplit&lstm_cell_124/split/split_dim:output:0lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_124/SigmoidSigmoidlstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_1Sigmoidlstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_124/mulMullstm_cell_124/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_124/ReluRelulstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_1Mullstm_cell_124/Sigmoid:y:0 lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_124/add_1AddV2lstm_cell_124/mul:z:0lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_2Sigmoidlstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_124/Relu_1Relulstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_2Mullstm_cell_124/Sigmoid_2:y:0"lstm_cell_124/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_124_matmul_readvariableop_resource.lstm_cell_124_matmul_1_readvariableop_resource-lstm_cell_124_biasadd_readvariableop_resource*
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
while_body_760698*
condR
while_cond_760697*K
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
NoOpNoOp%^lstm_cell_124/BiasAdd/ReadVariableOp$^lstm_cell_124/MatMul/ReadVariableOp&^lstm_cell_124/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_124/BiasAdd/ReadVariableOp$lstm_cell_124/BiasAdd/ReadVariableOp2J
#lstm_cell_124/MatMul/ReadVariableOp#lstm_cell_124/MatMul/ReadVariableOp2N
%lstm_cell_124/MatMul_1/ReadVariableOp%lstm_cell_124/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?T
?
)sequential_135_lstm_407_while_body_756435L
Hsequential_135_lstm_407_while_sequential_135_lstm_407_while_loop_counterR
Nsequential_135_lstm_407_while_sequential_135_lstm_407_while_maximum_iterations-
)sequential_135_lstm_407_while_placeholder/
+sequential_135_lstm_407_while_placeholder_1/
+sequential_135_lstm_407_while_placeholder_2/
+sequential_135_lstm_407_while_placeholder_3K
Gsequential_135_lstm_407_while_sequential_135_lstm_407_strided_slice_1_0?
?sequential_135_lstm_407_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_407_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_135_lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0:2(`
Nsequential_135_lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0:
([
Msequential_135_lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0:(*
&sequential_135_lstm_407_while_identity,
(sequential_135_lstm_407_while_identity_1,
(sequential_135_lstm_407_while_identity_2,
(sequential_135_lstm_407_while_identity_3,
(sequential_135_lstm_407_while_identity_4,
(sequential_135_lstm_407_while_identity_5I
Esequential_135_lstm_407_while_sequential_135_lstm_407_strided_slice_1?
?sequential_135_lstm_407_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_407_tensorarrayunstack_tensorlistfromtensor\
Jsequential_135_lstm_407_while_lstm_cell_125_matmul_readvariableop_resource:2(^
Lsequential_135_lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource:
(Y
Ksequential_135_lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource:(??Bsequential_135/lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp?Asequential_135/lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp?Csequential_135/lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp?
Osequential_135/lstm_407/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_135/lstm_407/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_135_lstm_407_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_407_tensorarrayunstack_tensorlistfromtensor_0)sequential_135_lstm_407_while_placeholderXsequential_135/lstm_407/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_135/lstm_407/while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOpLsequential_135_lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_135/lstm_407/while/lstm_cell_125/MatMulMatMulHsequential_135/lstm_407/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_135/lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_135/lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOpNsequential_135_lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_135/lstm_407/while/lstm_cell_125/MatMul_1MatMul+sequential_135_lstm_407_while_placeholder_2Ksequential_135/lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_135/lstm_407/while/lstm_cell_125/addAddV2<sequential_135/lstm_407/while/lstm_cell_125/MatMul:product:0>sequential_135/lstm_407/while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_135/lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOpMsequential_135_lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_135/lstm_407/while/lstm_cell_125/BiasAddBiasAdd3sequential_135/lstm_407/while/lstm_cell_125/add:z:0Jsequential_135/lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_135/lstm_407/while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_135/lstm_407/while/lstm_cell_125/splitSplitDsequential_135/lstm_407/while/lstm_cell_125/split/split_dim:output:0<sequential_135/lstm_407/while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_135/lstm_407/while/lstm_cell_125/SigmoidSigmoid:sequential_135/lstm_407/while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_135/lstm_407/while/lstm_cell_125/Sigmoid_1Sigmoid:sequential_135/lstm_407/while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_135/lstm_407/while/lstm_cell_125/mulMul9sequential_135/lstm_407/while/lstm_cell_125/Sigmoid_1:y:0+sequential_135_lstm_407_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_135/lstm_407/while/lstm_cell_125/ReluRelu:sequential_135/lstm_407/while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_135/lstm_407/while/lstm_cell_125/mul_1Mul7sequential_135/lstm_407/while/lstm_cell_125/Sigmoid:y:0>sequential_135/lstm_407/while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_135/lstm_407/while/lstm_cell_125/add_1AddV23sequential_135/lstm_407/while/lstm_cell_125/mul:z:05sequential_135/lstm_407/while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_135/lstm_407/while/lstm_cell_125/Sigmoid_2Sigmoid:sequential_135/lstm_407/while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_135/lstm_407/while/lstm_cell_125/Relu_1Relu5sequential_135/lstm_407/while/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_135/lstm_407/while/lstm_cell_125/mul_2Mul9sequential_135/lstm_407/while/lstm_cell_125/Sigmoid_2:y:0@sequential_135/lstm_407/while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_135/lstm_407/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_135_lstm_407_while_placeholder_1)sequential_135_lstm_407_while_placeholder5sequential_135/lstm_407/while/lstm_cell_125/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_135/lstm_407/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_135/lstm_407/while/addAddV2)sequential_135_lstm_407_while_placeholder,sequential_135/lstm_407/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_135/lstm_407/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_135/lstm_407/while/add_1AddV2Hsequential_135_lstm_407_while_sequential_135_lstm_407_while_loop_counter.sequential_135/lstm_407/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_135/lstm_407/while/IdentityIdentity'sequential_135/lstm_407/while/add_1:z:0#^sequential_135/lstm_407/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_407/while/Identity_1IdentityNsequential_135_lstm_407_while_sequential_135_lstm_407_while_maximum_iterations#^sequential_135/lstm_407/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_407/while/Identity_2Identity%sequential_135/lstm_407/while/add:z:0#^sequential_135/lstm_407/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_407/while/Identity_3IdentityRsequential_135/lstm_407/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_135/lstm_407/while/NoOp*
T0*
_output_shapes
: ?
(sequential_135/lstm_407/while/Identity_4Identity5sequential_135/lstm_407/while/lstm_cell_125/mul_2:z:0#^sequential_135/lstm_407/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_135/lstm_407/while/Identity_5Identity5sequential_135/lstm_407/while/lstm_cell_125/add_1:z:0#^sequential_135/lstm_407/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_135/lstm_407/while/NoOpNoOpC^sequential_135/lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOpB^sequential_135/lstm_407/while/lstm_cell_125/MatMul/ReadVariableOpD^sequential_135/lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_135_lstm_407_while_identity/sequential_135/lstm_407/while/Identity:output:0"]
(sequential_135_lstm_407_while_identity_11sequential_135/lstm_407/while/Identity_1:output:0"]
(sequential_135_lstm_407_while_identity_21sequential_135/lstm_407/while/Identity_2:output:0"]
(sequential_135_lstm_407_while_identity_31sequential_135/lstm_407/while/Identity_3:output:0"]
(sequential_135_lstm_407_while_identity_41sequential_135/lstm_407/while/Identity_4:output:0"]
(sequential_135_lstm_407_while_identity_51sequential_135/lstm_407/while/Identity_5:output:0"?
Ksequential_135_lstm_407_while_lstm_cell_125_biasadd_readvariableop_resourceMsequential_135_lstm_407_while_lstm_cell_125_biasadd_readvariableop_resource_0"?
Lsequential_135_lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resourceNsequential_135_lstm_407_while_lstm_cell_125_matmul_1_readvariableop_resource_0"?
Jsequential_135_lstm_407_while_lstm_cell_125_matmul_readvariableop_resourceLsequential_135_lstm_407_while_lstm_cell_125_matmul_readvariableop_resource_0"?
Esequential_135_lstm_407_while_sequential_135_lstm_407_strided_slice_1Gsequential_135_lstm_407_while_sequential_135_lstm_407_strided_slice_1_0"?
?sequential_135_lstm_407_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_407_tensorarrayunstack_tensorlistfromtensor?sequential_135_lstm_407_while_tensorarrayv2read_tensorlistgetitem_sequential_135_lstm_407_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_135/lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOpBsequential_135/lstm_407/while/lstm_cell_125/BiasAdd/ReadVariableOp2?
Asequential_135/lstm_407/while/lstm_cell_125/MatMul/ReadVariableOpAsequential_135/lstm_407/while/lstm_cell_125/MatMul/ReadVariableOp2?
Csequential_135/lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOpCsequential_135/lstm_407/while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_760555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_124_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_124_matmul_readvariableop_resource:	d?G
4while_lstm_cell_124_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_124_biasadd_readvariableop_resource:	???*while/lstm_cell_124/BiasAdd/ReadVariableOp?)while/lstm_cell_124/MatMul/ReadVariableOp?+while/lstm_cell_124/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_124/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_124/addAddV2$while/lstm_cell_124/MatMul:product:0&while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_124/BiasAddBiasAddwhile/lstm_cell_124/add:z:02while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_124/splitSplit,while/lstm_cell_124/split/split_dim:output:0$while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_124/SigmoidSigmoid"while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_1Sigmoid"while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mulMul!while/lstm_cell_124/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_124/ReluRelu"while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_1Mulwhile/lstm_cell_124/Sigmoid:y:0&while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/add_1AddV2while/lstm_cell_124/mul:z:0while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_2Sigmoid"while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_124/Relu_1Reluwhile/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_2Mul!while/lstm_cell_124/Sigmoid_2:y:0(while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_124/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_124/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_124/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_124/BiasAdd/ReadVariableOp*^while/lstm_cell_124/MatMul/ReadVariableOp,^while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_124_biasadd_readvariableop_resource5while_lstm_cell_124_biasadd_readvariableop_resource_0"n
4while_lstm_cell_124_matmul_1_readvariableop_resource6while_lstm_cell_124_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_124_matmul_readvariableop_resource4while_lstm_cell_124_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_124/BiasAdd/ReadVariableOp*while/lstm_cell_124/BiasAdd/ReadVariableOp2V
)while/lstm_cell_124/MatMul/ReadVariableOp)while/lstm_cell_124/MatMul/ReadVariableOp2Z
+while/lstm_cell_124/MatMul_1/ReadVariableOp+while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_405_layer_call_fn_759715
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_756866|
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
while_cond_760840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_760840___redundant_placeholder04
0while_while_cond_760840___redundant_placeholder14
0while_while_cond_760840___redundant_placeholder24
0while_while_cond_760840___redundant_placeholder3
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_760639
inputs_0?
,lstm_cell_124_matmul_readvariableop_resource:	d?A
.lstm_cell_124_matmul_1_readvariableop_resource:	2?<
-lstm_cell_124_biasadd_readvariableop_resource:	?
identity??$lstm_cell_124/BiasAdd/ReadVariableOp?#lstm_cell_124/MatMul/ReadVariableOp?%lstm_cell_124/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_124/MatMul/ReadVariableOpReadVariableOp,lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_124/MatMulMatMulstrided_slice_2:output:0+lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_124/MatMul_1MatMulzeros:output:0-lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_124/addAddV2lstm_cell_124/MatMul:product:0 lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_124/BiasAddBiasAddlstm_cell_124/add:z:0,lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_124/splitSplit&lstm_cell_124/split/split_dim:output:0lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_124/SigmoidSigmoidlstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_1Sigmoidlstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_124/mulMullstm_cell_124/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_124/ReluRelulstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_1Mullstm_cell_124/Sigmoid:y:0 lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_124/add_1AddV2lstm_cell_124/mul:z:0lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_2Sigmoidlstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_124/Relu_1Relulstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_2Mullstm_cell_124/Sigmoid_2:y:0"lstm_cell_124/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_124_matmul_readvariableop_resource.lstm_cell_124_matmul_1_readvariableop_resource-lstm_cell_124_biasadd_readvariableop_resource*
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
while_body_760555*
condR
while_cond_760554*K
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
NoOpNoOp%^lstm_cell_124/BiasAdd/ReadVariableOp$^lstm_cell_124/MatMul/ReadVariableOp&^lstm_cell_124/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_124/BiasAdd/ReadVariableOp$lstm_cell_124/BiasAdd/ReadVariableOp2J
#lstm_cell_124/MatMul/ReadVariableOp#lstm_cell_124/MatMul/ReadVariableOp2N
%lstm_cell_124/MatMul_1/ReadVariableOp%lstm_cell_124/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
D__inference_lstm_407_layer_call_and_return_conditional_losses_761112
inputs_0>
,lstm_cell_125_matmul_readvariableop_resource:2(@
.lstm_cell_125_matmul_1_readvariableop_resource:
(;
-lstm_cell_125_biasadd_readvariableop_resource:(
identity??$lstm_cell_125/BiasAdd/ReadVariableOp?#lstm_cell_125/MatMul/ReadVariableOp?%lstm_cell_125/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_125/MatMul/ReadVariableOpReadVariableOp,lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_125/MatMulMatMulstrided_slice_2:output:0+lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_125/MatMul_1MatMulzeros:output:0-lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_125/addAddV2lstm_cell_125/MatMul:product:0 lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_125/BiasAddBiasAddlstm_cell_125/add:z:0,lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_125/splitSplit&lstm_cell_125/split/split_dim:output:0lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_125/SigmoidSigmoidlstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_1Sigmoidlstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_125/mulMullstm_cell_125/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_125/ReluRelulstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_1Mullstm_cell_125/Sigmoid:y:0 lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_125/add_1AddV2lstm_cell_125/mul:z:0lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_2Sigmoidlstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_125/Relu_1Relulstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_2Mullstm_cell_125/Sigmoid_2:y:0"lstm_cell_125/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_125_matmul_readvariableop_resource.lstm_cell_125_matmul_1_readvariableop_resource-lstm_cell_125_biasadd_readvariableop_resource*
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
while_body_761028*
condR
while_cond_761027*K
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
NoOpNoOp%^lstm_cell_125/BiasAdd/ReadVariableOp$^lstm_cell_125/MatMul/ReadVariableOp&^lstm_cell_125/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_125/BiasAdd/ReadVariableOp$lstm_cell_125/BiasAdd/ReadVariableOp2J
#lstm_cell_125/MatMul/ReadVariableOp#lstm_cell_125/MatMul/ReadVariableOp2N
%lstm_cell_125/MatMul_1/ReadVariableOp%lstm_cell_125/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_124_layer_call_fn_761675

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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_756942o
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_757375

inputs&
lstm_cell_125_757293:2(&
lstm_cell_125_757295:
("
lstm_cell_125_757297:(
identity??%lstm_cell_125/StatefulPartitionedCall?while;
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
%lstm_cell_125/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_125_757293lstm_cell_125_757295lstm_cell_125_757297*
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757292n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_125_757293lstm_cell_125_757295lstm_cell_125_757297*
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
while_body_757306*
condR
while_cond_757305*K
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
NoOpNoOp&^lstm_cell_125/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_125/StatefulPartitionedCall%lstm_cell_125/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_758485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_758485___redundant_placeholder04
0while_while_cond_758485___redundant_placeholder14
0while_while_cond_758485___redundant_placeholder24
0while_while_cond_758485___redundant_placeholder3
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
while_cond_756605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_756605___redundant_placeholder04
0while_while_cond_756605___redundant_placeholder14
0while_while_cond_756605___redundant_placeholder24
0while_while_cond_756605___redundant_placeholder3
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
?
)sequential_135_lstm_407_while_cond_756434L
Hsequential_135_lstm_407_while_sequential_135_lstm_407_while_loop_counterR
Nsequential_135_lstm_407_while_sequential_135_lstm_407_while_maximum_iterations-
)sequential_135_lstm_407_while_placeholder/
+sequential_135_lstm_407_while_placeholder_1/
+sequential_135_lstm_407_while_placeholder_2/
+sequential_135_lstm_407_while_placeholder_3N
Jsequential_135_lstm_407_while_less_sequential_135_lstm_407_strided_slice_1d
`sequential_135_lstm_407_while_sequential_135_lstm_407_while_cond_756434___redundant_placeholder0d
`sequential_135_lstm_407_while_sequential_135_lstm_407_while_cond_756434___redundant_placeholder1d
`sequential_135_lstm_407_while_sequential_135_lstm_407_while_cond_756434___redundant_placeholder2d
`sequential_135_lstm_407_while_sequential_135_lstm_407_while_cond_756434___redundant_placeholder3*
&sequential_135_lstm_407_while_identity
?
"sequential_135/lstm_407/while/LessLess)sequential_135_lstm_407_while_placeholderJsequential_135_lstm_407_while_less_sequential_135_lstm_407_strided_slice_1*
T0*
_output_shapes
: {
&sequential_135/lstm_407/while/IdentityIdentity&sequential_135/lstm_407/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_135_lstm_407_while_identity/sequential_135/lstm_407/while/Identity:output:0*(
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_761658

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
?C
?

lstm_406_while_body_759037.
*lstm_406_while_lstm_406_while_loop_counter4
0lstm_406_while_lstm_406_while_maximum_iterations
lstm_406_while_placeholder 
lstm_406_while_placeholder_1 
lstm_406_while_placeholder_2 
lstm_406_while_placeholder_3-
)lstm_406_while_lstm_406_strided_slice_1_0i
elstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0:	d?R
?lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?M
>lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
lstm_406_while_identity
lstm_406_while_identity_1
lstm_406_while_identity_2
lstm_406_while_identity_3
lstm_406_while_identity_4
lstm_406_while_identity_5+
'lstm_406_while_lstm_406_strided_slice_1g
clstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensorN
;lstm_406_while_lstm_cell_124_matmul_readvariableop_resource:	d?P
=lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource:	2?K
<lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource:	???3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp?2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp?4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp?
@lstm_406/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_406/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensor_0lstm_406_while_placeholderIlstm_406/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp=lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_406/while/lstm_cell_124/MatMulMatMul9lstm_406/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp?lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_406/while/lstm_cell_124/MatMul_1MatMullstm_406_while_placeholder_2<lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_406/while/lstm_cell_124/addAddV2-lstm_406/while/lstm_cell_124/MatMul:product:0/lstm_406/while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp>lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_406/while/lstm_cell_124/BiasAddBiasAdd$lstm_406/while/lstm_cell_124/add:z:0;lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_406/while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_406/while/lstm_cell_124/splitSplit5lstm_406/while/lstm_cell_124/split/split_dim:output:0-lstm_406/while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_406/while/lstm_cell_124/SigmoidSigmoid+lstm_406/while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_406/while/lstm_cell_124/Sigmoid_1Sigmoid+lstm_406/while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_406/while/lstm_cell_124/mulMul*lstm_406/while/lstm_cell_124/Sigmoid_1:y:0lstm_406_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_406/while/lstm_cell_124/ReluRelu+lstm_406/while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_406/while/lstm_cell_124/mul_1Mul(lstm_406/while/lstm_cell_124/Sigmoid:y:0/lstm_406/while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_406/while/lstm_cell_124/add_1AddV2$lstm_406/while/lstm_cell_124/mul:z:0&lstm_406/while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_406/while/lstm_cell_124/Sigmoid_2Sigmoid+lstm_406/while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_406/while/lstm_cell_124/Relu_1Relu&lstm_406/while/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_406/while/lstm_cell_124/mul_2Mul*lstm_406/while/lstm_cell_124/Sigmoid_2:y:01lstm_406/while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_406/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_406_while_placeholder_1lstm_406_while_placeholder&lstm_406/while/lstm_cell_124/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_406/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_406/while/addAddV2lstm_406_while_placeholderlstm_406/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_406/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_406/while/add_1AddV2*lstm_406_while_lstm_406_while_loop_counterlstm_406/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_406/while/IdentityIdentitylstm_406/while/add_1:z:0^lstm_406/while/NoOp*
T0*
_output_shapes
: ?
lstm_406/while/Identity_1Identity0lstm_406_while_lstm_406_while_maximum_iterations^lstm_406/while/NoOp*
T0*
_output_shapes
: t
lstm_406/while/Identity_2Identitylstm_406/while/add:z:0^lstm_406/while/NoOp*
T0*
_output_shapes
: ?
lstm_406/while/Identity_3IdentityClstm_406/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_406/while/NoOp*
T0*
_output_shapes
: ?
lstm_406/while/Identity_4Identity&lstm_406/while/lstm_cell_124/mul_2:z:0^lstm_406/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_406/while/Identity_5Identity&lstm_406/while/lstm_cell_124/add_1:z:0^lstm_406/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_406/while/NoOpNoOp4^lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp3^lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp5^lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_406_while_identity lstm_406/while/Identity:output:0"?
lstm_406_while_identity_1"lstm_406/while/Identity_1:output:0"?
lstm_406_while_identity_2"lstm_406/while/Identity_2:output:0"?
lstm_406_while_identity_3"lstm_406/while/Identity_3:output:0"?
lstm_406_while_identity_4"lstm_406/while/Identity_4:output:0"?
lstm_406_while_identity_5"lstm_406/while/Identity_5:output:0"T
'lstm_406_while_lstm_406_strided_slice_1)lstm_406_while_lstm_406_strided_slice_1_0"~
<lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource>lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0"?
=lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource?lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0"|
;lstm_406_while_lstm_cell_124_matmul_readvariableop_resource=lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0"?
clstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensorelstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp2h
2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp2l
4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757438

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
.__inference_lstm_cell_125_layer_call_fn_761773

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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757292o
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
while_cond_757639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_757639___redundant_placeholder04
0while_while_cond_757639___redundant_placeholder14
0while_while_cond_757639___redundant_placeholder24
0while_while_cond_757639___redundant_placeholder3
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
while_body_758486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_123_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_123_matmul_readvariableop_resource:	?G
4while_lstm_cell_123_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_123_biasadd_readvariableop_resource:	???*while/lstm_cell_123/BiasAdd/ReadVariableOp?)while/lstm_cell_123/MatMul/ReadVariableOp?+while/lstm_cell_123/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_123/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_123/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_123/addAddV2$while/lstm_cell_123/MatMul:product:0&while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_123/BiasAddBiasAddwhile/lstm_cell_123/add:z:02while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_123/splitSplit,while/lstm_cell_123/split/split_dim:output:0$while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_123/SigmoidSigmoid"while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_1Sigmoid"while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mulMul!while/lstm_cell_123/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_123/ReluRelu"while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_1Mulwhile/lstm_cell_123/Sigmoid:y:0&while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/add_1AddV2while/lstm_cell_123/mul:z:0while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_2Sigmoid"while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_123/Relu_1Reluwhile/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_2Mul!while/lstm_cell_123/Sigmoid_2:y:0(while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_123/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_123/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_123/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_123/BiasAdd/ReadVariableOp*^while/lstm_cell_123/MatMul/ReadVariableOp,^while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_123_biasadd_readvariableop_resource5while_lstm_cell_123_biasadd_readvariableop_resource_0"n
4while_lstm_cell_123_matmul_1_readvariableop_resource6while_lstm_cell_123_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_123_matmul_readvariableop_resource4while_lstm_cell_123_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_123/BiasAdd/ReadVariableOp*while/lstm_cell_123/BiasAdd/ReadVariableOp2V
)while/lstm_cell_123/MatMul/ReadVariableOp)while/lstm_cell_123/MatMul/ReadVariableOp2Z
+while/lstm_cell_123/MatMul_1/ReadVariableOp+while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_756956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_124_756980_0:	d?/
while_lstm_cell_124_756982_0:	2?+
while_lstm_cell_124_756984_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_124_756980:	d?-
while_lstm_cell_124_756982:	2?)
while_lstm_cell_124_756984:	???+while/lstm_cell_124/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_124/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_124_756980_0while_lstm_cell_124_756982_0while_lstm_cell_124_756984_0*
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_756942?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_124/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_124/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_124/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_124/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_124_756980while_lstm_cell_124_756980_0":
while_lstm_cell_124_756982while_lstm_cell_124_756982_0":
while_lstm_cell_124_756984while_lstm_cell_124_756984_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_124/StatefulPartitionedCall+while/lstm_cell_124/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_761028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_125_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_125_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_125_matmul_readvariableop_resource:2(F
4while_lstm_cell_125_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_125_biasadd_readvariableop_resource:(??*while/lstm_cell_125/BiasAdd/ReadVariableOp?)while/lstm_cell_125/MatMul/ReadVariableOp?+while/lstm_cell_125/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_125/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_125/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_125/addAddV2$while/lstm_cell_125/MatMul:product:0&while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_125/BiasAddBiasAddwhile/lstm_cell_125/add:z:02while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_125/splitSplit,while/lstm_cell_125/split/split_dim:output:0$while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_125/SigmoidSigmoid"while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_1Sigmoid"while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mulMul!while/lstm_cell_125/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_125/ReluRelu"while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_1Mulwhile/lstm_cell_125/Sigmoid:y:0&while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/add_1AddV2while/lstm_cell_125/mul:z:0while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_2Sigmoid"while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_125/Relu_1Reluwhile/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_2Mul!while/lstm_cell_125/Sigmoid_2:y:0(while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_125/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_125/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_125/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_125/BiasAdd/ReadVariableOp*^while/lstm_cell_125/MatMul/ReadVariableOp,^while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_125_biasadd_readvariableop_resource5while_lstm_cell_125_biasadd_readvariableop_resource_0"n
4while_lstm_cell_125_matmul_1_readvariableop_resource6while_lstm_cell_125_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_125_matmul_readvariableop_resource4while_lstm_cell_125_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_125/BiasAdd/ReadVariableOp*while/lstm_cell_125/BiasAdd/ReadVariableOp2V
)while/lstm_cell_125/MatMul/ReadVariableOp)while/lstm_cell_125/MatMul/ReadVariableOp2Z
+while/lstm_cell_125/MatMul_1/ReadVariableOp+while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_405_while_cond_758897.
*lstm_405_while_lstm_405_while_loop_counter4
0lstm_405_while_lstm_405_while_maximum_iterations
lstm_405_while_placeholder 
lstm_405_while_placeholder_1 
lstm_405_while_placeholder_2 
lstm_405_while_placeholder_30
,lstm_405_while_less_lstm_405_strided_slice_1F
Blstm_405_while_lstm_405_while_cond_758897___redundant_placeholder0F
Blstm_405_while_lstm_405_while_cond_758897___redundant_placeholder1F
Blstm_405_while_lstm_405_while_cond_758897___redundant_placeholder2F
Blstm_405_while_lstm_405_while_cond_758897___redundant_placeholder3
lstm_405_while_identity
?
lstm_405/while/LessLesslstm_405_while_placeholder,lstm_405_while_less_lstm_405_strided_slice_1*
T0*
_output_shapes
: ]
lstm_405/while/IdentityIdentitylstm_405/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_405_while_identity lstm_405/while/Identity:output:0*(
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_759880
inputs_0?
,lstm_cell_123_matmul_readvariableop_resource:	?A
.lstm_cell_123_matmul_1_readvariableop_resource:	d?<
-lstm_cell_123_biasadd_readvariableop_resource:	?
identity??$lstm_cell_123/BiasAdd/ReadVariableOp?#lstm_cell_123/MatMul/ReadVariableOp?%lstm_cell_123/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_123/MatMul/ReadVariableOpReadVariableOp,lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_123/MatMulMatMulstrided_slice_2:output:0+lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_123/MatMul_1MatMulzeros:output:0-lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_123/addAddV2lstm_cell_123/MatMul:product:0 lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_123/BiasAddBiasAddlstm_cell_123/add:z:0,lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_123/splitSplit&lstm_cell_123/split/split_dim:output:0lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_123/SigmoidSigmoidlstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_1Sigmoidlstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_123/mulMullstm_cell_123/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_123/ReluRelulstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_1Mullstm_cell_123/Sigmoid:y:0 lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_123/add_1AddV2lstm_cell_123/mul:z:0lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_2Sigmoidlstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_123/Relu_1Relulstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_2Mullstm_cell_123/Sigmoid_2:y:0"lstm_cell_123/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_123_matmul_readvariableop_resource.lstm_cell_123_matmul_1_readvariableop_resource-lstm_cell_123_biasadd_readvariableop_resource*
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
while_body_759796*
condR
while_cond_759795*K
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
NoOpNoOp%^lstm_cell_123/BiasAdd/ReadVariableOp$^lstm_cell_123/MatMul/ReadVariableOp&^lstm_cell_123/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_123/BiasAdd/ReadVariableOp$lstm_cell_123/BiasAdd/ReadVariableOp2J
#lstm_cell_123/MatMul/ReadVariableOp#lstm_cell_123/MatMul/ReadVariableOp2N
%lstm_cell_123/MatMul_1/ReadVariableOp%lstm_cell_123/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_125_layer_call_fn_761790

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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757438o
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
)__inference_lstm_406_layer_call_fn_760320
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757025|
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
??
?
J__inference_sequential_135_layer_call_and_return_conditional_losses_759266

inputsH
5lstm_405_lstm_cell_123_matmul_readvariableop_resource:	?J
7lstm_405_lstm_cell_123_matmul_1_readvariableop_resource:	d?E
6lstm_405_lstm_cell_123_biasadd_readvariableop_resource:	?H
5lstm_406_lstm_cell_124_matmul_readvariableop_resource:	d?J
7lstm_406_lstm_cell_124_matmul_1_readvariableop_resource:	2?E
6lstm_406_lstm_cell_124_biasadd_readvariableop_resource:	?G
5lstm_407_lstm_cell_125_matmul_readvariableop_resource:2(I
7lstm_407_lstm_cell_125_matmul_1_readvariableop_resource:
(D
6lstm_407_lstm_cell_125_biasadd_readvariableop_resource:(:
(dense_135_matmul_readvariableop_resource:
7
)dense_135_biasadd_readvariableop_resource:
identity?? dense_135/BiasAdd/ReadVariableOp?dense_135/MatMul/ReadVariableOp?-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp?,lstm_405/lstm_cell_123/MatMul/ReadVariableOp?.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp?lstm_405/while?-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp?,lstm_406/lstm_cell_124/MatMul/ReadVariableOp?.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp?lstm_406/while?-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp?,lstm_407/lstm_cell_125/MatMul/ReadVariableOp?.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp?lstm_407/whileD
lstm_405/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_405/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_405/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_405/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_sliceStridedSlicelstm_405/Shape:output:0%lstm_405/strided_slice/stack:output:0'lstm_405/strided_slice/stack_1:output:0'lstm_405/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_405/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_405/zeros/packedPacklstm_405/strided_slice:output:0 lstm_405/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_405/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_405/zerosFilllstm_405/zeros/packed:output:0lstm_405/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_405/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_405/zeros_1/packedPacklstm_405/strided_slice:output:0"lstm_405/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_405/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_405/zeros_1Fill lstm_405/zeros_1/packed:output:0lstm_405/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_405/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_405/transpose	Transposeinputs lstm_405/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_405/Shape_1Shapelstm_405/transpose:y:0*
T0*
_output_shapes
:h
lstm_405/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_405/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_405/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_slice_1StridedSlicelstm_405/Shape_1:output:0'lstm_405/strided_slice_1/stack:output:0)lstm_405/strided_slice_1/stack_1:output:0)lstm_405/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_405/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_405/TensorArrayV2TensorListReserve-lstm_405/TensorArrayV2/element_shape:output:0!lstm_405/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_405/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_405/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_405/transpose:y:0Glstm_405/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_405/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_405/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_405/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_slice_2StridedSlicelstm_405/transpose:y:0'lstm_405/strided_slice_2/stack:output:0)lstm_405/strided_slice_2/stack_1:output:0)lstm_405/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_405/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp5lstm_405_lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_405/lstm_cell_123/MatMulMatMul!lstm_405/strided_slice_2:output:04lstm_405/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp7lstm_405_lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_405/lstm_cell_123/MatMul_1MatMullstm_405/zeros:output:06lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_405/lstm_cell_123/addAddV2'lstm_405/lstm_cell_123/MatMul:product:0)lstm_405/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp6lstm_405_lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_405/lstm_cell_123/BiasAddBiasAddlstm_405/lstm_cell_123/add:z:05lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_405/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_405/lstm_cell_123/splitSplit/lstm_405/lstm_cell_123/split/split_dim:output:0'lstm_405/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_405/lstm_cell_123/SigmoidSigmoid%lstm_405/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_405/lstm_cell_123/Sigmoid_1Sigmoid%lstm_405/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/mulMul$lstm_405/lstm_cell_123/Sigmoid_1:y:0lstm_405/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_405/lstm_cell_123/ReluRelu%lstm_405/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/mul_1Mul"lstm_405/lstm_cell_123/Sigmoid:y:0)lstm_405/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/add_1AddV2lstm_405/lstm_cell_123/mul:z:0 lstm_405/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_405/lstm_cell_123/Sigmoid_2Sigmoid%lstm_405/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_405/lstm_cell_123/Relu_1Relu lstm_405/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/mul_2Mul$lstm_405/lstm_cell_123/Sigmoid_2:y:0+lstm_405/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_405/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_405/TensorArrayV2_1TensorListReserve/lstm_405/TensorArrayV2_1/element_shape:output:0!lstm_405/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_405/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_405/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_405/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_405/whileWhile$lstm_405/while/loop_counter:output:0*lstm_405/while/maximum_iterations:output:0lstm_405/time:output:0!lstm_405/TensorArrayV2_1:handle:0lstm_405/zeros:output:0lstm_405/zeros_1:output:0!lstm_405/strided_slice_1:output:0@lstm_405/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_405_lstm_cell_123_matmul_readvariableop_resource7lstm_405_lstm_cell_123_matmul_1_readvariableop_resource6lstm_405_lstm_cell_123_biasadd_readvariableop_resource*
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
lstm_405_while_body_758898*&
condR
lstm_405_while_cond_758897*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_405/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_405/TensorArrayV2Stack/TensorListStackTensorListStacklstm_405/while:output:3Blstm_405/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_405/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_405/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_405/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_slice_3StridedSlice4lstm_405/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_405/strided_slice_3/stack:output:0)lstm_405/strided_slice_3/stack_1:output:0)lstm_405/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_405/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_405/transpose_1	Transpose4lstm_405/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_405/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_405/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_406/ShapeShapelstm_405/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_406/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_406/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_406/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_sliceStridedSlicelstm_406/Shape:output:0%lstm_406/strided_slice/stack:output:0'lstm_406/strided_slice/stack_1:output:0'lstm_406/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_406/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_406/zeros/packedPacklstm_406/strided_slice:output:0 lstm_406/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_406/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_406/zerosFilllstm_406/zeros/packed:output:0lstm_406/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_406/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_406/zeros_1/packedPacklstm_406/strided_slice:output:0"lstm_406/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_406/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_406/zeros_1Fill lstm_406/zeros_1/packed:output:0lstm_406/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_406/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_406/transpose	Transposelstm_405/transpose_1:y:0 lstm_406/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_406/Shape_1Shapelstm_406/transpose:y:0*
T0*
_output_shapes
:h
lstm_406/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_406/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_406/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_slice_1StridedSlicelstm_406/Shape_1:output:0'lstm_406/strided_slice_1/stack:output:0)lstm_406/strided_slice_1/stack_1:output:0)lstm_406/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_406/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_406/TensorArrayV2TensorListReserve-lstm_406/TensorArrayV2/element_shape:output:0!lstm_406/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_406/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_406/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_406/transpose:y:0Glstm_406/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_406/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_406/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_406/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_slice_2StridedSlicelstm_406/transpose:y:0'lstm_406/strided_slice_2/stack:output:0)lstm_406/strided_slice_2/stack_1:output:0)lstm_406/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_406/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp5lstm_406_lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_406/lstm_cell_124/MatMulMatMul!lstm_406/strided_slice_2:output:04lstm_406/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp7lstm_406_lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_406/lstm_cell_124/MatMul_1MatMullstm_406/zeros:output:06lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_406/lstm_cell_124/addAddV2'lstm_406/lstm_cell_124/MatMul:product:0)lstm_406/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp6lstm_406_lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_406/lstm_cell_124/BiasAddBiasAddlstm_406/lstm_cell_124/add:z:05lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_406/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_406/lstm_cell_124/splitSplit/lstm_406/lstm_cell_124/split/split_dim:output:0'lstm_406/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_406/lstm_cell_124/SigmoidSigmoid%lstm_406/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_406/lstm_cell_124/Sigmoid_1Sigmoid%lstm_406/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/mulMul$lstm_406/lstm_cell_124/Sigmoid_1:y:0lstm_406/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_406/lstm_cell_124/ReluRelu%lstm_406/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/mul_1Mul"lstm_406/lstm_cell_124/Sigmoid:y:0)lstm_406/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/add_1AddV2lstm_406/lstm_cell_124/mul:z:0 lstm_406/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_406/lstm_cell_124/Sigmoid_2Sigmoid%lstm_406/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_406/lstm_cell_124/Relu_1Relu lstm_406/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/mul_2Mul$lstm_406/lstm_cell_124/Sigmoid_2:y:0+lstm_406/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_406/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_406/TensorArrayV2_1TensorListReserve/lstm_406/TensorArrayV2_1/element_shape:output:0!lstm_406/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_406/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_406/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_406/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_406/whileWhile$lstm_406/while/loop_counter:output:0*lstm_406/while/maximum_iterations:output:0lstm_406/time:output:0!lstm_406/TensorArrayV2_1:handle:0lstm_406/zeros:output:0lstm_406/zeros_1:output:0!lstm_406/strided_slice_1:output:0@lstm_406/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_406_lstm_cell_124_matmul_readvariableop_resource7lstm_406_lstm_cell_124_matmul_1_readvariableop_resource6lstm_406_lstm_cell_124_biasadd_readvariableop_resource*
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
lstm_406_while_body_759037*&
condR
lstm_406_while_cond_759036*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_406/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_406/TensorArrayV2Stack/TensorListStackTensorListStacklstm_406/while:output:3Blstm_406/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_406/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_406/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_406/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_slice_3StridedSlice4lstm_406/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_406/strided_slice_3/stack:output:0)lstm_406/strided_slice_3/stack_1:output:0)lstm_406/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_406/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_406/transpose_1	Transpose4lstm_406/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_406/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_406/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_407/ShapeShapelstm_406/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_407/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_407/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_407/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_sliceStridedSlicelstm_407/Shape:output:0%lstm_407/strided_slice/stack:output:0'lstm_407/strided_slice/stack_1:output:0'lstm_407/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_407/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_407/zeros/packedPacklstm_407/strided_slice:output:0 lstm_407/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_407/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_407/zerosFilllstm_407/zeros/packed:output:0lstm_407/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_407/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_407/zeros_1/packedPacklstm_407/strided_slice:output:0"lstm_407/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_407/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_407/zeros_1Fill lstm_407/zeros_1/packed:output:0lstm_407/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_407/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_407/transpose	Transposelstm_406/transpose_1:y:0 lstm_407/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_407/Shape_1Shapelstm_407/transpose:y:0*
T0*
_output_shapes
:h
lstm_407/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_407/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_407/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_slice_1StridedSlicelstm_407/Shape_1:output:0'lstm_407/strided_slice_1/stack:output:0)lstm_407/strided_slice_1/stack_1:output:0)lstm_407/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_407/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_407/TensorArrayV2TensorListReserve-lstm_407/TensorArrayV2/element_shape:output:0!lstm_407/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_407/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_407/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_407/transpose:y:0Glstm_407/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_407/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_407/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_407/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_slice_2StridedSlicelstm_407/transpose:y:0'lstm_407/strided_slice_2/stack:output:0)lstm_407/strided_slice_2/stack_1:output:0)lstm_407/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_407/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp5lstm_407_lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_407/lstm_cell_125/MatMulMatMul!lstm_407/strided_slice_2:output:04lstm_407/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp7lstm_407_lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_407/lstm_cell_125/MatMul_1MatMullstm_407/zeros:output:06lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_407/lstm_cell_125/addAddV2'lstm_407/lstm_cell_125/MatMul:product:0)lstm_407/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp6lstm_407_lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_407/lstm_cell_125/BiasAddBiasAddlstm_407/lstm_cell_125/add:z:05lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_407/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_407/lstm_cell_125/splitSplit/lstm_407/lstm_cell_125/split/split_dim:output:0'lstm_407/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_407/lstm_cell_125/SigmoidSigmoid%lstm_407/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_407/lstm_cell_125/Sigmoid_1Sigmoid%lstm_407/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/mulMul$lstm_407/lstm_cell_125/Sigmoid_1:y:0lstm_407/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_407/lstm_cell_125/ReluRelu%lstm_407/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/mul_1Mul"lstm_407/lstm_cell_125/Sigmoid:y:0)lstm_407/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/add_1AddV2lstm_407/lstm_cell_125/mul:z:0 lstm_407/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_407/lstm_cell_125/Sigmoid_2Sigmoid%lstm_407/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_407/lstm_cell_125/Relu_1Relu lstm_407/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/mul_2Mul$lstm_407/lstm_cell_125/Sigmoid_2:y:0+lstm_407/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_407/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_407/TensorArrayV2_1TensorListReserve/lstm_407/TensorArrayV2_1/element_shape:output:0!lstm_407/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_407/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_407/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_407/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_407/whileWhile$lstm_407/while/loop_counter:output:0*lstm_407/while/maximum_iterations:output:0lstm_407/time:output:0!lstm_407/TensorArrayV2_1:handle:0lstm_407/zeros:output:0lstm_407/zeros_1:output:0!lstm_407/strided_slice_1:output:0@lstm_407/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_407_lstm_cell_125_matmul_readvariableop_resource7lstm_407_lstm_cell_125_matmul_1_readvariableop_resource6lstm_407_lstm_cell_125_biasadd_readvariableop_resource*
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
lstm_407_while_body_759176*&
condR
lstm_407_while_cond_759175*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_407/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_407/TensorArrayV2Stack/TensorListStackTensorListStacklstm_407/while:output:3Blstm_407/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_407/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_407/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_407/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_slice_3StridedSlice4lstm_407/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_407/strided_slice_3/stack:output:0)lstm_407/strided_slice_3/stack_1:output:0)lstm_407/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_407/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_407/transpose_1	Transpose4lstm_407/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_407/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_407/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_135/MatMulMatMul!lstm_407/strided_slice_3:output:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_135/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp.^lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp-^lstm_405/lstm_cell_123/MatMul/ReadVariableOp/^lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp^lstm_405/while.^lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp-^lstm_406/lstm_cell_124/MatMul/ReadVariableOp/^lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp^lstm_406/while.^lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp-^lstm_407/lstm_cell_125/MatMul/ReadVariableOp/^lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp^lstm_407/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2^
-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp2\
,lstm_405/lstm_cell_123/MatMul/ReadVariableOp,lstm_405/lstm_cell_123/MatMul/ReadVariableOp2`
.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp2 
lstm_405/whilelstm_405/while2^
-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp2\
,lstm_406/lstm_cell_124/MatMul/ReadVariableOp,lstm_406/lstm_cell_124/MatMul/ReadVariableOp2`
.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp2 
lstm_406/whilelstm_406/while2^
-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp2\
,lstm_407/lstm_cell_125/MatMul/ReadVariableOp,lstm_407/lstm_cell_125/MatMul/ReadVariableOp2`
.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp2 
lstm_407/whilelstm_407/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_405_layer_call_and_return_conditional_losses_756675

inputs'
lstm_cell_123_756593:	?'
lstm_cell_123_756595:	d?#
lstm_cell_123_756597:	?
identity??%lstm_cell_123/StatefulPartitionedCall?while;
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
%lstm_cell_123/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_123_756593lstm_cell_123_756595lstm_cell_123_756597*
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756592n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_123_756593lstm_cell_123_756595lstm_cell_123_756597*
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
while_body_756606*
condR
while_cond_756605*K
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
NoOpNoOp&^lstm_cell_123/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_123/StatefulPartitionedCall%lstm_cell_123/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_760225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_123_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_123_matmul_readvariableop_resource:	?G
4while_lstm_cell_123_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_123_biasadd_readvariableop_resource:	???*while/lstm_cell_123/BiasAdd/ReadVariableOp?)while/lstm_cell_123/MatMul/ReadVariableOp?+while/lstm_cell_123/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_123/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_123/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_123/addAddV2$while/lstm_cell_123/MatMul:product:0&while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_123/BiasAddBiasAddwhile/lstm_cell_123/add:z:02while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_123/splitSplit,while/lstm_cell_123/split/split_dim:output:0$while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_123/SigmoidSigmoid"while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_1Sigmoid"while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mulMul!while/lstm_cell_123/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_123/ReluRelu"while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_1Mulwhile/lstm_cell_123/Sigmoid:y:0&while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/add_1AddV2while/lstm_cell_123/mul:z:0while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_2Sigmoid"while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_123/Relu_1Reluwhile/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_2Mul!while/lstm_cell_123/Sigmoid_2:y:0(while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_123/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_123/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_123/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_123/BiasAdd/ReadVariableOp*^while/lstm_cell_123/MatMul/ReadVariableOp,^while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_123_biasadd_readvariableop_resource5while_lstm_cell_123_biasadd_readvariableop_resource_0"n
4while_lstm_cell_123_matmul_1_readvariableop_resource6while_lstm_cell_123_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_123_matmul_readvariableop_resource4while_lstm_cell_123_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_123/BiasAdd/ReadVariableOp*while/lstm_cell_123/BiasAdd/ReadVariableOp2V
)while/lstm_cell_123/MatMul/ReadVariableOp)while/lstm_cell_123/MatMul/ReadVariableOp2Z
+while/lstm_cell_123/MatMul_1/ReadVariableOp+while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_760023
inputs_0?
,lstm_cell_123_matmul_readvariableop_resource:	?A
.lstm_cell_123_matmul_1_readvariableop_resource:	d?<
-lstm_cell_123_biasadd_readvariableop_resource:	?
identity??$lstm_cell_123/BiasAdd/ReadVariableOp?#lstm_cell_123/MatMul/ReadVariableOp?%lstm_cell_123/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_123/MatMul/ReadVariableOpReadVariableOp,lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_123/MatMulMatMulstrided_slice_2:output:0+lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_123/MatMul_1MatMulzeros:output:0-lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_123/addAddV2lstm_cell_123/MatMul:product:0 lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_123/BiasAddBiasAddlstm_cell_123/add:z:0,lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_123/splitSplit&lstm_cell_123/split/split_dim:output:0lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_123/SigmoidSigmoidlstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_1Sigmoidlstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_123/mulMullstm_cell_123/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_123/ReluRelulstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_1Mullstm_cell_123/Sigmoid:y:0 lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_123/add_1AddV2lstm_cell_123/mul:z:0lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_2Sigmoidlstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_123/Relu_1Relulstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_2Mullstm_cell_123/Sigmoid_2:y:0"lstm_cell_123/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_123_matmul_readvariableop_resource.lstm_cell_123_matmul_1_readvariableop_resource-lstm_cell_123_biasadd_readvariableop_resource*
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
while_body_759939*
condR
while_cond_759938*K
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
NoOpNoOp%^lstm_cell_123/BiasAdd/ReadVariableOp$^lstm_cell_123/MatMul/ReadVariableOp&^lstm_cell_123/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_123/BiasAdd/ReadVariableOp$lstm_cell_123/BiasAdd/ReadVariableOp2J
#lstm_cell_123/MatMul/ReadVariableOp#lstm_cell_123/MatMul/ReadVariableOp2N
%lstm_cell_123/MatMul_1/ReadVariableOp%lstm_cell_123/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_761854

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
?J
?
D__inference_lstm_407_layer_call_and_return_conditional_losses_761398

inputs>
,lstm_cell_125_matmul_readvariableop_resource:2(@
.lstm_cell_125_matmul_1_readvariableop_resource:
(;
-lstm_cell_125_biasadd_readvariableop_resource:(
identity??$lstm_cell_125/BiasAdd/ReadVariableOp?#lstm_cell_125/MatMul/ReadVariableOp?%lstm_cell_125/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_125/MatMul/ReadVariableOpReadVariableOp,lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_125/MatMulMatMulstrided_slice_2:output:0+lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_125/MatMul_1MatMulzeros:output:0-lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_125/addAddV2lstm_cell_125/MatMul:product:0 lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_125/BiasAddBiasAddlstm_cell_125/add:z:0,lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_125/splitSplit&lstm_cell_125/split/split_dim:output:0lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_125/SigmoidSigmoidlstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_1Sigmoidlstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_125/mulMullstm_cell_125/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_125/ReluRelulstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_1Mullstm_cell_125/Sigmoid:y:0 lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_125/add_1AddV2lstm_cell_125/mul:z:0lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_125/Sigmoid_2Sigmoidlstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_125/Relu_1Relulstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_125/mul_2Mullstm_cell_125/Sigmoid_2:y:0"lstm_cell_125/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_125_matmul_readvariableop_resource.lstm_cell_125_matmul_1_readvariableop_resource-lstm_cell_125_biasadd_readvariableop_resource*
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
while_body_761314*
condR
while_cond_761313*K
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
NoOpNoOp%^lstm_cell_125/BiasAdd/ReadVariableOp$^lstm_cell_125/MatMul/ReadVariableOp&^lstm_cell_125/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_125/BiasAdd/ReadVariableOp$lstm_cell_125/BiasAdd/ReadVariableOp2J
#lstm_cell_125/MatMul/ReadVariableOp#lstm_cell_125/MatMul/ReadVariableOp2N
%lstm_cell_125/MatMul_1/ReadVariableOp%lstm_cell_125/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_405_layer_call_and_return_conditional_losses_758570

inputs?
,lstm_cell_123_matmul_readvariableop_resource:	?A
.lstm_cell_123_matmul_1_readvariableop_resource:	d?<
-lstm_cell_123_biasadd_readvariableop_resource:	?
identity??$lstm_cell_123/BiasAdd/ReadVariableOp?#lstm_cell_123/MatMul/ReadVariableOp?%lstm_cell_123/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_123/MatMul/ReadVariableOpReadVariableOp,lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_123/MatMulMatMulstrided_slice_2:output:0+lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_123/MatMul_1MatMulzeros:output:0-lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_123/addAddV2lstm_cell_123/MatMul:product:0 lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_123/BiasAddBiasAddlstm_cell_123/add:z:0,lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_123/splitSplit&lstm_cell_123/split/split_dim:output:0lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_123/SigmoidSigmoidlstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_1Sigmoidlstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_123/mulMullstm_cell_123/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_123/ReluRelulstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_1Mullstm_cell_123/Sigmoid:y:0 lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_123/add_1AddV2lstm_cell_123/mul:z:0lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_123/Sigmoid_2Sigmoidlstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_123/Relu_1Relulstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_123/mul_2Mullstm_cell_123/Sigmoid_2:y:0"lstm_cell_123/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_123_matmul_readvariableop_resource.lstm_cell_123_matmul_1_readvariableop_resource-lstm_cell_123_biasadd_readvariableop_resource*
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
while_body_758486*
condR
while_cond_758485*K
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
NoOpNoOp%^lstm_cell_123/BiasAdd/ReadVariableOp$^lstm_cell_123/MatMul/ReadVariableOp&^lstm_cell_123/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_123/BiasAdd/ReadVariableOp$lstm_cell_123/BiasAdd/ReadVariableOp2J
#lstm_cell_123/MatMul/ReadVariableOp#lstm_cell_123/MatMul/ReadVariableOp2N
%lstm_cell_123/MatMul_1/ReadVariableOp%lstm_cell_123/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_407_while_cond_759175.
*lstm_407_while_lstm_407_while_loop_counter4
0lstm_407_while_lstm_407_while_maximum_iterations
lstm_407_while_placeholder 
lstm_407_while_placeholder_1 
lstm_407_while_placeholder_2 
lstm_407_while_placeholder_30
,lstm_407_while_less_lstm_407_strided_slice_1F
Blstm_407_while_lstm_407_while_cond_759175___redundant_placeholder0F
Blstm_407_while_lstm_407_while_cond_759175___redundant_placeholder1F
Blstm_407_while_lstm_407_while_cond_759175___redundant_placeholder2F
Blstm_407_while_lstm_407_while_cond_759175___redundant_placeholder3
lstm_407_while_identity
?
lstm_407/while/LessLesslstm_407_while_placeholder,lstm_407_while_less_lstm_407_strided_slice_1*
T0*
_output_shapes
: ]
lstm_407/while/IdentityIdentitylstm_407/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_407_while_identity lstm_407/while/Identity:output:0*(
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
while_cond_757146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_757146___redundant_placeholder04
0while_while_cond_757146___redundant_placeholder14
0while_while_cond_757146___redundant_placeholder24
0while_while_cond_757146___redundant_placeholder3
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_756942

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
?
)sequential_135_lstm_406_while_cond_756295L
Hsequential_135_lstm_406_while_sequential_135_lstm_406_while_loop_counterR
Nsequential_135_lstm_406_while_sequential_135_lstm_406_while_maximum_iterations-
)sequential_135_lstm_406_while_placeholder/
+sequential_135_lstm_406_while_placeholder_1/
+sequential_135_lstm_406_while_placeholder_2/
+sequential_135_lstm_406_while_placeholder_3N
Jsequential_135_lstm_406_while_less_sequential_135_lstm_406_strided_slice_1d
`sequential_135_lstm_406_while_sequential_135_lstm_406_while_cond_756295___redundant_placeholder0d
`sequential_135_lstm_406_while_sequential_135_lstm_406_while_cond_756295___redundant_placeholder1d
`sequential_135_lstm_406_while_sequential_135_lstm_406_while_cond_756295___redundant_placeholder2d
`sequential_135_lstm_406_while_sequential_135_lstm_406_while_cond_756295___redundant_placeholder3*
&sequential_135_lstm_406_while_identity
?
"sequential_135/lstm_406/while/LessLess)sequential_135_lstm_406_while_placeholderJsequential_135_lstm_406_while_less_sequential_135_lstm_406_strided_slice_1*
T0*
_output_shapes
: {
&sequential_135/lstm_406/while/IdentityIdentity&sequential_135/lstm_406/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_135_lstm_406_while_identity/sequential_135/lstm_406/while/Identity:output:0*(
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
.__inference_lstm_cell_124_layer_call_fn_761692

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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_757088o
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
while_cond_760697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_760697___redundant_placeholder04
0while_while_cond_760697___redundant_placeholder14
0while_while_cond_760697___redundant_placeholder24
0while_while_cond_760697___redundant_placeholder3
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756738

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
while_body_759796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_123_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_123_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_123_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_123_matmul_readvariableop_resource:	?G
4while_lstm_cell_123_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_123_biasadd_readvariableop_resource:	???*while/lstm_cell_123/BiasAdd/ReadVariableOp?)while/lstm_cell_123/MatMul/ReadVariableOp?+while/lstm_cell_123/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_123_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_123/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_123_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_123/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_123/addAddV2$while/lstm_cell_123/MatMul:product:0&while/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_123_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_123/BiasAddBiasAddwhile/lstm_cell_123/add:z:02while/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_123/splitSplit,while/lstm_cell_123/split/split_dim:output:0$while/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_123/SigmoidSigmoid"while/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_1Sigmoid"while/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mulMul!while/lstm_cell_123/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_123/ReluRelu"while/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_1Mulwhile/lstm_cell_123/Sigmoid:y:0&while/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/add_1AddV2while/lstm_cell_123/mul:z:0while/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_123/Sigmoid_2Sigmoid"while/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_123/Relu_1Reluwhile/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_123/mul_2Mul!while/lstm_cell_123/Sigmoid_2:y:0(while/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_123/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_123/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_123/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_123/BiasAdd/ReadVariableOp*^while/lstm_cell_123/MatMul/ReadVariableOp,^while/lstm_cell_123/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_123_biasadd_readvariableop_resource5while_lstm_cell_123_biasadd_readvariableop_resource_0"n
4while_lstm_cell_123_matmul_1_readvariableop_resource6while_lstm_cell_123_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_123_matmul_readvariableop_resource4while_lstm_cell_123_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_123/BiasAdd/ReadVariableOp*while/lstm_cell_123/BiasAdd/ReadVariableOp2V
)while/lstm_cell_123/MatMul/ReadVariableOp)while/lstm_cell_123/MatMul/ReadVariableOp2Z
+while/lstm_cell_123/MatMul_1/ReadVariableOp+while/lstm_cell_123/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_757790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_124_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_124_matmul_readvariableop_resource:	d?G
4while_lstm_cell_124_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_124_biasadd_readvariableop_resource:	???*while/lstm_cell_124/BiasAdd/ReadVariableOp?)while/lstm_cell_124/MatMul/ReadVariableOp?+while/lstm_cell_124/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_124/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_124/addAddV2$while/lstm_cell_124/MatMul:product:0&while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_124/BiasAddBiasAddwhile/lstm_cell_124/add:z:02while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_124/splitSplit,while/lstm_cell_124/split/split_dim:output:0$while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_124/SigmoidSigmoid"while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_1Sigmoid"while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mulMul!while/lstm_cell_124/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_124/ReluRelu"while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_1Mulwhile/lstm_cell_124/Sigmoid:y:0&while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/add_1AddV2while/lstm_cell_124/mul:z:0while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_124/Sigmoid_2Sigmoid"while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_124/Relu_1Reluwhile/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_124/mul_2Mul!while/lstm_cell_124/Sigmoid_2:y:0(while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_124/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_124/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_124/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_124/BiasAdd/ReadVariableOp*^while/lstm_cell_124/MatMul/ReadVariableOp,^while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_124_biasadd_readvariableop_resource5while_lstm_cell_124_biasadd_readvariableop_resource_0"n
4while_lstm_cell_124_matmul_1_readvariableop_resource6while_lstm_cell_124_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_124_matmul_readvariableop_resource4while_lstm_cell_124_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_124/BiasAdd/ReadVariableOp*while/lstm_cell_124/BiasAdd/ReadVariableOp2V
)while/lstm_cell_124/MatMul/ReadVariableOp)while/lstm_cell_124/MatMul/ReadVariableOp2Z
+while/lstm_cell_124/MatMul_1/ReadVariableOp+while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_123_layer_call_fn_761594

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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756738o
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
.__inference_lstm_cell_123_layer_call_fn_761577

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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756592o
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

lstm_406_while_body_759464.
*lstm_406_while_lstm_406_while_loop_counter4
0lstm_406_while_lstm_406_while_maximum_iterations
lstm_406_while_placeholder 
lstm_406_while_placeholder_1 
lstm_406_while_placeholder_2 
lstm_406_while_placeholder_3-
)lstm_406_while_lstm_406_strided_slice_1_0i
elstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0:	d?R
?lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0:	2?M
>lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0:	?
lstm_406_while_identity
lstm_406_while_identity_1
lstm_406_while_identity_2
lstm_406_while_identity_3
lstm_406_while_identity_4
lstm_406_while_identity_5+
'lstm_406_while_lstm_406_strided_slice_1g
clstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensorN
;lstm_406_while_lstm_cell_124_matmul_readvariableop_resource:	d?P
=lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource:	2?K
<lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource:	???3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp?2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp?4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp?
@lstm_406/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_406/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensor_0lstm_406_while_placeholderIlstm_406/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp=lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_406/while/lstm_cell_124/MatMulMatMul9lstm_406/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp?lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_406/while/lstm_cell_124/MatMul_1MatMullstm_406_while_placeholder_2<lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_406/while/lstm_cell_124/addAddV2-lstm_406/while/lstm_cell_124/MatMul:product:0/lstm_406/while/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp>lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_406/while/lstm_cell_124/BiasAddBiasAdd$lstm_406/while/lstm_cell_124/add:z:0;lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_406/while/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_406/while/lstm_cell_124/splitSplit5lstm_406/while/lstm_cell_124/split/split_dim:output:0-lstm_406/while/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_406/while/lstm_cell_124/SigmoidSigmoid+lstm_406/while/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_406/while/lstm_cell_124/Sigmoid_1Sigmoid+lstm_406/while/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_406/while/lstm_cell_124/mulMul*lstm_406/while/lstm_cell_124/Sigmoid_1:y:0lstm_406_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_406/while/lstm_cell_124/ReluRelu+lstm_406/while/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_406/while/lstm_cell_124/mul_1Mul(lstm_406/while/lstm_cell_124/Sigmoid:y:0/lstm_406/while/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_406/while/lstm_cell_124/add_1AddV2$lstm_406/while/lstm_cell_124/mul:z:0&lstm_406/while/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_406/while/lstm_cell_124/Sigmoid_2Sigmoid+lstm_406/while/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_406/while/lstm_cell_124/Relu_1Relu&lstm_406/while/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_406/while/lstm_cell_124/mul_2Mul*lstm_406/while/lstm_cell_124/Sigmoid_2:y:01lstm_406/while/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_406/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_406_while_placeholder_1lstm_406_while_placeholder&lstm_406/while/lstm_cell_124/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_406/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_406/while/addAddV2lstm_406_while_placeholderlstm_406/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_406/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_406/while/add_1AddV2*lstm_406_while_lstm_406_while_loop_counterlstm_406/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_406/while/IdentityIdentitylstm_406/while/add_1:z:0^lstm_406/while/NoOp*
T0*
_output_shapes
: ?
lstm_406/while/Identity_1Identity0lstm_406_while_lstm_406_while_maximum_iterations^lstm_406/while/NoOp*
T0*
_output_shapes
: t
lstm_406/while/Identity_2Identitylstm_406/while/add:z:0^lstm_406/while/NoOp*
T0*
_output_shapes
: ?
lstm_406/while/Identity_3IdentityClstm_406/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_406/while/NoOp*
T0*
_output_shapes
: ?
lstm_406/while/Identity_4Identity&lstm_406/while/lstm_cell_124/mul_2:z:0^lstm_406/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_406/while/Identity_5Identity&lstm_406/while/lstm_cell_124/add_1:z:0^lstm_406/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_406/while/NoOpNoOp4^lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp3^lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp5^lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_406_while_identity lstm_406/while/Identity:output:0"?
lstm_406_while_identity_1"lstm_406/while/Identity_1:output:0"?
lstm_406_while_identity_2"lstm_406/while/Identity_2:output:0"?
lstm_406_while_identity_3"lstm_406/while/Identity_3:output:0"?
lstm_406_while_identity_4"lstm_406/while/Identity_4:output:0"?
lstm_406_while_identity_5"lstm_406/while/Identity_5:output:0"T
'lstm_406_while_lstm_406_strided_slice_1)lstm_406_while_lstm_406_strided_slice_1_0"~
<lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource>lstm_406_while_lstm_cell_124_biasadd_readvariableop_resource_0"?
=lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource?lstm_406_while_lstm_cell_124_matmul_1_readvariableop_resource_0"|
;lstm_406_while_lstm_cell_124_matmul_readvariableop_resource=lstm_406_while_lstm_cell_124_matmul_readvariableop_resource_0"?
clstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensorelstm_406_while_tensorarrayv2read_tensorlistgetitem_lstm_406_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp3lstm_406/while/lstm_cell_124/BiasAdd/ReadVariableOp2h
2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp2lstm_406/while/lstm_cell_124/MatMul/ReadVariableOp2l
4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp4lstm_406/while/lstm_cell_124/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_757940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_125_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_125_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_125_matmul_readvariableop_resource:2(F
4while_lstm_cell_125_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_125_biasadd_readvariableop_resource:(??*while/lstm_cell_125/BiasAdd/ReadVariableOp?)while/lstm_cell_125/MatMul/ReadVariableOp?+while/lstm_cell_125/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_125/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_125/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_125/addAddV2$while/lstm_cell_125/MatMul:product:0&while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_125/BiasAddBiasAddwhile/lstm_cell_125/add:z:02while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_125/splitSplit,while/lstm_cell_125/split/split_dim:output:0$while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_125/SigmoidSigmoid"while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_1Sigmoid"while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mulMul!while/lstm_cell_125/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_125/ReluRelu"while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_1Mulwhile/lstm_cell_125/Sigmoid:y:0&while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/add_1AddV2while/lstm_cell_125/mul:z:0while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_2Sigmoid"while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_125/Relu_1Reluwhile/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_2Mul!while/lstm_cell_125/Sigmoid_2:y:0(while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_125/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_125/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_125/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_125/BiasAdd/ReadVariableOp*^while/lstm_cell_125/MatMul/ReadVariableOp,^while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_125_biasadd_readvariableop_resource5while_lstm_cell_125_biasadd_readvariableop_resource_0"n
4while_lstm_cell_125_matmul_1_readvariableop_resource6while_lstm_cell_125_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_125_matmul_readvariableop_resource4while_lstm_cell_125_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_125/BiasAdd/ReadVariableOp*while/lstm_cell_125/BiasAdd/ReadVariableOp2V
)while/lstm_cell_125/MatMul/ReadVariableOp)while/lstm_cell_125/MatMul/ReadVariableOp2Z
+while/lstm_cell_125/MatMul_1/ReadVariableOp+while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_756592

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
D__inference_lstm_406_layer_call_and_return_conditional_losses_758405

inputs?
,lstm_cell_124_matmul_readvariableop_resource:	d?A
.lstm_cell_124_matmul_1_readvariableop_resource:	2?<
-lstm_cell_124_biasadd_readvariableop_resource:	?
identity??$lstm_cell_124/BiasAdd/ReadVariableOp?#lstm_cell_124/MatMul/ReadVariableOp?%lstm_cell_124/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_124/MatMul/ReadVariableOpReadVariableOp,lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_124/MatMulMatMulstrided_slice_2:output:0+lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_124/MatMul_1MatMulzeros:output:0-lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_124/addAddV2lstm_cell_124/MatMul:product:0 lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_124/BiasAddBiasAddlstm_cell_124/add:z:0,lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_124/splitSplit&lstm_cell_124/split/split_dim:output:0lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_124/SigmoidSigmoidlstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_1Sigmoidlstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_124/mulMullstm_cell_124/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_124/ReluRelulstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_1Mullstm_cell_124/Sigmoid:y:0 lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_124/add_1AddV2lstm_cell_124/mul:z:0lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_124/Sigmoid_2Sigmoidlstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_124/Relu_1Relulstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_124/mul_2Mullstm_cell_124/Sigmoid_2:y:0"lstm_cell_124/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_124_matmul_readvariableop_resource.lstm_cell_124_matmul_1_readvariableop_resource-lstm_cell_124_biasadd_readvariableop_resource*
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
while_body_758321*
condR
while_cond_758320*K
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
NoOpNoOp%^lstm_cell_124/BiasAdd/ReadVariableOp$^lstm_cell_124/MatMul/ReadVariableOp&^lstm_cell_124/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_124/BiasAdd/ReadVariableOp$lstm_cell_124/BiasAdd/ReadVariableOp2J
#lstm_cell_124/MatMul/ReadVariableOp#lstm_cell_124/MatMul/ReadVariableOp2N
%lstm_cell_124/MatMul_1/ReadVariableOp%lstm_cell_124/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
E__inference_dense_135_layer_call_and_return_conditional_losses_761560

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
while_body_758156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_125_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_125_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_125_matmul_readvariableop_resource:2(F
4while_lstm_cell_125_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_125_biasadd_readvariableop_resource:(??*while/lstm_cell_125/BiasAdd/ReadVariableOp?)while/lstm_cell_125/MatMul/ReadVariableOp?+while/lstm_cell_125/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_125/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_125/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_125/addAddV2$while/lstm_cell_125/MatMul:product:0&while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_125/BiasAddBiasAddwhile/lstm_cell_125/add:z:02while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_125/splitSplit,while/lstm_cell_125/split/split_dim:output:0$while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_125/SigmoidSigmoid"while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_1Sigmoid"while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mulMul!while/lstm_cell_125/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_125/ReluRelu"while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_1Mulwhile/lstm_cell_125/Sigmoid:y:0&while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/add_1AddV2while/lstm_cell_125/mul:z:0while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_2Sigmoid"while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_125/Relu_1Reluwhile/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_2Mul!while/lstm_cell_125/Sigmoid_2:y:0(while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_125/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_125/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_125/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_125/BiasAdd/ReadVariableOp*^while/lstm_cell_125/MatMul/ReadVariableOp,^while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_125_biasadd_readvariableop_resource5while_lstm_cell_125_biasadd_readvariableop_resource_0"n
4while_lstm_cell_125_matmul_1_readvariableop_resource6while_lstm_cell_125_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_125_matmul_readvariableop_resource4while_lstm_cell_125_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_125/BiasAdd/ReadVariableOp*while/lstm_cell_125/BiasAdd/ReadVariableOp2V
)while/lstm_cell_125/MatMul/ReadVariableOp)while/lstm_cell_125/MatMul/ReadVariableOp2Z
+while/lstm_cell_125/MatMul_1/ReadVariableOp+while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_757566

inputs&
lstm_cell_125_757484:2(&
lstm_cell_125_757486:
("
lstm_cell_125_757488:(
identity??%lstm_cell_125/StatefulPartitionedCall?while;
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
%lstm_cell_125/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_125_757484lstm_cell_125_757486lstm_cell_125_757488*
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_757438n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_125_757484lstm_cell_125_757486lstm_cell_125_757488*
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
while_body_757497*
condR
while_cond_757496*K
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
NoOpNoOp&^lstm_cell_125/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_125/StatefulPartitionedCall%lstm_cell_125/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_761457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_125_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_125_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_125_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_125_matmul_readvariableop_resource:2(F
4while_lstm_cell_125_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_125_biasadd_readvariableop_resource:(??*while/lstm_cell_125/BiasAdd/ReadVariableOp?)while/lstm_cell_125/MatMul/ReadVariableOp?+while/lstm_cell_125/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_125_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_125/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_125_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_125/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_125/addAddV2$while/lstm_cell_125/MatMul:product:0&while/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_125_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_125/BiasAddBiasAddwhile/lstm_cell_125/add:z:02while/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_125/splitSplit,while/lstm_cell_125/split/split_dim:output:0$while/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_125/SigmoidSigmoid"while/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_1Sigmoid"while/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mulMul!while/lstm_cell_125/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_125/ReluRelu"while/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_1Mulwhile/lstm_cell_125/Sigmoid:y:0&while/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/add_1AddV2while/lstm_cell_125/mul:z:0while/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_125/Sigmoid_2Sigmoid"while/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_125/Relu_1Reluwhile/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_125/mul_2Mul!while/lstm_cell_125/Sigmoid_2:y:0(while/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_125/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_125/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_125/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_125/BiasAdd/ReadVariableOp*^while/lstm_cell_125/MatMul/ReadVariableOp,^while/lstm_cell_125/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_125_biasadd_readvariableop_resource5while_lstm_cell_125_biasadd_readvariableop_resource_0"n
4while_lstm_cell_125_matmul_1_readvariableop_resource6while_lstm_cell_125_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_125_matmul_readvariableop_resource4while_lstm_cell_125_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_125/BiasAdd/ReadVariableOp*while/lstm_cell_125/BiasAdd/ReadVariableOp2V
)while/lstm_cell_125/MatMul/ReadVariableOp)while/lstm_cell_125/MatMul/ReadVariableOp2Z
+while/lstm_cell_125/MatMul_1/ReadVariableOp+while/lstm_cell_125/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_135_layer_call_fn_758074
lstm_405_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_405_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_135_layer_call_and_return_conditional_losses_758049o
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
_user_specified_namelstm_405_input
??
?
J__inference_sequential_135_layer_call_and_return_conditional_losses_759693

inputsH
5lstm_405_lstm_cell_123_matmul_readvariableop_resource:	?J
7lstm_405_lstm_cell_123_matmul_1_readvariableop_resource:	d?E
6lstm_405_lstm_cell_123_biasadd_readvariableop_resource:	?H
5lstm_406_lstm_cell_124_matmul_readvariableop_resource:	d?J
7lstm_406_lstm_cell_124_matmul_1_readvariableop_resource:	2?E
6lstm_406_lstm_cell_124_biasadd_readvariableop_resource:	?G
5lstm_407_lstm_cell_125_matmul_readvariableop_resource:2(I
7lstm_407_lstm_cell_125_matmul_1_readvariableop_resource:
(D
6lstm_407_lstm_cell_125_biasadd_readvariableop_resource:(:
(dense_135_matmul_readvariableop_resource:
7
)dense_135_biasadd_readvariableop_resource:
identity?? dense_135/BiasAdd/ReadVariableOp?dense_135/MatMul/ReadVariableOp?-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp?,lstm_405/lstm_cell_123/MatMul/ReadVariableOp?.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp?lstm_405/while?-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp?,lstm_406/lstm_cell_124/MatMul/ReadVariableOp?.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp?lstm_406/while?-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp?,lstm_407/lstm_cell_125/MatMul/ReadVariableOp?.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp?lstm_407/whileD
lstm_405/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_405/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_405/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_405/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_sliceStridedSlicelstm_405/Shape:output:0%lstm_405/strided_slice/stack:output:0'lstm_405/strided_slice/stack_1:output:0'lstm_405/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_405/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_405/zeros/packedPacklstm_405/strided_slice:output:0 lstm_405/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_405/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_405/zerosFilllstm_405/zeros/packed:output:0lstm_405/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_405/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_405/zeros_1/packedPacklstm_405/strided_slice:output:0"lstm_405/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_405/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_405/zeros_1Fill lstm_405/zeros_1/packed:output:0lstm_405/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_405/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_405/transpose	Transposeinputs lstm_405/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_405/Shape_1Shapelstm_405/transpose:y:0*
T0*
_output_shapes
:h
lstm_405/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_405/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_405/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_slice_1StridedSlicelstm_405/Shape_1:output:0'lstm_405/strided_slice_1/stack:output:0)lstm_405/strided_slice_1/stack_1:output:0)lstm_405/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_405/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_405/TensorArrayV2TensorListReserve-lstm_405/TensorArrayV2/element_shape:output:0!lstm_405/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_405/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_405/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_405/transpose:y:0Glstm_405/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_405/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_405/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_405/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_slice_2StridedSlicelstm_405/transpose:y:0'lstm_405/strided_slice_2/stack:output:0)lstm_405/strided_slice_2/stack_1:output:0)lstm_405/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_405/lstm_cell_123/MatMul/ReadVariableOpReadVariableOp5lstm_405_lstm_cell_123_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_405/lstm_cell_123/MatMulMatMul!lstm_405/strided_slice_2:output:04lstm_405/lstm_cell_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOpReadVariableOp7lstm_405_lstm_cell_123_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_405/lstm_cell_123/MatMul_1MatMullstm_405/zeros:output:06lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_405/lstm_cell_123/addAddV2'lstm_405/lstm_cell_123/MatMul:product:0)lstm_405/lstm_cell_123/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOpReadVariableOp6lstm_405_lstm_cell_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_405/lstm_cell_123/BiasAddBiasAddlstm_405/lstm_cell_123/add:z:05lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_405/lstm_cell_123/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_405/lstm_cell_123/splitSplit/lstm_405/lstm_cell_123/split/split_dim:output:0'lstm_405/lstm_cell_123/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_405/lstm_cell_123/SigmoidSigmoid%lstm_405/lstm_cell_123/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_405/lstm_cell_123/Sigmoid_1Sigmoid%lstm_405/lstm_cell_123/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/mulMul$lstm_405/lstm_cell_123/Sigmoid_1:y:0lstm_405/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_405/lstm_cell_123/ReluRelu%lstm_405/lstm_cell_123/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/mul_1Mul"lstm_405/lstm_cell_123/Sigmoid:y:0)lstm_405/lstm_cell_123/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/add_1AddV2lstm_405/lstm_cell_123/mul:z:0 lstm_405/lstm_cell_123/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_405/lstm_cell_123/Sigmoid_2Sigmoid%lstm_405/lstm_cell_123/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_405/lstm_cell_123/Relu_1Relu lstm_405/lstm_cell_123/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_405/lstm_cell_123/mul_2Mul$lstm_405/lstm_cell_123/Sigmoid_2:y:0+lstm_405/lstm_cell_123/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_405/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_405/TensorArrayV2_1TensorListReserve/lstm_405/TensorArrayV2_1/element_shape:output:0!lstm_405/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_405/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_405/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_405/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_405/whileWhile$lstm_405/while/loop_counter:output:0*lstm_405/while/maximum_iterations:output:0lstm_405/time:output:0!lstm_405/TensorArrayV2_1:handle:0lstm_405/zeros:output:0lstm_405/zeros_1:output:0!lstm_405/strided_slice_1:output:0@lstm_405/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_405_lstm_cell_123_matmul_readvariableop_resource7lstm_405_lstm_cell_123_matmul_1_readvariableop_resource6lstm_405_lstm_cell_123_biasadd_readvariableop_resource*
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
lstm_405_while_body_759325*&
condR
lstm_405_while_cond_759324*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_405/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_405/TensorArrayV2Stack/TensorListStackTensorListStacklstm_405/while:output:3Blstm_405/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_405/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_405/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_405/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_405/strided_slice_3StridedSlice4lstm_405/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_405/strided_slice_3/stack:output:0)lstm_405/strided_slice_3/stack_1:output:0)lstm_405/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_405/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_405/transpose_1	Transpose4lstm_405/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_405/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_405/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_406/ShapeShapelstm_405/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_406/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_406/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_406/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_sliceStridedSlicelstm_406/Shape:output:0%lstm_406/strided_slice/stack:output:0'lstm_406/strided_slice/stack_1:output:0'lstm_406/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_406/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_406/zeros/packedPacklstm_406/strided_slice:output:0 lstm_406/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_406/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_406/zerosFilllstm_406/zeros/packed:output:0lstm_406/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_406/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_406/zeros_1/packedPacklstm_406/strided_slice:output:0"lstm_406/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_406/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_406/zeros_1Fill lstm_406/zeros_1/packed:output:0lstm_406/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_406/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_406/transpose	Transposelstm_405/transpose_1:y:0 lstm_406/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_406/Shape_1Shapelstm_406/transpose:y:0*
T0*
_output_shapes
:h
lstm_406/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_406/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_406/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_slice_1StridedSlicelstm_406/Shape_1:output:0'lstm_406/strided_slice_1/stack:output:0)lstm_406/strided_slice_1/stack_1:output:0)lstm_406/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_406/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_406/TensorArrayV2TensorListReserve-lstm_406/TensorArrayV2/element_shape:output:0!lstm_406/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_406/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_406/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_406/transpose:y:0Glstm_406/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_406/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_406/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_406/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_slice_2StridedSlicelstm_406/transpose:y:0'lstm_406/strided_slice_2/stack:output:0)lstm_406/strided_slice_2/stack_1:output:0)lstm_406/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_406/lstm_cell_124/MatMul/ReadVariableOpReadVariableOp5lstm_406_lstm_cell_124_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_406/lstm_cell_124/MatMulMatMul!lstm_406/strided_slice_2:output:04lstm_406/lstm_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOpReadVariableOp7lstm_406_lstm_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_406/lstm_cell_124/MatMul_1MatMullstm_406/zeros:output:06lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_406/lstm_cell_124/addAddV2'lstm_406/lstm_cell_124/MatMul:product:0)lstm_406/lstm_cell_124/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOpReadVariableOp6lstm_406_lstm_cell_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_406/lstm_cell_124/BiasAddBiasAddlstm_406/lstm_cell_124/add:z:05lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_406/lstm_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_406/lstm_cell_124/splitSplit/lstm_406/lstm_cell_124/split/split_dim:output:0'lstm_406/lstm_cell_124/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_406/lstm_cell_124/SigmoidSigmoid%lstm_406/lstm_cell_124/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_406/lstm_cell_124/Sigmoid_1Sigmoid%lstm_406/lstm_cell_124/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/mulMul$lstm_406/lstm_cell_124/Sigmoid_1:y:0lstm_406/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_406/lstm_cell_124/ReluRelu%lstm_406/lstm_cell_124/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/mul_1Mul"lstm_406/lstm_cell_124/Sigmoid:y:0)lstm_406/lstm_cell_124/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/add_1AddV2lstm_406/lstm_cell_124/mul:z:0 lstm_406/lstm_cell_124/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_406/lstm_cell_124/Sigmoid_2Sigmoid%lstm_406/lstm_cell_124/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_406/lstm_cell_124/Relu_1Relu lstm_406/lstm_cell_124/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_406/lstm_cell_124/mul_2Mul$lstm_406/lstm_cell_124/Sigmoid_2:y:0+lstm_406/lstm_cell_124/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_406/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_406/TensorArrayV2_1TensorListReserve/lstm_406/TensorArrayV2_1/element_shape:output:0!lstm_406/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_406/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_406/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_406/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_406/whileWhile$lstm_406/while/loop_counter:output:0*lstm_406/while/maximum_iterations:output:0lstm_406/time:output:0!lstm_406/TensorArrayV2_1:handle:0lstm_406/zeros:output:0lstm_406/zeros_1:output:0!lstm_406/strided_slice_1:output:0@lstm_406/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_406_lstm_cell_124_matmul_readvariableop_resource7lstm_406_lstm_cell_124_matmul_1_readvariableop_resource6lstm_406_lstm_cell_124_biasadd_readvariableop_resource*
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
lstm_406_while_body_759464*&
condR
lstm_406_while_cond_759463*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_406/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_406/TensorArrayV2Stack/TensorListStackTensorListStacklstm_406/while:output:3Blstm_406/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_406/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_406/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_406/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_406/strided_slice_3StridedSlice4lstm_406/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_406/strided_slice_3/stack:output:0)lstm_406/strided_slice_3/stack_1:output:0)lstm_406/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_406/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_406/transpose_1	Transpose4lstm_406/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_406/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_406/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_407/ShapeShapelstm_406/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_407/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_407/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_407/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_sliceStridedSlicelstm_407/Shape:output:0%lstm_407/strided_slice/stack:output:0'lstm_407/strided_slice/stack_1:output:0'lstm_407/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_407/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_407/zeros/packedPacklstm_407/strided_slice:output:0 lstm_407/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_407/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_407/zerosFilllstm_407/zeros/packed:output:0lstm_407/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_407/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_407/zeros_1/packedPacklstm_407/strided_slice:output:0"lstm_407/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_407/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_407/zeros_1Fill lstm_407/zeros_1/packed:output:0lstm_407/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_407/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_407/transpose	Transposelstm_406/transpose_1:y:0 lstm_407/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_407/Shape_1Shapelstm_407/transpose:y:0*
T0*
_output_shapes
:h
lstm_407/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_407/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_407/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_slice_1StridedSlicelstm_407/Shape_1:output:0'lstm_407/strided_slice_1/stack:output:0)lstm_407/strided_slice_1/stack_1:output:0)lstm_407/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_407/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_407/TensorArrayV2TensorListReserve-lstm_407/TensorArrayV2/element_shape:output:0!lstm_407/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_407/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_407/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_407/transpose:y:0Glstm_407/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_407/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_407/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_407/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_slice_2StridedSlicelstm_407/transpose:y:0'lstm_407/strided_slice_2/stack:output:0)lstm_407/strided_slice_2/stack_1:output:0)lstm_407/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_407/lstm_cell_125/MatMul/ReadVariableOpReadVariableOp5lstm_407_lstm_cell_125_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_407/lstm_cell_125/MatMulMatMul!lstm_407/strided_slice_2:output:04lstm_407/lstm_cell_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOpReadVariableOp7lstm_407_lstm_cell_125_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_407/lstm_cell_125/MatMul_1MatMullstm_407/zeros:output:06lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_407/lstm_cell_125/addAddV2'lstm_407/lstm_cell_125/MatMul:product:0)lstm_407/lstm_cell_125/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOpReadVariableOp6lstm_407_lstm_cell_125_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_407/lstm_cell_125/BiasAddBiasAddlstm_407/lstm_cell_125/add:z:05lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_407/lstm_cell_125/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_407/lstm_cell_125/splitSplit/lstm_407/lstm_cell_125/split/split_dim:output:0'lstm_407/lstm_cell_125/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_407/lstm_cell_125/SigmoidSigmoid%lstm_407/lstm_cell_125/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_407/lstm_cell_125/Sigmoid_1Sigmoid%lstm_407/lstm_cell_125/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/mulMul$lstm_407/lstm_cell_125/Sigmoid_1:y:0lstm_407/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_407/lstm_cell_125/ReluRelu%lstm_407/lstm_cell_125/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/mul_1Mul"lstm_407/lstm_cell_125/Sigmoid:y:0)lstm_407/lstm_cell_125/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/add_1AddV2lstm_407/lstm_cell_125/mul:z:0 lstm_407/lstm_cell_125/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_407/lstm_cell_125/Sigmoid_2Sigmoid%lstm_407/lstm_cell_125/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_407/lstm_cell_125/Relu_1Relu lstm_407/lstm_cell_125/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_407/lstm_cell_125/mul_2Mul$lstm_407/lstm_cell_125/Sigmoid_2:y:0+lstm_407/lstm_cell_125/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_407/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_407/TensorArrayV2_1TensorListReserve/lstm_407/TensorArrayV2_1/element_shape:output:0!lstm_407/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_407/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_407/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_407/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_407/whileWhile$lstm_407/while/loop_counter:output:0*lstm_407/while/maximum_iterations:output:0lstm_407/time:output:0!lstm_407/TensorArrayV2_1:handle:0lstm_407/zeros:output:0lstm_407/zeros_1:output:0!lstm_407/strided_slice_1:output:0@lstm_407/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_407_lstm_cell_125_matmul_readvariableop_resource7lstm_407_lstm_cell_125_matmul_1_readvariableop_resource6lstm_407_lstm_cell_125_biasadd_readvariableop_resource*
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
lstm_407_while_body_759603*&
condR
lstm_407_while_cond_759602*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_407/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_407/TensorArrayV2Stack/TensorListStackTensorListStacklstm_407/while:output:3Blstm_407/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_407/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_407/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_407/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_407/strided_slice_3StridedSlice4lstm_407/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_407/strided_slice_3/stack:output:0)lstm_407/strided_slice_3/stack_1:output:0)lstm_407/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_407/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_407/transpose_1	Transpose4lstm_407/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_407/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_407/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_135/MatMulMatMul!lstm_407/strided_slice_3:output:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_135/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp.^lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp-^lstm_405/lstm_cell_123/MatMul/ReadVariableOp/^lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp^lstm_405/while.^lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp-^lstm_406/lstm_cell_124/MatMul/ReadVariableOp/^lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp^lstm_406/while.^lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp-^lstm_407/lstm_cell_125/MatMul/ReadVariableOp/^lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp^lstm_407/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2^
-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp-lstm_405/lstm_cell_123/BiasAdd/ReadVariableOp2\
,lstm_405/lstm_cell_123/MatMul/ReadVariableOp,lstm_405/lstm_cell_123/MatMul/ReadVariableOp2`
.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp.lstm_405/lstm_cell_123/MatMul_1/ReadVariableOp2 
lstm_405/whilelstm_405/while2^
-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp-lstm_406/lstm_cell_124/BiasAdd/ReadVariableOp2\
,lstm_406/lstm_cell_124/MatMul/ReadVariableOp,lstm_406/lstm_cell_124/MatMul/ReadVariableOp2`
.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp.lstm_406/lstm_cell_124/MatMul_1/ReadVariableOp2 
lstm_406/whilelstm_406/while2^
-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp-lstm_407/lstm_cell_125/BiasAdd/ReadVariableOp2\
,lstm_407/lstm_cell_125/MatMul/ReadVariableOp,lstm_407/lstm_cell_125/MatMul/ReadVariableOp2`
.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp.lstm_407/lstm_cell_125/MatMul_1/ReadVariableOp2 
lstm_407/whilelstm_407/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_756955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_756955___redundant_placeholder04
0while_while_cond_756955___redundant_placeholder14
0while_while_cond_756955___redundant_placeholder24
0while_while_cond_756955___redundant_placeholder3
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
)__inference_lstm_407_layer_call_fn_760958

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
D__inference_lstm_407_layer_call_and_return_conditional_losses_758024o
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
?
)__inference_lstm_406_layer_call_fn_760331
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_757216|
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
lstm_405_input;
 serving_default_lstm_405_input:0?????????=
	dense_1350
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
2dense_135/kernel
:2dense_135/bias
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
0:.	?2lstm_405/lstm_cell_405/kernel
::8	d?2'lstm_405/lstm_cell_405/recurrent_kernel
*:(?2lstm_405/lstm_cell_405/bias
0:.	d?2lstm_406/lstm_cell_406/kernel
::8	2?2'lstm_406/lstm_cell_406/recurrent_kernel
*:(?2lstm_406/lstm_cell_406/bias
/:-2(2lstm_407/lstm_cell_407/kernel
9:7
(2'lstm_407/lstm_cell_407/recurrent_kernel
):'(2lstm_407/lstm_cell_407/bias
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
2Adam/dense_135/kernel/m
!:2Adam/dense_135/bias/m
5:3	?2$Adam/lstm_405/lstm_cell_405/kernel/m
?:=	d?2.Adam/lstm_405/lstm_cell_405/recurrent_kernel/m
/:-?2"Adam/lstm_405/lstm_cell_405/bias/m
5:3	d?2$Adam/lstm_406/lstm_cell_406/kernel/m
?:=	2?2.Adam/lstm_406/lstm_cell_406/recurrent_kernel/m
/:-?2"Adam/lstm_406/lstm_cell_406/bias/m
4:22(2$Adam/lstm_407/lstm_cell_407/kernel/m
>:<
(2.Adam/lstm_407/lstm_cell_407/recurrent_kernel/m
.:,(2"Adam/lstm_407/lstm_cell_407/bias/m
':%
2Adam/dense_135/kernel/v
!:2Adam/dense_135/bias/v
5:3	?2$Adam/lstm_405/lstm_cell_405/kernel/v
?:=	d?2.Adam/lstm_405/lstm_cell_405/recurrent_kernel/v
/:-?2"Adam/lstm_405/lstm_cell_405/bias/v
5:3	d?2$Adam/lstm_406/lstm_cell_406/kernel/v
?:=	2?2.Adam/lstm_406/lstm_cell_406/recurrent_kernel/v
/:-?2"Adam/lstm_406/lstm_cell_406/bias/v
4:22(2$Adam/lstm_407/lstm_cell_407/kernel/v
>:<
(2.Adam/lstm_407/lstm_cell_407/recurrent_kernel/v
.:,(2"Adam/lstm_407/lstm_cell_407/bias/v
?2?
/__inference_sequential_135_layer_call_fn_758074
/__inference_sequential_135_layer_call_fn_758812
/__inference_sequential_135_layer_call_fn_758839
/__inference_sequential_135_layer_call_fn_758690?
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
J__inference_sequential_135_layer_call_and_return_conditional_losses_759266
J__inference_sequential_135_layer_call_and_return_conditional_losses_759693
J__inference_sequential_135_layer_call_and_return_conditional_losses_758720
J__inference_sequential_135_layer_call_and_return_conditional_losses_758750?
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
!__inference__wrapped_model_756525lstm_405_input"?
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
)__inference_lstm_405_layer_call_fn_759704
)__inference_lstm_405_layer_call_fn_759715
)__inference_lstm_405_layer_call_fn_759726
)__inference_lstm_405_layer_call_fn_759737?
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_759880
D__inference_lstm_405_layer_call_and_return_conditional_losses_760023
D__inference_lstm_405_layer_call_and_return_conditional_losses_760166
D__inference_lstm_405_layer_call_and_return_conditional_losses_760309?
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
)__inference_lstm_406_layer_call_fn_760320
)__inference_lstm_406_layer_call_fn_760331
)__inference_lstm_406_layer_call_fn_760342
)__inference_lstm_406_layer_call_fn_760353?
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_760496
D__inference_lstm_406_layer_call_and_return_conditional_losses_760639
D__inference_lstm_406_layer_call_and_return_conditional_losses_760782
D__inference_lstm_406_layer_call_and_return_conditional_losses_760925?
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
)__inference_lstm_407_layer_call_fn_760936
)__inference_lstm_407_layer_call_fn_760947
)__inference_lstm_407_layer_call_fn_760958
)__inference_lstm_407_layer_call_fn_760969?
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_761112
D__inference_lstm_407_layer_call_and_return_conditional_losses_761255
D__inference_lstm_407_layer_call_and_return_conditional_losses_761398
D__inference_lstm_407_layer_call_and_return_conditional_losses_761541?
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
*__inference_dense_135_layer_call_fn_761550?
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
E__inference_dense_135_layer_call_and_return_conditional_losses_761560?
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
$__inference_signature_wrapper_758785lstm_405_input"?
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
.__inference_lstm_cell_123_layer_call_fn_761577
.__inference_lstm_cell_123_layer_call_fn_761594?
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_761626
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_761658?
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
.__inference_lstm_cell_124_layer_call_fn_761675
.__inference_lstm_cell_124_layer_call_fn_761692?
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_761724
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_761756?
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
.__inference_lstm_cell_125_layer_call_fn_761773
.__inference_lstm_cell_125_layer_call_fn_761790?
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_761822
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_761854?
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
!__inference__wrapped_model_756525?-./012345!";?8
1?.
,?)
lstm_405_input?????????
? "5?2
0
	dense_135#? 
	dense_135??????????
E__inference_dense_135_layer_call_and_return_conditional_losses_761560\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_135_layer_call_fn_761550O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_405_layer_call_and_return_conditional_losses_759880?-./O?L
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_760023?-./O?L
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_760166q-./??<
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
D__inference_lstm_405_layer_call_and_return_conditional_losses_760309q-./??<
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
)__inference_lstm_405_layer_call_fn_759704}-./O?L
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
)__inference_lstm_405_layer_call_fn_759715}-./O?L
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
)__inference_lstm_405_layer_call_fn_759726d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_405_layer_call_fn_759737d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_406_layer_call_and_return_conditional_losses_760496?012O?L
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_760639?012O?L
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_760782q012??<
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
D__inference_lstm_406_layer_call_and_return_conditional_losses_760925q012??<
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
)__inference_lstm_406_layer_call_fn_760320}012O?L
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
)__inference_lstm_406_layer_call_fn_760331}012O?L
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
)__inference_lstm_406_layer_call_fn_760342d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_406_layer_call_fn_760353d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_407_layer_call_and_return_conditional_losses_761112}345O?L
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_761255}345O?L
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_761398m345??<
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
D__inference_lstm_407_layer_call_and_return_conditional_losses_761541m345??<
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
)__inference_lstm_407_layer_call_fn_760936p345O?L
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
)__inference_lstm_407_layer_call_fn_760947p345O?L
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
)__inference_lstm_407_layer_call_fn_760958`345??<
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
)__inference_lstm_407_layer_call_fn_760969`345??<
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_761626?-./??}
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
I__inference_lstm_cell_123_layer_call_and_return_conditional_losses_761658?-./??}
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
.__inference_lstm_cell_123_layer_call_fn_761577?-./??}
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
.__inference_lstm_cell_123_layer_call_fn_761594?-./??}
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_761724?012??}
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
I__inference_lstm_cell_124_layer_call_and_return_conditional_losses_761756?012??}
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
.__inference_lstm_cell_124_layer_call_fn_761675?012??}
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
.__inference_lstm_cell_124_layer_call_fn_761692?012??}
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_761822?345??}
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
I__inference_lstm_cell_125_layer_call_and_return_conditional_losses_761854?345??}
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
.__inference_lstm_cell_125_layer_call_fn_761773?345??}
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
.__inference_lstm_cell_125_layer_call_fn_761790?345??}
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
J__inference_sequential_135_layer_call_and_return_conditional_losses_758720y-./012345!"C?@
9?6
,?)
lstm_405_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_135_layer_call_and_return_conditional_losses_758750y-./012345!"C?@
9?6
,?)
lstm_405_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_135_layer_call_and_return_conditional_losses_759266q-./012345!";?8
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
J__inference_sequential_135_layer_call_and_return_conditional_losses_759693q-./012345!";?8
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
/__inference_sequential_135_layer_call_fn_758074l-./012345!"C?@
9?6
,?)
lstm_405_input?????????
p 

 
? "???????????
/__inference_sequential_135_layer_call_fn_758690l-./012345!"C?@
9?6
,?)
lstm_405_input?????????
p

 
? "???????????
/__inference_sequential_135_layer_call_fn_758812d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_135_layer_call_fn_758839d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_758785?-./012345!"M?J
? 
C?@
>
lstm_405_input,?)
lstm_405_input?????????"5?2
0
	dense_135#? 
	dense_135?????????