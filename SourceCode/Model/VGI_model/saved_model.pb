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
dense_287/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_287/kernel
u
$dense_287/kernel/Read/ReadVariableOpReadVariableOpdense_287/kernel*
_output_shapes

:
*
dtype0
t
dense_287/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_287/bias
m
"dense_287/bias/Read/ReadVariableOpReadVariableOpdense_287/bias*
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
lstm_861/lstm_cell_861/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_861/lstm_cell_861/kernel
?
1lstm_861/lstm_cell_861/kernel/Read/ReadVariableOpReadVariableOplstm_861/lstm_cell_861/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_861/lstm_cell_861/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_861/lstm_cell_861/recurrent_kernel
?
;lstm_861/lstm_cell_861/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_861/lstm_cell_861/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_861/lstm_cell_861/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_861/lstm_cell_861/bias
?
/lstm_861/lstm_cell_861/bias/Read/ReadVariableOpReadVariableOplstm_861/lstm_cell_861/bias*
_output_shapes	
:?*
dtype0
?
lstm_862/lstm_cell_862/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_862/lstm_cell_862/kernel
?
1lstm_862/lstm_cell_862/kernel/Read/ReadVariableOpReadVariableOplstm_862/lstm_cell_862/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_862/lstm_cell_862/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_862/lstm_cell_862/recurrent_kernel
?
;lstm_862/lstm_cell_862/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_862/lstm_cell_862/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_862/lstm_cell_862/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_862/lstm_cell_862/bias
?
/lstm_862/lstm_cell_862/bias/Read/ReadVariableOpReadVariableOplstm_862/lstm_cell_862/bias*
_output_shapes	
:?*
dtype0
?
lstm_863/lstm_cell_863/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_863/lstm_cell_863/kernel
?
1lstm_863/lstm_cell_863/kernel/Read/ReadVariableOpReadVariableOplstm_863/lstm_cell_863/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_863/lstm_cell_863/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_863/lstm_cell_863/recurrent_kernel
?
;lstm_863/lstm_cell_863/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_863/lstm_cell_863/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_863/lstm_cell_863/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_863/lstm_cell_863/bias
?
/lstm_863/lstm_cell_863/bias/Read/ReadVariableOpReadVariableOplstm_863/lstm_cell_863/bias*
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
Adam/dense_287/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_287/kernel/m
?
+Adam/dense_287/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_287/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_287/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_287/bias/m
{
)Adam/dense_287/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_287/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_861/lstm_cell_861/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_861/lstm_cell_861/kernel/m
?
8Adam/lstm_861/lstm_cell_861/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_861/lstm_cell_861/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_861/lstm_cell_861/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_861/lstm_cell_861/recurrent_kernel/m
?
BAdam/lstm_861/lstm_cell_861/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_861/lstm_cell_861/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_861/lstm_cell_861/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_861/lstm_cell_861/bias/m
?
6Adam/lstm_861/lstm_cell_861/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_861/lstm_cell_861/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_862/lstm_cell_862/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_862/lstm_cell_862/kernel/m
?
8Adam/lstm_862/lstm_cell_862/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_862/lstm_cell_862/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_862/lstm_cell_862/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_862/lstm_cell_862/recurrent_kernel/m
?
BAdam/lstm_862/lstm_cell_862/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_862/lstm_cell_862/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_862/lstm_cell_862/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_862/lstm_cell_862/bias/m
?
6Adam/lstm_862/lstm_cell_862/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_862/lstm_cell_862/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_863/lstm_cell_863/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_863/lstm_cell_863/kernel/m
?
8Adam/lstm_863/lstm_cell_863/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_863/lstm_cell_863/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_863/lstm_cell_863/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_863/lstm_cell_863/recurrent_kernel/m
?
BAdam/lstm_863/lstm_cell_863/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_863/lstm_cell_863/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_863/lstm_cell_863/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_863/lstm_cell_863/bias/m
?
6Adam/lstm_863/lstm_cell_863/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_863/lstm_cell_863/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_287/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_287/kernel/v
?
+Adam/dense_287/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_287/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_287/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_287/bias/v
{
)Adam/dense_287/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_287/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_861/lstm_cell_861/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_861/lstm_cell_861/kernel/v
?
8Adam/lstm_861/lstm_cell_861/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_861/lstm_cell_861/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_861/lstm_cell_861/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_861/lstm_cell_861/recurrent_kernel/v
?
BAdam/lstm_861/lstm_cell_861/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_861/lstm_cell_861/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_861/lstm_cell_861/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_861/lstm_cell_861/bias/v
?
6Adam/lstm_861/lstm_cell_861/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_861/lstm_cell_861/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_862/lstm_cell_862/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_862/lstm_cell_862/kernel/v
?
8Adam/lstm_862/lstm_cell_862/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_862/lstm_cell_862/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_862/lstm_cell_862/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_862/lstm_cell_862/recurrent_kernel/v
?
BAdam/lstm_862/lstm_cell_862/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_862/lstm_cell_862/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_862/lstm_cell_862/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_862/lstm_cell_862/bias/v
?
6Adam/lstm_862/lstm_cell_862/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_862/lstm_cell_862/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_863/lstm_cell_863/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_863/lstm_cell_863/kernel/v
?
8Adam/lstm_863/lstm_cell_863/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_863/lstm_cell_863/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_863/lstm_cell_863/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_863/lstm_cell_863/recurrent_kernel/v
?
BAdam/lstm_863/lstm_cell_863/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_863/lstm_cell_863/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_863/lstm_cell_863/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_863/lstm_cell_863/bias/v
?
6Adam/lstm_863/lstm_cell_863/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_863/lstm_cell_863/bias/v*
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
VARIABLE_VALUEdense_287/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_287/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_861/lstm_cell_861/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_861/lstm_cell_861/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_861/lstm_cell_861/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_862/lstm_cell_862/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_862/lstm_cell_862/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_862/lstm_cell_862/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_863/lstm_cell_863/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_863/lstm_cell_863/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_863/lstm_cell_863/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_287/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_287/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_861/lstm_cell_861/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_861/lstm_cell_861/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_861/lstm_cell_861/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_862/lstm_cell_862/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_862/lstm_cell_862/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_862/lstm_cell_862/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_863/lstm_cell_863/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_863/lstm_cell_863/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_863/lstm_cell_863/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_287/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_287/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_861/lstm_cell_861/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_861/lstm_cell_861/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_861/lstm_cell_861/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_862/lstm_cell_862/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_862/lstm_cell_862/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_862/lstm_cell_862/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_863/lstm_cell_863/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_863/lstm_cell_863/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_863/lstm_cell_863/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_861_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_861_inputlstm_861/lstm_cell_861/kernel'lstm_861/lstm_cell_861/recurrent_kernellstm_861/lstm_cell_861/biaslstm_862/lstm_cell_862/kernel'lstm_862/lstm_cell_862/recurrent_kernellstm_862/lstm_cell_862/biaslstm_863/lstm_cell_863/kernel'lstm_863/lstm_cell_863/recurrent_kernellstm_863/lstm_cell_863/biasdense_287/kerneldense_287/bias*
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
%__inference_signature_wrapper_4171152
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_287/kernel/Read/ReadVariableOp"dense_287/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_861/lstm_cell_861/kernel/Read/ReadVariableOp;lstm_861/lstm_cell_861/recurrent_kernel/Read/ReadVariableOp/lstm_861/lstm_cell_861/bias/Read/ReadVariableOp1lstm_862/lstm_cell_862/kernel/Read/ReadVariableOp;lstm_862/lstm_cell_862/recurrent_kernel/Read/ReadVariableOp/lstm_862/lstm_cell_862/bias/Read/ReadVariableOp1lstm_863/lstm_cell_863/kernel/Read/ReadVariableOp;lstm_863/lstm_cell_863/recurrent_kernel/Read/ReadVariableOp/lstm_863/lstm_cell_863/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_287/kernel/m/Read/ReadVariableOp)Adam/dense_287/bias/m/Read/ReadVariableOp8Adam/lstm_861/lstm_cell_861/kernel/m/Read/ReadVariableOpBAdam/lstm_861/lstm_cell_861/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_861/lstm_cell_861/bias/m/Read/ReadVariableOp8Adam/lstm_862/lstm_cell_862/kernel/m/Read/ReadVariableOpBAdam/lstm_862/lstm_cell_862/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_862/lstm_cell_862/bias/m/Read/ReadVariableOp8Adam/lstm_863/lstm_cell_863/kernel/m/Read/ReadVariableOpBAdam/lstm_863/lstm_cell_863/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_863/lstm_cell_863/bias/m/Read/ReadVariableOp+Adam/dense_287/kernel/v/Read/ReadVariableOp)Adam/dense_287/bias/v/Read/ReadVariableOp8Adam/lstm_861/lstm_cell_861/kernel/v/Read/ReadVariableOpBAdam/lstm_861/lstm_cell_861/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_861/lstm_cell_861/bias/v/Read/ReadVariableOp8Adam/lstm_862/lstm_cell_862/kernel/v/Read/ReadVariableOpBAdam/lstm_862/lstm_cell_862/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_862/lstm_cell_862/bias/v/Read/ReadVariableOp8Adam/lstm_863/lstm_cell_863/kernel/v/Read/ReadVariableOpBAdam/lstm_863/lstm_cell_863/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_863/lstm_cell_863/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4174364
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_287/kerneldense_287/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_861/lstm_cell_861/kernel'lstm_861/lstm_cell_861/recurrent_kernellstm_861/lstm_cell_861/biaslstm_862/lstm_cell_862/kernel'lstm_862/lstm_cell_862/recurrent_kernellstm_862/lstm_cell_862/biaslstm_863/lstm_cell_863/kernel'lstm_863/lstm_cell_863/recurrent_kernellstm_863/lstm_cell_863/biastotalcountAdam/dense_287/kernel/mAdam/dense_287/bias/m$Adam/lstm_861/lstm_cell_861/kernel/m.Adam/lstm_861/lstm_cell_861/recurrent_kernel/m"Adam/lstm_861/lstm_cell_861/bias/m$Adam/lstm_862/lstm_cell_862/kernel/m.Adam/lstm_862/lstm_cell_862/recurrent_kernel/m"Adam/lstm_862/lstm_cell_862/bias/m$Adam/lstm_863/lstm_cell_863/kernel/m.Adam/lstm_863/lstm_cell_863/recurrent_kernel/m"Adam/lstm_863/lstm_cell_863/bias/mAdam/dense_287/kernel/vAdam/dense_287/bias/v$Adam/lstm_861/lstm_cell_861/kernel/v.Adam/lstm_861/lstm_cell_861/recurrent_kernel/v"Adam/lstm_861/lstm_cell_861/bias/v$Adam/lstm_862/lstm_cell_862/kernel/v.Adam/lstm_862/lstm_cell_862/recurrent_kernel/v"Adam/lstm_862/lstm_cell_862/bias/v$Adam/lstm_863/lstm_cell_863/kernel/v.Adam/lstm_863/lstm_cell_863/recurrent_kernel/v"Adam/lstm_863/lstm_cell_863/bias/v*4
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
#__inference__traced_restore_4174494??+
?

?
0__inference_sequential_287_layer_call_fn_4171057
lstm_861_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_861_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171005o
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
_user_specified_namelstm_861_input
?#
?
while_body_4169164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_687_4169188_0:	?0
while_lstm_cell_687_4169190_0:	d?,
while_lstm_cell_687_4169192_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_687_4169188:	?.
while_lstm_cell_687_4169190:	d?*
while_lstm_cell_687_4169192:	???+while/lstm_cell_687/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_687_4169188_0while_lstm_cell_687_4169190_0while_lstm_cell_687_4169192_0*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4169105?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_687/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_687/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_687/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_687/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_687_4169188while_lstm_cell_687_4169188_0"<
while_lstm_cell_687_4169190while_lstm_cell_687_4169190_0"<
while_lstm_cell_687_4169192while_lstm_cell_687_4169192_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_687/StatefulPartitionedCall+while/lstm_cell_687/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_862_layer_call_fn_4172687
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4169392|
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
lstm_863_while_cond_4171542.
*lstm_863_while_lstm_863_while_loop_counter4
0lstm_863_while_lstm_863_while_maximum_iterations
lstm_863_while_placeholder 
lstm_863_while_placeholder_1 
lstm_863_while_placeholder_2 
lstm_863_while_placeholder_30
,lstm_863_while_less_lstm_863_strided_slice_1G
Clstm_863_while_lstm_863_while_cond_4171542___redundant_placeholder0G
Clstm_863_while_lstm_863_while_cond_4171542___redundant_placeholder1G
Clstm_863_while_lstm_863_while_cond_4171542___redundant_placeholder2G
Clstm_863_while_lstm_863_while_cond_4171542___redundant_placeholder3
lstm_863_while_identity
?
lstm_863/while/LessLesslstm_863_while_placeholder,lstm_863_while_less_lstm_863_strided_slice_1*
T0*
_output_shapes
: ]
lstm_863/while/IdentityIdentitylstm_863/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_863_while_identity lstm_863/while/Identity:output:0*(
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4174189

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
?
?
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171087
lstm_861_input#
lstm_861_4171060:	?#
lstm_861_4171062:	d?
lstm_861_4171064:	?#
lstm_862_4171067:	d?#
lstm_862_4171069:	2?
lstm_862_4171071:	?"
lstm_863_4171074:2("
lstm_863_4171076:
(
lstm_863_4171078:(#
dense_287_4171081:

dense_287_4171083:
identity??!dense_287/StatefulPartitionedCall? lstm_861/StatefulPartitionedCall? lstm_862/StatefulPartitionedCall? lstm_863/StatefulPartitionedCall?
 lstm_861/StatefulPartitionedCallStatefulPartitionedCalllstm_861_inputlstm_861_4171060lstm_861_4171062lstm_861_4171064*
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170091?
 lstm_862/StatefulPartitionedCallStatefulPartitionedCall)lstm_861/StatefulPartitionedCall:output:0lstm_862_4171067lstm_862_4171069lstm_862_4171071*
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170241?
 lstm_863/StatefulPartitionedCallStatefulPartitionedCall)lstm_862/StatefulPartitionedCall:output:0lstm_863_4171074lstm_863_4171076lstm_863_4171078*
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170391?
!dense_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_863/StatefulPartitionedCall:output:0dense_287_4171081dense_287_4171083*
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
F__inference_dense_287_layer_call_and_return_conditional_losses_4170409y
IdentityIdentity*dense_287/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_287/StatefulPartitionedCall!^lstm_861/StatefulPartitionedCall!^lstm_862/StatefulPartitionedCall!^lstm_863/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_287/StatefulPartitionedCall!dense_287/StatefulPartitionedCall2D
 lstm_861/StatefulPartitionedCall lstm_861/StatefulPartitionedCall2D
 lstm_862/StatefulPartitionedCall lstm_862/StatefulPartitionedCall2D
 lstm_863/StatefulPartitionedCall lstm_863/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_861_input
?
?
*__inference_lstm_861_layer_call_fn_4172082
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4169233|
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
0__inference_sequential_287_layer_call_fn_4170441
lstm_861_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_861_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4170416o
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
_user_specified_namelstm_861_input
?

?
0__inference_sequential_287_layer_call_fn_4171206

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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171005o
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
/__inference_lstm_cell_688_layer_call_fn_4174059

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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169455o
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
*sequential_287_lstm_861_while_body_4168524L
Hsequential_287_lstm_861_while_sequential_287_lstm_861_while_loop_counterR
Nsequential_287_lstm_861_while_sequential_287_lstm_861_while_maximum_iterations-
)sequential_287_lstm_861_while_placeholder/
+sequential_287_lstm_861_while_placeholder_1/
+sequential_287_lstm_861_while_placeholder_2/
+sequential_287_lstm_861_while_placeholder_3K
Gsequential_287_lstm_861_while_sequential_287_lstm_861_strided_slice_1_0?
?sequential_287_lstm_861_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_861_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_287_lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0:	?a
Nsequential_287_lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?\
Msequential_287_lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0:	?*
&sequential_287_lstm_861_while_identity,
(sequential_287_lstm_861_while_identity_1,
(sequential_287_lstm_861_while_identity_2,
(sequential_287_lstm_861_while_identity_3,
(sequential_287_lstm_861_while_identity_4,
(sequential_287_lstm_861_while_identity_5I
Esequential_287_lstm_861_while_sequential_287_lstm_861_strided_slice_1?
?sequential_287_lstm_861_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_861_tensorarrayunstack_tensorlistfromtensor]
Jsequential_287_lstm_861_while_lstm_cell_687_matmul_readvariableop_resource:	?_
Lsequential_287_lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource:	d?Z
Ksequential_287_lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource:	???Bsequential_287/lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp?Asequential_287/lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp?Csequential_287/lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp?
Osequential_287/lstm_861/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_287/lstm_861/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_287_lstm_861_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_861_tensorarrayunstack_tensorlistfromtensor_0)sequential_287_lstm_861_while_placeholderXsequential_287/lstm_861/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_287/lstm_861/while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOpLsequential_287_lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_287/lstm_861/while/lstm_cell_687/MatMulMatMulHsequential_287/lstm_861/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_287/lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_287/lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOpNsequential_287_lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_287/lstm_861/while/lstm_cell_687/MatMul_1MatMul+sequential_287_lstm_861_while_placeholder_2Ksequential_287/lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_287/lstm_861/while/lstm_cell_687/addAddV2<sequential_287/lstm_861/while/lstm_cell_687/MatMul:product:0>sequential_287/lstm_861/while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_287/lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOpMsequential_287_lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_287/lstm_861/while/lstm_cell_687/BiasAddBiasAdd3sequential_287/lstm_861/while/lstm_cell_687/add:z:0Jsequential_287/lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_287/lstm_861/while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_287/lstm_861/while/lstm_cell_687/splitSplitDsequential_287/lstm_861/while/lstm_cell_687/split/split_dim:output:0<sequential_287/lstm_861/while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_287/lstm_861/while/lstm_cell_687/SigmoidSigmoid:sequential_287/lstm_861/while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_287/lstm_861/while/lstm_cell_687/Sigmoid_1Sigmoid:sequential_287/lstm_861/while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_287/lstm_861/while/lstm_cell_687/mulMul9sequential_287/lstm_861/while/lstm_cell_687/Sigmoid_1:y:0+sequential_287_lstm_861_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_287/lstm_861/while/lstm_cell_687/ReluRelu:sequential_287/lstm_861/while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_287/lstm_861/while/lstm_cell_687/mul_1Mul7sequential_287/lstm_861/while/lstm_cell_687/Sigmoid:y:0>sequential_287/lstm_861/while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_287/lstm_861/while/lstm_cell_687/add_1AddV23sequential_287/lstm_861/while/lstm_cell_687/mul:z:05sequential_287/lstm_861/while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_287/lstm_861/while/lstm_cell_687/Sigmoid_2Sigmoid:sequential_287/lstm_861/while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_287/lstm_861/while/lstm_cell_687/Relu_1Relu5sequential_287/lstm_861/while/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_287/lstm_861/while/lstm_cell_687/mul_2Mul9sequential_287/lstm_861/while/lstm_cell_687/Sigmoid_2:y:0@sequential_287/lstm_861/while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_287/lstm_861/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_287_lstm_861_while_placeholder_1)sequential_287_lstm_861_while_placeholder5sequential_287/lstm_861/while/lstm_cell_687/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_287/lstm_861/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_287/lstm_861/while/addAddV2)sequential_287_lstm_861_while_placeholder,sequential_287/lstm_861/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_287/lstm_861/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_287/lstm_861/while/add_1AddV2Hsequential_287_lstm_861_while_sequential_287_lstm_861_while_loop_counter.sequential_287/lstm_861/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_287/lstm_861/while/IdentityIdentity'sequential_287/lstm_861/while/add_1:z:0#^sequential_287/lstm_861/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_861/while/Identity_1IdentityNsequential_287_lstm_861_while_sequential_287_lstm_861_while_maximum_iterations#^sequential_287/lstm_861/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_861/while/Identity_2Identity%sequential_287/lstm_861/while/add:z:0#^sequential_287/lstm_861/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_861/while/Identity_3IdentityRsequential_287/lstm_861/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_287/lstm_861/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_861/while/Identity_4Identity5sequential_287/lstm_861/while/lstm_cell_687/mul_2:z:0#^sequential_287/lstm_861/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_287/lstm_861/while/Identity_5Identity5sequential_287/lstm_861/while/lstm_cell_687/add_1:z:0#^sequential_287/lstm_861/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_287/lstm_861/while/NoOpNoOpC^sequential_287/lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOpB^sequential_287/lstm_861/while/lstm_cell_687/MatMul/ReadVariableOpD^sequential_287/lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_287_lstm_861_while_identity/sequential_287/lstm_861/while/Identity:output:0"]
(sequential_287_lstm_861_while_identity_11sequential_287/lstm_861/while/Identity_1:output:0"]
(sequential_287_lstm_861_while_identity_21sequential_287/lstm_861/while/Identity_2:output:0"]
(sequential_287_lstm_861_while_identity_31sequential_287/lstm_861/while/Identity_3:output:0"]
(sequential_287_lstm_861_while_identity_41sequential_287/lstm_861/while/Identity_4:output:0"]
(sequential_287_lstm_861_while_identity_51sequential_287/lstm_861/while/Identity_5:output:0"?
Ksequential_287_lstm_861_while_lstm_cell_687_biasadd_readvariableop_resourceMsequential_287_lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0"?
Lsequential_287_lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resourceNsequential_287_lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0"?
Jsequential_287_lstm_861_while_lstm_cell_687_matmul_readvariableop_resourceLsequential_287_lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0"?
Esequential_287_lstm_861_while_sequential_287_lstm_861_strided_slice_1Gsequential_287_lstm_861_while_sequential_287_lstm_861_strided_slice_1_0"?
?sequential_287_lstm_861_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_861_tensorarrayunstack_tensorlistfromtensor?sequential_287_lstm_861_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_861_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_287/lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOpBsequential_287/lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp2?
Asequential_287/lstm_861/while/lstm_cell_687/MatMul/ReadVariableOpAsequential_287/lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp2?
Csequential_287/lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOpCsequential_287/lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4172449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4170006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4170006___redundant_placeholder05
1while_while_cond_4170006___redundant_placeholder15
1while_while_cond_4170006___redundant_placeholder25
1while_while_cond_4170006___redundant_placeholder3
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171117
lstm_861_input#
lstm_861_4171090:	?#
lstm_861_4171092:	d?
lstm_861_4171094:	?#
lstm_862_4171097:	d?#
lstm_862_4171099:	2?
lstm_862_4171101:	?"
lstm_863_4171104:2("
lstm_863_4171106:
(
lstm_863_4171108:(#
dense_287_4171111:

dense_287_4171113:
identity??!dense_287/StatefulPartitionedCall? lstm_861/StatefulPartitionedCall? lstm_862/StatefulPartitionedCall? lstm_863/StatefulPartitionedCall?
 lstm_861/StatefulPartitionedCallStatefulPartitionedCalllstm_861_inputlstm_861_4171090lstm_861_4171092lstm_861_4171094*
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170937?
 lstm_862/StatefulPartitionedCallStatefulPartitionedCall)lstm_861/StatefulPartitionedCall:output:0lstm_862_4171097lstm_862_4171099lstm_862_4171101*
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170772?
 lstm_863/StatefulPartitionedCallStatefulPartitionedCall)lstm_862/StatefulPartitionedCall:output:0lstm_863_4171104lstm_863_4171106lstm_863_4171108*
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170607?
!dense_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_863/StatefulPartitionedCall:output:0dense_287_4171111dense_287_4171113*
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
F__inference_dense_287_layer_call_and_return_conditional_losses_4170409y
IdentityIdentity*dense_287/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_287/StatefulPartitionedCall!^lstm_861/StatefulPartitionedCall!^lstm_862/StatefulPartitionedCall!^lstm_863/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_287/StatefulPartitionedCall!dense_287/StatefulPartitionedCall2D
 lstm_861/StatefulPartitionedCall lstm_861/StatefulPartitionedCall2D
 lstm_862/StatefulPartitionedCall lstm_862/StatefulPartitionedCall2D
 lstm_863/StatefulPartitionedCall lstm_863/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_861_input
?
?
while_cond_4170687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4170687___redundant_placeholder05
1while_while_cond_4170687___redundant_placeholder15
1while_while_cond_4170687___redundant_placeholder25
1while_while_cond_4170687___redundant_placeholder3
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
+__inference_dense_287_layer_call_fn_4173917

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
F__inference_dense_287_layer_call_and_return_conditional_losses_4170409o
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
while_cond_4173064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4173064___redundant_placeholder05
1while_while_cond_4173064___redundant_placeholder15
1while_while_cond_4173064___redundant_placeholder25
1while_while_cond_4173064___redundant_placeholder3
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173479
inputs_0>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4173395*
condR
while_cond_4173394*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_4169323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_688_4169347_0:	d?0
while_lstm_cell_688_4169349_0:	2?,
while_lstm_cell_688_4169351_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_688_4169347:	d?.
while_lstm_cell_688_4169349:	2?*
while_lstm_cell_688_4169351:	???+while/lstm_cell_688/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_688_4169347_0while_lstm_cell_688_4169349_0while_lstm_cell_688_4169351_0*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169309?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_688/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_688/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_688/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_688/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_688_4169347while_lstm_cell_688_4169347_0"<
while_lstm_cell_688_4169349while_lstm_cell_688_4169349_0"<
while_lstm_cell_688_4169351while_lstm_cell_688_4169351_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_688/StatefulPartitionedCall+while/lstm_cell_688/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_689_layer_call_fn_4174157

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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169805o
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4174123

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

lstm_861_while_body_4171692.
*lstm_861_while_lstm_861_while_loop_counter4
0lstm_861_while_lstm_861_while_maximum_iterations
lstm_861_while_placeholder 
lstm_861_while_placeholder_1 
lstm_861_while_placeholder_2 
lstm_861_while_placeholder_3-
)lstm_861_while_lstm_861_strided_slice_1_0i
elstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0:	?R
?lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?M
>lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
lstm_861_while_identity
lstm_861_while_identity_1
lstm_861_while_identity_2
lstm_861_while_identity_3
lstm_861_while_identity_4
lstm_861_while_identity_5+
'lstm_861_while_lstm_861_strided_slice_1g
clstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensorN
;lstm_861_while_lstm_cell_687_matmul_readvariableop_resource:	?P
=lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource:	d?K
<lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource:	???3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp?2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp?4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp?
@lstm_861/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_861/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensor_0lstm_861_while_placeholderIlstm_861/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp=lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_861/while/lstm_cell_687/MatMulMatMul9lstm_861/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp?lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_861/while/lstm_cell_687/MatMul_1MatMullstm_861_while_placeholder_2<lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_861/while/lstm_cell_687/addAddV2-lstm_861/while/lstm_cell_687/MatMul:product:0/lstm_861/while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp>lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_861/while/lstm_cell_687/BiasAddBiasAdd$lstm_861/while/lstm_cell_687/add:z:0;lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_861/while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_861/while/lstm_cell_687/splitSplit5lstm_861/while/lstm_cell_687/split/split_dim:output:0-lstm_861/while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_861/while/lstm_cell_687/SigmoidSigmoid+lstm_861/while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_861/while/lstm_cell_687/Sigmoid_1Sigmoid+lstm_861/while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_861/while/lstm_cell_687/mulMul*lstm_861/while/lstm_cell_687/Sigmoid_1:y:0lstm_861_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_861/while/lstm_cell_687/ReluRelu+lstm_861/while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_861/while/lstm_cell_687/mul_1Mul(lstm_861/while/lstm_cell_687/Sigmoid:y:0/lstm_861/while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_861/while/lstm_cell_687/add_1AddV2$lstm_861/while/lstm_cell_687/mul:z:0&lstm_861/while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_861/while/lstm_cell_687/Sigmoid_2Sigmoid+lstm_861/while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_861/while/lstm_cell_687/Relu_1Relu&lstm_861/while/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_861/while/lstm_cell_687/mul_2Mul*lstm_861/while/lstm_cell_687/Sigmoid_2:y:01lstm_861/while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_861/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_861_while_placeholder_1lstm_861_while_placeholder&lstm_861/while/lstm_cell_687/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_861/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_861/while/addAddV2lstm_861_while_placeholderlstm_861/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_861/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_861/while/add_1AddV2*lstm_861_while_lstm_861_while_loop_counterlstm_861/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_861/while/IdentityIdentitylstm_861/while/add_1:z:0^lstm_861/while/NoOp*
T0*
_output_shapes
: ?
lstm_861/while/Identity_1Identity0lstm_861_while_lstm_861_while_maximum_iterations^lstm_861/while/NoOp*
T0*
_output_shapes
: t
lstm_861/while/Identity_2Identitylstm_861/while/add:z:0^lstm_861/while/NoOp*
T0*
_output_shapes
: ?
lstm_861/while/Identity_3IdentityClstm_861/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_861/while/NoOp*
T0*
_output_shapes
: ?
lstm_861/while/Identity_4Identity&lstm_861/while/lstm_cell_687/mul_2:z:0^lstm_861/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_861/while/Identity_5Identity&lstm_861/while/lstm_cell_687/add_1:z:0^lstm_861/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_861/while/NoOpNoOp4^lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp3^lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp5^lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_861_while_identity lstm_861/while/Identity:output:0"?
lstm_861_while_identity_1"lstm_861/while/Identity_1:output:0"?
lstm_861_while_identity_2"lstm_861/while/Identity_2:output:0"?
lstm_861_while_identity_3"lstm_861/while/Identity_3:output:0"?
lstm_861_while_identity_4"lstm_861/while/Identity_4:output:0"?
lstm_861_while_identity_5"lstm_861/while/Identity_5:output:0"T
'lstm_861_while_lstm_861_strided_slice_1)lstm_861_while_lstm_861_strided_slice_1_0"~
<lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource>lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0"?
=lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource?lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0"|
;lstm_861_while_lstm_cell_687_matmul_readvariableop_resource=lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0"?
clstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensorelstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp2h
2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp2l
4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4172921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4172921___redundant_placeholder05
1while_while_cond_4172921___redundant_placeholder15
1while_while_cond_4172921___redundant_placeholder25
1while_while_cond_4172921___redundant_placeholder3
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
while_cond_4173537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4173537___redundant_placeholder05
1while_while_cond_4173537___redundant_placeholder15
1while_while_cond_4173537___redundant_placeholder25
1while_while_cond_4173537___redundant_placeholder3
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

lstm_862_while_body_4171831.
*lstm_862_while_lstm_862_while_loop_counter4
0lstm_862_while_lstm_862_while_maximum_iterations
lstm_862_while_placeholder 
lstm_862_while_placeholder_1 
lstm_862_while_placeholder_2 
lstm_862_while_placeholder_3-
)lstm_862_while_lstm_862_strided_slice_1_0i
elstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0:	d?R
?lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?M
>lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
lstm_862_while_identity
lstm_862_while_identity_1
lstm_862_while_identity_2
lstm_862_while_identity_3
lstm_862_while_identity_4
lstm_862_while_identity_5+
'lstm_862_while_lstm_862_strided_slice_1g
clstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensorN
;lstm_862_while_lstm_cell_688_matmul_readvariableop_resource:	d?P
=lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource:	2?K
<lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource:	???3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp?2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp?4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp?
@lstm_862/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_862/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensor_0lstm_862_while_placeholderIlstm_862/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp=lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_862/while/lstm_cell_688/MatMulMatMul9lstm_862/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp?lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_862/while/lstm_cell_688/MatMul_1MatMullstm_862_while_placeholder_2<lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_862/while/lstm_cell_688/addAddV2-lstm_862/while/lstm_cell_688/MatMul:product:0/lstm_862/while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp>lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_862/while/lstm_cell_688/BiasAddBiasAdd$lstm_862/while/lstm_cell_688/add:z:0;lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_862/while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_862/while/lstm_cell_688/splitSplit5lstm_862/while/lstm_cell_688/split/split_dim:output:0-lstm_862/while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_862/while/lstm_cell_688/SigmoidSigmoid+lstm_862/while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_862/while/lstm_cell_688/Sigmoid_1Sigmoid+lstm_862/while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_862/while/lstm_cell_688/mulMul*lstm_862/while/lstm_cell_688/Sigmoid_1:y:0lstm_862_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_862/while/lstm_cell_688/ReluRelu+lstm_862/while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_862/while/lstm_cell_688/mul_1Mul(lstm_862/while/lstm_cell_688/Sigmoid:y:0/lstm_862/while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_862/while/lstm_cell_688/add_1AddV2$lstm_862/while/lstm_cell_688/mul:z:0&lstm_862/while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_862/while/lstm_cell_688/Sigmoid_2Sigmoid+lstm_862/while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_862/while/lstm_cell_688/Relu_1Relu&lstm_862/while/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_862/while/lstm_cell_688/mul_2Mul*lstm_862/while/lstm_cell_688/Sigmoid_2:y:01lstm_862/while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_862/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_862_while_placeholder_1lstm_862_while_placeholder&lstm_862/while/lstm_cell_688/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_862/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_862/while/addAddV2lstm_862_while_placeholderlstm_862/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_862/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_862/while/add_1AddV2*lstm_862_while_lstm_862_while_loop_counterlstm_862/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_862/while/IdentityIdentitylstm_862/while/add_1:z:0^lstm_862/while/NoOp*
T0*
_output_shapes
: ?
lstm_862/while/Identity_1Identity0lstm_862_while_lstm_862_while_maximum_iterations^lstm_862/while/NoOp*
T0*
_output_shapes
: t
lstm_862/while/Identity_2Identitylstm_862/while/add:z:0^lstm_862/while/NoOp*
T0*
_output_shapes
: ?
lstm_862/while/Identity_3IdentityClstm_862/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_862/while/NoOp*
T0*
_output_shapes
: ?
lstm_862/while/Identity_4Identity&lstm_862/while/lstm_cell_688/mul_2:z:0^lstm_862/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_862/while/Identity_5Identity&lstm_862/while/lstm_cell_688/add_1:z:0^lstm_862/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_862/while/NoOpNoOp4^lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp3^lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp5^lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_862_while_identity lstm_862/while/Identity:output:0"?
lstm_862_while_identity_1"lstm_862/while/Identity_1:output:0"?
lstm_862_while_identity_2"lstm_862/while/Identity_2:output:0"?
lstm_862_while_identity_3"lstm_862/while/Identity_3:output:0"?
lstm_862_while_identity_4"lstm_862/while/Identity_4:output:0"?
lstm_862_while_identity_5"lstm_862/while/Identity_5:output:0"T
'lstm_862_while_lstm_862_strided_slice_1)lstm_862_while_lstm_862_strided_slice_1_0"~
<lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource>lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0"?
=lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource?lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0"|
;lstm_862_while_lstm_cell_688_matmul_readvariableop_resource=lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0"?
clstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensorelstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp2h
2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp2l
4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170772

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4170688*
condR
while_cond_4170687*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170937

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4170853*
condR
while_cond_4170852*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4168959

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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173622
inputs_0>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4173538*
condR
while_cond_4173537*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4172448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4172448___redundant_placeholder05
1while_while_cond_4172448___redundant_placeholder15
1while_while_cond_4172448___redundant_placeholder25
1while_while_cond_4172448___redundant_placeholder3
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
*__inference_lstm_863_layer_call_fn_4173325

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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170391o
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
while_cond_4173207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4173207___redundant_placeholder05
1while_while_cond_4173207___redundant_placeholder15
1while_while_cond_4173207___redundant_placeholder25
1while_while_cond_4173207___redundant_placeholder3
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
/__inference_lstm_cell_688_layer_call_fn_4174042

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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169309o
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
??
?
#__inference__traced_restore_4174494
file_prefix3
!assignvariableop_dense_287_kernel:
/
!assignvariableop_1_dense_287_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_861_lstm_cell_861_kernel:	?M
:assignvariableop_8_lstm_861_lstm_cell_861_recurrent_kernel:	d?=
.assignvariableop_9_lstm_861_lstm_cell_861_bias:	?D
1assignvariableop_10_lstm_862_lstm_cell_862_kernel:	d?N
;assignvariableop_11_lstm_862_lstm_cell_862_recurrent_kernel:	2?>
/assignvariableop_12_lstm_862_lstm_cell_862_bias:	?C
1assignvariableop_13_lstm_863_lstm_cell_863_kernel:2(M
;assignvariableop_14_lstm_863_lstm_cell_863_recurrent_kernel:
(=
/assignvariableop_15_lstm_863_lstm_cell_863_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_287_kernel_m:
7
)assignvariableop_19_adam_dense_287_bias_m:K
8assignvariableop_20_adam_lstm_861_lstm_cell_861_kernel_m:	?U
Bassignvariableop_21_adam_lstm_861_lstm_cell_861_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_861_lstm_cell_861_bias_m:	?K
8assignvariableop_23_adam_lstm_862_lstm_cell_862_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_862_lstm_cell_862_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_862_lstm_cell_862_bias_m:	?J
8assignvariableop_26_adam_lstm_863_lstm_cell_863_kernel_m:2(T
Bassignvariableop_27_adam_lstm_863_lstm_cell_863_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_863_lstm_cell_863_bias_m:(=
+assignvariableop_29_adam_dense_287_kernel_v:
7
)assignvariableop_30_adam_dense_287_bias_v:K
8assignvariableop_31_adam_lstm_861_lstm_cell_861_kernel_v:	?U
Bassignvariableop_32_adam_lstm_861_lstm_cell_861_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_861_lstm_cell_861_bias_v:	?K
8assignvariableop_34_adam_lstm_862_lstm_cell_862_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_862_lstm_cell_862_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_862_lstm_cell_862_bias_v:	?J
8assignvariableop_37_adam_lstm_863_lstm_cell_863_kernel_v:2(T
Bassignvariableop_38_adam_lstm_863_lstm_cell_863_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_863_lstm_cell_863_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_287_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_287_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_861_lstm_cell_861_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_861_lstm_cell_861_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_861_lstm_cell_861_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_862_lstm_cell_862_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_862_lstm_cell_862_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_862_lstm_cell_862_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_863_lstm_cell_863_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_863_lstm_cell_863_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_863_lstm_cell_863_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_287_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_287_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_861_lstm_cell_861_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_861_lstm_cell_861_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_861_lstm_cell_861_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_862_lstm_cell_862_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_862_lstm_cell_862_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_862_lstm_cell_862_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_863_lstm_cell_863_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_863_lstm_cell_863_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_863_lstm_cell_863_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_287_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_287_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_861_lstm_cell_861_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_861_lstm_cell_861_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_861_lstm_cell_861_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_862_lstm_cell_862_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_862_lstm_cell_862_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_862_lstm_cell_862_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_863_lstm_cell_863_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_863_lstm_cell_863_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_863_lstm_cell_863_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4172778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4172778___redundant_placeholder05
1while_while_cond_4172778___redundant_placeholder15
1while_while_cond_4172778___redundant_placeholder25
1while_while_cond_4172778___redundant_placeholder3
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169659

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
?
E__inference_lstm_861_layer_call_and_return_conditional_losses_4169042

inputs(
lstm_cell_687_4168960:	?(
lstm_cell_687_4168962:	d?$
lstm_cell_687_4168964:	?
identity??%lstm_cell_687/StatefulPartitionedCall?while;
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
%lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_687_4168960lstm_cell_687_4168962lstm_cell_687_4168964*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4168959n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_687_4168960lstm_cell_687_4168962lstm_cell_687_4168964*
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
while_body_4168973*
condR
while_cond_4168972*K
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
NoOpNoOp&^lstm_cell_687/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_687/StatefulPartitionedCall%lstm_cell_687/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_4169673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_689_4169697_0:2(/
while_lstm_cell_689_4169699_0:
(+
while_lstm_cell_689_4169701_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_689_4169697:2(-
while_lstm_cell_689_4169699:
()
while_lstm_cell_689_4169701:(??+while/lstm_cell_689/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_689_4169697_0while_lstm_cell_689_4169699_0while_lstm_cell_689_4169701_0*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169659?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_689/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_689/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_689/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_689_4169697while_lstm_cell_689_4169697_0"<
while_lstm_cell_689_4169699while_lstm_cell_689_4169699_0"<
while_lstm_cell_689_4169701while_lstm_cell_689_4169701_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_689/StatefulPartitionedCall+while/lstm_cell_689/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4172591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4172591___redundant_placeholder05
1while_while_cond_4172591___redundant_placeholder15
1while_while_cond_4172591___redundant_placeholder25
1while_while_cond_4172591___redundant_placeholder3
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
??
?
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171633

inputsH
5lstm_861_lstm_cell_687_matmul_readvariableop_resource:	?J
7lstm_861_lstm_cell_687_matmul_1_readvariableop_resource:	d?E
6lstm_861_lstm_cell_687_biasadd_readvariableop_resource:	?H
5lstm_862_lstm_cell_688_matmul_readvariableop_resource:	d?J
7lstm_862_lstm_cell_688_matmul_1_readvariableop_resource:	2?E
6lstm_862_lstm_cell_688_biasadd_readvariableop_resource:	?G
5lstm_863_lstm_cell_689_matmul_readvariableop_resource:2(I
7lstm_863_lstm_cell_689_matmul_1_readvariableop_resource:
(D
6lstm_863_lstm_cell_689_biasadd_readvariableop_resource:(:
(dense_287_matmul_readvariableop_resource:
7
)dense_287_biasadd_readvariableop_resource:
identity?? dense_287/BiasAdd/ReadVariableOp?dense_287/MatMul/ReadVariableOp?-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp?,lstm_861/lstm_cell_687/MatMul/ReadVariableOp?.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp?lstm_861/while?-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp?,lstm_862/lstm_cell_688/MatMul/ReadVariableOp?.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp?lstm_862/while?-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp?,lstm_863/lstm_cell_689/MatMul/ReadVariableOp?.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp?lstm_863/whileD
lstm_861/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_861/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_861/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_861/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_sliceStridedSlicelstm_861/Shape:output:0%lstm_861/strided_slice/stack:output:0'lstm_861/strided_slice/stack_1:output:0'lstm_861/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_861/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_861/zeros/packedPacklstm_861/strided_slice:output:0 lstm_861/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_861/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_861/zerosFilllstm_861/zeros/packed:output:0lstm_861/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_861/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_861/zeros_1/packedPacklstm_861/strided_slice:output:0"lstm_861/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_861/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_861/zeros_1Fill lstm_861/zeros_1/packed:output:0lstm_861/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_861/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_861/transpose	Transposeinputs lstm_861/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_861/Shape_1Shapelstm_861/transpose:y:0*
T0*
_output_shapes
:h
lstm_861/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_861/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_861/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_slice_1StridedSlicelstm_861/Shape_1:output:0'lstm_861/strided_slice_1/stack:output:0)lstm_861/strided_slice_1/stack_1:output:0)lstm_861/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_861/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_861/TensorArrayV2TensorListReserve-lstm_861/TensorArrayV2/element_shape:output:0!lstm_861/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_861/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_861/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_861/transpose:y:0Glstm_861/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_861/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_861/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_861/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_slice_2StridedSlicelstm_861/transpose:y:0'lstm_861/strided_slice_2/stack:output:0)lstm_861/strided_slice_2/stack_1:output:0)lstm_861/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_861/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp5lstm_861_lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_861/lstm_cell_687/MatMulMatMul!lstm_861/strided_slice_2:output:04lstm_861/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp7lstm_861_lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_861/lstm_cell_687/MatMul_1MatMullstm_861/zeros:output:06lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_861/lstm_cell_687/addAddV2'lstm_861/lstm_cell_687/MatMul:product:0)lstm_861/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp6lstm_861_lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_861/lstm_cell_687/BiasAddBiasAddlstm_861/lstm_cell_687/add:z:05lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_861/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_861/lstm_cell_687/splitSplit/lstm_861/lstm_cell_687/split/split_dim:output:0'lstm_861/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_861/lstm_cell_687/SigmoidSigmoid%lstm_861/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_861/lstm_cell_687/Sigmoid_1Sigmoid%lstm_861/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/mulMul$lstm_861/lstm_cell_687/Sigmoid_1:y:0lstm_861/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_861/lstm_cell_687/ReluRelu%lstm_861/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/mul_1Mul"lstm_861/lstm_cell_687/Sigmoid:y:0)lstm_861/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/add_1AddV2lstm_861/lstm_cell_687/mul:z:0 lstm_861/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_861/lstm_cell_687/Sigmoid_2Sigmoid%lstm_861/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_861/lstm_cell_687/Relu_1Relu lstm_861/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/mul_2Mul$lstm_861/lstm_cell_687/Sigmoid_2:y:0+lstm_861/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_861/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_861/TensorArrayV2_1TensorListReserve/lstm_861/TensorArrayV2_1/element_shape:output:0!lstm_861/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_861/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_861/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_861/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_861/whileWhile$lstm_861/while/loop_counter:output:0*lstm_861/while/maximum_iterations:output:0lstm_861/time:output:0!lstm_861/TensorArrayV2_1:handle:0lstm_861/zeros:output:0lstm_861/zeros_1:output:0!lstm_861/strided_slice_1:output:0@lstm_861/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_861_lstm_cell_687_matmul_readvariableop_resource7lstm_861_lstm_cell_687_matmul_1_readvariableop_resource6lstm_861_lstm_cell_687_biasadd_readvariableop_resource*
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
lstm_861_while_body_4171265*'
condR
lstm_861_while_cond_4171264*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_861/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_861/TensorArrayV2Stack/TensorListStackTensorListStacklstm_861/while:output:3Blstm_861/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_861/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_861/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_861/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_slice_3StridedSlice4lstm_861/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_861/strided_slice_3/stack:output:0)lstm_861/strided_slice_3/stack_1:output:0)lstm_861/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_861/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_861/transpose_1	Transpose4lstm_861/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_861/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_861/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_862/ShapeShapelstm_861/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_862/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_862/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_862/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_sliceStridedSlicelstm_862/Shape:output:0%lstm_862/strided_slice/stack:output:0'lstm_862/strided_slice/stack_1:output:0'lstm_862/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_862/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_862/zeros/packedPacklstm_862/strided_slice:output:0 lstm_862/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_862/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_862/zerosFilllstm_862/zeros/packed:output:0lstm_862/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_862/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_862/zeros_1/packedPacklstm_862/strided_slice:output:0"lstm_862/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_862/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_862/zeros_1Fill lstm_862/zeros_1/packed:output:0lstm_862/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_862/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_862/transpose	Transposelstm_861/transpose_1:y:0 lstm_862/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_862/Shape_1Shapelstm_862/transpose:y:0*
T0*
_output_shapes
:h
lstm_862/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_862/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_862/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_slice_1StridedSlicelstm_862/Shape_1:output:0'lstm_862/strided_slice_1/stack:output:0)lstm_862/strided_slice_1/stack_1:output:0)lstm_862/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_862/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_862/TensorArrayV2TensorListReserve-lstm_862/TensorArrayV2/element_shape:output:0!lstm_862/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_862/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_862/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_862/transpose:y:0Glstm_862/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_862/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_862/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_862/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_slice_2StridedSlicelstm_862/transpose:y:0'lstm_862/strided_slice_2/stack:output:0)lstm_862/strided_slice_2/stack_1:output:0)lstm_862/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_862/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp5lstm_862_lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_862/lstm_cell_688/MatMulMatMul!lstm_862/strided_slice_2:output:04lstm_862/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp7lstm_862_lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_862/lstm_cell_688/MatMul_1MatMullstm_862/zeros:output:06lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_862/lstm_cell_688/addAddV2'lstm_862/lstm_cell_688/MatMul:product:0)lstm_862/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp6lstm_862_lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_862/lstm_cell_688/BiasAddBiasAddlstm_862/lstm_cell_688/add:z:05lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_862/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_862/lstm_cell_688/splitSplit/lstm_862/lstm_cell_688/split/split_dim:output:0'lstm_862/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_862/lstm_cell_688/SigmoidSigmoid%lstm_862/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_862/lstm_cell_688/Sigmoid_1Sigmoid%lstm_862/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/mulMul$lstm_862/lstm_cell_688/Sigmoid_1:y:0lstm_862/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_862/lstm_cell_688/ReluRelu%lstm_862/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/mul_1Mul"lstm_862/lstm_cell_688/Sigmoid:y:0)lstm_862/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/add_1AddV2lstm_862/lstm_cell_688/mul:z:0 lstm_862/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_862/lstm_cell_688/Sigmoid_2Sigmoid%lstm_862/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_862/lstm_cell_688/Relu_1Relu lstm_862/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/mul_2Mul$lstm_862/lstm_cell_688/Sigmoid_2:y:0+lstm_862/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_862/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_862/TensorArrayV2_1TensorListReserve/lstm_862/TensorArrayV2_1/element_shape:output:0!lstm_862/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_862/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_862/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_862/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_862/whileWhile$lstm_862/while/loop_counter:output:0*lstm_862/while/maximum_iterations:output:0lstm_862/time:output:0!lstm_862/TensorArrayV2_1:handle:0lstm_862/zeros:output:0lstm_862/zeros_1:output:0!lstm_862/strided_slice_1:output:0@lstm_862/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_862_lstm_cell_688_matmul_readvariableop_resource7lstm_862_lstm_cell_688_matmul_1_readvariableop_resource6lstm_862_lstm_cell_688_biasadd_readvariableop_resource*
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
lstm_862_while_body_4171404*'
condR
lstm_862_while_cond_4171403*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_862/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_862/TensorArrayV2Stack/TensorListStackTensorListStacklstm_862/while:output:3Blstm_862/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_862/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_862/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_862/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_slice_3StridedSlice4lstm_862/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_862/strided_slice_3/stack:output:0)lstm_862/strided_slice_3/stack_1:output:0)lstm_862/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_862/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_862/transpose_1	Transpose4lstm_862/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_862/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_862/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_863/ShapeShapelstm_862/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_863/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_863/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_863/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_sliceStridedSlicelstm_863/Shape:output:0%lstm_863/strided_slice/stack:output:0'lstm_863/strided_slice/stack_1:output:0'lstm_863/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_863/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_863/zeros/packedPacklstm_863/strided_slice:output:0 lstm_863/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_863/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_863/zerosFilllstm_863/zeros/packed:output:0lstm_863/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_863/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_863/zeros_1/packedPacklstm_863/strided_slice:output:0"lstm_863/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_863/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_863/zeros_1Fill lstm_863/zeros_1/packed:output:0lstm_863/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_863/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_863/transpose	Transposelstm_862/transpose_1:y:0 lstm_863/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_863/Shape_1Shapelstm_863/transpose:y:0*
T0*
_output_shapes
:h
lstm_863/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_863/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_863/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_slice_1StridedSlicelstm_863/Shape_1:output:0'lstm_863/strided_slice_1/stack:output:0)lstm_863/strided_slice_1/stack_1:output:0)lstm_863/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_863/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_863/TensorArrayV2TensorListReserve-lstm_863/TensorArrayV2/element_shape:output:0!lstm_863/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_863/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_863/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_863/transpose:y:0Glstm_863/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_863/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_863/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_863/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_slice_2StridedSlicelstm_863/transpose:y:0'lstm_863/strided_slice_2/stack:output:0)lstm_863/strided_slice_2/stack_1:output:0)lstm_863/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_863/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp5lstm_863_lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_863/lstm_cell_689/MatMulMatMul!lstm_863/strided_slice_2:output:04lstm_863/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp7lstm_863_lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_863/lstm_cell_689/MatMul_1MatMullstm_863/zeros:output:06lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_863/lstm_cell_689/addAddV2'lstm_863/lstm_cell_689/MatMul:product:0)lstm_863/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp6lstm_863_lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_863/lstm_cell_689/BiasAddBiasAddlstm_863/lstm_cell_689/add:z:05lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_863/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_863/lstm_cell_689/splitSplit/lstm_863/lstm_cell_689/split/split_dim:output:0'lstm_863/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_863/lstm_cell_689/SigmoidSigmoid%lstm_863/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_863/lstm_cell_689/Sigmoid_1Sigmoid%lstm_863/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/mulMul$lstm_863/lstm_cell_689/Sigmoid_1:y:0lstm_863/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_863/lstm_cell_689/ReluRelu%lstm_863/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/mul_1Mul"lstm_863/lstm_cell_689/Sigmoid:y:0)lstm_863/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/add_1AddV2lstm_863/lstm_cell_689/mul:z:0 lstm_863/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_863/lstm_cell_689/Sigmoid_2Sigmoid%lstm_863/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_863/lstm_cell_689/Relu_1Relu lstm_863/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/mul_2Mul$lstm_863/lstm_cell_689/Sigmoid_2:y:0+lstm_863/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_863/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_863/TensorArrayV2_1TensorListReserve/lstm_863/TensorArrayV2_1/element_shape:output:0!lstm_863/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_863/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_863/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_863/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_863/whileWhile$lstm_863/while/loop_counter:output:0*lstm_863/while/maximum_iterations:output:0lstm_863/time:output:0!lstm_863/TensorArrayV2_1:handle:0lstm_863/zeros:output:0lstm_863/zeros_1:output:0!lstm_863/strided_slice_1:output:0@lstm_863/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_863_lstm_cell_689_matmul_readvariableop_resource7lstm_863_lstm_cell_689_matmul_1_readvariableop_resource6lstm_863_lstm_cell_689_biasadd_readvariableop_resource*
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
lstm_863_while_body_4171543*'
condR
lstm_863_while_cond_4171542*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_863/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_863/TensorArrayV2Stack/TensorListStackTensorListStacklstm_863/while:output:3Blstm_863/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_863/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_863/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_863/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_slice_3StridedSlice4lstm_863/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_863/strided_slice_3/stack:output:0)lstm_863/strided_slice_3/stack_1:output:0)lstm_863/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_863/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_863/transpose_1	Transpose4lstm_863/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_863/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_863/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_287/MatMul/ReadVariableOpReadVariableOp(dense_287_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_287/MatMulMatMul!lstm_863/strided_slice_3:output:0'dense_287/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_287/BiasAdd/ReadVariableOpReadVariableOp)dense_287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_287/BiasAddBiasAdddense_287/MatMul:product:0(dense_287/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_287/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_287/BiasAdd/ReadVariableOp ^dense_287/MatMul/ReadVariableOp.^lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp-^lstm_861/lstm_cell_687/MatMul/ReadVariableOp/^lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp^lstm_861/while.^lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp-^lstm_862/lstm_cell_688/MatMul/ReadVariableOp/^lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp^lstm_862/while.^lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp-^lstm_863/lstm_cell_689/MatMul/ReadVariableOp/^lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp^lstm_863/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_287/BiasAdd/ReadVariableOp dense_287/BiasAdd/ReadVariableOp2B
dense_287/MatMul/ReadVariableOpdense_287/MatMul/ReadVariableOp2^
-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp2\
,lstm_861/lstm_cell_687/MatMul/ReadVariableOp,lstm_861/lstm_cell_687/MatMul/ReadVariableOp2`
.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp2 
lstm_861/whilelstm_861/while2^
-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp2\
,lstm_862/lstm_cell_688/MatMul/ReadVariableOp,lstm_862/lstm_cell_688/MatMul/ReadVariableOp2`
.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp2 
lstm_862/whilelstm_862/while2^
-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp2\
,lstm_863/lstm_cell_689/MatMul/ReadVariableOp,lstm_863/lstm_cell_689/MatMul/ReadVariableOp2`
.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp2 
lstm_863/whilelstm_863/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_862_layer_call_and_return_conditional_losses_4169583

inputs(
lstm_cell_688_4169501:	d?(
lstm_cell_688_4169503:	2?$
lstm_cell_688_4169505:	?
identity??%lstm_cell_688/StatefulPartitionedCall?while;
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
%lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_688_4169501lstm_cell_688_4169503lstm_cell_688_4169505*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169455n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_688_4169501lstm_cell_688_4169503lstm_cell_688_4169505*
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
while_body_4169514*
condR
while_cond_4169513*K
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
NoOpNoOp&^lstm_cell_688/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_688/StatefulPartitionedCall%lstm_cell_688/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4173823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4173823___redundant_placeholder05
1while_while_cond_4173823___redundant_placeholder15
1while_while_cond_4173823___redundant_placeholder25
1while_while_cond_4173823___redundant_placeholder3
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4169392

inputs(
lstm_cell_688_4169310:	d?(
lstm_cell_688_4169312:	2?$
lstm_cell_688_4169314:	?
identity??%lstm_cell_688/StatefulPartitionedCall?while;
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
%lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_688_4169310lstm_cell_688_4169312lstm_cell_688_4169314*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169309n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_688_4169310lstm_cell_688_4169312lstm_cell_688_4169314*
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
while_body_4169323*
condR
while_cond_4169322*K
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
NoOpNoOp&^lstm_cell_688/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_688/StatefulPartitionedCall%lstm_cell_688/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173292

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4173208*
condR
while_cond_4173207*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_861_while_cond_4171691.
*lstm_861_while_lstm_861_while_loop_counter4
0lstm_861_while_lstm_861_while_maximum_iterations
lstm_861_while_placeholder 
lstm_861_while_placeholder_1 
lstm_861_while_placeholder_2 
lstm_861_while_placeholder_30
,lstm_861_while_less_lstm_861_strided_slice_1G
Clstm_861_while_lstm_861_while_cond_4171691___redundant_placeholder0G
Clstm_861_while_lstm_861_while_cond_4171691___redundant_placeholder1G
Clstm_861_while_lstm_861_while_cond_4171691___redundant_placeholder2G
Clstm_861_while_lstm_861_while_cond_4171691___redundant_placeholder3
lstm_861_while_identity
?
lstm_861/while/LessLesslstm_861_while_placeholder,lstm_861_while_less_lstm_861_strided_slice_1*
T0*
_output_shapes
: ]
lstm_861/while/IdentityIdentitylstm_861/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_861_while_identity lstm_861/while/Identity:output:0*(
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173765

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4173681*
condR
while_cond_4173680*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4174091

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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4174221

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
*sequential_287_lstm_862_while_body_4168663L
Hsequential_287_lstm_862_while_sequential_287_lstm_862_while_loop_counterR
Nsequential_287_lstm_862_while_sequential_287_lstm_862_while_maximum_iterations-
)sequential_287_lstm_862_while_placeholder/
+sequential_287_lstm_862_while_placeholder_1/
+sequential_287_lstm_862_while_placeholder_2/
+sequential_287_lstm_862_while_placeholder_3K
Gsequential_287_lstm_862_while_sequential_287_lstm_862_strided_slice_1_0?
?sequential_287_lstm_862_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_862_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_287_lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0:	d?a
Nsequential_287_lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?\
Msequential_287_lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0:	?*
&sequential_287_lstm_862_while_identity,
(sequential_287_lstm_862_while_identity_1,
(sequential_287_lstm_862_while_identity_2,
(sequential_287_lstm_862_while_identity_3,
(sequential_287_lstm_862_while_identity_4,
(sequential_287_lstm_862_while_identity_5I
Esequential_287_lstm_862_while_sequential_287_lstm_862_strided_slice_1?
?sequential_287_lstm_862_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_862_tensorarrayunstack_tensorlistfromtensor]
Jsequential_287_lstm_862_while_lstm_cell_688_matmul_readvariableop_resource:	d?_
Lsequential_287_lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource:	2?Z
Ksequential_287_lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource:	???Bsequential_287/lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp?Asequential_287/lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp?Csequential_287/lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp?
Osequential_287/lstm_862/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_287/lstm_862/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_287_lstm_862_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_862_tensorarrayunstack_tensorlistfromtensor_0)sequential_287_lstm_862_while_placeholderXsequential_287/lstm_862/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_287/lstm_862/while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOpLsequential_287_lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_287/lstm_862/while/lstm_cell_688/MatMulMatMulHsequential_287/lstm_862/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_287/lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_287/lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOpNsequential_287_lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_287/lstm_862/while/lstm_cell_688/MatMul_1MatMul+sequential_287_lstm_862_while_placeholder_2Ksequential_287/lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_287/lstm_862/while/lstm_cell_688/addAddV2<sequential_287/lstm_862/while/lstm_cell_688/MatMul:product:0>sequential_287/lstm_862/while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_287/lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOpMsequential_287_lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_287/lstm_862/while/lstm_cell_688/BiasAddBiasAdd3sequential_287/lstm_862/while/lstm_cell_688/add:z:0Jsequential_287/lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_287/lstm_862/while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_287/lstm_862/while/lstm_cell_688/splitSplitDsequential_287/lstm_862/while/lstm_cell_688/split/split_dim:output:0<sequential_287/lstm_862/while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_287/lstm_862/while/lstm_cell_688/SigmoidSigmoid:sequential_287/lstm_862/while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_287/lstm_862/while/lstm_cell_688/Sigmoid_1Sigmoid:sequential_287/lstm_862/while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_287/lstm_862/while/lstm_cell_688/mulMul9sequential_287/lstm_862/while/lstm_cell_688/Sigmoid_1:y:0+sequential_287_lstm_862_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_287/lstm_862/while/lstm_cell_688/ReluRelu:sequential_287/lstm_862/while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_287/lstm_862/while/lstm_cell_688/mul_1Mul7sequential_287/lstm_862/while/lstm_cell_688/Sigmoid:y:0>sequential_287/lstm_862/while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_287/lstm_862/while/lstm_cell_688/add_1AddV23sequential_287/lstm_862/while/lstm_cell_688/mul:z:05sequential_287/lstm_862/while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_287/lstm_862/while/lstm_cell_688/Sigmoid_2Sigmoid:sequential_287/lstm_862/while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_287/lstm_862/while/lstm_cell_688/Relu_1Relu5sequential_287/lstm_862/while/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_287/lstm_862/while/lstm_cell_688/mul_2Mul9sequential_287/lstm_862/while/lstm_cell_688/Sigmoid_2:y:0@sequential_287/lstm_862/while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_287/lstm_862/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_287_lstm_862_while_placeholder_1)sequential_287_lstm_862_while_placeholder5sequential_287/lstm_862/while/lstm_cell_688/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_287/lstm_862/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_287/lstm_862/while/addAddV2)sequential_287_lstm_862_while_placeholder,sequential_287/lstm_862/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_287/lstm_862/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_287/lstm_862/while/add_1AddV2Hsequential_287_lstm_862_while_sequential_287_lstm_862_while_loop_counter.sequential_287/lstm_862/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_287/lstm_862/while/IdentityIdentity'sequential_287/lstm_862/while/add_1:z:0#^sequential_287/lstm_862/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_862/while/Identity_1IdentityNsequential_287_lstm_862_while_sequential_287_lstm_862_while_maximum_iterations#^sequential_287/lstm_862/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_862/while/Identity_2Identity%sequential_287/lstm_862/while/add:z:0#^sequential_287/lstm_862/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_862/while/Identity_3IdentityRsequential_287/lstm_862/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_287/lstm_862/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_862/while/Identity_4Identity5sequential_287/lstm_862/while/lstm_cell_688/mul_2:z:0#^sequential_287/lstm_862/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_287/lstm_862/while/Identity_5Identity5sequential_287/lstm_862/while/lstm_cell_688/add_1:z:0#^sequential_287/lstm_862/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_287/lstm_862/while/NoOpNoOpC^sequential_287/lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOpB^sequential_287/lstm_862/while/lstm_cell_688/MatMul/ReadVariableOpD^sequential_287/lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_287_lstm_862_while_identity/sequential_287/lstm_862/while/Identity:output:0"]
(sequential_287_lstm_862_while_identity_11sequential_287/lstm_862/while/Identity_1:output:0"]
(sequential_287_lstm_862_while_identity_21sequential_287/lstm_862/while/Identity_2:output:0"]
(sequential_287_lstm_862_while_identity_31sequential_287/lstm_862/while/Identity_3:output:0"]
(sequential_287_lstm_862_while_identity_41sequential_287/lstm_862/while/Identity_4:output:0"]
(sequential_287_lstm_862_while_identity_51sequential_287/lstm_862/while/Identity_5:output:0"?
Ksequential_287_lstm_862_while_lstm_cell_688_biasadd_readvariableop_resourceMsequential_287_lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0"?
Lsequential_287_lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resourceNsequential_287_lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0"?
Jsequential_287_lstm_862_while_lstm_cell_688_matmul_readvariableop_resourceLsequential_287_lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0"?
Esequential_287_lstm_862_while_sequential_287_lstm_862_strided_slice_1Gsequential_287_lstm_862_while_sequential_287_lstm_862_strided_slice_1_0"?
?sequential_287_lstm_862_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_862_tensorarrayunstack_tensorlistfromtensor?sequential_287_lstm_862_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_862_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_287/lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOpBsequential_287/lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp2?
Asequential_287/lstm_862/while/lstm_cell_688/MatMul/ReadVariableOpAsequential_287/lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp2?
Csequential_287/lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOpCsequential_287/lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_863_while_cond_4171969.
*lstm_863_while_lstm_863_while_loop_counter4
0lstm_863_while_lstm_863_while_maximum_iterations
lstm_863_while_placeholder 
lstm_863_while_placeholder_1 
lstm_863_while_placeholder_2 
lstm_863_while_placeholder_30
,lstm_863_while_less_lstm_863_strided_slice_1G
Clstm_863_while_lstm_863_while_cond_4171969___redundant_placeholder0G
Clstm_863_while_lstm_863_while_cond_4171969___redundant_placeholder1G
Clstm_863_while_lstm_863_while_cond_4171969___redundant_placeholder2G
Clstm_863_while_lstm_863_while_cond_4171969___redundant_placeholder3
lstm_863_while_identity
?
lstm_863/while/LessLesslstm_863_while_placeholder,lstm_863_while_less_lstm_863_strided_slice_1*
T0*
_output_shapes
: ]
lstm_863/while/IdentityIdentitylstm_863/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_863_while_identity lstm_863/while/Identity:output:0*(
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173149

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4173065*
condR
while_cond_4173064*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_862_layer_call_fn_4172698
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4169583|
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
while_cond_4169513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4169513___redundant_placeholder05
1while_while_cond_4169513___redundant_placeholder15
1while_while_cond_4169513___redundant_placeholder25
1while_while_cond_4169513___redundant_placeholder3
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
while_body_4173681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_863_while_body_4171543.
*lstm_863_while_lstm_863_while_loop_counter4
0lstm_863_while_lstm_863_while_maximum_iterations
lstm_863_while_placeholder 
lstm_863_while_placeholder_1 
lstm_863_while_placeholder_2 
lstm_863_while_placeholder_3-
)lstm_863_while_lstm_863_strided_slice_1_0i
elstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0:2(Q
?lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(L
>lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0:(
lstm_863_while_identity
lstm_863_while_identity_1
lstm_863_while_identity_2
lstm_863_while_identity_3
lstm_863_while_identity_4
lstm_863_while_identity_5+
'lstm_863_while_lstm_863_strided_slice_1g
clstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensorM
;lstm_863_while_lstm_cell_689_matmul_readvariableop_resource:2(O
=lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource:
(J
<lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource:(??3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp?2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp?4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp?
@lstm_863/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_863/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensor_0lstm_863_while_placeholderIlstm_863/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp=lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_863/while/lstm_cell_689/MatMulMatMul9lstm_863/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp?lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_863/while/lstm_cell_689/MatMul_1MatMullstm_863_while_placeholder_2<lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_863/while/lstm_cell_689/addAddV2-lstm_863/while/lstm_cell_689/MatMul:product:0/lstm_863/while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp>lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_863/while/lstm_cell_689/BiasAddBiasAdd$lstm_863/while/lstm_cell_689/add:z:0;lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_863/while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_863/while/lstm_cell_689/splitSplit5lstm_863/while/lstm_cell_689/split/split_dim:output:0-lstm_863/while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_863/while/lstm_cell_689/SigmoidSigmoid+lstm_863/while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_863/while/lstm_cell_689/Sigmoid_1Sigmoid+lstm_863/while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_863/while/lstm_cell_689/mulMul*lstm_863/while/lstm_cell_689/Sigmoid_1:y:0lstm_863_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_863/while/lstm_cell_689/ReluRelu+lstm_863/while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_863/while/lstm_cell_689/mul_1Mul(lstm_863/while/lstm_cell_689/Sigmoid:y:0/lstm_863/while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_863/while/lstm_cell_689/add_1AddV2$lstm_863/while/lstm_cell_689/mul:z:0&lstm_863/while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_863/while/lstm_cell_689/Sigmoid_2Sigmoid+lstm_863/while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_863/while/lstm_cell_689/Relu_1Relu&lstm_863/while/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_863/while/lstm_cell_689/mul_2Mul*lstm_863/while/lstm_cell_689/Sigmoid_2:y:01lstm_863/while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_863/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_863_while_placeholder_1lstm_863_while_placeholder&lstm_863/while/lstm_cell_689/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_863/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_863/while/addAddV2lstm_863_while_placeholderlstm_863/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_863/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_863/while/add_1AddV2*lstm_863_while_lstm_863_while_loop_counterlstm_863/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_863/while/IdentityIdentitylstm_863/while/add_1:z:0^lstm_863/while/NoOp*
T0*
_output_shapes
: ?
lstm_863/while/Identity_1Identity0lstm_863_while_lstm_863_while_maximum_iterations^lstm_863/while/NoOp*
T0*
_output_shapes
: t
lstm_863/while/Identity_2Identitylstm_863/while/add:z:0^lstm_863/while/NoOp*
T0*
_output_shapes
: ?
lstm_863/while/Identity_3IdentityClstm_863/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_863/while/NoOp*
T0*
_output_shapes
: ?
lstm_863/while/Identity_4Identity&lstm_863/while/lstm_cell_689/mul_2:z:0^lstm_863/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_863/while/Identity_5Identity&lstm_863/while/lstm_cell_689/add_1:z:0^lstm_863/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_863/while/NoOpNoOp4^lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp3^lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp5^lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_863_while_identity lstm_863/while/Identity:output:0"?
lstm_863_while_identity_1"lstm_863/while/Identity_1:output:0"?
lstm_863_while_identity_2"lstm_863/while/Identity_2:output:0"?
lstm_863_while_identity_3"lstm_863/while/Identity_3:output:0"?
lstm_863_while_identity_4"lstm_863/while/Identity_4:output:0"?
lstm_863_while_identity_5"lstm_863/while/Identity_5:output:0"T
'lstm_863_while_lstm_863_strided_slice_1)lstm_863_while_lstm_863_strided_slice_1_0"~
<lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource>lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0"?
=lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource?lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0"|
;lstm_863_while_lstm_cell_689_matmul_readvariableop_resource=lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0"?
clstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensorelstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp2h
2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp2l
4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_287_lstm_863_while_body_4168802L
Hsequential_287_lstm_863_while_sequential_287_lstm_863_while_loop_counterR
Nsequential_287_lstm_863_while_sequential_287_lstm_863_while_maximum_iterations-
)sequential_287_lstm_863_while_placeholder/
+sequential_287_lstm_863_while_placeholder_1/
+sequential_287_lstm_863_while_placeholder_2/
+sequential_287_lstm_863_while_placeholder_3K
Gsequential_287_lstm_863_while_sequential_287_lstm_863_strided_slice_1_0?
?sequential_287_lstm_863_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_863_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_287_lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0:2(`
Nsequential_287_lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0:
([
Msequential_287_lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0:(*
&sequential_287_lstm_863_while_identity,
(sequential_287_lstm_863_while_identity_1,
(sequential_287_lstm_863_while_identity_2,
(sequential_287_lstm_863_while_identity_3,
(sequential_287_lstm_863_while_identity_4,
(sequential_287_lstm_863_while_identity_5I
Esequential_287_lstm_863_while_sequential_287_lstm_863_strided_slice_1?
?sequential_287_lstm_863_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_863_tensorarrayunstack_tensorlistfromtensor\
Jsequential_287_lstm_863_while_lstm_cell_689_matmul_readvariableop_resource:2(^
Lsequential_287_lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource:
(Y
Ksequential_287_lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource:(??Bsequential_287/lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp?Asequential_287/lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp?Csequential_287/lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp?
Osequential_287/lstm_863/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_287/lstm_863/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_287_lstm_863_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_863_tensorarrayunstack_tensorlistfromtensor_0)sequential_287_lstm_863_while_placeholderXsequential_287/lstm_863/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_287/lstm_863/while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOpLsequential_287_lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_287/lstm_863/while/lstm_cell_689/MatMulMatMulHsequential_287/lstm_863/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_287/lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_287/lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOpNsequential_287_lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_287/lstm_863/while/lstm_cell_689/MatMul_1MatMul+sequential_287_lstm_863_while_placeholder_2Ksequential_287/lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_287/lstm_863/while/lstm_cell_689/addAddV2<sequential_287/lstm_863/while/lstm_cell_689/MatMul:product:0>sequential_287/lstm_863/while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_287/lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOpMsequential_287_lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_287/lstm_863/while/lstm_cell_689/BiasAddBiasAdd3sequential_287/lstm_863/while/lstm_cell_689/add:z:0Jsequential_287/lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_287/lstm_863/while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_287/lstm_863/while/lstm_cell_689/splitSplitDsequential_287/lstm_863/while/lstm_cell_689/split/split_dim:output:0<sequential_287/lstm_863/while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_287/lstm_863/while/lstm_cell_689/SigmoidSigmoid:sequential_287/lstm_863/while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_287/lstm_863/while/lstm_cell_689/Sigmoid_1Sigmoid:sequential_287/lstm_863/while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_287/lstm_863/while/lstm_cell_689/mulMul9sequential_287/lstm_863/while/lstm_cell_689/Sigmoid_1:y:0+sequential_287_lstm_863_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_287/lstm_863/while/lstm_cell_689/ReluRelu:sequential_287/lstm_863/while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_287/lstm_863/while/lstm_cell_689/mul_1Mul7sequential_287/lstm_863/while/lstm_cell_689/Sigmoid:y:0>sequential_287/lstm_863/while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_287/lstm_863/while/lstm_cell_689/add_1AddV23sequential_287/lstm_863/while/lstm_cell_689/mul:z:05sequential_287/lstm_863/while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_287/lstm_863/while/lstm_cell_689/Sigmoid_2Sigmoid:sequential_287/lstm_863/while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_287/lstm_863/while/lstm_cell_689/Relu_1Relu5sequential_287/lstm_863/while/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_287/lstm_863/while/lstm_cell_689/mul_2Mul9sequential_287/lstm_863/while/lstm_cell_689/Sigmoid_2:y:0@sequential_287/lstm_863/while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_287/lstm_863/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_287_lstm_863_while_placeholder_1)sequential_287_lstm_863_while_placeholder5sequential_287/lstm_863/while/lstm_cell_689/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_287/lstm_863/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_287/lstm_863/while/addAddV2)sequential_287_lstm_863_while_placeholder,sequential_287/lstm_863/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_287/lstm_863/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_287/lstm_863/while/add_1AddV2Hsequential_287_lstm_863_while_sequential_287_lstm_863_while_loop_counter.sequential_287/lstm_863/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_287/lstm_863/while/IdentityIdentity'sequential_287/lstm_863/while/add_1:z:0#^sequential_287/lstm_863/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_863/while/Identity_1IdentityNsequential_287_lstm_863_while_sequential_287_lstm_863_while_maximum_iterations#^sequential_287/lstm_863/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_863/while/Identity_2Identity%sequential_287/lstm_863/while/add:z:0#^sequential_287/lstm_863/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_863/while/Identity_3IdentityRsequential_287/lstm_863/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_287/lstm_863/while/NoOp*
T0*
_output_shapes
: ?
(sequential_287/lstm_863/while/Identity_4Identity5sequential_287/lstm_863/while/lstm_cell_689/mul_2:z:0#^sequential_287/lstm_863/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_287/lstm_863/while/Identity_5Identity5sequential_287/lstm_863/while/lstm_cell_689/add_1:z:0#^sequential_287/lstm_863/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_287/lstm_863/while/NoOpNoOpC^sequential_287/lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOpB^sequential_287/lstm_863/while/lstm_cell_689/MatMul/ReadVariableOpD^sequential_287/lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_287_lstm_863_while_identity/sequential_287/lstm_863/while/Identity:output:0"]
(sequential_287_lstm_863_while_identity_11sequential_287/lstm_863/while/Identity_1:output:0"]
(sequential_287_lstm_863_while_identity_21sequential_287/lstm_863/while/Identity_2:output:0"]
(sequential_287_lstm_863_while_identity_31sequential_287/lstm_863/while/Identity_3:output:0"]
(sequential_287_lstm_863_while_identity_41sequential_287/lstm_863/while/Identity_4:output:0"]
(sequential_287_lstm_863_while_identity_51sequential_287/lstm_863/while/Identity_5:output:0"?
Ksequential_287_lstm_863_while_lstm_cell_689_biasadd_readvariableop_resourceMsequential_287_lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0"?
Lsequential_287_lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resourceNsequential_287_lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0"?
Jsequential_287_lstm_863_while_lstm_cell_689_matmul_readvariableop_resourceLsequential_287_lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0"?
Esequential_287_lstm_863_while_sequential_287_lstm_863_strided_slice_1Gsequential_287_lstm_863_while_sequential_287_lstm_863_strided_slice_1_0"?
?sequential_287_lstm_863_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_863_tensorarrayunstack_tensorlistfromtensor?sequential_287_lstm_863_while_tensorarrayv2read_tensorlistgetitem_sequential_287_lstm_863_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_287/lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOpBsequential_287/lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp2?
Asequential_287/lstm_863/while/lstm_cell_689/MatMul/ReadVariableOpAsequential_287/lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp2?
Csequential_287/lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOpCsequential_287/lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_862_while_body_4171404.
*lstm_862_while_lstm_862_while_loop_counter4
0lstm_862_while_lstm_862_while_maximum_iterations
lstm_862_while_placeholder 
lstm_862_while_placeholder_1 
lstm_862_while_placeholder_2 
lstm_862_while_placeholder_3-
)lstm_862_while_lstm_862_strided_slice_1_0i
elstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0:	d?R
?lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?M
>lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
lstm_862_while_identity
lstm_862_while_identity_1
lstm_862_while_identity_2
lstm_862_while_identity_3
lstm_862_while_identity_4
lstm_862_while_identity_5+
'lstm_862_while_lstm_862_strided_slice_1g
clstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensorN
;lstm_862_while_lstm_cell_688_matmul_readvariableop_resource:	d?P
=lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource:	2?K
<lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource:	???3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp?2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp?4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp?
@lstm_862/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_862/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensor_0lstm_862_while_placeholderIlstm_862/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp=lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_862/while/lstm_cell_688/MatMulMatMul9lstm_862/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp?lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_862/while/lstm_cell_688/MatMul_1MatMullstm_862_while_placeholder_2<lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_862/while/lstm_cell_688/addAddV2-lstm_862/while/lstm_cell_688/MatMul:product:0/lstm_862/while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp>lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_862/while/lstm_cell_688/BiasAddBiasAdd$lstm_862/while/lstm_cell_688/add:z:0;lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_862/while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_862/while/lstm_cell_688/splitSplit5lstm_862/while/lstm_cell_688/split/split_dim:output:0-lstm_862/while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_862/while/lstm_cell_688/SigmoidSigmoid+lstm_862/while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_862/while/lstm_cell_688/Sigmoid_1Sigmoid+lstm_862/while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_862/while/lstm_cell_688/mulMul*lstm_862/while/lstm_cell_688/Sigmoid_1:y:0lstm_862_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_862/while/lstm_cell_688/ReluRelu+lstm_862/while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_862/while/lstm_cell_688/mul_1Mul(lstm_862/while/lstm_cell_688/Sigmoid:y:0/lstm_862/while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_862/while/lstm_cell_688/add_1AddV2$lstm_862/while/lstm_cell_688/mul:z:0&lstm_862/while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_862/while/lstm_cell_688/Sigmoid_2Sigmoid+lstm_862/while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_862/while/lstm_cell_688/Relu_1Relu&lstm_862/while/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_862/while/lstm_cell_688/mul_2Mul*lstm_862/while/lstm_cell_688/Sigmoid_2:y:01lstm_862/while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_862/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_862_while_placeholder_1lstm_862_while_placeholder&lstm_862/while/lstm_cell_688/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_862/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_862/while/addAddV2lstm_862_while_placeholderlstm_862/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_862/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_862/while/add_1AddV2*lstm_862_while_lstm_862_while_loop_counterlstm_862/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_862/while/IdentityIdentitylstm_862/while/add_1:z:0^lstm_862/while/NoOp*
T0*
_output_shapes
: ?
lstm_862/while/Identity_1Identity0lstm_862_while_lstm_862_while_maximum_iterations^lstm_862/while/NoOp*
T0*
_output_shapes
: t
lstm_862/while/Identity_2Identitylstm_862/while/add:z:0^lstm_862/while/NoOp*
T0*
_output_shapes
: ?
lstm_862/while/Identity_3IdentityClstm_862/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_862/while/NoOp*
T0*
_output_shapes
: ?
lstm_862/while/Identity_4Identity&lstm_862/while/lstm_cell_688/mul_2:z:0^lstm_862/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_862/while/Identity_5Identity&lstm_862/while/lstm_cell_688/add_1:z:0^lstm_862/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_862/while/NoOpNoOp4^lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp3^lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp5^lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_862_while_identity lstm_862/while/Identity:output:0"?
lstm_862_while_identity_1"lstm_862/while/Identity_1:output:0"?
lstm_862_while_identity_2"lstm_862/while/Identity_2:output:0"?
lstm_862_while_identity_3"lstm_862/while/Identity_3:output:0"?
lstm_862_while_identity_4"lstm_862/while/Identity_4:output:0"?
lstm_862_while_identity_5"lstm_862/while/Identity_5:output:0"T
'lstm_862_while_lstm_862_strided_slice_1)lstm_862_while_lstm_862_strided_slice_1_0"~
<lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource>lstm_862_while_lstm_cell_688_biasadd_readvariableop_resource_0"?
=lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource?lstm_862_while_lstm_cell_688_matmul_1_readvariableop_resource_0"|
;lstm_862_while_lstm_cell_688_matmul_readvariableop_resource=lstm_862_while_lstm_cell_688_matmul_readvariableop_resource_0"?
clstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensorelstm_862_while_tensorarrayv2read_tensorlistgetitem_lstm_862_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp3lstm_862/while/lstm_cell_688/BiasAdd/ReadVariableOp2h
2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp2lstm_862/while/lstm_cell_688/MatMul/ReadVariableOp2l
4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp4lstm_862/while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_861_layer_call_fn_4172093

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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170091s
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
while_cond_4169863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4169863___redundant_placeholder05
1while_while_cond_4169863___redundant_placeholder15
1while_while_cond_4169863___redundant_placeholder25
1while_while_cond_4169863___redundant_placeholder3
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
*sequential_287_lstm_862_while_cond_4168662L
Hsequential_287_lstm_862_while_sequential_287_lstm_862_while_loop_counterR
Nsequential_287_lstm_862_while_sequential_287_lstm_862_while_maximum_iterations-
)sequential_287_lstm_862_while_placeholder/
+sequential_287_lstm_862_while_placeholder_1/
+sequential_287_lstm_862_while_placeholder_2/
+sequential_287_lstm_862_while_placeholder_3N
Jsequential_287_lstm_862_while_less_sequential_287_lstm_862_strided_slice_1e
asequential_287_lstm_862_while_sequential_287_lstm_862_while_cond_4168662___redundant_placeholder0e
asequential_287_lstm_862_while_sequential_287_lstm_862_while_cond_4168662___redundant_placeholder1e
asequential_287_lstm_862_while_sequential_287_lstm_862_while_cond_4168662___redundant_placeholder2e
asequential_287_lstm_862_while_sequential_287_lstm_862_while_cond_4168662___redundant_placeholder3*
&sequential_287_lstm_862_while_identity
?
"sequential_287/lstm_862/while/LessLess)sequential_287_lstm_862_while_placeholderJsequential_287_lstm_862_while_less_sequential_287_lstm_862_strided_slice_1*
T0*
_output_shapes
: {
&sequential_287/lstm_862/while/IdentityIdentity&sequential_287/lstm_862/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_287_lstm_862_while_identity/sequential_287/lstm_862/while/Identity:output:0*(
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
*sequential_287_lstm_863_while_cond_4168801L
Hsequential_287_lstm_863_while_sequential_287_lstm_863_while_loop_counterR
Nsequential_287_lstm_863_while_sequential_287_lstm_863_while_maximum_iterations-
)sequential_287_lstm_863_while_placeholder/
+sequential_287_lstm_863_while_placeholder_1/
+sequential_287_lstm_863_while_placeholder_2/
+sequential_287_lstm_863_while_placeholder_3N
Jsequential_287_lstm_863_while_less_sequential_287_lstm_863_strided_slice_1e
asequential_287_lstm_863_while_sequential_287_lstm_863_while_cond_4168801___redundant_placeholder0e
asequential_287_lstm_863_while_sequential_287_lstm_863_while_cond_4168801___redundant_placeholder1e
asequential_287_lstm_863_while_sequential_287_lstm_863_while_cond_4168801___redundant_placeholder2e
asequential_287_lstm_863_while_sequential_287_lstm_863_while_cond_4168801___redundant_placeholder3*
&sequential_287_lstm_863_while_identity
?
"sequential_287/lstm_863/while/LessLess)sequential_287_lstm_863_while_placeholderJsequential_287_lstm_863_while_less_sequential_287_lstm_863_strided_slice_1*
T0*
_output_shapes
: {
&sequential_287/lstm_863/while/IdentityIdentity&sequential_287/lstm_863/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_287_lstm_863_while_identity/sequential_287/lstm_863/while/Identity:output:0*(
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
while_cond_4172162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4172162___redundant_placeholder05
1while_while_cond_4172162___redundant_placeholder15
1while_while_cond_4172162___redundant_placeholder25
1while_while_cond_4172162___redundant_placeholder3
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
while_body_4170523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_863_layer_call_fn_4173314
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4169933o
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
while_body_4173824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170241

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4170157*
condR
while_cond_4170156*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4172922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4173395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4171152
lstm_861_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_861_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4168892o
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
_user_specified_namelstm_861_input
?
?
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171005

inputs#
lstm_861_4170978:	?#
lstm_861_4170980:	d?
lstm_861_4170982:	?#
lstm_862_4170985:	d?#
lstm_862_4170987:	2?
lstm_862_4170989:	?"
lstm_863_4170992:2("
lstm_863_4170994:
(
lstm_863_4170996:(#
dense_287_4170999:

dense_287_4171001:
identity??!dense_287/StatefulPartitionedCall? lstm_861/StatefulPartitionedCall? lstm_862/StatefulPartitionedCall? lstm_863/StatefulPartitionedCall?
 lstm_861/StatefulPartitionedCallStatefulPartitionedCallinputslstm_861_4170978lstm_861_4170980lstm_861_4170982*
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170937?
 lstm_862/StatefulPartitionedCallStatefulPartitionedCall)lstm_861/StatefulPartitionedCall:output:0lstm_862_4170985lstm_862_4170987lstm_862_4170989*
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170772?
 lstm_863/StatefulPartitionedCallStatefulPartitionedCall)lstm_862/StatefulPartitionedCall:output:0lstm_863_4170992lstm_863_4170994lstm_863_4170996*
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170607?
!dense_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_863/StatefulPartitionedCall:output:0dense_287_4170999dense_287_4171001*
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
F__inference_dense_287_layer_call_and_return_conditional_losses_4170409y
IdentityIdentity*dense_287/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_287/StatefulPartitionedCall!^lstm_861/StatefulPartitionedCall!^lstm_862/StatefulPartitionedCall!^lstm_863/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_287/StatefulPartitionedCall!dense_287/StatefulPartitionedCall2D
 lstm_861/StatefulPartitionedCall lstm_861/StatefulPartitionedCall2D
 lstm_862/StatefulPartitionedCall lstm_862/StatefulPartitionedCall2D
 lstm_863/StatefulPartitionedCall lstm_863/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172390
inputs_0?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4172306*
condR
while_cond_4172305*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4170522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4170522___redundant_placeholder05
1while_while_cond_4170522___redundant_placeholder15
1while_while_cond_4170522___redundant_placeholder25
1while_while_cond_4170522___redundant_placeholder3
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4173993

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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172247
inputs_0?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4172163*
condR
while_cond_4172162*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*sequential_287_lstm_861_while_cond_4168523L
Hsequential_287_lstm_861_while_sequential_287_lstm_861_while_loop_counterR
Nsequential_287_lstm_861_while_sequential_287_lstm_861_while_maximum_iterations-
)sequential_287_lstm_861_while_placeholder/
+sequential_287_lstm_861_while_placeholder_1/
+sequential_287_lstm_861_while_placeholder_2/
+sequential_287_lstm_861_while_placeholder_3N
Jsequential_287_lstm_861_while_less_sequential_287_lstm_861_strided_slice_1e
asequential_287_lstm_861_while_sequential_287_lstm_861_while_cond_4168523___redundant_placeholder0e
asequential_287_lstm_861_while_sequential_287_lstm_861_while_cond_4168523___redundant_placeholder1e
asequential_287_lstm_861_while_sequential_287_lstm_861_while_cond_4168523___redundant_placeholder2e
asequential_287_lstm_861_while_sequential_287_lstm_861_while_cond_4168523___redundant_placeholder3*
&sequential_287_lstm_861_while_identity
?
"sequential_287/lstm_861/while/LessLess)sequential_287_lstm_861_while_placeholderJsequential_287_lstm_861_while_less_sequential_287_lstm_861_strided_slice_1*
T0*
_output_shapes
: {
&sequential_287/lstm_861/while/IdentityIdentity&sequential_287/lstm_861/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_287_lstm_861_while_identity/sequential_287/lstm_861/while/Identity:output:0*(
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
while_body_4170007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4172592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4173680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4173680___redundant_placeholder05
1while_while_cond_4173680___redundant_placeholder15
1while_while_cond_4173680___redundant_placeholder25
1while_while_cond_4173680___redundant_placeholder3
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
while_body_4170157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4172060

inputsH
5lstm_861_lstm_cell_687_matmul_readvariableop_resource:	?J
7lstm_861_lstm_cell_687_matmul_1_readvariableop_resource:	d?E
6lstm_861_lstm_cell_687_biasadd_readvariableop_resource:	?H
5lstm_862_lstm_cell_688_matmul_readvariableop_resource:	d?J
7lstm_862_lstm_cell_688_matmul_1_readvariableop_resource:	2?E
6lstm_862_lstm_cell_688_biasadd_readvariableop_resource:	?G
5lstm_863_lstm_cell_689_matmul_readvariableop_resource:2(I
7lstm_863_lstm_cell_689_matmul_1_readvariableop_resource:
(D
6lstm_863_lstm_cell_689_biasadd_readvariableop_resource:(:
(dense_287_matmul_readvariableop_resource:
7
)dense_287_biasadd_readvariableop_resource:
identity?? dense_287/BiasAdd/ReadVariableOp?dense_287/MatMul/ReadVariableOp?-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp?,lstm_861/lstm_cell_687/MatMul/ReadVariableOp?.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp?lstm_861/while?-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp?,lstm_862/lstm_cell_688/MatMul/ReadVariableOp?.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp?lstm_862/while?-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp?,lstm_863/lstm_cell_689/MatMul/ReadVariableOp?.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp?lstm_863/whileD
lstm_861/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_861/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_861/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_861/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_sliceStridedSlicelstm_861/Shape:output:0%lstm_861/strided_slice/stack:output:0'lstm_861/strided_slice/stack_1:output:0'lstm_861/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_861/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_861/zeros/packedPacklstm_861/strided_slice:output:0 lstm_861/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_861/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_861/zerosFilllstm_861/zeros/packed:output:0lstm_861/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_861/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_861/zeros_1/packedPacklstm_861/strided_slice:output:0"lstm_861/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_861/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_861/zeros_1Fill lstm_861/zeros_1/packed:output:0lstm_861/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_861/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_861/transpose	Transposeinputs lstm_861/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_861/Shape_1Shapelstm_861/transpose:y:0*
T0*
_output_shapes
:h
lstm_861/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_861/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_861/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_slice_1StridedSlicelstm_861/Shape_1:output:0'lstm_861/strided_slice_1/stack:output:0)lstm_861/strided_slice_1/stack_1:output:0)lstm_861/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_861/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_861/TensorArrayV2TensorListReserve-lstm_861/TensorArrayV2/element_shape:output:0!lstm_861/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_861/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_861/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_861/transpose:y:0Glstm_861/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_861/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_861/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_861/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_slice_2StridedSlicelstm_861/transpose:y:0'lstm_861/strided_slice_2/stack:output:0)lstm_861/strided_slice_2/stack_1:output:0)lstm_861/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_861/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp5lstm_861_lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_861/lstm_cell_687/MatMulMatMul!lstm_861/strided_slice_2:output:04lstm_861/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp7lstm_861_lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_861/lstm_cell_687/MatMul_1MatMullstm_861/zeros:output:06lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_861/lstm_cell_687/addAddV2'lstm_861/lstm_cell_687/MatMul:product:0)lstm_861/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp6lstm_861_lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_861/lstm_cell_687/BiasAddBiasAddlstm_861/lstm_cell_687/add:z:05lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_861/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_861/lstm_cell_687/splitSplit/lstm_861/lstm_cell_687/split/split_dim:output:0'lstm_861/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_861/lstm_cell_687/SigmoidSigmoid%lstm_861/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_861/lstm_cell_687/Sigmoid_1Sigmoid%lstm_861/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/mulMul$lstm_861/lstm_cell_687/Sigmoid_1:y:0lstm_861/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_861/lstm_cell_687/ReluRelu%lstm_861/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/mul_1Mul"lstm_861/lstm_cell_687/Sigmoid:y:0)lstm_861/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/add_1AddV2lstm_861/lstm_cell_687/mul:z:0 lstm_861/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_861/lstm_cell_687/Sigmoid_2Sigmoid%lstm_861/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_861/lstm_cell_687/Relu_1Relu lstm_861/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_861/lstm_cell_687/mul_2Mul$lstm_861/lstm_cell_687/Sigmoid_2:y:0+lstm_861/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_861/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_861/TensorArrayV2_1TensorListReserve/lstm_861/TensorArrayV2_1/element_shape:output:0!lstm_861/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_861/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_861/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_861/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_861/whileWhile$lstm_861/while/loop_counter:output:0*lstm_861/while/maximum_iterations:output:0lstm_861/time:output:0!lstm_861/TensorArrayV2_1:handle:0lstm_861/zeros:output:0lstm_861/zeros_1:output:0!lstm_861/strided_slice_1:output:0@lstm_861/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_861_lstm_cell_687_matmul_readvariableop_resource7lstm_861_lstm_cell_687_matmul_1_readvariableop_resource6lstm_861_lstm_cell_687_biasadd_readvariableop_resource*
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
lstm_861_while_body_4171692*'
condR
lstm_861_while_cond_4171691*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_861/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_861/TensorArrayV2Stack/TensorListStackTensorListStacklstm_861/while:output:3Blstm_861/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_861/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_861/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_861/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_861/strided_slice_3StridedSlice4lstm_861/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_861/strided_slice_3/stack:output:0)lstm_861/strided_slice_3/stack_1:output:0)lstm_861/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_861/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_861/transpose_1	Transpose4lstm_861/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_861/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_861/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_862/ShapeShapelstm_861/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_862/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_862/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_862/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_sliceStridedSlicelstm_862/Shape:output:0%lstm_862/strided_slice/stack:output:0'lstm_862/strided_slice/stack_1:output:0'lstm_862/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_862/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_862/zeros/packedPacklstm_862/strided_slice:output:0 lstm_862/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_862/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_862/zerosFilllstm_862/zeros/packed:output:0lstm_862/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_862/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_862/zeros_1/packedPacklstm_862/strided_slice:output:0"lstm_862/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_862/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_862/zeros_1Fill lstm_862/zeros_1/packed:output:0lstm_862/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_862/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_862/transpose	Transposelstm_861/transpose_1:y:0 lstm_862/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_862/Shape_1Shapelstm_862/transpose:y:0*
T0*
_output_shapes
:h
lstm_862/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_862/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_862/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_slice_1StridedSlicelstm_862/Shape_1:output:0'lstm_862/strided_slice_1/stack:output:0)lstm_862/strided_slice_1/stack_1:output:0)lstm_862/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_862/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_862/TensorArrayV2TensorListReserve-lstm_862/TensorArrayV2/element_shape:output:0!lstm_862/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_862/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_862/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_862/transpose:y:0Glstm_862/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_862/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_862/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_862/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_slice_2StridedSlicelstm_862/transpose:y:0'lstm_862/strided_slice_2/stack:output:0)lstm_862/strided_slice_2/stack_1:output:0)lstm_862/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_862/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp5lstm_862_lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_862/lstm_cell_688/MatMulMatMul!lstm_862/strided_slice_2:output:04lstm_862/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp7lstm_862_lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_862/lstm_cell_688/MatMul_1MatMullstm_862/zeros:output:06lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_862/lstm_cell_688/addAddV2'lstm_862/lstm_cell_688/MatMul:product:0)lstm_862/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp6lstm_862_lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_862/lstm_cell_688/BiasAddBiasAddlstm_862/lstm_cell_688/add:z:05lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_862/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_862/lstm_cell_688/splitSplit/lstm_862/lstm_cell_688/split/split_dim:output:0'lstm_862/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_862/lstm_cell_688/SigmoidSigmoid%lstm_862/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_862/lstm_cell_688/Sigmoid_1Sigmoid%lstm_862/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/mulMul$lstm_862/lstm_cell_688/Sigmoid_1:y:0lstm_862/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_862/lstm_cell_688/ReluRelu%lstm_862/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/mul_1Mul"lstm_862/lstm_cell_688/Sigmoid:y:0)lstm_862/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/add_1AddV2lstm_862/lstm_cell_688/mul:z:0 lstm_862/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_862/lstm_cell_688/Sigmoid_2Sigmoid%lstm_862/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_862/lstm_cell_688/Relu_1Relu lstm_862/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_862/lstm_cell_688/mul_2Mul$lstm_862/lstm_cell_688/Sigmoid_2:y:0+lstm_862/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_862/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_862/TensorArrayV2_1TensorListReserve/lstm_862/TensorArrayV2_1/element_shape:output:0!lstm_862/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_862/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_862/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_862/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_862/whileWhile$lstm_862/while/loop_counter:output:0*lstm_862/while/maximum_iterations:output:0lstm_862/time:output:0!lstm_862/TensorArrayV2_1:handle:0lstm_862/zeros:output:0lstm_862/zeros_1:output:0!lstm_862/strided_slice_1:output:0@lstm_862/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_862_lstm_cell_688_matmul_readvariableop_resource7lstm_862_lstm_cell_688_matmul_1_readvariableop_resource6lstm_862_lstm_cell_688_biasadd_readvariableop_resource*
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
lstm_862_while_body_4171831*'
condR
lstm_862_while_cond_4171830*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_862/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_862/TensorArrayV2Stack/TensorListStackTensorListStacklstm_862/while:output:3Blstm_862/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_862/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_862/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_862/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_862/strided_slice_3StridedSlice4lstm_862/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_862/strided_slice_3/stack:output:0)lstm_862/strided_slice_3/stack_1:output:0)lstm_862/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_862/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_862/transpose_1	Transpose4lstm_862/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_862/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_862/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_863/ShapeShapelstm_862/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_863/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_863/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_863/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_sliceStridedSlicelstm_863/Shape:output:0%lstm_863/strided_slice/stack:output:0'lstm_863/strided_slice/stack_1:output:0'lstm_863/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_863/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_863/zeros/packedPacklstm_863/strided_slice:output:0 lstm_863/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_863/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_863/zerosFilllstm_863/zeros/packed:output:0lstm_863/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_863/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_863/zeros_1/packedPacklstm_863/strided_slice:output:0"lstm_863/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_863/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_863/zeros_1Fill lstm_863/zeros_1/packed:output:0lstm_863/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_863/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_863/transpose	Transposelstm_862/transpose_1:y:0 lstm_863/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_863/Shape_1Shapelstm_863/transpose:y:0*
T0*
_output_shapes
:h
lstm_863/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_863/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_863/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_slice_1StridedSlicelstm_863/Shape_1:output:0'lstm_863/strided_slice_1/stack:output:0)lstm_863/strided_slice_1/stack_1:output:0)lstm_863/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_863/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_863/TensorArrayV2TensorListReserve-lstm_863/TensorArrayV2/element_shape:output:0!lstm_863/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_863/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_863/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_863/transpose:y:0Glstm_863/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_863/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_863/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_863/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_slice_2StridedSlicelstm_863/transpose:y:0'lstm_863/strided_slice_2/stack:output:0)lstm_863/strided_slice_2/stack_1:output:0)lstm_863/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_863/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp5lstm_863_lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_863/lstm_cell_689/MatMulMatMul!lstm_863/strided_slice_2:output:04lstm_863/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp7lstm_863_lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_863/lstm_cell_689/MatMul_1MatMullstm_863/zeros:output:06lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_863/lstm_cell_689/addAddV2'lstm_863/lstm_cell_689/MatMul:product:0)lstm_863/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp6lstm_863_lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_863/lstm_cell_689/BiasAddBiasAddlstm_863/lstm_cell_689/add:z:05lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_863/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_863/lstm_cell_689/splitSplit/lstm_863/lstm_cell_689/split/split_dim:output:0'lstm_863/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_863/lstm_cell_689/SigmoidSigmoid%lstm_863/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_863/lstm_cell_689/Sigmoid_1Sigmoid%lstm_863/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/mulMul$lstm_863/lstm_cell_689/Sigmoid_1:y:0lstm_863/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_863/lstm_cell_689/ReluRelu%lstm_863/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/mul_1Mul"lstm_863/lstm_cell_689/Sigmoid:y:0)lstm_863/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/add_1AddV2lstm_863/lstm_cell_689/mul:z:0 lstm_863/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_863/lstm_cell_689/Sigmoid_2Sigmoid%lstm_863/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_863/lstm_cell_689/Relu_1Relu lstm_863/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_863/lstm_cell_689/mul_2Mul$lstm_863/lstm_cell_689/Sigmoid_2:y:0+lstm_863/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_863/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_863/TensorArrayV2_1TensorListReserve/lstm_863/TensorArrayV2_1/element_shape:output:0!lstm_863/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_863/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_863/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_863/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_863/whileWhile$lstm_863/while/loop_counter:output:0*lstm_863/while/maximum_iterations:output:0lstm_863/time:output:0!lstm_863/TensorArrayV2_1:handle:0lstm_863/zeros:output:0lstm_863/zeros_1:output:0!lstm_863/strided_slice_1:output:0@lstm_863/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_863_lstm_cell_689_matmul_readvariableop_resource7lstm_863_lstm_cell_689_matmul_1_readvariableop_resource6lstm_863_lstm_cell_689_biasadd_readvariableop_resource*
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
lstm_863_while_body_4171970*'
condR
lstm_863_while_cond_4171969*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_863/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_863/TensorArrayV2Stack/TensorListStackTensorListStacklstm_863/while:output:3Blstm_863/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_863/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_863/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_863/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_863/strided_slice_3StridedSlice4lstm_863/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_863/strided_slice_3/stack:output:0)lstm_863/strided_slice_3/stack_1:output:0)lstm_863/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_863/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_863/transpose_1	Transpose4lstm_863/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_863/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_863/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_287/MatMul/ReadVariableOpReadVariableOp(dense_287_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_287/MatMulMatMul!lstm_863/strided_slice_3:output:0'dense_287/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_287/BiasAdd/ReadVariableOpReadVariableOp)dense_287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_287/BiasAddBiasAdddense_287/MatMul:product:0(dense_287/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_287/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_287/BiasAdd/ReadVariableOp ^dense_287/MatMul/ReadVariableOp.^lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp-^lstm_861/lstm_cell_687/MatMul/ReadVariableOp/^lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp^lstm_861/while.^lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp-^lstm_862/lstm_cell_688/MatMul/ReadVariableOp/^lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp^lstm_862/while.^lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp-^lstm_863/lstm_cell_689/MatMul/ReadVariableOp/^lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp^lstm_863/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_287/BiasAdd/ReadVariableOp dense_287/BiasAdd/ReadVariableOp2B
dense_287/MatMul/ReadVariableOpdense_287/MatMul/ReadVariableOp2^
-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp-lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp2\
,lstm_861/lstm_cell_687/MatMul/ReadVariableOp,lstm_861/lstm_cell_687/MatMul/ReadVariableOp2`
.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp.lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp2 
lstm_861/whilelstm_861/while2^
-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp-lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp2\
,lstm_862/lstm_cell_688/MatMul/ReadVariableOp,lstm_862/lstm_cell_688/MatMul/ReadVariableOp2`
.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp.lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp2 
lstm_862/whilelstm_862/while2^
-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp-lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp2\
,lstm_863/lstm_cell_689/MatMul/ReadVariableOp,lstm_863/lstm_cell_689/MatMul/ReadVariableOp2`
.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp.lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp2 
lstm_863/whilelstm_863/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_863_layer_call_fn_4173303
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4169742o
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
while_cond_4170852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4170852___redundant_placeholder05
1while_while_cond_4170852___redundant_placeholder15
1while_while_cond_4170852___redundant_placeholder25
1while_while_cond_4170852___redundant_placeholder3
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
F__inference_dense_287_layer_call_and_return_conditional_losses_4173927

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
?W
?
 __inference__traced_save_4174364
file_prefix/
+savev2_dense_287_kernel_read_readvariableop-
)savev2_dense_287_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_861_lstm_cell_861_kernel_read_readvariableopF
Bsavev2_lstm_861_lstm_cell_861_recurrent_kernel_read_readvariableop:
6savev2_lstm_861_lstm_cell_861_bias_read_readvariableop<
8savev2_lstm_862_lstm_cell_862_kernel_read_readvariableopF
Bsavev2_lstm_862_lstm_cell_862_recurrent_kernel_read_readvariableop:
6savev2_lstm_862_lstm_cell_862_bias_read_readvariableop<
8savev2_lstm_863_lstm_cell_863_kernel_read_readvariableopF
Bsavev2_lstm_863_lstm_cell_863_recurrent_kernel_read_readvariableop:
6savev2_lstm_863_lstm_cell_863_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_287_kernel_m_read_readvariableop4
0savev2_adam_dense_287_bias_m_read_readvariableopC
?savev2_adam_lstm_861_lstm_cell_861_kernel_m_read_readvariableopM
Isavev2_adam_lstm_861_lstm_cell_861_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_861_lstm_cell_861_bias_m_read_readvariableopC
?savev2_adam_lstm_862_lstm_cell_862_kernel_m_read_readvariableopM
Isavev2_adam_lstm_862_lstm_cell_862_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_862_lstm_cell_862_bias_m_read_readvariableopC
?savev2_adam_lstm_863_lstm_cell_863_kernel_m_read_readvariableopM
Isavev2_adam_lstm_863_lstm_cell_863_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_863_lstm_cell_863_bias_m_read_readvariableop6
2savev2_adam_dense_287_kernel_v_read_readvariableop4
0savev2_adam_dense_287_bias_v_read_readvariableopC
?savev2_adam_lstm_861_lstm_cell_861_kernel_v_read_readvariableopM
Isavev2_adam_lstm_861_lstm_cell_861_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_861_lstm_cell_861_bias_v_read_readvariableopC
?savev2_adam_lstm_862_lstm_cell_862_kernel_v_read_readvariableopM
Isavev2_adam_lstm_862_lstm_cell_862_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_862_lstm_cell_862_bias_v_read_readvariableopC
?savev2_adam_lstm_863_lstm_cell_863_kernel_v_read_readvariableopM
Isavev2_adam_lstm_863_lstm_cell_863_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_863_lstm_cell_863_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_287_kernel_read_readvariableop)savev2_dense_287_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_861_lstm_cell_861_kernel_read_readvariableopBsavev2_lstm_861_lstm_cell_861_recurrent_kernel_read_readvariableop6savev2_lstm_861_lstm_cell_861_bias_read_readvariableop8savev2_lstm_862_lstm_cell_862_kernel_read_readvariableopBsavev2_lstm_862_lstm_cell_862_recurrent_kernel_read_readvariableop6savev2_lstm_862_lstm_cell_862_bias_read_readvariableop8savev2_lstm_863_lstm_cell_863_kernel_read_readvariableopBsavev2_lstm_863_lstm_cell_863_recurrent_kernel_read_readvariableop6savev2_lstm_863_lstm_cell_863_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_287_kernel_m_read_readvariableop0savev2_adam_dense_287_bias_m_read_readvariableop?savev2_adam_lstm_861_lstm_cell_861_kernel_m_read_readvariableopIsavev2_adam_lstm_861_lstm_cell_861_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_861_lstm_cell_861_bias_m_read_readvariableop?savev2_adam_lstm_862_lstm_cell_862_kernel_m_read_readvariableopIsavev2_adam_lstm_862_lstm_cell_862_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_862_lstm_cell_862_bias_m_read_readvariableop?savev2_adam_lstm_863_lstm_cell_863_kernel_m_read_readvariableopIsavev2_adam_lstm_863_lstm_cell_863_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_863_lstm_cell_863_bias_m_read_readvariableop2savev2_adam_dense_287_kernel_v_read_readvariableop0savev2_adam_dense_287_bias_v_read_readvariableop?savev2_adam_lstm_861_lstm_cell_861_kernel_v_read_readvariableopIsavev2_adam_lstm_861_lstm_cell_861_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_861_lstm_cell_861_bias_v_read_readvariableop?savev2_adam_lstm_862_lstm_cell_862_kernel_v_read_readvariableopIsavev2_adam_lstm_862_lstm_cell_862_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_862_lstm_cell_862_bias_v_read_readvariableop?savev2_adam_lstm_863_lstm_cell_863_kernel_v_read_readvariableopIsavev2_adam_lstm_863_lstm_cell_863_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_863_lstm_cell_863_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_4170688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4170416

inputs#
lstm_861_4170092:	?#
lstm_861_4170094:	d?
lstm_861_4170096:	?#
lstm_862_4170242:	d?#
lstm_862_4170244:	2?
lstm_862_4170246:	?"
lstm_863_4170392:2("
lstm_863_4170394:
(
lstm_863_4170396:(#
dense_287_4170410:

dense_287_4170412:
identity??!dense_287/StatefulPartitionedCall? lstm_861/StatefulPartitionedCall? lstm_862/StatefulPartitionedCall? lstm_863/StatefulPartitionedCall?
 lstm_861/StatefulPartitionedCallStatefulPartitionedCallinputslstm_861_4170092lstm_861_4170094lstm_861_4170096*
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170091?
 lstm_862/StatefulPartitionedCallStatefulPartitionedCall)lstm_861/StatefulPartitionedCall:output:0lstm_862_4170242lstm_862_4170244lstm_862_4170246*
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170241?
 lstm_863/StatefulPartitionedCallStatefulPartitionedCall)lstm_862/StatefulPartitionedCall:output:0lstm_863_4170392lstm_863_4170394lstm_863_4170396*
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170391?
!dense_287/StatefulPartitionedCallStatefulPartitionedCall)lstm_863/StatefulPartitionedCall:output:0dense_287_4170410dense_287_4170412*
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
F__inference_dense_287_layer_call_and_return_conditional_losses_4170409y
IdentityIdentity*dense_287/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_287/StatefulPartitionedCall!^lstm_861/StatefulPartitionedCall!^lstm_862/StatefulPartitionedCall!^lstm_863/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_287/StatefulPartitionedCall!dense_287/StatefulPartitionedCall2D
 lstm_861/StatefulPartitionedCall lstm_861/StatefulPartitionedCall2D
 lstm_862/StatefulPartitionedCall lstm_862/StatefulPartitionedCall2D
 lstm_863/StatefulPartitionedCall lstm_863/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_861_while_body_4171265.
*lstm_861_while_lstm_861_while_loop_counter4
0lstm_861_while_lstm_861_while_maximum_iterations
lstm_861_while_placeholder 
lstm_861_while_placeholder_1 
lstm_861_while_placeholder_2 
lstm_861_while_placeholder_3-
)lstm_861_while_lstm_861_strided_slice_1_0i
elstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0:	?R
?lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?M
>lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
lstm_861_while_identity
lstm_861_while_identity_1
lstm_861_while_identity_2
lstm_861_while_identity_3
lstm_861_while_identity_4
lstm_861_while_identity_5+
'lstm_861_while_lstm_861_strided_slice_1g
clstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensorN
;lstm_861_while_lstm_cell_687_matmul_readvariableop_resource:	?P
=lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource:	d?K
<lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource:	???3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp?2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp?4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp?
@lstm_861/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_861/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensor_0lstm_861_while_placeholderIlstm_861/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp=lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_861/while/lstm_cell_687/MatMulMatMul9lstm_861/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp?lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_861/while/lstm_cell_687/MatMul_1MatMullstm_861_while_placeholder_2<lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_861/while/lstm_cell_687/addAddV2-lstm_861/while/lstm_cell_687/MatMul:product:0/lstm_861/while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp>lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_861/while/lstm_cell_687/BiasAddBiasAdd$lstm_861/while/lstm_cell_687/add:z:0;lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_861/while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_861/while/lstm_cell_687/splitSplit5lstm_861/while/lstm_cell_687/split/split_dim:output:0-lstm_861/while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_861/while/lstm_cell_687/SigmoidSigmoid+lstm_861/while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_861/while/lstm_cell_687/Sigmoid_1Sigmoid+lstm_861/while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_861/while/lstm_cell_687/mulMul*lstm_861/while/lstm_cell_687/Sigmoid_1:y:0lstm_861_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_861/while/lstm_cell_687/ReluRelu+lstm_861/while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_861/while/lstm_cell_687/mul_1Mul(lstm_861/while/lstm_cell_687/Sigmoid:y:0/lstm_861/while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_861/while/lstm_cell_687/add_1AddV2$lstm_861/while/lstm_cell_687/mul:z:0&lstm_861/while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_861/while/lstm_cell_687/Sigmoid_2Sigmoid+lstm_861/while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_861/while/lstm_cell_687/Relu_1Relu&lstm_861/while/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_861/while/lstm_cell_687/mul_2Mul*lstm_861/while/lstm_cell_687/Sigmoid_2:y:01lstm_861/while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_861/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_861_while_placeholder_1lstm_861_while_placeholder&lstm_861/while/lstm_cell_687/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_861/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_861/while/addAddV2lstm_861_while_placeholderlstm_861/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_861/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_861/while/add_1AddV2*lstm_861_while_lstm_861_while_loop_counterlstm_861/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_861/while/IdentityIdentitylstm_861/while/add_1:z:0^lstm_861/while/NoOp*
T0*
_output_shapes
: ?
lstm_861/while/Identity_1Identity0lstm_861_while_lstm_861_while_maximum_iterations^lstm_861/while/NoOp*
T0*
_output_shapes
: t
lstm_861/while/Identity_2Identitylstm_861/while/add:z:0^lstm_861/while/NoOp*
T0*
_output_shapes
: ?
lstm_861/while/Identity_3IdentityClstm_861/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_861/while/NoOp*
T0*
_output_shapes
: ?
lstm_861/while/Identity_4Identity&lstm_861/while/lstm_cell_687/mul_2:z:0^lstm_861/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_861/while/Identity_5Identity&lstm_861/while/lstm_cell_687/add_1:z:0^lstm_861/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_861/while/NoOpNoOp4^lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp3^lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp5^lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_861_while_identity lstm_861/while/Identity:output:0"?
lstm_861_while_identity_1"lstm_861/while/Identity_1:output:0"?
lstm_861_while_identity_2"lstm_861/while/Identity_2:output:0"?
lstm_861_while_identity_3"lstm_861/while/Identity_3:output:0"?
lstm_861_while_identity_4"lstm_861/while/Identity_4:output:0"?
lstm_861_while_identity_5"lstm_861/while/Identity_5:output:0"T
'lstm_861_while_lstm_861_strided_slice_1)lstm_861_while_lstm_861_strided_slice_1_0"~
<lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource>lstm_861_while_lstm_cell_687_biasadd_readvariableop_resource_0"?
=lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource?lstm_861_while_lstm_cell_687_matmul_1_readvariableop_resource_0"|
;lstm_861_while_lstm_cell_687_matmul_readvariableop_resource=lstm_861_while_lstm_cell_687_matmul_readvariableop_resource_0"?
clstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensorelstm_861_while_tensorarrayv2read_tensorlistgetitem_lstm_861_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp3lstm_861/while/lstm_cell_687/BiasAdd/ReadVariableOp2h
2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp2lstm_861/while/lstm_cell_687/MatMul/ReadVariableOp2l
4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp4lstm_861/while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4173065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4173394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4173394___redundant_placeholder05
1while_while_cond_4173394___redundant_placeholder15
1while_while_cond_4173394___redundant_placeholder25
1while_while_cond_4173394___redundant_placeholder3
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
lstm_861_while_cond_4171264.
*lstm_861_while_lstm_861_while_loop_counter4
0lstm_861_while_lstm_861_while_maximum_iterations
lstm_861_while_placeholder 
lstm_861_while_placeholder_1 
lstm_861_while_placeholder_2 
lstm_861_while_placeholder_30
,lstm_861_while_less_lstm_861_strided_slice_1G
Clstm_861_while_lstm_861_while_cond_4171264___redundant_placeholder0G
Clstm_861_while_lstm_861_while_cond_4171264___redundant_placeholder1G
Clstm_861_while_lstm_861_while_cond_4171264___redundant_placeholder2G
Clstm_861_while_lstm_861_while_cond_4171264___redundant_placeholder3
lstm_861_while_identity
?
lstm_861/while/LessLesslstm_861_while_placeholder,lstm_861_while_less_lstm_861_strided_slice_1*
T0*
_output_shapes
: ]
lstm_861/while/IdentityIdentitylstm_861/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_861_while_identity lstm_861/while/Identity:output:0*(
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
while_body_4173538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4168972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4168972___redundant_placeholder05
1while_while_cond_4168972___redundant_placeholder15
1while_while_cond_4168972___redundant_placeholder25
1while_while_cond_4168972___redundant_placeholder3
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
lstm_862_while_cond_4171830.
*lstm_862_while_lstm_862_while_loop_counter4
0lstm_862_while_lstm_862_while_maximum_iterations
lstm_862_while_placeholder 
lstm_862_while_placeholder_1 
lstm_862_while_placeholder_2 
lstm_862_while_placeholder_30
,lstm_862_while_less_lstm_862_strided_slice_1G
Clstm_862_while_lstm_862_while_cond_4171830___redundant_placeholder0G
Clstm_862_while_lstm_862_while_cond_4171830___redundant_placeholder1G
Clstm_862_while_lstm_862_while_cond_4171830___redundant_placeholder2G
Clstm_862_while_lstm_862_while_cond_4171830___redundant_placeholder3
lstm_862_while_identity
?
lstm_862/while/LessLesslstm_862_while_placeholder,lstm_862_while_less_lstm_862_strided_slice_1*
T0*
_output_shapes
: ]
lstm_862/while/IdentityIdentitylstm_862/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_862_while_identity lstm_862/while/Identity:output:0*(
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4169105

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
while_body_4170853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_287_layer_call_and_return_conditional_losses_4170409

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
while_body_4172163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_687_layer_call_fn_4173961

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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4169105o
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170391

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4170307*
condR
while_cond_4170306*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_863_while_body_4171970.
*lstm_863_while_lstm_863_while_loop_counter4
0lstm_863_while_lstm_863_while_maximum_iterations
lstm_863_while_placeholder 
lstm_863_while_placeholder_1 
lstm_863_while_placeholder_2 
lstm_863_while_placeholder_3-
)lstm_863_while_lstm_863_strided_slice_1_0i
elstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0:2(Q
?lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(L
>lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0:(
lstm_863_while_identity
lstm_863_while_identity_1
lstm_863_while_identity_2
lstm_863_while_identity_3
lstm_863_while_identity_4
lstm_863_while_identity_5+
'lstm_863_while_lstm_863_strided_slice_1g
clstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensorM
;lstm_863_while_lstm_cell_689_matmul_readvariableop_resource:2(O
=lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource:
(J
<lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource:(??3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp?2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp?4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp?
@lstm_863/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_863/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensor_0lstm_863_while_placeholderIlstm_863/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp=lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_863/while/lstm_cell_689/MatMulMatMul9lstm_863/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp?lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_863/while/lstm_cell_689/MatMul_1MatMullstm_863_while_placeholder_2<lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_863/while/lstm_cell_689/addAddV2-lstm_863/while/lstm_cell_689/MatMul:product:0/lstm_863/while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp>lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_863/while/lstm_cell_689/BiasAddBiasAdd$lstm_863/while/lstm_cell_689/add:z:0;lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_863/while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_863/while/lstm_cell_689/splitSplit5lstm_863/while/lstm_cell_689/split/split_dim:output:0-lstm_863/while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_863/while/lstm_cell_689/SigmoidSigmoid+lstm_863/while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_863/while/lstm_cell_689/Sigmoid_1Sigmoid+lstm_863/while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_863/while/lstm_cell_689/mulMul*lstm_863/while/lstm_cell_689/Sigmoid_1:y:0lstm_863_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_863/while/lstm_cell_689/ReluRelu+lstm_863/while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_863/while/lstm_cell_689/mul_1Mul(lstm_863/while/lstm_cell_689/Sigmoid:y:0/lstm_863/while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_863/while/lstm_cell_689/add_1AddV2$lstm_863/while/lstm_cell_689/mul:z:0&lstm_863/while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_863/while/lstm_cell_689/Sigmoid_2Sigmoid+lstm_863/while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_863/while/lstm_cell_689/Relu_1Relu&lstm_863/while/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_863/while/lstm_cell_689/mul_2Mul*lstm_863/while/lstm_cell_689/Sigmoid_2:y:01lstm_863/while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_863/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_863_while_placeholder_1lstm_863_while_placeholder&lstm_863/while/lstm_cell_689/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_863/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_863/while/addAddV2lstm_863_while_placeholderlstm_863/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_863/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_863/while/add_1AddV2*lstm_863_while_lstm_863_while_loop_counterlstm_863/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_863/while/IdentityIdentitylstm_863/while/add_1:z:0^lstm_863/while/NoOp*
T0*
_output_shapes
: ?
lstm_863/while/Identity_1Identity0lstm_863_while_lstm_863_while_maximum_iterations^lstm_863/while/NoOp*
T0*
_output_shapes
: t
lstm_863/while/Identity_2Identitylstm_863/while/add:z:0^lstm_863/while/NoOp*
T0*
_output_shapes
: ?
lstm_863/while/Identity_3IdentityClstm_863/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_863/while/NoOp*
T0*
_output_shapes
: ?
lstm_863/while/Identity_4Identity&lstm_863/while/lstm_cell_689/mul_2:z:0^lstm_863/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_863/while/Identity_5Identity&lstm_863/while/lstm_cell_689/add_1:z:0^lstm_863/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_863/while/NoOpNoOp4^lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp3^lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp5^lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_863_while_identity lstm_863/while/Identity:output:0"?
lstm_863_while_identity_1"lstm_863/while/Identity_1:output:0"?
lstm_863_while_identity_2"lstm_863/while/Identity_2:output:0"?
lstm_863_while_identity_3"lstm_863/while/Identity_3:output:0"?
lstm_863_while_identity_4"lstm_863/while/Identity_4:output:0"?
lstm_863_while_identity_5"lstm_863/while/Identity_5:output:0"T
'lstm_863_while_lstm_863_strided_slice_1)lstm_863_while_lstm_863_strided_slice_1_0"~
<lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource>lstm_863_while_lstm_cell_689_biasadd_readvariableop_resource_0"?
=lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource?lstm_863_while_lstm_cell_689_matmul_1_readvariableop_resource_0"|
;lstm_863_while_lstm_cell_689_matmul_readvariableop_resource=lstm_863_while_lstm_cell_689_matmul_readvariableop_resource_0"?
clstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensorelstm_863_while_tensorarrayv2read_tensorlistgetitem_lstm_863_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp3lstm_863/while/lstm_cell_689/BiasAdd/ReadVariableOp2h
2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp2lstm_863/while/lstm_cell_689/MatMul/ReadVariableOp2l
4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp4lstm_863/while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172533

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4172449*
condR
while_cond_4172448*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_687_layer_call_fn_4173944

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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4168959o
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4172863
inputs_0?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4172779*
condR
while_cond_4172778*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_862_while_cond_4171403.
*lstm_862_while_lstm_862_while_loop_counter4
0lstm_862_while_lstm_862_while_maximum_iterations
lstm_862_while_placeholder 
lstm_862_while_placeholder_1 
lstm_862_while_placeholder_2 
lstm_862_while_placeholder_30
,lstm_862_while_less_lstm_862_strided_slice_1G
Clstm_862_while_lstm_862_while_cond_4171403___redundant_placeholder0G
Clstm_862_while_lstm_862_while_cond_4171403___redundant_placeholder1G
Clstm_862_while_lstm_862_while_cond_4171403___redundant_placeholder2G
Clstm_862_while_lstm_862_while_cond_4171403___redundant_placeholder3
lstm_862_while_identity
?
lstm_862/while/LessLesslstm_862_while_placeholder,lstm_862_while_less_lstm_862_strided_slice_1*
T0*
_output_shapes
: ]
lstm_862/while/IdentityIdentitylstm_862/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_862_while_identity lstm_862/while/Identity:output:0*(
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4169233

inputs(
lstm_cell_687_4169151:	?(
lstm_cell_687_4169153:	d?$
lstm_cell_687_4169155:	?
identity??%lstm_cell_687/StatefulPartitionedCall?while;
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
%lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_687_4169151lstm_cell_687_4169153lstm_cell_687_4169155*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4169105n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_687_4169151lstm_cell_687_4169153lstm_cell_687_4169155*
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
while_body_4169164*
condR
while_cond_4169163*K
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
NoOpNoOp&^lstm_cell_687/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_687/StatefulPartitionedCall%lstm_cell_687/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_861_layer_call_fn_4172104

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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170937s
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
while_cond_4169322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4169322___redundant_placeholder05
1while_while_cond_4169322___redundant_placeholder15
1while_while_cond_4169322___redundant_placeholder25
1while_while_cond_4169322___redundant_placeholder3
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
/__inference_lstm_cell_689_layer_call_fn_4174140

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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169659o
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
while_cond_4170156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4170156___redundant_placeholder05
1while_while_cond_4170156___redundant_placeholder15
1while_while_cond_4170156___redundant_placeholder25
1while_while_cond_4170156___redundant_placeholder3
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173006
inputs_0?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4172922*
condR
while_cond_4172921*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4172306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169455

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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4174025

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
?8
?
while_body_4172779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_862_layer_call_fn_4172709

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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170241s
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
while_cond_4169672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4169672___redundant_placeholder05
1while_while_cond_4169672___redundant_placeholder15
1while_while_cond_4169672___redundant_placeholder25
1while_while_cond_4169672___redundant_placeholder3
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169309

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
"__inference__wrapped_model_4168892
lstm_861_inputW
Dsequential_287_lstm_861_lstm_cell_687_matmul_readvariableop_resource:	?Y
Fsequential_287_lstm_861_lstm_cell_687_matmul_1_readvariableop_resource:	d?T
Esequential_287_lstm_861_lstm_cell_687_biasadd_readvariableop_resource:	?W
Dsequential_287_lstm_862_lstm_cell_688_matmul_readvariableop_resource:	d?Y
Fsequential_287_lstm_862_lstm_cell_688_matmul_1_readvariableop_resource:	2?T
Esequential_287_lstm_862_lstm_cell_688_biasadd_readvariableop_resource:	?V
Dsequential_287_lstm_863_lstm_cell_689_matmul_readvariableop_resource:2(X
Fsequential_287_lstm_863_lstm_cell_689_matmul_1_readvariableop_resource:
(S
Esequential_287_lstm_863_lstm_cell_689_biasadd_readvariableop_resource:(I
7sequential_287_dense_287_matmul_readvariableop_resource:
F
8sequential_287_dense_287_biasadd_readvariableop_resource:
identity??/sequential_287/dense_287/BiasAdd/ReadVariableOp?.sequential_287/dense_287/MatMul/ReadVariableOp?<sequential_287/lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp?;sequential_287/lstm_861/lstm_cell_687/MatMul/ReadVariableOp?=sequential_287/lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp?sequential_287/lstm_861/while?<sequential_287/lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp?;sequential_287/lstm_862/lstm_cell_688/MatMul/ReadVariableOp?=sequential_287/lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp?sequential_287/lstm_862/while?<sequential_287/lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp?;sequential_287/lstm_863/lstm_cell_689/MatMul/ReadVariableOp?=sequential_287/lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp?sequential_287/lstm_863/while[
sequential_287/lstm_861/ShapeShapelstm_861_input*
T0*
_output_shapes
:u
+sequential_287/lstm_861/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_287/lstm_861/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_287/lstm_861/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_287/lstm_861/strided_sliceStridedSlice&sequential_287/lstm_861/Shape:output:04sequential_287/lstm_861/strided_slice/stack:output:06sequential_287/lstm_861/strided_slice/stack_1:output:06sequential_287/lstm_861/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_287/lstm_861/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_287/lstm_861/zeros/packedPack.sequential_287/lstm_861/strided_slice:output:0/sequential_287/lstm_861/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_287/lstm_861/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_287/lstm_861/zerosFill-sequential_287/lstm_861/zeros/packed:output:0,sequential_287/lstm_861/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_287/lstm_861/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_287/lstm_861/zeros_1/packedPack.sequential_287/lstm_861/strided_slice:output:01sequential_287/lstm_861/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_287/lstm_861/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_287/lstm_861/zeros_1Fill/sequential_287/lstm_861/zeros_1/packed:output:0.sequential_287/lstm_861/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_287/lstm_861/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_287/lstm_861/transpose	Transposelstm_861_input/sequential_287/lstm_861/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_287/lstm_861/Shape_1Shape%sequential_287/lstm_861/transpose:y:0*
T0*
_output_shapes
:w
-sequential_287/lstm_861/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_861/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_287/lstm_861/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_861/strided_slice_1StridedSlice(sequential_287/lstm_861/Shape_1:output:06sequential_287/lstm_861/strided_slice_1/stack:output:08sequential_287/lstm_861/strided_slice_1/stack_1:output:08sequential_287/lstm_861/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_287/lstm_861/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_287/lstm_861/TensorArrayV2TensorListReserve<sequential_287/lstm_861/TensorArrayV2/element_shape:output:00sequential_287/lstm_861/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_287/lstm_861/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_287/lstm_861/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_287/lstm_861/transpose:y:0Vsequential_287/lstm_861/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_287/lstm_861/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_861/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_287/lstm_861/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_861/strided_slice_2StridedSlice%sequential_287/lstm_861/transpose:y:06sequential_287/lstm_861/strided_slice_2/stack:output:08sequential_287/lstm_861/strided_slice_2/stack_1:output:08sequential_287/lstm_861/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_287/lstm_861/lstm_cell_687/MatMul/ReadVariableOpReadVariableOpDsequential_287_lstm_861_lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_287/lstm_861/lstm_cell_687/MatMulMatMul0sequential_287/lstm_861/strided_slice_2:output:0Csequential_287/lstm_861/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_287/lstm_861/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOpFsequential_287_lstm_861_lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_287/lstm_861/lstm_cell_687/MatMul_1MatMul&sequential_287/lstm_861/zeros:output:0Esequential_287/lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_287/lstm_861/lstm_cell_687/addAddV26sequential_287/lstm_861/lstm_cell_687/MatMul:product:08sequential_287/lstm_861/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_287/lstm_861/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOpEsequential_287_lstm_861_lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_287/lstm_861/lstm_cell_687/BiasAddBiasAdd-sequential_287/lstm_861/lstm_cell_687/add:z:0Dsequential_287/lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_287/lstm_861/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_287/lstm_861/lstm_cell_687/splitSplit>sequential_287/lstm_861/lstm_cell_687/split/split_dim:output:06sequential_287/lstm_861/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_287/lstm_861/lstm_cell_687/SigmoidSigmoid4sequential_287/lstm_861/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_287/lstm_861/lstm_cell_687/Sigmoid_1Sigmoid4sequential_287/lstm_861/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_287/lstm_861/lstm_cell_687/mulMul3sequential_287/lstm_861/lstm_cell_687/Sigmoid_1:y:0(sequential_287/lstm_861/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_287/lstm_861/lstm_cell_687/ReluRelu4sequential_287/lstm_861/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_287/lstm_861/lstm_cell_687/mul_1Mul1sequential_287/lstm_861/lstm_cell_687/Sigmoid:y:08sequential_287/lstm_861/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_287/lstm_861/lstm_cell_687/add_1AddV2-sequential_287/lstm_861/lstm_cell_687/mul:z:0/sequential_287/lstm_861/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_287/lstm_861/lstm_cell_687/Sigmoid_2Sigmoid4sequential_287/lstm_861/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_287/lstm_861/lstm_cell_687/Relu_1Relu/sequential_287/lstm_861/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_287/lstm_861/lstm_cell_687/mul_2Mul3sequential_287/lstm_861/lstm_cell_687/Sigmoid_2:y:0:sequential_287/lstm_861/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_287/lstm_861/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_287/lstm_861/TensorArrayV2_1TensorListReserve>sequential_287/lstm_861/TensorArrayV2_1/element_shape:output:00sequential_287/lstm_861/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_287/lstm_861/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_287/lstm_861/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_287/lstm_861/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_287/lstm_861/whileWhile3sequential_287/lstm_861/while/loop_counter:output:09sequential_287/lstm_861/while/maximum_iterations:output:0%sequential_287/lstm_861/time:output:00sequential_287/lstm_861/TensorArrayV2_1:handle:0&sequential_287/lstm_861/zeros:output:0(sequential_287/lstm_861/zeros_1:output:00sequential_287/lstm_861/strided_slice_1:output:0Osequential_287/lstm_861/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_287_lstm_861_lstm_cell_687_matmul_readvariableop_resourceFsequential_287_lstm_861_lstm_cell_687_matmul_1_readvariableop_resourceEsequential_287_lstm_861_lstm_cell_687_biasadd_readvariableop_resource*
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
*sequential_287_lstm_861_while_body_4168524*6
cond.R,
*sequential_287_lstm_861_while_cond_4168523*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_287/lstm_861/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_287/lstm_861/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_287/lstm_861/while:output:3Qsequential_287/lstm_861/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_287/lstm_861/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_287/lstm_861/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_861/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_861/strided_slice_3StridedSliceCsequential_287/lstm_861/TensorArrayV2Stack/TensorListStack:tensor:06sequential_287/lstm_861/strided_slice_3/stack:output:08sequential_287/lstm_861/strided_slice_3/stack_1:output:08sequential_287/lstm_861/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_287/lstm_861/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_287/lstm_861/transpose_1	TransposeCsequential_287/lstm_861/TensorArrayV2Stack/TensorListStack:tensor:01sequential_287/lstm_861/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_287/lstm_861/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_287/lstm_862/ShapeShape'sequential_287/lstm_861/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_287/lstm_862/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_287/lstm_862/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_287/lstm_862/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_287/lstm_862/strided_sliceStridedSlice&sequential_287/lstm_862/Shape:output:04sequential_287/lstm_862/strided_slice/stack:output:06sequential_287/lstm_862/strided_slice/stack_1:output:06sequential_287/lstm_862/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_287/lstm_862/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_287/lstm_862/zeros/packedPack.sequential_287/lstm_862/strided_slice:output:0/sequential_287/lstm_862/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_287/lstm_862/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_287/lstm_862/zerosFill-sequential_287/lstm_862/zeros/packed:output:0,sequential_287/lstm_862/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_287/lstm_862/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_287/lstm_862/zeros_1/packedPack.sequential_287/lstm_862/strided_slice:output:01sequential_287/lstm_862/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_287/lstm_862/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_287/lstm_862/zeros_1Fill/sequential_287/lstm_862/zeros_1/packed:output:0.sequential_287/lstm_862/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_287/lstm_862/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_287/lstm_862/transpose	Transpose'sequential_287/lstm_861/transpose_1:y:0/sequential_287/lstm_862/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_287/lstm_862/Shape_1Shape%sequential_287/lstm_862/transpose:y:0*
T0*
_output_shapes
:w
-sequential_287/lstm_862/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_862/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_287/lstm_862/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_862/strided_slice_1StridedSlice(sequential_287/lstm_862/Shape_1:output:06sequential_287/lstm_862/strided_slice_1/stack:output:08sequential_287/lstm_862/strided_slice_1/stack_1:output:08sequential_287/lstm_862/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_287/lstm_862/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_287/lstm_862/TensorArrayV2TensorListReserve<sequential_287/lstm_862/TensorArrayV2/element_shape:output:00sequential_287/lstm_862/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_287/lstm_862/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_287/lstm_862/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_287/lstm_862/transpose:y:0Vsequential_287/lstm_862/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_287/lstm_862/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_862/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_287/lstm_862/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_862/strided_slice_2StridedSlice%sequential_287/lstm_862/transpose:y:06sequential_287/lstm_862/strided_slice_2/stack:output:08sequential_287/lstm_862/strided_slice_2/stack_1:output:08sequential_287/lstm_862/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_287/lstm_862/lstm_cell_688/MatMul/ReadVariableOpReadVariableOpDsequential_287_lstm_862_lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_287/lstm_862/lstm_cell_688/MatMulMatMul0sequential_287/lstm_862/strided_slice_2:output:0Csequential_287/lstm_862/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_287/lstm_862/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOpFsequential_287_lstm_862_lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_287/lstm_862/lstm_cell_688/MatMul_1MatMul&sequential_287/lstm_862/zeros:output:0Esequential_287/lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_287/lstm_862/lstm_cell_688/addAddV26sequential_287/lstm_862/lstm_cell_688/MatMul:product:08sequential_287/lstm_862/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_287/lstm_862/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOpEsequential_287_lstm_862_lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_287/lstm_862/lstm_cell_688/BiasAddBiasAdd-sequential_287/lstm_862/lstm_cell_688/add:z:0Dsequential_287/lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_287/lstm_862/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_287/lstm_862/lstm_cell_688/splitSplit>sequential_287/lstm_862/lstm_cell_688/split/split_dim:output:06sequential_287/lstm_862/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_287/lstm_862/lstm_cell_688/SigmoidSigmoid4sequential_287/lstm_862/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_287/lstm_862/lstm_cell_688/Sigmoid_1Sigmoid4sequential_287/lstm_862/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_287/lstm_862/lstm_cell_688/mulMul3sequential_287/lstm_862/lstm_cell_688/Sigmoid_1:y:0(sequential_287/lstm_862/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_287/lstm_862/lstm_cell_688/ReluRelu4sequential_287/lstm_862/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_287/lstm_862/lstm_cell_688/mul_1Mul1sequential_287/lstm_862/lstm_cell_688/Sigmoid:y:08sequential_287/lstm_862/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_287/lstm_862/lstm_cell_688/add_1AddV2-sequential_287/lstm_862/lstm_cell_688/mul:z:0/sequential_287/lstm_862/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_287/lstm_862/lstm_cell_688/Sigmoid_2Sigmoid4sequential_287/lstm_862/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_287/lstm_862/lstm_cell_688/Relu_1Relu/sequential_287/lstm_862/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_287/lstm_862/lstm_cell_688/mul_2Mul3sequential_287/lstm_862/lstm_cell_688/Sigmoid_2:y:0:sequential_287/lstm_862/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_287/lstm_862/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_287/lstm_862/TensorArrayV2_1TensorListReserve>sequential_287/lstm_862/TensorArrayV2_1/element_shape:output:00sequential_287/lstm_862/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_287/lstm_862/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_287/lstm_862/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_287/lstm_862/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_287/lstm_862/whileWhile3sequential_287/lstm_862/while/loop_counter:output:09sequential_287/lstm_862/while/maximum_iterations:output:0%sequential_287/lstm_862/time:output:00sequential_287/lstm_862/TensorArrayV2_1:handle:0&sequential_287/lstm_862/zeros:output:0(sequential_287/lstm_862/zeros_1:output:00sequential_287/lstm_862/strided_slice_1:output:0Osequential_287/lstm_862/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_287_lstm_862_lstm_cell_688_matmul_readvariableop_resourceFsequential_287_lstm_862_lstm_cell_688_matmul_1_readvariableop_resourceEsequential_287_lstm_862_lstm_cell_688_biasadd_readvariableop_resource*
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
*sequential_287_lstm_862_while_body_4168663*6
cond.R,
*sequential_287_lstm_862_while_cond_4168662*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_287/lstm_862/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_287/lstm_862/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_287/lstm_862/while:output:3Qsequential_287/lstm_862/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_287/lstm_862/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_287/lstm_862/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_862/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_862/strided_slice_3StridedSliceCsequential_287/lstm_862/TensorArrayV2Stack/TensorListStack:tensor:06sequential_287/lstm_862/strided_slice_3/stack:output:08sequential_287/lstm_862/strided_slice_3/stack_1:output:08sequential_287/lstm_862/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_287/lstm_862/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_287/lstm_862/transpose_1	TransposeCsequential_287/lstm_862/TensorArrayV2Stack/TensorListStack:tensor:01sequential_287/lstm_862/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_287/lstm_862/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_287/lstm_863/ShapeShape'sequential_287/lstm_862/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_287/lstm_863/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_287/lstm_863/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_287/lstm_863/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_287/lstm_863/strided_sliceStridedSlice&sequential_287/lstm_863/Shape:output:04sequential_287/lstm_863/strided_slice/stack:output:06sequential_287/lstm_863/strided_slice/stack_1:output:06sequential_287/lstm_863/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_287/lstm_863/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_287/lstm_863/zeros/packedPack.sequential_287/lstm_863/strided_slice:output:0/sequential_287/lstm_863/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_287/lstm_863/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_287/lstm_863/zerosFill-sequential_287/lstm_863/zeros/packed:output:0,sequential_287/lstm_863/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_287/lstm_863/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_287/lstm_863/zeros_1/packedPack.sequential_287/lstm_863/strided_slice:output:01sequential_287/lstm_863/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_287/lstm_863/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_287/lstm_863/zeros_1Fill/sequential_287/lstm_863/zeros_1/packed:output:0.sequential_287/lstm_863/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_287/lstm_863/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_287/lstm_863/transpose	Transpose'sequential_287/lstm_862/transpose_1:y:0/sequential_287/lstm_863/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_287/lstm_863/Shape_1Shape%sequential_287/lstm_863/transpose:y:0*
T0*
_output_shapes
:w
-sequential_287/lstm_863/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_863/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_287/lstm_863/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_863/strided_slice_1StridedSlice(sequential_287/lstm_863/Shape_1:output:06sequential_287/lstm_863/strided_slice_1/stack:output:08sequential_287/lstm_863/strided_slice_1/stack_1:output:08sequential_287/lstm_863/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_287/lstm_863/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_287/lstm_863/TensorArrayV2TensorListReserve<sequential_287/lstm_863/TensorArrayV2/element_shape:output:00sequential_287/lstm_863/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_287/lstm_863/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_287/lstm_863/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_287/lstm_863/transpose:y:0Vsequential_287/lstm_863/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_287/lstm_863/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_863/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_287/lstm_863/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_863/strided_slice_2StridedSlice%sequential_287/lstm_863/transpose:y:06sequential_287/lstm_863/strided_slice_2/stack:output:08sequential_287/lstm_863/strided_slice_2/stack_1:output:08sequential_287/lstm_863/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_287/lstm_863/lstm_cell_689/MatMul/ReadVariableOpReadVariableOpDsequential_287_lstm_863_lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_287/lstm_863/lstm_cell_689/MatMulMatMul0sequential_287/lstm_863/strided_slice_2:output:0Csequential_287/lstm_863/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_287/lstm_863/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOpFsequential_287_lstm_863_lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_287/lstm_863/lstm_cell_689/MatMul_1MatMul&sequential_287/lstm_863/zeros:output:0Esequential_287/lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_287/lstm_863/lstm_cell_689/addAddV26sequential_287/lstm_863/lstm_cell_689/MatMul:product:08sequential_287/lstm_863/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_287/lstm_863/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOpEsequential_287_lstm_863_lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_287/lstm_863/lstm_cell_689/BiasAddBiasAdd-sequential_287/lstm_863/lstm_cell_689/add:z:0Dsequential_287/lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_287/lstm_863/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_287/lstm_863/lstm_cell_689/splitSplit>sequential_287/lstm_863/lstm_cell_689/split/split_dim:output:06sequential_287/lstm_863/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_287/lstm_863/lstm_cell_689/SigmoidSigmoid4sequential_287/lstm_863/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_287/lstm_863/lstm_cell_689/Sigmoid_1Sigmoid4sequential_287/lstm_863/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_287/lstm_863/lstm_cell_689/mulMul3sequential_287/lstm_863/lstm_cell_689/Sigmoid_1:y:0(sequential_287/lstm_863/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_287/lstm_863/lstm_cell_689/ReluRelu4sequential_287/lstm_863/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_287/lstm_863/lstm_cell_689/mul_1Mul1sequential_287/lstm_863/lstm_cell_689/Sigmoid:y:08sequential_287/lstm_863/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_287/lstm_863/lstm_cell_689/add_1AddV2-sequential_287/lstm_863/lstm_cell_689/mul:z:0/sequential_287/lstm_863/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_287/lstm_863/lstm_cell_689/Sigmoid_2Sigmoid4sequential_287/lstm_863/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_287/lstm_863/lstm_cell_689/Relu_1Relu/sequential_287/lstm_863/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_287/lstm_863/lstm_cell_689/mul_2Mul3sequential_287/lstm_863/lstm_cell_689/Sigmoid_2:y:0:sequential_287/lstm_863/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_287/lstm_863/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_287/lstm_863/TensorArrayV2_1TensorListReserve>sequential_287/lstm_863/TensorArrayV2_1/element_shape:output:00sequential_287/lstm_863/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_287/lstm_863/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_287/lstm_863/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_287/lstm_863/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_287/lstm_863/whileWhile3sequential_287/lstm_863/while/loop_counter:output:09sequential_287/lstm_863/while/maximum_iterations:output:0%sequential_287/lstm_863/time:output:00sequential_287/lstm_863/TensorArrayV2_1:handle:0&sequential_287/lstm_863/zeros:output:0(sequential_287/lstm_863/zeros_1:output:00sequential_287/lstm_863/strided_slice_1:output:0Osequential_287/lstm_863/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_287_lstm_863_lstm_cell_689_matmul_readvariableop_resourceFsequential_287_lstm_863_lstm_cell_689_matmul_1_readvariableop_resourceEsequential_287_lstm_863_lstm_cell_689_biasadd_readvariableop_resource*
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
*sequential_287_lstm_863_while_body_4168802*6
cond.R,
*sequential_287_lstm_863_while_cond_4168801*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_287/lstm_863/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_287/lstm_863/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_287/lstm_863/while:output:3Qsequential_287/lstm_863/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_287/lstm_863/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_287/lstm_863/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_287/lstm_863/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_287/lstm_863/strided_slice_3StridedSliceCsequential_287/lstm_863/TensorArrayV2Stack/TensorListStack:tensor:06sequential_287/lstm_863/strided_slice_3/stack:output:08sequential_287/lstm_863/strided_slice_3/stack_1:output:08sequential_287/lstm_863/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_287/lstm_863/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_287/lstm_863/transpose_1	TransposeCsequential_287/lstm_863/TensorArrayV2Stack/TensorListStack:tensor:01sequential_287/lstm_863/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_287/lstm_863/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_287/dense_287/MatMul/ReadVariableOpReadVariableOp7sequential_287_dense_287_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_287/dense_287/MatMulMatMul0sequential_287/lstm_863/strided_slice_3:output:06sequential_287/dense_287/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_287/dense_287/BiasAdd/ReadVariableOpReadVariableOp8sequential_287_dense_287_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_287/dense_287/BiasAddBiasAdd)sequential_287/dense_287/MatMul:product:07sequential_287/dense_287/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_287/dense_287/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_287/dense_287/BiasAdd/ReadVariableOp/^sequential_287/dense_287/MatMul/ReadVariableOp=^sequential_287/lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp<^sequential_287/lstm_861/lstm_cell_687/MatMul/ReadVariableOp>^sequential_287/lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp^sequential_287/lstm_861/while=^sequential_287/lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp<^sequential_287/lstm_862/lstm_cell_688/MatMul/ReadVariableOp>^sequential_287/lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp^sequential_287/lstm_862/while=^sequential_287/lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp<^sequential_287/lstm_863/lstm_cell_689/MatMul/ReadVariableOp>^sequential_287/lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp^sequential_287/lstm_863/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_287/dense_287/BiasAdd/ReadVariableOp/sequential_287/dense_287/BiasAdd/ReadVariableOp2`
.sequential_287/dense_287/MatMul/ReadVariableOp.sequential_287/dense_287/MatMul/ReadVariableOp2|
<sequential_287/lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp<sequential_287/lstm_861/lstm_cell_687/BiasAdd/ReadVariableOp2z
;sequential_287/lstm_861/lstm_cell_687/MatMul/ReadVariableOp;sequential_287/lstm_861/lstm_cell_687/MatMul/ReadVariableOp2~
=sequential_287/lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp=sequential_287/lstm_861/lstm_cell_687/MatMul_1/ReadVariableOp2>
sequential_287/lstm_861/whilesequential_287/lstm_861/while2|
<sequential_287/lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp<sequential_287/lstm_862/lstm_cell_688/BiasAdd/ReadVariableOp2z
;sequential_287/lstm_862/lstm_cell_688/MatMul/ReadVariableOp;sequential_287/lstm_862/lstm_cell_688/MatMul/ReadVariableOp2~
=sequential_287/lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp=sequential_287/lstm_862/lstm_cell_688/MatMul_1/ReadVariableOp2>
sequential_287/lstm_862/whilesequential_287/lstm_862/while2|
<sequential_287/lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp<sequential_287/lstm_863/lstm_cell_689/BiasAdd/ReadVariableOp2z
;sequential_287/lstm_863/lstm_cell_689/MatMul/ReadVariableOp;sequential_287/lstm_863/lstm_cell_689/MatMul/ReadVariableOp2~
=sequential_287/lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp=sequential_287/lstm_863/lstm_cell_689/MatMul_1/ReadVariableOp2>
sequential_287/lstm_863/whilesequential_287/lstm_863/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_861_input
?#
?
while_body_4169514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_688_4169538_0:	d?0
while_lstm_cell_688_4169540_0:	2?,
while_lstm_cell_688_4169542_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_688_4169538:	d?.
while_lstm_cell_688_4169540:	2?*
while_lstm_cell_688_4169542:	???+while/lstm_cell_688/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_688_4169538_0while_lstm_cell_688_4169540_0while_lstm_cell_688_4169542_0*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4169455?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_688/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_688/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_688/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_688/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_688_4169538while_lstm_cell_688_4169538_0"<
while_lstm_cell_688_4169540while_lstm_cell_688_4169540_0"<
while_lstm_cell_688_4169542while_lstm_cell_688_4169542_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_688/StatefulPartitionedCall+while/lstm_cell_688/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4169163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4169163___redundant_placeholder05
1while_while_cond_4169163___redundant_placeholder15
1while_while_cond_4169163___redundant_placeholder25
1while_while_cond_4169163___redundant_placeholder3
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173908

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4173824*
condR
while_cond_4173823*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_861_layer_call_and_return_conditional_losses_4170091

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4170007*
condR
while_cond_4170006*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4172305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4172305___redundant_placeholder05
1while_while_cond_4172305___redundant_placeholder15
1while_while_cond_4172305___redundant_placeholder25
1while_while_cond_4172305___redundant_placeholder3
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
while_body_4170307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_861_layer_call_fn_4172071
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4169042|
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
?#
?
while_body_4168973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_687_4168997_0:	?0
while_lstm_cell_687_4168999_0:	d?,
while_lstm_cell_687_4169001_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_687_4168997:	?.
while_lstm_cell_687_4168999:	d?*
while_lstm_cell_687_4169001:	???+while/lstm_cell_687/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_687_4168997_0while_lstm_cell_687_4168999_0while_lstm_cell_687_4169001_0*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4168959?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_687/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_687/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_687/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_687/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_687_4168997while_lstm_cell_687_4168997_0"<
while_lstm_cell_687_4168999while_lstm_cell_687_4168999_0"<
while_lstm_cell_687_4169001while_lstm_cell_687_4169001_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_687/StatefulPartitionedCall+while/lstm_cell_687/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4173208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_863_layer_call_fn_4173336

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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170607o
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
while_cond_4170306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4170306___redundant_placeholder05
1while_while_cond_4170306___redundant_placeholder15
1while_while_cond_4170306___redundant_placeholder25
1while_while_cond_4170306___redundant_placeholder3
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4169933

inputs'
lstm_cell_689_4169851:2('
lstm_cell_689_4169853:
(#
lstm_cell_689_4169855:(
identity??%lstm_cell_689/StatefulPartitionedCall?while;
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
%lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_689_4169851lstm_cell_689_4169853lstm_cell_689_4169855*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169805n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_689_4169851lstm_cell_689_4169853lstm_cell_689_4169855*
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
while_body_4169864*
condR
while_cond_4169863*K
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
NoOpNoOp&^lstm_cell_689/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_689/StatefulPartitionedCall%lstm_cell_689/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4169864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_689_4169888_0:2(/
while_lstm_cell_689_4169890_0:
(+
while_lstm_cell_689_4169892_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_689_4169888:2(-
while_lstm_cell_689_4169890:
()
while_lstm_cell_689_4169892:(??+while/lstm_cell_689/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_689_4169888_0while_lstm_cell_689_4169890_0while_lstm_cell_689_4169892_0*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169805?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_689/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_689/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_689/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_689_4169888while_lstm_cell_689_4169888_0"<
while_lstm_cell_689_4169890while_lstm_cell_689_4169890_0"<
while_lstm_cell_689_4169892while_lstm_cell_689_4169892_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_689/StatefulPartitionedCall+while/lstm_cell_689/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4170607

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4170523*
condR
while_cond_4170522*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172676

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4172592*
condR
while_cond_4172591*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_287_layer_call_fn_4171179

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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4170416o
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
?
E__inference_lstm_863_layer_call_and_return_conditional_losses_4169742

inputs'
lstm_cell_689_4169660:2('
lstm_cell_689_4169662:
(#
lstm_cell_689_4169664:(
identity??%lstm_cell_689/StatefulPartitionedCall?while;
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
%lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_689_4169660lstm_cell_689_4169662lstm_cell_689_4169664*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169659n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_689_4169660lstm_cell_689_4169662lstm_cell_689_4169664*
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
while_body_4169673*
condR
while_cond_4169672*K
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
NoOpNoOp&^lstm_cell_689/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_689/StatefulPartitionedCall%lstm_cell_689/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_862_layer_call_fn_4172720

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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4170772s
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4169805

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

 
_user_specified_namestates"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_861_input;
 serving_default_lstm_861_input:0?????????=
	dense_2870
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
2dense_287/kernel
:2dense_287/bias
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
0:.	?2lstm_861/lstm_cell_861/kernel
::8	d?2'lstm_861/lstm_cell_861/recurrent_kernel
*:(?2lstm_861/lstm_cell_861/bias
0:.	d?2lstm_862/lstm_cell_862/kernel
::8	2?2'lstm_862/lstm_cell_862/recurrent_kernel
*:(?2lstm_862/lstm_cell_862/bias
/:-2(2lstm_863/lstm_cell_863/kernel
9:7
(2'lstm_863/lstm_cell_863/recurrent_kernel
):'(2lstm_863/lstm_cell_863/bias
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
2Adam/dense_287/kernel/m
!:2Adam/dense_287/bias/m
5:3	?2$Adam/lstm_861/lstm_cell_861/kernel/m
?:=	d?2.Adam/lstm_861/lstm_cell_861/recurrent_kernel/m
/:-?2"Adam/lstm_861/lstm_cell_861/bias/m
5:3	d?2$Adam/lstm_862/lstm_cell_862/kernel/m
?:=	2?2.Adam/lstm_862/lstm_cell_862/recurrent_kernel/m
/:-?2"Adam/lstm_862/lstm_cell_862/bias/m
4:22(2$Adam/lstm_863/lstm_cell_863/kernel/m
>:<
(2.Adam/lstm_863/lstm_cell_863/recurrent_kernel/m
.:,(2"Adam/lstm_863/lstm_cell_863/bias/m
':%
2Adam/dense_287/kernel/v
!:2Adam/dense_287/bias/v
5:3	?2$Adam/lstm_861/lstm_cell_861/kernel/v
?:=	d?2.Adam/lstm_861/lstm_cell_861/recurrent_kernel/v
/:-?2"Adam/lstm_861/lstm_cell_861/bias/v
5:3	d?2$Adam/lstm_862/lstm_cell_862/kernel/v
?:=	2?2.Adam/lstm_862/lstm_cell_862/recurrent_kernel/v
/:-?2"Adam/lstm_862/lstm_cell_862/bias/v
4:22(2$Adam/lstm_863/lstm_cell_863/kernel/v
>:<
(2.Adam/lstm_863/lstm_cell_863/recurrent_kernel/v
.:,(2"Adam/lstm_863/lstm_cell_863/bias/v
?2?
0__inference_sequential_287_layer_call_fn_4170441
0__inference_sequential_287_layer_call_fn_4171179
0__inference_sequential_287_layer_call_fn_4171206
0__inference_sequential_287_layer_call_fn_4171057?
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171633
K__inference_sequential_287_layer_call_and_return_conditional_losses_4172060
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171087
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171117?
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
"__inference__wrapped_model_4168892lstm_861_input"?
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
*__inference_lstm_861_layer_call_fn_4172071
*__inference_lstm_861_layer_call_fn_4172082
*__inference_lstm_861_layer_call_fn_4172093
*__inference_lstm_861_layer_call_fn_4172104?
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172247
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172390
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172533
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172676?
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
*__inference_lstm_862_layer_call_fn_4172687
*__inference_lstm_862_layer_call_fn_4172698
*__inference_lstm_862_layer_call_fn_4172709
*__inference_lstm_862_layer_call_fn_4172720?
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4172863
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173006
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173149
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173292?
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
*__inference_lstm_863_layer_call_fn_4173303
*__inference_lstm_863_layer_call_fn_4173314
*__inference_lstm_863_layer_call_fn_4173325
*__inference_lstm_863_layer_call_fn_4173336?
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173479
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173622
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173765
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173908?
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
+__inference_dense_287_layer_call_fn_4173917?
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
F__inference_dense_287_layer_call_and_return_conditional_losses_4173927?
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
%__inference_signature_wrapper_4171152lstm_861_input"?
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
/__inference_lstm_cell_687_layer_call_fn_4173944
/__inference_lstm_cell_687_layer_call_fn_4173961?
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4173993
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4174025?
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
/__inference_lstm_cell_688_layer_call_fn_4174042
/__inference_lstm_cell_688_layer_call_fn_4174059?
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4174091
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4174123?
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
/__inference_lstm_cell_689_layer_call_fn_4174140
/__inference_lstm_cell_689_layer_call_fn_4174157?
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4174189
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4174221?
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
"__inference__wrapped_model_4168892?-./012345!";?8
1?.
,?)
lstm_861_input?????????
? "5?2
0
	dense_287#? 
	dense_287??????????
F__inference_dense_287_layer_call_and_return_conditional_losses_4173927\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_287_layer_call_fn_4173917O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172247?-./O?L
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172390?-./O?L
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172533q-./??<
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
E__inference_lstm_861_layer_call_and_return_conditional_losses_4172676q-./??<
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
*__inference_lstm_861_layer_call_fn_4172071}-./O?L
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
*__inference_lstm_861_layer_call_fn_4172082}-./O?L
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
*__inference_lstm_861_layer_call_fn_4172093d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_861_layer_call_fn_4172104d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_862_layer_call_and_return_conditional_losses_4172863?012O?L
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173006?012O?L
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173149q012??<
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
E__inference_lstm_862_layer_call_and_return_conditional_losses_4173292q012??<
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
*__inference_lstm_862_layer_call_fn_4172687}012O?L
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
*__inference_lstm_862_layer_call_fn_4172698}012O?L
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
*__inference_lstm_862_layer_call_fn_4172709d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_862_layer_call_fn_4172720d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173479}345O?L
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173622}345O?L
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173765m345??<
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
E__inference_lstm_863_layer_call_and_return_conditional_losses_4173908m345??<
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
*__inference_lstm_863_layer_call_fn_4173303p345O?L
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
*__inference_lstm_863_layer_call_fn_4173314p345O?L
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
*__inference_lstm_863_layer_call_fn_4173325`345??<
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
*__inference_lstm_863_layer_call_fn_4173336`345??<
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4173993?-./??}
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4174025?-./??}
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
/__inference_lstm_cell_687_layer_call_fn_4173944?-./??}
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
/__inference_lstm_cell_687_layer_call_fn_4173961?-./??}
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4174091?012??}
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4174123?012??}
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
/__inference_lstm_cell_688_layer_call_fn_4174042?012??}
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
/__inference_lstm_cell_688_layer_call_fn_4174059?012??}
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4174189?345??}
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4174221?345??}
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
/__inference_lstm_cell_689_layer_call_fn_4174140?345??}
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
/__inference_lstm_cell_689_layer_call_fn_4174157?345??}
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171087y-./012345!"C?@
9?6
,?)
lstm_861_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171117y-./012345!"C?@
9?6
,?)
lstm_861_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_287_layer_call_and_return_conditional_losses_4171633q-./012345!";?8
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
K__inference_sequential_287_layer_call_and_return_conditional_losses_4172060q-./012345!";?8
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
0__inference_sequential_287_layer_call_fn_4170441l-./012345!"C?@
9?6
,?)
lstm_861_input?????????
p 

 
? "???????????
0__inference_sequential_287_layer_call_fn_4171057l-./012345!"C?@
9?6
,?)
lstm_861_input?????????
p

 
? "???????????
0__inference_sequential_287_layer_call_fn_4171179d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_287_layer_call_fn_4171206d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4171152?-./012345!"M?J
? 
C?@
>
lstm_861_input,?)
lstm_861_input?????????"5?2
0
	dense_287#? 
	dense_287?????????