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
dense_200/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_200/kernel
u
$dense_200/kernel/Read/ReadVariableOpReadVariableOpdense_200/kernel*
_output_shapes

:
*
dtype0
t
dense_200/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_200/bias
m
"dense_200/bias/Read/ReadVariableOpReadVariableOpdense_200/bias*
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
lstm_600/lstm_cell_600/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_600/lstm_cell_600/kernel
?
1lstm_600/lstm_cell_600/kernel/Read/ReadVariableOpReadVariableOplstm_600/lstm_cell_600/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_600/lstm_cell_600/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_600/lstm_cell_600/recurrent_kernel
?
;lstm_600/lstm_cell_600/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_600/lstm_cell_600/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_600/lstm_cell_600/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_600/lstm_cell_600/bias
?
/lstm_600/lstm_cell_600/bias/Read/ReadVariableOpReadVariableOplstm_600/lstm_cell_600/bias*
_output_shapes	
:?*
dtype0
?
lstm_601/lstm_cell_601/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_601/lstm_cell_601/kernel
?
1lstm_601/lstm_cell_601/kernel/Read/ReadVariableOpReadVariableOplstm_601/lstm_cell_601/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_601/lstm_cell_601/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_601/lstm_cell_601/recurrent_kernel
?
;lstm_601/lstm_cell_601/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_601/lstm_cell_601/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_601/lstm_cell_601/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_601/lstm_cell_601/bias
?
/lstm_601/lstm_cell_601/bias/Read/ReadVariableOpReadVariableOplstm_601/lstm_cell_601/bias*
_output_shapes	
:?*
dtype0
?
lstm_602/lstm_cell_602/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_602/lstm_cell_602/kernel
?
1lstm_602/lstm_cell_602/kernel/Read/ReadVariableOpReadVariableOplstm_602/lstm_cell_602/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_602/lstm_cell_602/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_602/lstm_cell_602/recurrent_kernel
?
;lstm_602/lstm_cell_602/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_602/lstm_cell_602/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_602/lstm_cell_602/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_602/lstm_cell_602/bias
?
/lstm_602/lstm_cell_602/bias/Read/ReadVariableOpReadVariableOplstm_602/lstm_cell_602/bias*
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
Adam/dense_200/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_200/kernel/m
?
+Adam/dense_200/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_200/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_200/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_200/bias/m
{
)Adam/dense_200/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_200/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_600/lstm_cell_600/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_600/lstm_cell_600/kernel/m
?
8Adam/lstm_600/lstm_cell_600/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_600/lstm_cell_600/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_600/lstm_cell_600/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_600/lstm_cell_600/recurrent_kernel/m
?
BAdam/lstm_600/lstm_cell_600/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_600/lstm_cell_600/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_600/lstm_cell_600/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_600/lstm_cell_600/bias/m
?
6Adam/lstm_600/lstm_cell_600/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_600/lstm_cell_600/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_601/lstm_cell_601/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_601/lstm_cell_601/kernel/m
?
8Adam/lstm_601/lstm_cell_601/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_601/lstm_cell_601/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_601/lstm_cell_601/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_601/lstm_cell_601/recurrent_kernel/m
?
BAdam/lstm_601/lstm_cell_601/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_601/lstm_cell_601/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_601/lstm_cell_601/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_601/lstm_cell_601/bias/m
?
6Adam/lstm_601/lstm_cell_601/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_601/lstm_cell_601/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_602/lstm_cell_602/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_602/lstm_cell_602/kernel/m
?
8Adam/lstm_602/lstm_cell_602/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_602/lstm_cell_602/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_602/lstm_cell_602/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_602/lstm_cell_602/recurrent_kernel/m
?
BAdam/lstm_602/lstm_cell_602/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_602/lstm_cell_602/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_602/lstm_cell_602/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_602/lstm_cell_602/bias/m
?
6Adam/lstm_602/lstm_cell_602/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_602/lstm_cell_602/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_200/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_200/kernel/v
?
+Adam/dense_200/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_200/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_200/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_200/bias/v
{
)Adam/dense_200/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_200/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_600/lstm_cell_600/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_600/lstm_cell_600/kernel/v
?
8Adam/lstm_600/lstm_cell_600/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_600/lstm_cell_600/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_600/lstm_cell_600/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_600/lstm_cell_600/recurrent_kernel/v
?
BAdam/lstm_600/lstm_cell_600/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_600/lstm_cell_600/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_600/lstm_cell_600/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_600/lstm_cell_600/bias/v
?
6Adam/lstm_600/lstm_cell_600/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_600/lstm_cell_600/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_601/lstm_cell_601/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_601/lstm_cell_601/kernel/v
?
8Adam/lstm_601/lstm_cell_601/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_601/lstm_cell_601/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_601/lstm_cell_601/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_601/lstm_cell_601/recurrent_kernel/v
?
BAdam/lstm_601/lstm_cell_601/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_601/lstm_cell_601/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_601/lstm_cell_601/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_601/lstm_cell_601/bias/v
?
6Adam/lstm_601/lstm_cell_601/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_601/lstm_cell_601/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_602/lstm_cell_602/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_602/lstm_cell_602/kernel/v
?
8Adam/lstm_602/lstm_cell_602/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_602/lstm_cell_602/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_602/lstm_cell_602/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_602/lstm_cell_602/recurrent_kernel/v
?
BAdam/lstm_602/lstm_cell_602/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_602/lstm_cell_602/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_602/lstm_cell_602/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_602/lstm_cell_602/bias/v
?
6Adam/lstm_602/lstm_cell_602/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_602/lstm_cell_602/bias/v*
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
VARIABLE_VALUEdense_200/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_200/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_600/lstm_cell_600/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_600/lstm_cell_600/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_600/lstm_cell_600/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_601/lstm_cell_601/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_601/lstm_cell_601/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_601/lstm_cell_601/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_602/lstm_cell_602/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_602/lstm_cell_602/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_602/lstm_cell_602/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_200/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_200/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_600/lstm_cell_600/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_600/lstm_cell_600/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_600/lstm_cell_600/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_601/lstm_cell_601/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_601/lstm_cell_601/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_601/lstm_cell_601/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_602/lstm_cell_602/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_602/lstm_cell_602/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_602/lstm_cell_602/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_200/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_200/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_600/lstm_cell_600/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_600/lstm_cell_600/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_600/lstm_cell_600/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_601/lstm_cell_601/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_601/lstm_cell_601/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_601/lstm_cell_601/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_602/lstm_cell_602/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_602/lstm_cell_602/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_602/lstm_cell_602/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_600_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_600_inputlstm_600/lstm_cell_600/kernel'lstm_600/lstm_cell_600/recurrent_kernellstm_600/lstm_cell_600/biaslstm_601/lstm_cell_601/kernel'lstm_601/lstm_cell_601/recurrent_kernellstm_601/lstm_cell_601/biaslstm_602/lstm_cell_602/kernel'lstm_602/lstm_cell_602/recurrent_kernellstm_602/lstm_cell_602/biasdense_200/kerneldense_200/bias*
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
%__inference_signature_wrapper_4731673
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_200/kernel/Read/ReadVariableOp"dense_200/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_600/lstm_cell_600/kernel/Read/ReadVariableOp;lstm_600/lstm_cell_600/recurrent_kernel/Read/ReadVariableOp/lstm_600/lstm_cell_600/bias/Read/ReadVariableOp1lstm_601/lstm_cell_601/kernel/Read/ReadVariableOp;lstm_601/lstm_cell_601/recurrent_kernel/Read/ReadVariableOp/lstm_601/lstm_cell_601/bias/Read/ReadVariableOp1lstm_602/lstm_cell_602/kernel/Read/ReadVariableOp;lstm_602/lstm_cell_602/recurrent_kernel/Read/ReadVariableOp/lstm_602/lstm_cell_602/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_200/kernel/m/Read/ReadVariableOp)Adam/dense_200/bias/m/Read/ReadVariableOp8Adam/lstm_600/lstm_cell_600/kernel/m/Read/ReadVariableOpBAdam/lstm_600/lstm_cell_600/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_600/lstm_cell_600/bias/m/Read/ReadVariableOp8Adam/lstm_601/lstm_cell_601/kernel/m/Read/ReadVariableOpBAdam/lstm_601/lstm_cell_601/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_601/lstm_cell_601/bias/m/Read/ReadVariableOp8Adam/lstm_602/lstm_cell_602/kernel/m/Read/ReadVariableOpBAdam/lstm_602/lstm_cell_602/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_602/lstm_cell_602/bias/m/Read/ReadVariableOp+Adam/dense_200/kernel/v/Read/ReadVariableOp)Adam/dense_200/bias/v/Read/ReadVariableOp8Adam/lstm_600/lstm_cell_600/kernel/v/Read/ReadVariableOpBAdam/lstm_600/lstm_cell_600/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_600/lstm_cell_600/bias/v/Read/ReadVariableOp8Adam/lstm_601/lstm_cell_601/kernel/v/Read/ReadVariableOpBAdam/lstm_601/lstm_cell_601/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_601/lstm_cell_601/bias/v/Read/ReadVariableOp8Adam/lstm_602/lstm_cell_602/kernel/v/Read/ReadVariableOpBAdam/lstm_602/lstm_cell_602/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_602/lstm_cell_602/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4734885
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_200/kerneldense_200/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_600/lstm_cell_600/kernel'lstm_600/lstm_cell_600/recurrent_kernellstm_600/lstm_cell_600/biaslstm_601/lstm_cell_601/kernel'lstm_601/lstm_cell_601/recurrent_kernellstm_601/lstm_cell_601/biaslstm_602/lstm_cell_602/kernel'lstm_602/lstm_cell_602/recurrent_kernellstm_602/lstm_cell_602/biastotalcountAdam/dense_200/kernel/mAdam/dense_200/bias/m$Adam/lstm_600/lstm_cell_600/kernel/m.Adam/lstm_600/lstm_cell_600/recurrent_kernel/m"Adam/lstm_600/lstm_cell_600/bias/m$Adam/lstm_601/lstm_cell_601/kernel/m.Adam/lstm_601/lstm_cell_601/recurrent_kernel/m"Adam/lstm_601/lstm_cell_601/bias/m$Adam/lstm_602/lstm_cell_602/kernel/m.Adam/lstm_602/lstm_cell_602/recurrent_kernel/m"Adam/lstm_602/lstm_cell_602/bias/mAdam/dense_200/kernel/vAdam/dense_200/bias/v$Adam/lstm_600/lstm_cell_600/kernel/v.Adam/lstm_600/lstm_cell_600/recurrent_kernel/v"Adam/lstm_600/lstm_cell_600/bias/v$Adam/lstm_601/lstm_cell_601/kernel/v.Adam/lstm_601/lstm_cell_601/recurrent_kernel/v"Adam/lstm_601/lstm_cell_601/bias/v$Adam/lstm_602/lstm_cell_602/kernel/v.Adam/lstm_602/lstm_cell_602/recurrent_kernel/v"Adam/lstm_602/lstm_cell_602/bias/v*4
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
#__inference__traced_restore_4735015??+
?
?
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730326

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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4729563

inputs(
lstm_cell_780_4729481:	?(
lstm_cell_780_4729483:	d?$
lstm_cell_780_4729485:	?
identity??%lstm_cell_780/StatefulPartitionedCall?while;
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
%lstm_cell_780/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_780_4729481lstm_cell_780_4729483lstm_cell_780_4729485*
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729480n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_780_4729481lstm_cell_780_4729483lstm_cell_780_4729485*
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
while_body_4729494*
condR
while_cond_4729493*K
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
NoOpNoOp&^lstm_cell_780/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_780/StatefulPartitionedCall%lstm_cell_780/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4730384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4730384___redundant_placeholder05
1while_while_cond_4730384___redundant_placeholder15
1while_while_cond_4730384___redundant_placeholder25
1while_while_cond_4730384___redundant_placeholder3
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
0__inference_sequential_200_layer_call_fn_4731578
lstm_600_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_600_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731526o
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
_user_specified_namelstm_600_input
?
?
*__inference_lstm_600_layer_call_fn_4732614

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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4730612s
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
lstm_602_while_cond_4732490.
*lstm_602_while_lstm_602_while_loop_counter4
0lstm_602_while_lstm_602_while_maximum_iterations
lstm_602_while_placeholder 
lstm_602_while_placeholder_1 
lstm_602_while_placeholder_2 
lstm_602_while_placeholder_30
,lstm_602_while_less_lstm_602_strided_slice_1G
Clstm_602_while_lstm_602_while_cond_4732490___redundant_placeholder0G
Clstm_602_while_lstm_602_while_cond_4732490___redundant_placeholder1G
Clstm_602_while_lstm_602_while_cond_4732490___redundant_placeholder2G
Clstm_602_while_lstm_602_while_cond_4732490___redundant_placeholder3
lstm_602_while_identity
?
lstm_602/while/LessLesslstm_602_while_placeholder,lstm_602_while_less_lstm_602_strided_slice_1*
T0*
_output_shapes
: ]
lstm_602/while/IdentityIdentitylstm_602/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_602_while_identity lstm_602/while/Identity:output:0*(
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
while_body_4733729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_781_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_781_matmul_readvariableop_resource:	d?G
4while_lstm_cell_781_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_781_biasadd_readvariableop_resource:	???*while/lstm_cell_781/BiasAdd/ReadVariableOp?)while/lstm_cell_781/MatMul/ReadVariableOp?+while/lstm_cell_781/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_781/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_781/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_781/addAddV2$while/lstm_cell_781/MatMul:product:0&while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_781/BiasAddBiasAddwhile/lstm_cell_781/add:z:02while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_781/splitSplit,while/lstm_cell_781/split/split_dim:output:0$while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_781/SigmoidSigmoid"while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_1Sigmoid"while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mulMul!while/lstm_cell_781/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_781/ReluRelu"while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_1Mulwhile/lstm_cell_781/Sigmoid:y:0&while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/add_1AddV2while/lstm_cell_781/mul:z:0while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_2Sigmoid"while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_781/Relu_1Reluwhile/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_2Mul!while/lstm_cell_781/Sigmoid_2:y:0(while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_781/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_781/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_781/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_781/BiasAdd/ReadVariableOp*^while/lstm_cell_781/MatMul/ReadVariableOp,^while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_781_biasadd_readvariableop_resource5while_lstm_cell_781_biasadd_readvariableop_resource_0"n
4while_lstm_cell_781_matmul_1_readvariableop_resource6while_lstm_cell_781_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_781_matmul_readvariableop_resource4while_lstm_cell_781_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_781/BiasAdd/ReadVariableOp*while/lstm_cell_781/BiasAdd/ReadVariableOp2V
)while/lstm_cell_781/MatMul/ReadVariableOp)while/lstm_cell_781/MatMul/ReadVariableOp2Z
+while/lstm_cell_781/MatMul_1/ReadVariableOp+while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4729413
lstm_600_inputW
Dsequential_200_lstm_600_lstm_cell_780_matmul_readvariableop_resource:	?Y
Fsequential_200_lstm_600_lstm_cell_780_matmul_1_readvariableop_resource:	d?T
Esequential_200_lstm_600_lstm_cell_780_biasadd_readvariableop_resource:	?W
Dsequential_200_lstm_601_lstm_cell_781_matmul_readvariableop_resource:	d?Y
Fsequential_200_lstm_601_lstm_cell_781_matmul_1_readvariableop_resource:	2?T
Esequential_200_lstm_601_lstm_cell_781_biasadd_readvariableop_resource:	?V
Dsequential_200_lstm_602_lstm_cell_782_matmul_readvariableop_resource:2(X
Fsequential_200_lstm_602_lstm_cell_782_matmul_1_readvariableop_resource:
(S
Esequential_200_lstm_602_lstm_cell_782_biasadd_readvariableop_resource:(I
7sequential_200_dense_200_matmul_readvariableop_resource:
F
8sequential_200_dense_200_biasadd_readvariableop_resource:
identity??/sequential_200/dense_200/BiasAdd/ReadVariableOp?.sequential_200/dense_200/MatMul/ReadVariableOp?<sequential_200/lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp?;sequential_200/lstm_600/lstm_cell_780/MatMul/ReadVariableOp?=sequential_200/lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp?sequential_200/lstm_600/while?<sequential_200/lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp?;sequential_200/lstm_601/lstm_cell_781/MatMul/ReadVariableOp?=sequential_200/lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp?sequential_200/lstm_601/while?<sequential_200/lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp?;sequential_200/lstm_602/lstm_cell_782/MatMul/ReadVariableOp?=sequential_200/lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp?sequential_200/lstm_602/while[
sequential_200/lstm_600/ShapeShapelstm_600_input*
T0*
_output_shapes
:u
+sequential_200/lstm_600/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_200/lstm_600/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_200/lstm_600/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_200/lstm_600/strided_sliceStridedSlice&sequential_200/lstm_600/Shape:output:04sequential_200/lstm_600/strided_slice/stack:output:06sequential_200/lstm_600/strided_slice/stack_1:output:06sequential_200/lstm_600/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_200/lstm_600/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_200/lstm_600/zeros/packedPack.sequential_200/lstm_600/strided_slice:output:0/sequential_200/lstm_600/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_200/lstm_600/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_200/lstm_600/zerosFill-sequential_200/lstm_600/zeros/packed:output:0,sequential_200/lstm_600/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_200/lstm_600/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_200/lstm_600/zeros_1/packedPack.sequential_200/lstm_600/strided_slice:output:01sequential_200/lstm_600/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_200/lstm_600/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_200/lstm_600/zeros_1Fill/sequential_200/lstm_600/zeros_1/packed:output:0.sequential_200/lstm_600/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_200/lstm_600/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_200/lstm_600/transpose	Transposelstm_600_input/sequential_200/lstm_600/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_200/lstm_600/Shape_1Shape%sequential_200/lstm_600/transpose:y:0*
T0*
_output_shapes
:w
-sequential_200/lstm_600/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_600/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_200/lstm_600/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_600/strided_slice_1StridedSlice(sequential_200/lstm_600/Shape_1:output:06sequential_200/lstm_600/strided_slice_1/stack:output:08sequential_200/lstm_600/strided_slice_1/stack_1:output:08sequential_200/lstm_600/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_200/lstm_600/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_200/lstm_600/TensorArrayV2TensorListReserve<sequential_200/lstm_600/TensorArrayV2/element_shape:output:00sequential_200/lstm_600/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_200/lstm_600/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_200/lstm_600/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_200/lstm_600/transpose:y:0Vsequential_200/lstm_600/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_200/lstm_600/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_600/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_200/lstm_600/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_600/strided_slice_2StridedSlice%sequential_200/lstm_600/transpose:y:06sequential_200/lstm_600/strided_slice_2/stack:output:08sequential_200/lstm_600/strided_slice_2/stack_1:output:08sequential_200/lstm_600/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_200/lstm_600/lstm_cell_780/MatMul/ReadVariableOpReadVariableOpDsequential_200_lstm_600_lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_200/lstm_600/lstm_cell_780/MatMulMatMul0sequential_200/lstm_600/strided_slice_2:output:0Csequential_200/lstm_600/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_200/lstm_600/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOpFsequential_200_lstm_600_lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_200/lstm_600/lstm_cell_780/MatMul_1MatMul&sequential_200/lstm_600/zeros:output:0Esequential_200/lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_200/lstm_600/lstm_cell_780/addAddV26sequential_200/lstm_600/lstm_cell_780/MatMul:product:08sequential_200/lstm_600/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_200/lstm_600/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOpEsequential_200_lstm_600_lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_200/lstm_600/lstm_cell_780/BiasAddBiasAdd-sequential_200/lstm_600/lstm_cell_780/add:z:0Dsequential_200/lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_200/lstm_600/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_200/lstm_600/lstm_cell_780/splitSplit>sequential_200/lstm_600/lstm_cell_780/split/split_dim:output:06sequential_200/lstm_600/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_200/lstm_600/lstm_cell_780/SigmoidSigmoid4sequential_200/lstm_600/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_200/lstm_600/lstm_cell_780/Sigmoid_1Sigmoid4sequential_200/lstm_600/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_200/lstm_600/lstm_cell_780/mulMul3sequential_200/lstm_600/lstm_cell_780/Sigmoid_1:y:0(sequential_200/lstm_600/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_200/lstm_600/lstm_cell_780/ReluRelu4sequential_200/lstm_600/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_200/lstm_600/lstm_cell_780/mul_1Mul1sequential_200/lstm_600/lstm_cell_780/Sigmoid:y:08sequential_200/lstm_600/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_200/lstm_600/lstm_cell_780/add_1AddV2-sequential_200/lstm_600/lstm_cell_780/mul:z:0/sequential_200/lstm_600/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_200/lstm_600/lstm_cell_780/Sigmoid_2Sigmoid4sequential_200/lstm_600/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_200/lstm_600/lstm_cell_780/Relu_1Relu/sequential_200/lstm_600/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_200/lstm_600/lstm_cell_780/mul_2Mul3sequential_200/lstm_600/lstm_cell_780/Sigmoid_2:y:0:sequential_200/lstm_600/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_200/lstm_600/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_200/lstm_600/TensorArrayV2_1TensorListReserve>sequential_200/lstm_600/TensorArrayV2_1/element_shape:output:00sequential_200/lstm_600/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_200/lstm_600/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_200/lstm_600/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_200/lstm_600/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_200/lstm_600/whileWhile3sequential_200/lstm_600/while/loop_counter:output:09sequential_200/lstm_600/while/maximum_iterations:output:0%sequential_200/lstm_600/time:output:00sequential_200/lstm_600/TensorArrayV2_1:handle:0&sequential_200/lstm_600/zeros:output:0(sequential_200/lstm_600/zeros_1:output:00sequential_200/lstm_600/strided_slice_1:output:0Osequential_200/lstm_600/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_200_lstm_600_lstm_cell_780_matmul_readvariableop_resourceFsequential_200_lstm_600_lstm_cell_780_matmul_1_readvariableop_resourceEsequential_200_lstm_600_lstm_cell_780_biasadd_readvariableop_resource*
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
*sequential_200_lstm_600_while_body_4729045*6
cond.R,
*sequential_200_lstm_600_while_cond_4729044*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_200/lstm_600/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_200/lstm_600/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_200/lstm_600/while:output:3Qsequential_200/lstm_600/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_200/lstm_600/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_200/lstm_600/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_600/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_600/strided_slice_3StridedSliceCsequential_200/lstm_600/TensorArrayV2Stack/TensorListStack:tensor:06sequential_200/lstm_600/strided_slice_3/stack:output:08sequential_200/lstm_600/strided_slice_3/stack_1:output:08sequential_200/lstm_600/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_200/lstm_600/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_200/lstm_600/transpose_1	TransposeCsequential_200/lstm_600/TensorArrayV2Stack/TensorListStack:tensor:01sequential_200/lstm_600/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_200/lstm_600/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_200/lstm_601/ShapeShape'sequential_200/lstm_600/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_200/lstm_601/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_200/lstm_601/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_200/lstm_601/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_200/lstm_601/strided_sliceStridedSlice&sequential_200/lstm_601/Shape:output:04sequential_200/lstm_601/strided_slice/stack:output:06sequential_200/lstm_601/strided_slice/stack_1:output:06sequential_200/lstm_601/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_200/lstm_601/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_200/lstm_601/zeros/packedPack.sequential_200/lstm_601/strided_slice:output:0/sequential_200/lstm_601/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_200/lstm_601/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_200/lstm_601/zerosFill-sequential_200/lstm_601/zeros/packed:output:0,sequential_200/lstm_601/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_200/lstm_601/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_200/lstm_601/zeros_1/packedPack.sequential_200/lstm_601/strided_slice:output:01sequential_200/lstm_601/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_200/lstm_601/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_200/lstm_601/zeros_1Fill/sequential_200/lstm_601/zeros_1/packed:output:0.sequential_200/lstm_601/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_200/lstm_601/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_200/lstm_601/transpose	Transpose'sequential_200/lstm_600/transpose_1:y:0/sequential_200/lstm_601/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_200/lstm_601/Shape_1Shape%sequential_200/lstm_601/transpose:y:0*
T0*
_output_shapes
:w
-sequential_200/lstm_601/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_601/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_200/lstm_601/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_601/strided_slice_1StridedSlice(sequential_200/lstm_601/Shape_1:output:06sequential_200/lstm_601/strided_slice_1/stack:output:08sequential_200/lstm_601/strided_slice_1/stack_1:output:08sequential_200/lstm_601/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_200/lstm_601/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_200/lstm_601/TensorArrayV2TensorListReserve<sequential_200/lstm_601/TensorArrayV2/element_shape:output:00sequential_200/lstm_601/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_200/lstm_601/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_200/lstm_601/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_200/lstm_601/transpose:y:0Vsequential_200/lstm_601/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_200/lstm_601/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_601/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_200/lstm_601/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_601/strided_slice_2StridedSlice%sequential_200/lstm_601/transpose:y:06sequential_200/lstm_601/strided_slice_2/stack:output:08sequential_200/lstm_601/strided_slice_2/stack_1:output:08sequential_200/lstm_601/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_200/lstm_601/lstm_cell_781/MatMul/ReadVariableOpReadVariableOpDsequential_200_lstm_601_lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_200/lstm_601/lstm_cell_781/MatMulMatMul0sequential_200/lstm_601/strided_slice_2:output:0Csequential_200/lstm_601/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_200/lstm_601/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOpFsequential_200_lstm_601_lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_200/lstm_601/lstm_cell_781/MatMul_1MatMul&sequential_200/lstm_601/zeros:output:0Esequential_200/lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_200/lstm_601/lstm_cell_781/addAddV26sequential_200/lstm_601/lstm_cell_781/MatMul:product:08sequential_200/lstm_601/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_200/lstm_601/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOpEsequential_200_lstm_601_lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_200/lstm_601/lstm_cell_781/BiasAddBiasAdd-sequential_200/lstm_601/lstm_cell_781/add:z:0Dsequential_200/lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_200/lstm_601/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_200/lstm_601/lstm_cell_781/splitSplit>sequential_200/lstm_601/lstm_cell_781/split/split_dim:output:06sequential_200/lstm_601/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_200/lstm_601/lstm_cell_781/SigmoidSigmoid4sequential_200/lstm_601/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_200/lstm_601/lstm_cell_781/Sigmoid_1Sigmoid4sequential_200/lstm_601/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_200/lstm_601/lstm_cell_781/mulMul3sequential_200/lstm_601/lstm_cell_781/Sigmoid_1:y:0(sequential_200/lstm_601/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_200/lstm_601/lstm_cell_781/ReluRelu4sequential_200/lstm_601/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_200/lstm_601/lstm_cell_781/mul_1Mul1sequential_200/lstm_601/lstm_cell_781/Sigmoid:y:08sequential_200/lstm_601/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_200/lstm_601/lstm_cell_781/add_1AddV2-sequential_200/lstm_601/lstm_cell_781/mul:z:0/sequential_200/lstm_601/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_200/lstm_601/lstm_cell_781/Sigmoid_2Sigmoid4sequential_200/lstm_601/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_200/lstm_601/lstm_cell_781/Relu_1Relu/sequential_200/lstm_601/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_200/lstm_601/lstm_cell_781/mul_2Mul3sequential_200/lstm_601/lstm_cell_781/Sigmoid_2:y:0:sequential_200/lstm_601/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_200/lstm_601/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_200/lstm_601/TensorArrayV2_1TensorListReserve>sequential_200/lstm_601/TensorArrayV2_1/element_shape:output:00sequential_200/lstm_601/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_200/lstm_601/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_200/lstm_601/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_200/lstm_601/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_200/lstm_601/whileWhile3sequential_200/lstm_601/while/loop_counter:output:09sequential_200/lstm_601/while/maximum_iterations:output:0%sequential_200/lstm_601/time:output:00sequential_200/lstm_601/TensorArrayV2_1:handle:0&sequential_200/lstm_601/zeros:output:0(sequential_200/lstm_601/zeros_1:output:00sequential_200/lstm_601/strided_slice_1:output:0Osequential_200/lstm_601/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_200_lstm_601_lstm_cell_781_matmul_readvariableop_resourceFsequential_200_lstm_601_lstm_cell_781_matmul_1_readvariableop_resourceEsequential_200_lstm_601_lstm_cell_781_biasadd_readvariableop_resource*
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
*sequential_200_lstm_601_while_body_4729184*6
cond.R,
*sequential_200_lstm_601_while_cond_4729183*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_200/lstm_601/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_200/lstm_601/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_200/lstm_601/while:output:3Qsequential_200/lstm_601/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_200/lstm_601/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_200/lstm_601/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_601/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_601/strided_slice_3StridedSliceCsequential_200/lstm_601/TensorArrayV2Stack/TensorListStack:tensor:06sequential_200/lstm_601/strided_slice_3/stack:output:08sequential_200/lstm_601/strided_slice_3/stack_1:output:08sequential_200/lstm_601/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_200/lstm_601/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_200/lstm_601/transpose_1	TransposeCsequential_200/lstm_601/TensorArrayV2Stack/TensorListStack:tensor:01sequential_200/lstm_601/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_200/lstm_601/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_200/lstm_602/ShapeShape'sequential_200/lstm_601/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_200/lstm_602/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_200/lstm_602/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_200/lstm_602/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_200/lstm_602/strided_sliceStridedSlice&sequential_200/lstm_602/Shape:output:04sequential_200/lstm_602/strided_slice/stack:output:06sequential_200/lstm_602/strided_slice/stack_1:output:06sequential_200/lstm_602/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_200/lstm_602/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_200/lstm_602/zeros/packedPack.sequential_200/lstm_602/strided_slice:output:0/sequential_200/lstm_602/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_200/lstm_602/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_200/lstm_602/zerosFill-sequential_200/lstm_602/zeros/packed:output:0,sequential_200/lstm_602/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_200/lstm_602/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_200/lstm_602/zeros_1/packedPack.sequential_200/lstm_602/strided_slice:output:01sequential_200/lstm_602/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_200/lstm_602/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_200/lstm_602/zeros_1Fill/sequential_200/lstm_602/zeros_1/packed:output:0.sequential_200/lstm_602/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_200/lstm_602/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_200/lstm_602/transpose	Transpose'sequential_200/lstm_601/transpose_1:y:0/sequential_200/lstm_602/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_200/lstm_602/Shape_1Shape%sequential_200/lstm_602/transpose:y:0*
T0*
_output_shapes
:w
-sequential_200/lstm_602/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_602/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_200/lstm_602/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_602/strided_slice_1StridedSlice(sequential_200/lstm_602/Shape_1:output:06sequential_200/lstm_602/strided_slice_1/stack:output:08sequential_200/lstm_602/strided_slice_1/stack_1:output:08sequential_200/lstm_602/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_200/lstm_602/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_200/lstm_602/TensorArrayV2TensorListReserve<sequential_200/lstm_602/TensorArrayV2/element_shape:output:00sequential_200/lstm_602/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_200/lstm_602/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_200/lstm_602/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_200/lstm_602/transpose:y:0Vsequential_200/lstm_602/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_200/lstm_602/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_602/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_200/lstm_602/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_602/strided_slice_2StridedSlice%sequential_200/lstm_602/transpose:y:06sequential_200/lstm_602/strided_slice_2/stack:output:08sequential_200/lstm_602/strided_slice_2/stack_1:output:08sequential_200/lstm_602/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_200/lstm_602/lstm_cell_782/MatMul/ReadVariableOpReadVariableOpDsequential_200_lstm_602_lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_200/lstm_602/lstm_cell_782/MatMulMatMul0sequential_200/lstm_602/strided_slice_2:output:0Csequential_200/lstm_602/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_200/lstm_602/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOpFsequential_200_lstm_602_lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_200/lstm_602/lstm_cell_782/MatMul_1MatMul&sequential_200/lstm_602/zeros:output:0Esequential_200/lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_200/lstm_602/lstm_cell_782/addAddV26sequential_200/lstm_602/lstm_cell_782/MatMul:product:08sequential_200/lstm_602/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_200/lstm_602/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOpEsequential_200_lstm_602_lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_200/lstm_602/lstm_cell_782/BiasAddBiasAdd-sequential_200/lstm_602/lstm_cell_782/add:z:0Dsequential_200/lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_200/lstm_602/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_200/lstm_602/lstm_cell_782/splitSplit>sequential_200/lstm_602/lstm_cell_782/split/split_dim:output:06sequential_200/lstm_602/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_200/lstm_602/lstm_cell_782/SigmoidSigmoid4sequential_200/lstm_602/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_200/lstm_602/lstm_cell_782/Sigmoid_1Sigmoid4sequential_200/lstm_602/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_200/lstm_602/lstm_cell_782/mulMul3sequential_200/lstm_602/lstm_cell_782/Sigmoid_1:y:0(sequential_200/lstm_602/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_200/lstm_602/lstm_cell_782/ReluRelu4sequential_200/lstm_602/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_200/lstm_602/lstm_cell_782/mul_1Mul1sequential_200/lstm_602/lstm_cell_782/Sigmoid:y:08sequential_200/lstm_602/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_200/lstm_602/lstm_cell_782/add_1AddV2-sequential_200/lstm_602/lstm_cell_782/mul:z:0/sequential_200/lstm_602/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_200/lstm_602/lstm_cell_782/Sigmoid_2Sigmoid4sequential_200/lstm_602/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_200/lstm_602/lstm_cell_782/Relu_1Relu/sequential_200/lstm_602/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_200/lstm_602/lstm_cell_782/mul_2Mul3sequential_200/lstm_602/lstm_cell_782/Sigmoid_2:y:0:sequential_200/lstm_602/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_200/lstm_602/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_200/lstm_602/TensorArrayV2_1TensorListReserve>sequential_200/lstm_602/TensorArrayV2_1/element_shape:output:00sequential_200/lstm_602/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_200/lstm_602/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_200/lstm_602/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_200/lstm_602/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_200/lstm_602/whileWhile3sequential_200/lstm_602/while/loop_counter:output:09sequential_200/lstm_602/while/maximum_iterations:output:0%sequential_200/lstm_602/time:output:00sequential_200/lstm_602/TensorArrayV2_1:handle:0&sequential_200/lstm_602/zeros:output:0(sequential_200/lstm_602/zeros_1:output:00sequential_200/lstm_602/strided_slice_1:output:0Osequential_200/lstm_602/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_200_lstm_602_lstm_cell_782_matmul_readvariableop_resourceFsequential_200_lstm_602_lstm_cell_782_matmul_1_readvariableop_resourceEsequential_200_lstm_602_lstm_cell_782_biasadd_readvariableop_resource*
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
*sequential_200_lstm_602_while_body_4729323*6
cond.R,
*sequential_200_lstm_602_while_cond_4729322*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_200/lstm_602/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_200/lstm_602/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_200/lstm_602/while:output:3Qsequential_200/lstm_602/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_200/lstm_602/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_200/lstm_602/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_200/lstm_602/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_200/lstm_602/strided_slice_3StridedSliceCsequential_200/lstm_602/TensorArrayV2Stack/TensorListStack:tensor:06sequential_200/lstm_602/strided_slice_3/stack:output:08sequential_200/lstm_602/strided_slice_3/stack_1:output:08sequential_200/lstm_602/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_200/lstm_602/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_200/lstm_602/transpose_1	TransposeCsequential_200/lstm_602/TensorArrayV2Stack/TensorListStack:tensor:01sequential_200/lstm_602/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_200/lstm_602/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_200/dense_200/MatMul/ReadVariableOpReadVariableOp7sequential_200_dense_200_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_200/dense_200/MatMulMatMul0sequential_200/lstm_602/strided_slice_3:output:06sequential_200/dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_200/dense_200/BiasAdd/ReadVariableOpReadVariableOp8sequential_200_dense_200_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_200/dense_200/BiasAddBiasAdd)sequential_200/dense_200/MatMul:product:07sequential_200/dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_200/dense_200/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_200/dense_200/BiasAdd/ReadVariableOp/^sequential_200/dense_200/MatMul/ReadVariableOp=^sequential_200/lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp<^sequential_200/lstm_600/lstm_cell_780/MatMul/ReadVariableOp>^sequential_200/lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp^sequential_200/lstm_600/while=^sequential_200/lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp<^sequential_200/lstm_601/lstm_cell_781/MatMul/ReadVariableOp>^sequential_200/lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp^sequential_200/lstm_601/while=^sequential_200/lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp<^sequential_200/lstm_602/lstm_cell_782/MatMul/ReadVariableOp>^sequential_200/lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp^sequential_200/lstm_602/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_200/dense_200/BiasAdd/ReadVariableOp/sequential_200/dense_200/BiasAdd/ReadVariableOp2`
.sequential_200/dense_200/MatMul/ReadVariableOp.sequential_200/dense_200/MatMul/ReadVariableOp2|
<sequential_200/lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp<sequential_200/lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp2z
;sequential_200/lstm_600/lstm_cell_780/MatMul/ReadVariableOp;sequential_200/lstm_600/lstm_cell_780/MatMul/ReadVariableOp2~
=sequential_200/lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp=sequential_200/lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp2>
sequential_200/lstm_600/whilesequential_200/lstm_600/while2|
<sequential_200/lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp<sequential_200/lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp2z
;sequential_200/lstm_601/lstm_cell_781/MatMul/ReadVariableOp;sequential_200/lstm_601/lstm_cell_781/MatMul/ReadVariableOp2~
=sequential_200/lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp=sequential_200/lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp2>
sequential_200/lstm_601/whilesequential_200/lstm_601/while2|
<sequential_200/lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp<sequential_200/lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp2z
;sequential_200/lstm_602/lstm_cell_782/MatMul/ReadVariableOp;sequential_200/lstm_602/lstm_cell_782/MatMul/ReadVariableOp2~
=sequential_200/lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp=sequential_200/lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp2>
sequential_200/lstm_602/whilesequential_200/lstm_602/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_600_input
?
?
while_cond_4731373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4731373___redundant_placeholder05
1while_while_cond_4731373___redundant_placeholder15
1while_while_cond_4731373___redundant_placeholder25
1while_while_cond_4731373___redundant_placeholder3
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
while_body_4734345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_782_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_782_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_782_matmul_readvariableop_resource:2(F
4while_lstm_cell_782_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_782_biasadd_readvariableop_resource:(??*while/lstm_cell_782/BiasAdd/ReadVariableOp?)while/lstm_cell_782/MatMul/ReadVariableOp?+while/lstm_cell_782/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_782/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_782/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_782/addAddV2$while/lstm_cell_782/MatMul:product:0&while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_782/BiasAddBiasAddwhile/lstm_cell_782/add:z:02while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_782/splitSplit,while/lstm_cell_782/split/split_dim:output:0$while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_782/SigmoidSigmoid"while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_1Sigmoid"while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mulMul!while/lstm_cell_782/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_782/ReluRelu"while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_1Mulwhile/lstm_cell_782/Sigmoid:y:0&while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/add_1AddV2while/lstm_cell_782/mul:z:0while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_2Sigmoid"while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_782/Relu_1Reluwhile/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_2Mul!while/lstm_cell_782/Sigmoid_2:y:0(while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_782/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_782/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_782/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_782/BiasAdd/ReadVariableOp*^while/lstm_cell_782/MatMul/ReadVariableOp,^while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_782_biasadd_readvariableop_resource5while_lstm_cell_782_biasadd_readvariableop_resource_0"n
4while_lstm_cell_782_matmul_1_readvariableop_resource6while_lstm_cell_782_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_782_matmul_readvariableop_resource4while_lstm_cell_782_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_782/BiasAdd/ReadVariableOp*while/lstm_cell_782/BiasAdd/ReadVariableOp2V
)while/lstm_cell_782/MatMul/ReadVariableOp)while/lstm_cell_782/MatMul/ReadVariableOp2Z
+while/lstm_cell_782/MatMul_1/ReadVariableOp+while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4730930

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

lstm_601_while_body_4732352.
*lstm_601_while_lstm_601_while_loop_counter4
0lstm_601_while_lstm_601_while_maximum_iterations
lstm_601_while_placeholder 
lstm_601_while_placeholder_1 
lstm_601_while_placeholder_2 
lstm_601_while_placeholder_3-
)lstm_601_while_lstm_601_strided_slice_1_0i
elstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0:	d?R
?lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?M
>lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
lstm_601_while_identity
lstm_601_while_identity_1
lstm_601_while_identity_2
lstm_601_while_identity_3
lstm_601_while_identity_4
lstm_601_while_identity_5+
'lstm_601_while_lstm_601_strided_slice_1g
clstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensorN
;lstm_601_while_lstm_cell_781_matmul_readvariableop_resource:	d?P
=lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource:	2?K
<lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource:	???3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp?2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp?4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp?
@lstm_601/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_601/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensor_0lstm_601_while_placeholderIlstm_601/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp=lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_601/while/lstm_cell_781/MatMulMatMul9lstm_601/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp?lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_601/while/lstm_cell_781/MatMul_1MatMullstm_601_while_placeholder_2<lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_601/while/lstm_cell_781/addAddV2-lstm_601/while/lstm_cell_781/MatMul:product:0/lstm_601/while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp>lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_601/while/lstm_cell_781/BiasAddBiasAdd$lstm_601/while/lstm_cell_781/add:z:0;lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_601/while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_601/while/lstm_cell_781/splitSplit5lstm_601/while/lstm_cell_781/split/split_dim:output:0-lstm_601/while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_601/while/lstm_cell_781/SigmoidSigmoid+lstm_601/while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_601/while/lstm_cell_781/Sigmoid_1Sigmoid+lstm_601/while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_601/while/lstm_cell_781/mulMul*lstm_601/while/lstm_cell_781/Sigmoid_1:y:0lstm_601_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_601/while/lstm_cell_781/ReluRelu+lstm_601/while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_601/while/lstm_cell_781/mul_1Mul(lstm_601/while/lstm_cell_781/Sigmoid:y:0/lstm_601/while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_601/while/lstm_cell_781/add_1AddV2$lstm_601/while/lstm_cell_781/mul:z:0&lstm_601/while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_601/while/lstm_cell_781/Sigmoid_2Sigmoid+lstm_601/while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_601/while/lstm_cell_781/Relu_1Relu&lstm_601/while/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_601/while/lstm_cell_781/mul_2Mul*lstm_601/while/lstm_cell_781/Sigmoid_2:y:01lstm_601/while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_601/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_601_while_placeholder_1lstm_601_while_placeholder&lstm_601/while/lstm_cell_781/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_601/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_601/while/addAddV2lstm_601_while_placeholderlstm_601/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_601/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_601/while/add_1AddV2*lstm_601_while_lstm_601_while_loop_counterlstm_601/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_601/while/IdentityIdentitylstm_601/while/add_1:z:0^lstm_601/while/NoOp*
T0*
_output_shapes
: ?
lstm_601/while/Identity_1Identity0lstm_601_while_lstm_601_while_maximum_iterations^lstm_601/while/NoOp*
T0*
_output_shapes
: t
lstm_601/while/Identity_2Identitylstm_601/while/add:z:0^lstm_601/while/NoOp*
T0*
_output_shapes
: ?
lstm_601/while/Identity_3IdentityClstm_601/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_601/while/NoOp*
T0*
_output_shapes
: ?
lstm_601/while/Identity_4Identity&lstm_601/while/lstm_cell_781/mul_2:z:0^lstm_601/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_601/while/Identity_5Identity&lstm_601/while/lstm_cell_781/add_1:z:0^lstm_601/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_601/while/NoOpNoOp4^lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp3^lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp5^lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_601_while_identity lstm_601/while/Identity:output:0"?
lstm_601_while_identity_1"lstm_601/while/Identity_1:output:0"?
lstm_601_while_identity_2"lstm_601/while/Identity_2:output:0"?
lstm_601_while_identity_3"lstm_601/while/Identity_3:output:0"?
lstm_601_while_identity_4"lstm_601/while/Identity_4:output:0"?
lstm_601_while_identity_5"lstm_601/while/Identity_5:output:0"T
'lstm_601_while_lstm_601_strided_slice_1)lstm_601_while_lstm_601_strided_slice_1_0"~
<lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource>lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0"?
=lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource?lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0"|
;lstm_601_while_lstm_cell_781_matmul_readvariableop_resource=lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0"?
clstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensorelstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp2h
2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp2l
4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_601_while_body_4731925.
*lstm_601_while_lstm_601_while_loop_counter4
0lstm_601_while_lstm_601_while_maximum_iterations
lstm_601_while_placeholder 
lstm_601_while_placeholder_1 
lstm_601_while_placeholder_2 
lstm_601_while_placeholder_3-
)lstm_601_while_lstm_601_strided_slice_1_0i
elstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0:	d?R
?lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?M
>lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
lstm_601_while_identity
lstm_601_while_identity_1
lstm_601_while_identity_2
lstm_601_while_identity_3
lstm_601_while_identity_4
lstm_601_while_identity_5+
'lstm_601_while_lstm_601_strided_slice_1g
clstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensorN
;lstm_601_while_lstm_cell_781_matmul_readvariableop_resource:	d?P
=lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource:	2?K
<lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource:	???3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp?2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp?4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp?
@lstm_601/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_601/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensor_0lstm_601_while_placeholderIlstm_601/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp=lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_601/while/lstm_cell_781/MatMulMatMul9lstm_601/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp?lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_601/while/lstm_cell_781/MatMul_1MatMullstm_601_while_placeholder_2<lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_601/while/lstm_cell_781/addAddV2-lstm_601/while/lstm_cell_781/MatMul:product:0/lstm_601/while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp>lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_601/while/lstm_cell_781/BiasAddBiasAdd$lstm_601/while/lstm_cell_781/add:z:0;lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_601/while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_601/while/lstm_cell_781/splitSplit5lstm_601/while/lstm_cell_781/split/split_dim:output:0-lstm_601/while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_601/while/lstm_cell_781/SigmoidSigmoid+lstm_601/while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_601/while/lstm_cell_781/Sigmoid_1Sigmoid+lstm_601/while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_601/while/lstm_cell_781/mulMul*lstm_601/while/lstm_cell_781/Sigmoid_1:y:0lstm_601_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_601/while/lstm_cell_781/ReluRelu+lstm_601/while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_601/while/lstm_cell_781/mul_1Mul(lstm_601/while/lstm_cell_781/Sigmoid:y:0/lstm_601/while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_601/while/lstm_cell_781/add_1AddV2$lstm_601/while/lstm_cell_781/mul:z:0&lstm_601/while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_601/while/lstm_cell_781/Sigmoid_2Sigmoid+lstm_601/while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_601/while/lstm_cell_781/Relu_1Relu&lstm_601/while/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_601/while/lstm_cell_781/mul_2Mul*lstm_601/while/lstm_cell_781/Sigmoid_2:y:01lstm_601/while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_601/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_601_while_placeholder_1lstm_601_while_placeholder&lstm_601/while/lstm_cell_781/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_601/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_601/while/addAddV2lstm_601_while_placeholderlstm_601/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_601/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_601/while/add_1AddV2*lstm_601_while_lstm_601_while_loop_counterlstm_601/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_601/while/IdentityIdentitylstm_601/while/add_1:z:0^lstm_601/while/NoOp*
T0*
_output_shapes
: ?
lstm_601/while/Identity_1Identity0lstm_601_while_lstm_601_while_maximum_iterations^lstm_601/while/NoOp*
T0*
_output_shapes
: t
lstm_601/while/Identity_2Identitylstm_601/while/add:z:0^lstm_601/while/NoOp*
T0*
_output_shapes
: ?
lstm_601/while/Identity_3IdentityClstm_601/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_601/while/NoOp*
T0*
_output_shapes
: ?
lstm_601/while/Identity_4Identity&lstm_601/while/lstm_cell_781/mul_2:z:0^lstm_601/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_601/while/Identity_5Identity&lstm_601/while/lstm_cell_781/add_1:z:0^lstm_601/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_601/while/NoOpNoOp4^lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp3^lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp5^lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_601_while_identity lstm_601/while/Identity:output:0"?
lstm_601_while_identity_1"lstm_601/while/Identity_1:output:0"?
lstm_601_while_identity_2"lstm_601/while/Identity_2:output:0"?
lstm_601_while_identity_3"lstm_601/while/Identity_3:output:0"?
lstm_601_while_identity_4"lstm_601/while/Identity_4:output:0"?
lstm_601_while_identity_5"lstm_601/while/Identity_5:output:0"T
'lstm_601_while_lstm_601_strided_slice_1)lstm_601_while_lstm_601_strided_slice_1_0"~
<lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource>lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0"?
=lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource?lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0"|
;lstm_601_while_lstm_cell_781_matmul_readvariableop_resource=lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0"?
clstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensorelstm_601_while_tensorarrayv2read_tensorlistgetitem_lstm_601_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp3lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp2h
2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp2lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp2l
4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp4lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730912

inputs>
,lstm_cell_782_matmul_readvariableop_resource:2(@
.lstm_cell_782_matmul_1_readvariableop_resource:
(;
-lstm_cell_782_biasadd_readvariableop_resource:(
identity??$lstm_cell_782/BiasAdd/ReadVariableOp?#lstm_cell_782/MatMul/ReadVariableOp?%lstm_cell_782/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_782/MatMul/ReadVariableOpReadVariableOp,lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_782/MatMulMatMulstrided_slice_2:output:0+lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_782/MatMul_1MatMulzeros:output:0-lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_782/addAddV2lstm_cell_782/MatMul:product:0 lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_782/BiasAddBiasAddlstm_cell_782/add:z:0,lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_782/splitSplit&lstm_cell_782/split/split_dim:output:0lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_782/SigmoidSigmoidlstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_1Sigmoidlstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_782/mulMullstm_cell_782/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_782/ReluRelulstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_1Mullstm_cell_782/Sigmoid:y:0 lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_782/add_1AddV2lstm_cell_782/mul:z:0lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_2Sigmoidlstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_782/Relu_1Relulstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_2Mullstm_cell_782/Sigmoid_2:y:0"lstm_cell_782/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_782_matmul_readvariableop_resource.lstm_cell_782_matmul_1_readvariableop_resource-lstm_cell_782_biasadd_readvariableop_resource*
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
while_body_4730828*
condR
while_cond_4730827*K
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
NoOpNoOp%^lstm_cell_782/BiasAdd/ReadVariableOp$^lstm_cell_782/MatMul/ReadVariableOp&^lstm_cell_782/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_782/BiasAdd/ReadVariableOp$lstm_cell_782/BiasAdd/ReadVariableOp2J
#lstm_cell_782/MatMul/ReadVariableOp#lstm_cell_782/MatMul/ReadVariableOp2N
%lstm_cell_782/MatMul_1/ReadVariableOp%lstm_cell_782/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4734710

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
*__inference_lstm_602_layer_call_fn_4733857

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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4731128o
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
while_cond_4732826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4732826___redundant_placeholder05
1while_while_cond_4732826___redundant_placeholder15
1while_while_cond_4732826___redundant_placeholder25
1while_while_cond_4732826___redundant_placeholder3
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4734742

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
?
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731526

inputs#
lstm_600_4731499:	?#
lstm_600_4731501:	d?
lstm_600_4731503:	?#
lstm_601_4731506:	d?#
lstm_601_4731508:	2?
lstm_601_4731510:	?"
lstm_602_4731513:2("
lstm_602_4731515:
(
lstm_602_4731517:(#
dense_200_4731520:

dense_200_4731522:
identity??!dense_200/StatefulPartitionedCall? lstm_600/StatefulPartitionedCall? lstm_601/StatefulPartitionedCall? lstm_602/StatefulPartitionedCall?
 lstm_600/StatefulPartitionedCallStatefulPartitionedCallinputslstm_600_4731499lstm_600_4731501lstm_600_4731503*
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4731458?
 lstm_601/StatefulPartitionedCallStatefulPartitionedCall)lstm_600/StatefulPartitionedCall:output:0lstm_601_4731506lstm_601_4731508lstm_601_4731510*
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4731293?
 lstm_602/StatefulPartitionedCallStatefulPartitionedCall)lstm_601/StatefulPartitionedCall:output:0lstm_602_4731513lstm_602_4731515lstm_602_4731517*
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4731128?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_602/StatefulPartitionedCall:output:0dense_200_4731520dense_200_4731522*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4730930y
IdentityIdentity*dense_200/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_200/StatefulPartitionedCall!^lstm_600/StatefulPartitionedCall!^lstm_601/StatefulPartitionedCall!^lstm_602/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2D
 lstm_600/StatefulPartitionedCall lstm_600/StatefulPartitionedCall2D
 lstm_601/StatefulPartitionedCall lstm_601/StatefulPartitionedCall2D
 lstm_602/StatefulPartitionedCall lstm_602/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_600_layer_call_and_return_conditional_losses_4732911
inputs_0?
,lstm_cell_780_matmul_readvariableop_resource:	?A
.lstm_cell_780_matmul_1_readvariableop_resource:	d?<
-lstm_cell_780_biasadd_readvariableop_resource:	?
identity??$lstm_cell_780/BiasAdd/ReadVariableOp?#lstm_cell_780/MatMul/ReadVariableOp?%lstm_cell_780/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_780/MatMul/ReadVariableOpReadVariableOp,lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_780/MatMulMatMulstrided_slice_2:output:0+lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_780/MatMul_1MatMulzeros:output:0-lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_780/addAddV2lstm_cell_780/MatMul:product:0 lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_780/BiasAddBiasAddlstm_cell_780/add:z:0,lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_780/splitSplit&lstm_cell_780/split/split_dim:output:0lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_780/SigmoidSigmoidlstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_1Sigmoidlstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_780/mulMullstm_cell_780/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_780/ReluRelulstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_1Mullstm_cell_780/Sigmoid:y:0 lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_780/add_1AddV2lstm_cell_780/mul:z:0lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_2Sigmoidlstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_780/Relu_1Relulstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_2Mullstm_cell_780/Sigmoid_2:y:0"lstm_cell_780/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_780_matmul_readvariableop_resource.lstm_cell_780_matmul_1_readvariableop_resource-lstm_cell_780_biasadd_readvariableop_resource*
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
while_body_4732827*
condR
while_cond_4732826*K
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
NoOpNoOp%^lstm_cell_780/BiasAdd/ReadVariableOp$^lstm_cell_780/MatMul/ReadVariableOp&^lstm_cell_780/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_780/BiasAdd/ReadVariableOp$lstm_cell_780/BiasAdd/ReadVariableOp2J
#lstm_cell_780/MatMul/ReadVariableOp#lstm_cell_780/MatMul/ReadVariableOp2N
%lstm_cell_780/MatMul_1/ReadVariableOp%lstm_cell_780/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_601_layer_call_fn_4733219
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4730104|
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
?J
?
E__inference_lstm_600_layer_call_and_return_conditional_losses_4733054

inputs?
,lstm_cell_780_matmul_readvariableop_resource:	?A
.lstm_cell_780_matmul_1_readvariableop_resource:	d?<
-lstm_cell_780_biasadd_readvariableop_resource:	?
identity??$lstm_cell_780/BiasAdd/ReadVariableOp?#lstm_cell_780/MatMul/ReadVariableOp?%lstm_cell_780/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_780/MatMul/ReadVariableOpReadVariableOp,lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_780/MatMulMatMulstrided_slice_2:output:0+lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_780/MatMul_1MatMulzeros:output:0-lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_780/addAddV2lstm_cell_780/MatMul:product:0 lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_780/BiasAddBiasAddlstm_cell_780/add:z:0,lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_780/splitSplit&lstm_cell_780/split/split_dim:output:0lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_780/SigmoidSigmoidlstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_1Sigmoidlstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_780/mulMullstm_cell_780/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_780/ReluRelulstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_1Mullstm_cell_780/Sigmoid:y:0 lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_780/add_1AddV2lstm_cell_780/mul:z:0lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_2Sigmoidlstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_780/Relu_1Relulstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_2Mullstm_cell_780/Sigmoid_2:y:0"lstm_cell_780/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_780_matmul_readvariableop_resource.lstm_cell_780_matmul_1_readvariableop_resource-lstm_cell_780_biasadd_readvariableop_resource*
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
while_body_4732970*
condR
while_cond_4732969*K
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
NoOpNoOp%^lstm_cell_780/BiasAdd/ReadVariableOp$^lstm_cell_780/MatMul/ReadVariableOp&^lstm_cell_780/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_780/BiasAdd/ReadVariableOp$lstm_cell_780/BiasAdd/ReadVariableOp2J
#lstm_cell_780/MatMul/ReadVariableOp#lstm_cell_780/MatMul/ReadVariableOp2N
%lstm_cell_780/MatMul_1/ReadVariableOp%lstm_cell_780/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734143
inputs_0>
,lstm_cell_782_matmul_readvariableop_resource:2(@
.lstm_cell_782_matmul_1_readvariableop_resource:
(;
-lstm_cell_782_biasadd_readvariableop_resource:(
identity??$lstm_cell_782/BiasAdd/ReadVariableOp?#lstm_cell_782/MatMul/ReadVariableOp?%lstm_cell_782/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_782/MatMul/ReadVariableOpReadVariableOp,lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_782/MatMulMatMulstrided_slice_2:output:0+lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_782/MatMul_1MatMulzeros:output:0-lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_782/addAddV2lstm_cell_782/MatMul:product:0 lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_782/BiasAddBiasAddlstm_cell_782/add:z:0,lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_782/splitSplit&lstm_cell_782/split/split_dim:output:0lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_782/SigmoidSigmoidlstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_1Sigmoidlstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_782/mulMullstm_cell_782/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_782/ReluRelulstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_1Mullstm_cell_782/Sigmoid:y:0 lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_782/add_1AddV2lstm_cell_782/mul:z:0lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_2Sigmoidlstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_782/Relu_1Relulstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_2Mullstm_cell_782/Sigmoid_2:y:0"lstm_cell_782/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_782_matmul_readvariableop_resource.lstm_cell_782_matmul_1_readvariableop_resource-lstm_cell_782_biasadd_readvariableop_resource*
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
while_body_4734059*
condR
while_cond_4734058*K
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
NoOpNoOp%^lstm_cell_782/BiasAdd/ReadVariableOp$^lstm_cell_782/MatMul/ReadVariableOp&^lstm_cell_782/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_782/BiasAdd/ReadVariableOp$lstm_cell_782/BiasAdd/ReadVariableOp2J
#lstm_cell_782/MatMul/ReadVariableOp#lstm_cell_782/MatMul/ReadVariableOp2N
%lstm_cell_782/MatMul_1/ReadVariableOp%lstm_cell_782/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4733112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4733112___redundant_placeholder05
1while_while_cond_4733112___redundant_placeholder15
1while_while_cond_4733112___redundant_placeholder25
1while_while_cond_4733112___redundant_placeholder3
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
*__inference_lstm_602_layer_call_fn_4733846

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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730912o
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
while_cond_4730827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4730827___redundant_placeholder05
1while_while_cond_4730827___redundant_placeholder15
1while_while_cond_4730827___redundant_placeholder25
1while_while_cond_4730827___redundant_placeholder3
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
*__inference_lstm_602_layer_call_fn_4733835
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730454o
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
*__inference_lstm_602_layer_call_fn_4733824
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730263o
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
?#
?
while_body_4730385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_782_4730409_0:2(/
while_lstm_cell_782_4730411_0:
(+
while_lstm_cell_782_4730413_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_782_4730409:2(-
while_lstm_cell_782_4730411:
()
while_lstm_cell_782_4730413:(??+while/lstm_cell_782/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_782/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_782_4730409_0while_lstm_cell_782_4730411_0while_lstm_cell_782_4730413_0*
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730326?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_782/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_782/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_782/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_782/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_782_4730409while_lstm_cell_782_4730409_0"<
while_lstm_cell_782_4730411while_lstm_cell_782_4730411_0"<
while_lstm_cell_782_4730413while_lstm_cell_782_4730413_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_782/StatefulPartitionedCall+while/lstm_cell_782/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_600_while_body_4731786.
*lstm_600_while_lstm_600_while_loop_counter4
0lstm_600_while_lstm_600_while_maximum_iterations
lstm_600_while_placeholder 
lstm_600_while_placeholder_1 
lstm_600_while_placeholder_2 
lstm_600_while_placeholder_3-
)lstm_600_while_lstm_600_strided_slice_1_0i
elstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0:	?R
?lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?M
>lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
lstm_600_while_identity
lstm_600_while_identity_1
lstm_600_while_identity_2
lstm_600_while_identity_3
lstm_600_while_identity_4
lstm_600_while_identity_5+
'lstm_600_while_lstm_600_strided_slice_1g
clstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensorN
;lstm_600_while_lstm_cell_780_matmul_readvariableop_resource:	?P
=lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource:	d?K
<lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource:	???3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp?2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp?4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp?
@lstm_600/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_600/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensor_0lstm_600_while_placeholderIlstm_600/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp=lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_600/while/lstm_cell_780/MatMulMatMul9lstm_600/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp?lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_600/while/lstm_cell_780/MatMul_1MatMullstm_600_while_placeholder_2<lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_600/while/lstm_cell_780/addAddV2-lstm_600/while/lstm_cell_780/MatMul:product:0/lstm_600/while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp>lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_600/while/lstm_cell_780/BiasAddBiasAdd$lstm_600/while/lstm_cell_780/add:z:0;lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_600/while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_600/while/lstm_cell_780/splitSplit5lstm_600/while/lstm_cell_780/split/split_dim:output:0-lstm_600/while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_600/while/lstm_cell_780/SigmoidSigmoid+lstm_600/while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_600/while/lstm_cell_780/Sigmoid_1Sigmoid+lstm_600/while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_600/while/lstm_cell_780/mulMul*lstm_600/while/lstm_cell_780/Sigmoid_1:y:0lstm_600_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_600/while/lstm_cell_780/ReluRelu+lstm_600/while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_600/while/lstm_cell_780/mul_1Mul(lstm_600/while/lstm_cell_780/Sigmoid:y:0/lstm_600/while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_600/while/lstm_cell_780/add_1AddV2$lstm_600/while/lstm_cell_780/mul:z:0&lstm_600/while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_600/while/lstm_cell_780/Sigmoid_2Sigmoid+lstm_600/while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_600/while/lstm_cell_780/Relu_1Relu&lstm_600/while/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_600/while/lstm_cell_780/mul_2Mul*lstm_600/while/lstm_cell_780/Sigmoid_2:y:01lstm_600/while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_600/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_600_while_placeholder_1lstm_600_while_placeholder&lstm_600/while/lstm_cell_780/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_600/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_600/while/addAddV2lstm_600_while_placeholderlstm_600/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_600/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_600/while/add_1AddV2*lstm_600_while_lstm_600_while_loop_counterlstm_600/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_600/while/IdentityIdentitylstm_600/while/add_1:z:0^lstm_600/while/NoOp*
T0*
_output_shapes
: ?
lstm_600/while/Identity_1Identity0lstm_600_while_lstm_600_while_maximum_iterations^lstm_600/while/NoOp*
T0*
_output_shapes
: t
lstm_600/while/Identity_2Identitylstm_600/while/add:z:0^lstm_600/while/NoOp*
T0*
_output_shapes
: ?
lstm_600/while/Identity_3IdentityClstm_600/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_600/while/NoOp*
T0*
_output_shapes
: ?
lstm_600/while/Identity_4Identity&lstm_600/while/lstm_cell_780/mul_2:z:0^lstm_600/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_600/while/Identity_5Identity&lstm_600/while/lstm_cell_780/add_1:z:0^lstm_600/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_600/while/NoOpNoOp4^lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp3^lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp5^lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_600_while_identity lstm_600/while/Identity:output:0"?
lstm_600_while_identity_1"lstm_600/while/Identity_1:output:0"?
lstm_600_while_identity_2"lstm_600/while/Identity_2:output:0"?
lstm_600_while_identity_3"lstm_600/while/Identity_3:output:0"?
lstm_600_while_identity_4"lstm_600/while/Identity_4:output:0"?
lstm_600_while_identity_5"lstm_600/while/Identity_5:output:0"T
'lstm_600_while_lstm_600_strided_slice_1)lstm_600_while_lstm_600_strided_slice_1_0"~
<lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource>lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0"?
=lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource?lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0"|
;lstm_600_while_lstm_cell_780_matmul_readvariableop_resource=lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0"?
clstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensorelstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp2h
2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp2l
4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4732683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4732683___redundant_placeholder05
1while_while_cond_4732683___redundant_placeholder15
1while_while_cond_4732683___redundant_placeholder25
1while_while_cond_4732683___redundant_placeholder3
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729976

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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734286

inputs>
,lstm_cell_782_matmul_readvariableop_resource:2(@
.lstm_cell_782_matmul_1_readvariableop_resource:
(;
-lstm_cell_782_biasadd_readvariableop_resource:(
identity??$lstm_cell_782/BiasAdd/ReadVariableOp?#lstm_cell_782/MatMul/ReadVariableOp?%lstm_cell_782/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_782/MatMul/ReadVariableOpReadVariableOp,lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_782/MatMulMatMulstrided_slice_2:output:0+lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_782/MatMul_1MatMulzeros:output:0-lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_782/addAddV2lstm_cell_782/MatMul:product:0 lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_782/BiasAddBiasAddlstm_cell_782/add:z:0,lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_782/splitSplit&lstm_cell_782/split/split_dim:output:0lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_782/SigmoidSigmoidlstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_1Sigmoidlstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_782/mulMullstm_cell_782/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_782/ReluRelulstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_1Mullstm_cell_782/Sigmoid:y:0 lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_782/add_1AddV2lstm_cell_782/mul:z:0lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_2Sigmoidlstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_782/Relu_1Relulstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_2Mullstm_cell_782/Sigmoid_2:y:0"lstm_cell_782/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_782_matmul_readvariableop_resource.lstm_cell_782_matmul_1_readvariableop_resource-lstm_cell_782_biasadd_readvariableop_resource*
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
while_body_4734202*
condR
while_cond_4734201*K
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
NoOpNoOp%^lstm_cell_782/BiasAdd/ReadVariableOp$^lstm_cell_782/MatMul/ReadVariableOp&^lstm_cell_782/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_782/BiasAdd/ReadVariableOp$lstm_cell_782/BiasAdd/ReadVariableOp2J
#lstm_cell_782/MatMul/ReadVariableOp#lstm_cell_782/MatMul/ReadVariableOp2N
%lstm_cell_782/MatMul_1/ReadVariableOp%lstm_cell_782/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4734612

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
?
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730454

inputs'
lstm_cell_782_4730372:2('
lstm_cell_782_4730374:
(#
lstm_cell_782_4730376:(
identity??%lstm_cell_782/StatefulPartitionedCall?while;
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
%lstm_cell_782/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_782_4730372lstm_cell_782_4730374lstm_cell_782_4730376*
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730326n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_782_4730372lstm_cell_782_4730374lstm_cell_782_4730376*
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
while_body_4730385*
condR
while_cond_4730384*K
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
NoOpNoOp&^lstm_cell_782/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_782/StatefulPartitionedCall%lstm_cell_782/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_781_layer_call_fn_4734580

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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729976o
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
?
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731638
lstm_600_input#
lstm_600_4731611:	?#
lstm_600_4731613:	d?
lstm_600_4731615:	?#
lstm_601_4731618:	d?#
lstm_601_4731620:	2?
lstm_601_4731622:	?"
lstm_602_4731625:2("
lstm_602_4731627:
(
lstm_602_4731629:(#
dense_200_4731632:

dense_200_4731634:
identity??!dense_200/StatefulPartitionedCall? lstm_600/StatefulPartitionedCall? lstm_601/StatefulPartitionedCall? lstm_602/StatefulPartitionedCall?
 lstm_600/StatefulPartitionedCallStatefulPartitionedCalllstm_600_inputlstm_600_4731611lstm_600_4731613lstm_600_4731615*
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4731458?
 lstm_601/StatefulPartitionedCallStatefulPartitionedCall)lstm_600/StatefulPartitionedCall:output:0lstm_601_4731618lstm_601_4731620lstm_601_4731622*
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4731293?
 lstm_602/StatefulPartitionedCallStatefulPartitionedCall)lstm_601/StatefulPartitionedCall:output:0lstm_602_4731625lstm_602_4731627lstm_602_4731629*
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4731128?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_602/StatefulPartitionedCall:output:0dense_200_4731632dense_200_4731634*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4730930y
IdentityIdentity*dense_200/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_200/StatefulPartitionedCall!^lstm_600/StatefulPartitionedCall!^lstm_601/StatefulPartitionedCall!^lstm_602/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2D
 lstm_600/StatefulPartitionedCall lstm_600/StatefulPartitionedCall2D
 lstm_601/StatefulPartitionedCall lstm_601/StatefulPartitionedCall2D
 lstm_602/StatefulPartitionedCall lstm_602/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_600_input
?
?
/__inference_lstm_cell_780_layer_call_fn_4734465

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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729480o
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
while_body_4730828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_782_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_782_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_782_matmul_readvariableop_resource:2(F
4while_lstm_cell_782_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_782_biasadd_readvariableop_resource:(??*while/lstm_cell_782/BiasAdd/ReadVariableOp?)while/lstm_cell_782/MatMul/ReadVariableOp?+while/lstm_cell_782/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_782/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_782/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_782/addAddV2$while/lstm_cell_782/MatMul:product:0&while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_782/BiasAddBiasAddwhile/lstm_cell_782/add:z:02while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_782/splitSplit,while/lstm_cell_782/split/split_dim:output:0$while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_782/SigmoidSigmoid"while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_1Sigmoid"while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mulMul!while/lstm_cell_782/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_782/ReluRelu"while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_1Mulwhile/lstm_cell_782/Sigmoid:y:0&while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/add_1AddV2while/lstm_cell_782/mul:z:0while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_2Sigmoid"while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_782/Relu_1Reluwhile/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_2Mul!while/lstm_cell_782/Sigmoid_2:y:0(while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_782/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_782/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_782/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_782/BiasAdd/ReadVariableOp*^while/lstm_cell_782/MatMul/ReadVariableOp,^while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_782_biasadd_readvariableop_resource5while_lstm_cell_782_biasadd_readvariableop_resource_0"n
4while_lstm_cell_782_matmul_1_readvariableop_resource6while_lstm_cell_782_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_782_matmul_readvariableop_resource4while_lstm_cell_782_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_782/BiasAdd/ReadVariableOp*while/lstm_cell_782/BiasAdd/ReadVariableOp2V
)while/lstm_cell_782/MatMul/ReadVariableOp)while/lstm_cell_782/MatMul/ReadVariableOp2Z
+while/lstm_cell_782/MatMul_1/ReadVariableOp+while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_200_lstm_602_while_cond_4729322L
Hsequential_200_lstm_602_while_sequential_200_lstm_602_while_loop_counterR
Nsequential_200_lstm_602_while_sequential_200_lstm_602_while_maximum_iterations-
)sequential_200_lstm_602_while_placeholder/
+sequential_200_lstm_602_while_placeholder_1/
+sequential_200_lstm_602_while_placeholder_2/
+sequential_200_lstm_602_while_placeholder_3N
Jsequential_200_lstm_602_while_less_sequential_200_lstm_602_strided_slice_1e
asequential_200_lstm_602_while_sequential_200_lstm_602_while_cond_4729322___redundant_placeholder0e
asequential_200_lstm_602_while_sequential_200_lstm_602_while_cond_4729322___redundant_placeholder1e
asequential_200_lstm_602_while_sequential_200_lstm_602_while_cond_4729322___redundant_placeholder2e
asequential_200_lstm_602_while_sequential_200_lstm_602_while_cond_4729322___redundant_placeholder3*
&sequential_200_lstm_602_while_identity
?
"sequential_200/lstm_602/while/LessLess)sequential_200_lstm_602_while_placeholderJsequential_200_lstm_602_while_less_sequential_200_lstm_602_strided_slice_1*
T0*
_output_shapes
: {
&sequential_200/lstm_602/while/IdentityIdentity&sequential_200/lstm_602/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_200_lstm_602_while_identity/sequential_200/lstm_602/while/Identity:output:0*(
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729480

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

lstm_602_while_body_4732491.
*lstm_602_while_lstm_602_while_loop_counter4
0lstm_602_while_lstm_602_while_maximum_iterations
lstm_602_while_placeholder 
lstm_602_while_placeholder_1 
lstm_602_while_placeholder_2 
lstm_602_while_placeholder_3-
)lstm_602_while_lstm_602_strided_slice_1_0i
elstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0:2(Q
?lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(L
>lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0:(
lstm_602_while_identity
lstm_602_while_identity_1
lstm_602_while_identity_2
lstm_602_while_identity_3
lstm_602_while_identity_4
lstm_602_while_identity_5+
'lstm_602_while_lstm_602_strided_slice_1g
clstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensorM
;lstm_602_while_lstm_cell_782_matmul_readvariableop_resource:2(O
=lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource:
(J
<lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource:(??3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp?2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp?4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp?
@lstm_602/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_602/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensor_0lstm_602_while_placeholderIlstm_602/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp=lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_602/while/lstm_cell_782/MatMulMatMul9lstm_602/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp?lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_602/while/lstm_cell_782/MatMul_1MatMullstm_602_while_placeholder_2<lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_602/while/lstm_cell_782/addAddV2-lstm_602/while/lstm_cell_782/MatMul:product:0/lstm_602/while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp>lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_602/while/lstm_cell_782/BiasAddBiasAdd$lstm_602/while/lstm_cell_782/add:z:0;lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_602/while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_602/while/lstm_cell_782/splitSplit5lstm_602/while/lstm_cell_782/split/split_dim:output:0-lstm_602/while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_602/while/lstm_cell_782/SigmoidSigmoid+lstm_602/while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_602/while/lstm_cell_782/Sigmoid_1Sigmoid+lstm_602/while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_602/while/lstm_cell_782/mulMul*lstm_602/while/lstm_cell_782/Sigmoid_1:y:0lstm_602_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_602/while/lstm_cell_782/ReluRelu+lstm_602/while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_602/while/lstm_cell_782/mul_1Mul(lstm_602/while/lstm_cell_782/Sigmoid:y:0/lstm_602/while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_602/while/lstm_cell_782/add_1AddV2$lstm_602/while/lstm_cell_782/mul:z:0&lstm_602/while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_602/while/lstm_cell_782/Sigmoid_2Sigmoid+lstm_602/while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_602/while/lstm_cell_782/Relu_1Relu&lstm_602/while/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_602/while/lstm_cell_782/mul_2Mul*lstm_602/while/lstm_cell_782/Sigmoid_2:y:01lstm_602/while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_602/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_602_while_placeholder_1lstm_602_while_placeholder&lstm_602/while/lstm_cell_782/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_602/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_602/while/addAddV2lstm_602_while_placeholderlstm_602/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_602/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_602/while/add_1AddV2*lstm_602_while_lstm_602_while_loop_counterlstm_602/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_602/while/IdentityIdentitylstm_602/while/add_1:z:0^lstm_602/while/NoOp*
T0*
_output_shapes
: ?
lstm_602/while/Identity_1Identity0lstm_602_while_lstm_602_while_maximum_iterations^lstm_602/while/NoOp*
T0*
_output_shapes
: t
lstm_602/while/Identity_2Identitylstm_602/while/add:z:0^lstm_602/while/NoOp*
T0*
_output_shapes
: ?
lstm_602/while/Identity_3IdentityClstm_602/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_602/while/NoOp*
T0*
_output_shapes
: ?
lstm_602/while/Identity_4Identity&lstm_602/while/lstm_cell_782/mul_2:z:0^lstm_602/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_602/while/Identity_5Identity&lstm_602/while/lstm_cell_782/add_1:z:0^lstm_602/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_602/while/NoOpNoOp4^lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp3^lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp5^lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_602_while_identity lstm_602/while/Identity:output:0"?
lstm_602_while_identity_1"lstm_602/while/Identity_1:output:0"?
lstm_602_while_identity_2"lstm_602/while/Identity_2:output:0"?
lstm_602_while_identity_3"lstm_602/while/Identity_3:output:0"?
lstm_602_while_identity_4"lstm_602/while/Identity_4:output:0"?
lstm_602_while_identity_5"lstm_602/while/Identity_5:output:0"T
'lstm_602_while_lstm_602_strided_slice_1)lstm_602_while_lstm_602_strided_slice_1_0"~
<lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource>lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0"?
=lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource?lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0"|
;lstm_602_while_lstm_cell_782_matmul_readvariableop_resource=lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0"?
clstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensorelstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp2h
2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp2l
4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_601_layer_call_fn_4733241

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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4731293s
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4734448

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
?J
?
E__inference_lstm_600_layer_call_and_return_conditional_losses_4733197

inputs?
,lstm_cell_780_matmul_readvariableop_resource:	?A
.lstm_cell_780_matmul_1_readvariableop_resource:	d?<
-lstm_cell_780_biasadd_readvariableop_resource:	?
identity??$lstm_cell_780/BiasAdd/ReadVariableOp?#lstm_cell_780/MatMul/ReadVariableOp?%lstm_cell_780/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_780/MatMul/ReadVariableOpReadVariableOp,lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_780/MatMulMatMulstrided_slice_2:output:0+lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_780/MatMul_1MatMulzeros:output:0-lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_780/addAddV2lstm_cell_780/MatMul:product:0 lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_780/BiasAddBiasAddlstm_cell_780/add:z:0,lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_780/splitSplit&lstm_cell_780/split/split_dim:output:0lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_780/SigmoidSigmoidlstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_1Sigmoidlstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_780/mulMullstm_cell_780/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_780/ReluRelulstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_1Mullstm_cell_780/Sigmoid:y:0 lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_780/add_1AddV2lstm_cell_780/mul:z:0lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_2Sigmoidlstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_780/Relu_1Relulstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_2Mullstm_cell_780/Sigmoid_2:y:0"lstm_cell_780/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_780_matmul_readvariableop_resource.lstm_cell_780_matmul_1_readvariableop_resource-lstm_cell_780_biasadd_readvariableop_resource*
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
while_body_4733113*
condR
while_cond_4733112*K
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
NoOpNoOp%^lstm_cell_780/BiasAdd/ReadVariableOp$^lstm_cell_780/MatMul/ReadVariableOp&^lstm_cell_780/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_780/BiasAdd/ReadVariableOp$lstm_cell_780/BiasAdd/ReadVariableOp2J
#lstm_cell_780/MatMul/ReadVariableOp#lstm_cell_780/MatMul/ReadVariableOp2N
%lstm_cell_780/MatMul_1/ReadVariableOp%lstm_cell_780/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4734058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4734058___redundant_placeholder05
1while_while_cond_4734058___redundant_placeholder15
1while_while_cond_4734058___redundant_placeholder25
1while_while_cond_4734058___redundant_placeholder3
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730180

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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4734546

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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4730612

inputs?
,lstm_cell_780_matmul_readvariableop_resource:	?A
.lstm_cell_780_matmul_1_readvariableop_resource:	d?<
-lstm_cell_780_biasadd_readvariableop_resource:	?
identity??$lstm_cell_780/BiasAdd/ReadVariableOp?#lstm_cell_780/MatMul/ReadVariableOp?%lstm_cell_780/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_780/MatMul/ReadVariableOpReadVariableOp,lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_780/MatMulMatMulstrided_slice_2:output:0+lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_780/MatMul_1MatMulzeros:output:0-lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_780/addAddV2lstm_cell_780/MatMul:product:0 lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_780/BiasAddBiasAddlstm_cell_780/add:z:0,lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_780/splitSplit&lstm_cell_780/split/split_dim:output:0lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_780/SigmoidSigmoidlstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_1Sigmoidlstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_780/mulMullstm_cell_780/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_780/ReluRelulstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_1Mullstm_cell_780/Sigmoid:y:0 lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_780/add_1AddV2lstm_cell_780/mul:z:0lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_2Sigmoidlstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_780/Relu_1Relulstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_2Mullstm_cell_780/Sigmoid_2:y:0"lstm_cell_780/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_780_matmul_readvariableop_resource.lstm_cell_780_matmul_1_readvariableop_resource-lstm_cell_780_biasadd_readvariableop_resource*
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
while_body_4730528*
condR
while_cond_4730527*K
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
NoOpNoOp%^lstm_cell_780/BiasAdd/ReadVariableOp$^lstm_cell_780/MatMul/ReadVariableOp&^lstm_cell_780/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_780/BiasAdd/ReadVariableOp$lstm_cell_780/BiasAdd/ReadVariableOp2J
#lstm_cell_780/MatMul/ReadVariableOp#lstm_cell_780/MatMul/ReadVariableOp2N
%lstm_cell_780/MatMul_1/ReadVariableOp%lstm_cell_780/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_200_layer_call_fn_4734438

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
F__inference_dense_200_layer_call_and_return_conditional_losses_4730930o
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
?#
?
while_body_4729844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_781_4729868_0:	d?0
while_lstm_cell_781_4729870_0:	2?,
while_lstm_cell_781_4729872_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_781_4729868:	d?.
while_lstm_cell_781_4729870:	2?*
while_lstm_cell_781_4729872:	???+while/lstm_cell_781/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_781/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_781_4729868_0while_lstm_cell_781_4729870_0while_lstm_cell_781_4729872_0*
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729830?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_781/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_781/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_781/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_781/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_781_4729868while_lstm_cell_781_4729868_0"<
while_lstm_cell_781_4729870while_lstm_cell_781_4729870_0"<
while_lstm_cell_781_4729872while_lstm_cell_781_4729872_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_781/StatefulPartitionedCall+while/lstm_cell_781/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4729494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_780_4729518_0:	?0
while_lstm_cell_780_4729520_0:	d?,
while_lstm_cell_780_4729522_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_780_4729518:	?.
while_lstm_cell_780_4729520:	d?*
while_lstm_cell_780_4729522:	???+while/lstm_cell_780/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_780/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_780_4729518_0while_lstm_cell_780_4729520_0while_lstm_cell_780_4729522_0*
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729480?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_780/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_780/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_780/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_780/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_780_4729518while_lstm_cell_780_4729518_0"<
while_lstm_cell_780_4729520while_lstm_cell_780_4729520_0"<
while_lstm_cell_780_4729522while_lstm_cell_780_4729522_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_780/StatefulPartitionedCall+while/lstm_cell_780/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_781_layer_call_fn_4734563

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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729830o
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4734514

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
?
E__inference_lstm_601_layer_call_and_return_conditional_losses_4730104

inputs(
lstm_cell_781_4730022:	d?(
lstm_cell_781_4730024:	2?$
lstm_cell_781_4730026:	?
identity??%lstm_cell_781/StatefulPartitionedCall?while;
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
%lstm_cell_781/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_781_4730022lstm_cell_781_4730024lstm_cell_781_4730026*
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729976n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_781_4730022lstm_cell_781_4730024lstm_cell_781_4730026*
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
while_body_4730035*
condR
while_cond_4730034*K
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
NoOpNoOp&^lstm_cell_781/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_781/StatefulPartitionedCall%lstm_cell_781/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4732970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_780_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_780_matmul_readvariableop_resource:	?G
4while_lstm_cell_780_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_780_biasadd_readvariableop_resource:	???*while/lstm_cell_780/BiasAdd/ReadVariableOp?)while/lstm_cell_780/MatMul/ReadVariableOp?+while/lstm_cell_780/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_780/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_780/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_780/addAddV2$while/lstm_cell_780/MatMul:product:0&while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_780/BiasAddBiasAddwhile/lstm_cell_780/add:z:02while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_780/splitSplit,while/lstm_cell_780/split/split_dim:output:0$while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_780/SigmoidSigmoid"while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_1Sigmoid"while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mulMul!while/lstm_cell_780/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_780/ReluRelu"while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_1Mulwhile/lstm_cell_780/Sigmoid:y:0&while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/add_1AddV2while/lstm_cell_780/mul:z:0while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_2Sigmoid"while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_780/Relu_1Reluwhile/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_2Mul!while/lstm_cell_780/Sigmoid_2:y:0(while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_780/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_780/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_780/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_780/BiasAdd/ReadVariableOp*^while/lstm_cell_780/MatMul/ReadVariableOp,^while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_780_biasadd_readvariableop_resource5while_lstm_cell_780_biasadd_readvariableop_resource_0"n
4while_lstm_cell_780_matmul_1_readvariableop_resource6while_lstm_cell_780_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_780_matmul_readvariableop_resource4while_lstm_cell_780_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_780/BiasAdd/ReadVariableOp*while/lstm_cell_780/BiasAdd/ReadVariableOp2V
)while/lstm_cell_780/MatMul/ReadVariableOp)while/lstm_cell_780/MatMul/ReadVariableOp2Z
+while/lstm_cell_780/MatMul_1/ReadVariableOp+while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_600_layer_call_fn_4732592
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4729563|
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
while_cond_4734201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4734201___redundant_placeholder05
1while_while_cond_4734201___redundant_placeholder15
1while_while_cond_4734201___redundant_placeholder25
1while_while_cond_4734201___redundant_placeholder3
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
while_body_4734059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_782_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_782_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_782_matmul_readvariableop_resource:2(F
4while_lstm_cell_782_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_782_biasadd_readvariableop_resource:(??*while/lstm_cell_782/BiasAdd/ReadVariableOp?)while/lstm_cell_782/MatMul/ReadVariableOp?+while/lstm_cell_782/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_782/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_782/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_782/addAddV2$while/lstm_cell_782/MatMul:product:0&while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_782/BiasAddBiasAddwhile/lstm_cell_782/add:z:02while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_782/splitSplit,while/lstm_cell_782/split/split_dim:output:0$while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_782/SigmoidSigmoid"while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_1Sigmoid"while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mulMul!while/lstm_cell_782/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_782/ReluRelu"while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_1Mulwhile/lstm_cell_782/Sigmoid:y:0&while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/add_1AddV2while/lstm_cell_782/mul:z:0while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_2Sigmoid"while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_782/Relu_1Reluwhile/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_2Mul!while/lstm_cell_782/Sigmoid_2:y:0(while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_782/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_782/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_782/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_782/BiasAdd/ReadVariableOp*^while/lstm_cell_782/MatMul/ReadVariableOp,^while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_782_biasadd_readvariableop_resource5while_lstm_cell_782_biasadd_readvariableop_resource_0"n
4while_lstm_cell_782_matmul_1_readvariableop_resource6while_lstm_cell_782_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_782_matmul_readvariableop_resource4while_lstm_cell_782_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_782/BiasAdd/ReadVariableOp*while/lstm_cell_782/BiasAdd/ReadVariableOp2V
)while/lstm_cell_782/MatMul/ReadVariableOp)while/lstm_cell_782/MatMul/ReadVariableOp2Z
+while/lstm_cell_782/MatMul_1/ReadVariableOp+while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_601_layer_call_fn_4733230

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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4730762s
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
while_cond_4732969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4732969___redundant_placeholder05
1while_while_cond_4732969___redundant_placeholder15
1while_while_cond_4732969___redundant_placeholder25
1while_while_cond_4732969___redundant_placeholder3
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
while_cond_4733442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4733442___redundant_placeholder05
1while_while_cond_4733442___redundant_placeholder15
1while_while_cond_4733442___redundant_placeholder25
1while_while_cond_4733442___redundant_placeholder3
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4729913

inputs(
lstm_cell_781_4729831:	d?(
lstm_cell_781_4729833:	2?$
lstm_cell_781_4729835:	?
identity??%lstm_cell_781/StatefulPartitionedCall?while;
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
%lstm_cell_781/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_781_4729831lstm_cell_781_4729833lstm_cell_781_4729835*
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729830n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_781_4729831lstm_cell_781_4729833lstm_cell_781_4729835*
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
while_body_4729844*
condR
while_cond_4729843*K
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
NoOpNoOp&^lstm_cell_781/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_781/StatefulPartitionedCall%lstm_cell_781/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729626

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
while_body_4732827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_780_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_780_matmul_readvariableop_resource:	?G
4while_lstm_cell_780_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_780_biasadd_readvariableop_resource:	???*while/lstm_cell_780/BiasAdd/ReadVariableOp?)while/lstm_cell_780/MatMul/ReadVariableOp?+while/lstm_cell_780/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_780/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_780/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_780/addAddV2$while/lstm_cell_780/MatMul:product:0&while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_780/BiasAddBiasAddwhile/lstm_cell_780/add:z:02while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_780/splitSplit,while/lstm_cell_780/split/split_dim:output:0$while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_780/SigmoidSigmoid"while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_1Sigmoid"while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mulMul!while/lstm_cell_780/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_780/ReluRelu"while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_1Mulwhile/lstm_cell_780/Sigmoid:y:0&while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/add_1AddV2while/lstm_cell_780/mul:z:0while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_2Sigmoid"while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_780/Relu_1Reluwhile/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_2Mul!while/lstm_cell_780/Sigmoid_2:y:0(while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_780/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_780/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_780/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_780/BiasAdd/ReadVariableOp*^while/lstm_cell_780/MatMul/ReadVariableOp,^while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_780_biasadd_readvariableop_resource5while_lstm_cell_780_biasadd_readvariableop_resource_0"n
4while_lstm_cell_780_matmul_1_readvariableop_resource6while_lstm_cell_780_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_780_matmul_readvariableop_resource4while_lstm_cell_780_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_780/BiasAdd/ReadVariableOp*while/lstm_cell_780/BiasAdd/ReadVariableOp2V
)while/lstm_cell_780/MatMul/ReadVariableOp)while/lstm_cell_780/MatMul/ReadVariableOp2Z
+while/lstm_cell_780/MatMul_1/ReadVariableOp+while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4729843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4729843___redundant_placeholder05
1while_while_cond_4729843___redundant_placeholder15
1while_while_cond_4729843___redundant_placeholder25
1while_while_cond_4729843___redundant_placeholder3
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
while_body_4733586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_781_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_781_matmul_readvariableop_resource:	d?G
4while_lstm_cell_781_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_781_biasadd_readvariableop_resource:	???*while/lstm_cell_781/BiasAdd/ReadVariableOp?)while/lstm_cell_781/MatMul/ReadVariableOp?+while/lstm_cell_781/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_781/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_781/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_781/addAddV2$while/lstm_cell_781/MatMul:product:0&while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_781/BiasAddBiasAddwhile/lstm_cell_781/add:z:02while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_781/splitSplit,while/lstm_cell_781/split/split_dim:output:0$while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_781/SigmoidSigmoid"while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_1Sigmoid"while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mulMul!while/lstm_cell_781/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_781/ReluRelu"while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_1Mulwhile/lstm_cell_781/Sigmoid:y:0&while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/add_1AddV2while/lstm_cell_781/mul:z:0while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_2Sigmoid"while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_781/Relu_1Reluwhile/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_2Mul!while/lstm_cell_781/Sigmoid_2:y:0(while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_781/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_781/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_781/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_781/BiasAdd/ReadVariableOp*^while/lstm_cell_781/MatMul/ReadVariableOp,^while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_781_biasadd_readvariableop_resource5while_lstm_cell_781_biasadd_readvariableop_resource_0"n
4while_lstm_cell_781_matmul_1_readvariableop_resource6while_lstm_cell_781_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_781_matmul_readvariableop_resource4while_lstm_cell_781_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_781/BiasAdd/ReadVariableOp*while/lstm_cell_781/BiasAdd/ReadVariableOp2V
)while/lstm_cell_781/MatMul/ReadVariableOp)while/lstm_cell_781/MatMul/ReadVariableOp2Z
+while/lstm_cell_781/MatMul_1/ReadVariableOp+while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4730035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_781_4730059_0:	d?0
while_lstm_cell_781_4730061_0:	2?,
while_lstm_cell_781_4730063_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_781_4730059:	d?.
while_lstm_cell_781_4730061:	2?*
while_lstm_cell_781_4730063:	???+while/lstm_cell_781/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_781/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_781_4730059_0while_lstm_cell_781_4730061_0while_lstm_cell_781_4730063_0*
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729976?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_781/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_781/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_781/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_781/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_781_4730059while_lstm_cell_781_4730059_0"<
while_lstm_cell_781_4730061while_lstm_cell_781_4730061_0"<
while_lstm_cell_781_4730063while_lstm_cell_781_4730063_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_781/StatefulPartitionedCall+while/lstm_cell_781/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4730194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_782_4730218_0:2(/
while_lstm_cell_782_4730220_0:
(+
while_lstm_cell_782_4730222_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_782_4730218:2(-
while_lstm_cell_782_4730220:
()
while_lstm_cell_782_4730222:(??+while/lstm_cell_782/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_782/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_782_4730218_0while_lstm_cell_782_4730220_0while_lstm_cell_782_4730222_0*
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730180?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_782/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_782/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_782/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_782/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_782_4730218while_lstm_cell_782_4730218_0"<
while_lstm_cell_782_4730220while_lstm_cell_782_4730220_0"<
while_lstm_cell_782_4730222while_lstm_cell_782_4730222_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_782/StatefulPartitionedCall+while/lstm_cell_782/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4734344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4734344___redundant_placeholder05
1while_while_cond_4734344___redundant_placeholder15
1while_while_cond_4734344___redundant_placeholder25
1while_while_cond_4734344___redundant_placeholder3
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
?W
?
 __inference__traced_save_4734885
file_prefix/
+savev2_dense_200_kernel_read_readvariableop-
)savev2_dense_200_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_600_lstm_cell_600_kernel_read_readvariableopF
Bsavev2_lstm_600_lstm_cell_600_recurrent_kernel_read_readvariableop:
6savev2_lstm_600_lstm_cell_600_bias_read_readvariableop<
8savev2_lstm_601_lstm_cell_601_kernel_read_readvariableopF
Bsavev2_lstm_601_lstm_cell_601_recurrent_kernel_read_readvariableop:
6savev2_lstm_601_lstm_cell_601_bias_read_readvariableop<
8savev2_lstm_602_lstm_cell_602_kernel_read_readvariableopF
Bsavev2_lstm_602_lstm_cell_602_recurrent_kernel_read_readvariableop:
6savev2_lstm_602_lstm_cell_602_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_200_kernel_m_read_readvariableop4
0savev2_adam_dense_200_bias_m_read_readvariableopC
?savev2_adam_lstm_600_lstm_cell_600_kernel_m_read_readvariableopM
Isavev2_adam_lstm_600_lstm_cell_600_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_600_lstm_cell_600_bias_m_read_readvariableopC
?savev2_adam_lstm_601_lstm_cell_601_kernel_m_read_readvariableopM
Isavev2_adam_lstm_601_lstm_cell_601_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_601_lstm_cell_601_bias_m_read_readvariableopC
?savev2_adam_lstm_602_lstm_cell_602_kernel_m_read_readvariableopM
Isavev2_adam_lstm_602_lstm_cell_602_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_602_lstm_cell_602_bias_m_read_readvariableop6
2savev2_adam_dense_200_kernel_v_read_readvariableop4
0savev2_adam_dense_200_bias_v_read_readvariableopC
?savev2_adam_lstm_600_lstm_cell_600_kernel_v_read_readvariableopM
Isavev2_adam_lstm_600_lstm_cell_600_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_600_lstm_cell_600_bias_v_read_readvariableopC
?savev2_adam_lstm_601_lstm_cell_601_kernel_v_read_readvariableopM
Isavev2_adam_lstm_601_lstm_cell_601_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_601_lstm_cell_601_bias_v_read_readvariableopC
?savev2_adam_lstm_602_lstm_cell_602_kernel_v_read_readvariableopM
Isavev2_adam_lstm_602_lstm_cell_602_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_602_lstm_cell_602_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_200_kernel_read_readvariableop)savev2_dense_200_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_600_lstm_cell_600_kernel_read_readvariableopBsavev2_lstm_600_lstm_cell_600_recurrent_kernel_read_readvariableop6savev2_lstm_600_lstm_cell_600_bias_read_readvariableop8savev2_lstm_601_lstm_cell_601_kernel_read_readvariableopBsavev2_lstm_601_lstm_cell_601_recurrent_kernel_read_readvariableop6savev2_lstm_601_lstm_cell_601_bias_read_readvariableop8savev2_lstm_602_lstm_cell_602_kernel_read_readvariableopBsavev2_lstm_602_lstm_cell_602_recurrent_kernel_read_readvariableop6savev2_lstm_602_lstm_cell_602_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_200_kernel_m_read_readvariableop0savev2_adam_dense_200_bias_m_read_readvariableop?savev2_adam_lstm_600_lstm_cell_600_kernel_m_read_readvariableopIsavev2_adam_lstm_600_lstm_cell_600_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_600_lstm_cell_600_bias_m_read_readvariableop?savev2_adam_lstm_601_lstm_cell_601_kernel_m_read_readvariableopIsavev2_adam_lstm_601_lstm_cell_601_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_601_lstm_cell_601_bias_m_read_readvariableop?savev2_adam_lstm_602_lstm_cell_602_kernel_m_read_readvariableopIsavev2_adam_lstm_602_lstm_cell_602_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_602_lstm_cell_602_bias_m_read_readvariableop2savev2_adam_dense_200_kernel_v_read_readvariableop0savev2_adam_dense_200_bias_v_read_readvariableop?savev2_adam_lstm_600_lstm_cell_600_kernel_v_read_readvariableopIsavev2_adam_lstm_600_lstm_cell_600_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_600_lstm_cell_600_bias_v_read_readvariableop?savev2_adam_lstm_601_lstm_cell_601_kernel_v_read_readvariableopIsavev2_adam_lstm_601_lstm_cell_601_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_601_lstm_cell_601_bias_v_read_readvariableop?savev2_adam_lstm_602_lstm_cell_602_kernel_v_read_readvariableopIsavev2_adam_lstm_602_lstm_cell_602_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_602_lstm_cell_602_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4733728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4733728___redundant_placeholder05
1while_while_cond_4733728___redundant_placeholder15
1while_while_cond_4733728___redundant_placeholder25
1while_while_cond_4733728___redundant_placeholder3
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
*__inference_lstm_600_layer_call_fn_4732625

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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4731458s
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
while_body_4734202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_782_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_782_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_782_matmul_readvariableop_resource:2(F
4while_lstm_cell_782_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_782_biasadd_readvariableop_resource:(??*while/lstm_cell_782/BiasAdd/ReadVariableOp?)while/lstm_cell_782/MatMul/ReadVariableOp?+while/lstm_cell_782/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_782/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_782/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_782/addAddV2$while/lstm_cell_782/MatMul:product:0&while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_782/BiasAddBiasAddwhile/lstm_cell_782/add:z:02while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_782/splitSplit,while/lstm_cell_782/split/split_dim:output:0$while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_782/SigmoidSigmoid"while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_1Sigmoid"while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mulMul!while/lstm_cell_782/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_782/ReluRelu"while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_1Mulwhile/lstm_cell_782/Sigmoid:y:0&while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/add_1AddV2while/lstm_cell_782/mul:z:0while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_2Sigmoid"while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_782/Relu_1Reluwhile/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_2Mul!while/lstm_cell_782/Sigmoid_2:y:0(while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_782/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_782/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_782/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_782/BiasAdd/ReadVariableOp*^while/lstm_cell_782/MatMul/ReadVariableOp,^while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_782_biasadd_readvariableop_resource5while_lstm_cell_782_biasadd_readvariableop_resource_0"n
4while_lstm_cell_782_matmul_1_readvariableop_resource6while_lstm_cell_782_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_782_matmul_readvariableop_resource4while_lstm_cell_782_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_782/BiasAdd/ReadVariableOp*while/lstm_cell_782/BiasAdd/ReadVariableOp2V
)while/lstm_cell_782/MatMul/ReadVariableOp)while/lstm_cell_782/MatMul/ReadVariableOp2Z
+while/lstm_cell_782/MatMul_1/ReadVariableOp+while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_600_while_cond_4732212.
*lstm_600_while_lstm_600_while_loop_counter4
0lstm_600_while_lstm_600_while_maximum_iterations
lstm_600_while_placeholder 
lstm_600_while_placeholder_1 
lstm_600_while_placeholder_2 
lstm_600_while_placeholder_30
,lstm_600_while_less_lstm_600_strided_slice_1G
Clstm_600_while_lstm_600_while_cond_4732212___redundant_placeholder0G
Clstm_600_while_lstm_600_while_cond_4732212___redundant_placeholder1G
Clstm_600_while_lstm_600_while_cond_4732212___redundant_placeholder2G
Clstm_600_while_lstm_600_while_cond_4732212___redundant_placeholder3
lstm_600_while_identity
?
lstm_600/while/LessLesslstm_600_while_placeholder,lstm_600_while_less_lstm_600_strided_slice_1*
T0*
_output_shapes
: ]
lstm_600/while/IdentityIdentitylstm_600/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_600_while_identity lstm_600/while/Identity:output:0*(
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
*__inference_lstm_600_layer_call_fn_4732603
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4729754|
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4734644

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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4732154

inputsH
5lstm_600_lstm_cell_780_matmul_readvariableop_resource:	?J
7lstm_600_lstm_cell_780_matmul_1_readvariableop_resource:	d?E
6lstm_600_lstm_cell_780_biasadd_readvariableop_resource:	?H
5lstm_601_lstm_cell_781_matmul_readvariableop_resource:	d?J
7lstm_601_lstm_cell_781_matmul_1_readvariableop_resource:	2?E
6lstm_601_lstm_cell_781_biasadd_readvariableop_resource:	?G
5lstm_602_lstm_cell_782_matmul_readvariableop_resource:2(I
7lstm_602_lstm_cell_782_matmul_1_readvariableop_resource:
(D
6lstm_602_lstm_cell_782_biasadd_readvariableop_resource:(:
(dense_200_matmul_readvariableop_resource:
7
)dense_200_biasadd_readvariableop_resource:
identity?? dense_200/BiasAdd/ReadVariableOp?dense_200/MatMul/ReadVariableOp?-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp?,lstm_600/lstm_cell_780/MatMul/ReadVariableOp?.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp?lstm_600/while?-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp?,lstm_601/lstm_cell_781/MatMul/ReadVariableOp?.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp?lstm_601/while?-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp?,lstm_602/lstm_cell_782/MatMul/ReadVariableOp?.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp?lstm_602/whileD
lstm_600/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_600/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_600/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_600/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_sliceStridedSlicelstm_600/Shape:output:0%lstm_600/strided_slice/stack:output:0'lstm_600/strided_slice/stack_1:output:0'lstm_600/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_600/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_600/zeros/packedPacklstm_600/strided_slice:output:0 lstm_600/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_600/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_600/zerosFilllstm_600/zeros/packed:output:0lstm_600/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_600/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_600/zeros_1/packedPacklstm_600/strided_slice:output:0"lstm_600/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_600/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_600/zeros_1Fill lstm_600/zeros_1/packed:output:0lstm_600/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_600/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_600/transpose	Transposeinputs lstm_600/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_600/Shape_1Shapelstm_600/transpose:y:0*
T0*
_output_shapes
:h
lstm_600/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_600/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_600/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_slice_1StridedSlicelstm_600/Shape_1:output:0'lstm_600/strided_slice_1/stack:output:0)lstm_600/strided_slice_1/stack_1:output:0)lstm_600/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_600/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_600/TensorArrayV2TensorListReserve-lstm_600/TensorArrayV2/element_shape:output:0!lstm_600/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_600/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_600/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_600/transpose:y:0Glstm_600/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_600/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_600/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_600/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_slice_2StridedSlicelstm_600/transpose:y:0'lstm_600/strided_slice_2/stack:output:0)lstm_600/strided_slice_2/stack_1:output:0)lstm_600/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_600/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp5lstm_600_lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_600/lstm_cell_780/MatMulMatMul!lstm_600/strided_slice_2:output:04lstm_600/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp7lstm_600_lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_600/lstm_cell_780/MatMul_1MatMullstm_600/zeros:output:06lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_600/lstm_cell_780/addAddV2'lstm_600/lstm_cell_780/MatMul:product:0)lstm_600/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp6lstm_600_lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_600/lstm_cell_780/BiasAddBiasAddlstm_600/lstm_cell_780/add:z:05lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_600/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_600/lstm_cell_780/splitSplit/lstm_600/lstm_cell_780/split/split_dim:output:0'lstm_600/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_600/lstm_cell_780/SigmoidSigmoid%lstm_600/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_600/lstm_cell_780/Sigmoid_1Sigmoid%lstm_600/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/mulMul$lstm_600/lstm_cell_780/Sigmoid_1:y:0lstm_600/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_600/lstm_cell_780/ReluRelu%lstm_600/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/mul_1Mul"lstm_600/lstm_cell_780/Sigmoid:y:0)lstm_600/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/add_1AddV2lstm_600/lstm_cell_780/mul:z:0 lstm_600/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_600/lstm_cell_780/Sigmoid_2Sigmoid%lstm_600/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_600/lstm_cell_780/Relu_1Relu lstm_600/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/mul_2Mul$lstm_600/lstm_cell_780/Sigmoid_2:y:0+lstm_600/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_600/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_600/TensorArrayV2_1TensorListReserve/lstm_600/TensorArrayV2_1/element_shape:output:0!lstm_600/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_600/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_600/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_600/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_600/whileWhile$lstm_600/while/loop_counter:output:0*lstm_600/while/maximum_iterations:output:0lstm_600/time:output:0!lstm_600/TensorArrayV2_1:handle:0lstm_600/zeros:output:0lstm_600/zeros_1:output:0!lstm_600/strided_slice_1:output:0@lstm_600/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_600_lstm_cell_780_matmul_readvariableop_resource7lstm_600_lstm_cell_780_matmul_1_readvariableop_resource6lstm_600_lstm_cell_780_biasadd_readvariableop_resource*
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
lstm_600_while_body_4731786*'
condR
lstm_600_while_cond_4731785*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_600/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_600/TensorArrayV2Stack/TensorListStackTensorListStacklstm_600/while:output:3Blstm_600/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_600/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_600/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_600/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_slice_3StridedSlice4lstm_600/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_600/strided_slice_3/stack:output:0)lstm_600/strided_slice_3/stack_1:output:0)lstm_600/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_600/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_600/transpose_1	Transpose4lstm_600/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_600/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_600/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_601/ShapeShapelstm_600/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_601/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_601/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_601/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_sliceStridedSlicelstm_601/Shape:output:0%lstm_601/strided_slice/stack:output:0'lstm_601/strided_slice/stack_1:output:0'lstm_601/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_601/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_601/zeros/packedPacklstm_601/strided_slice:output:0 lstm_601/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_601/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_601/zerosFilllstm_601/zeros/packed:output:0lstm_601/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_601/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_601/zeros_1/packedPacklstm_601/strided_slice:output:0"lstm_601/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_601/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_601/zeros_1Fill lstm_601/zeros_1/packed:output:0lstm_601/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_601/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_601/transpose	Transposelstm_600/transpose_1:y:0 lstm_601/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_601/Shape_1Shapelstm_601/transpose:y:0*
T0*
_output_shapes
:h
lstm_601/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_601/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_601/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_slice_1StridedSlicelstm_601/Shape_1:output:0'lstm_601/strided_slice_1/stack:output:0)lstm_601/strided_slice_1/stack_1:output:0)lstm_601/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_601/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_601/TensorArrayV2TensorListReserve-lstm_601/TensorArrayV2/element_shape:output:0!lstm_601/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_601/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_601/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_601/transpose:y:0Glstm_601/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_601/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_601/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_601/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_slice_2StridedSlicelstm_601/transpose:y:0'lstm_601/strided_slice_2/stack:output:0)lstm_601/strided_slice_2/stack_1:output:0)lstm_601/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_601/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp5lstm_601_lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_601/lstm_cell_781/MatMulMatMul!lstm_601/strided_slice_2:output:04lstm_601/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp7lstm_601_lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_601/lstm_cell_781/MatMul_1MatMullstm_601/zeros:output:06lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_601/lstm_cell_781/addAddV2'lstm_601/lstm_cell_781/MatMul:product:0)lstm_601/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp6lstm_601_lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_601/lstm_cell_781/BiasAddBiasAddlstm_601/lstm_cell_781/add:z:05lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_601/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_601/lstm_cell_781/splitSplit/lstm_601/lstm_cell_781/split/split_dim:output:0'lstm_601/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_601/lstm_cell_781/SigmoidSigmoid%lstm_601/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_601/lstm_cell_781/Sigmoid_1Sigmoid%lstm_601/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/mulMul$lstm_601/lstm_cell_781/Sigmoid_1:y:0lstm_601/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_601/lstm_cell_781/ReluRelu%lstm_601/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/mul_1Mul"lstm_601/lstm_cell_781/Sigmoid:y:0)lstm_601/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/add_1AddV2lstm_601/lstm_cell_781/mul:z:0 lstm_601/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_601/lstm_cell_781/Sigmoid_2Sigmoid%lstm_601/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_601/lstm_cell_781/Relu_1Relu lstm_601/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/mul_2Mul$lstm_601/lstm_cell_781/Sigmoid_2:y:0+lstm_601/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_601/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_601/TensorArrayV2_1TensorListReserve/lstm_601/TensorArrayV2_1/element_shape:output:0!lstm_601/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_601/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_601/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_601/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_601/whileWhile$lstm_601/while/loop_counter:output:0*lstm_601/while/maximum_iterations:output:0lstm_601/time:output:0!lstm_601/TensorArrayV2_1:handle:0lstm_601/zeros:output:0lstm_601/zeros_1:output:0!lstm_601/strided_slice_1:output:0@lstm_601/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_601_lstm_cell_781_matmul_readvariableop_resource7lstm_601_lstm_cell_781_matmul_1_readvariableop_resource6lstm_601_lstm_cell_781_biasadd_readvariableop_resource*
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
lstm_601_while_body_4731925*'
condR
lstm_601_while_cond_4731924*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_601/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_601/TensorArrayV2Stack/TensorListStackTensorListStacklstm_601/while:output:3Blstm_601/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_601/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_601/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_601/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_slice_3StridedSlice4lstm_601/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_601/strided_slice_3/stack:output:0)lstm_601/strided_slice_3/stack_1:output:0)lstm_601/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_601/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_601/transpose_1	Transpose4lstm_601/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_601/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_601/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_602/ShapeShapelstm_601/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_602/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_602/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_602/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_sliceStridedSlicelstm_602/Shape:output:0%lstm_602/strided_slice/stack:output:0'lstm_602/strided_slice/stack_1:output:0'lstm_602/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_602/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_602/zeros/packedPacklstm_602/strided_slice:output:0 lstm_602/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_602/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_602/zerosFilllstm_602/zeros/packed:output:0lstm_602/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_602/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_602/zeros_1/packedPacklstm_602/strided_slice:output:0"lstm_602/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_602/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_602/zeros_1Fill lstm_602/zeros_1/packed:output:0lstm_602/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_602/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_602/transpose	Transposelstm_601/transpose_1:y:0 lstm_602/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_602/Shape_1Shapelstm_602/transpose:y:0*
T0*
_output_shapes
:h
lstm_602/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_602/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_602/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_slice_1StridedSlicelstm_602/Shape_1:output:0'lstm_602/strided_slice_1/stack:output:0)lstm_602/strided_slice_1/stack_1:output:0)lstm_602/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_602/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_602/TensorArrayV2TensorListReserve-lstm_602/TensorArrayV2/element_shape:output:0!lstm_602/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_602/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_602/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_602/transpose:y:0Glstm_602/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_602/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_602/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_602/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_slice_2StridedSlicelstm_602/transpose:y:0'lstm_602/strided_slice_2/stack:output:0)lstm_602/strided_slice_2/stack_1:output:0)lstm_602/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_602/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp5lstm_602_lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_602/lstm_cell_782/MatMulMatMul!lstm_602/strided_slice_2:output:04lstm_602/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp7lstm_602_lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_602/lstm_cell_782/MatMul_1MatMullstm_602/zeros:output:06lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_602/lstm_cell_782/addAddV2'lstm_602/lstm_cell_782/MatMul:product:0)lstm_602/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp6lstm_602_lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_602/lstm_cell_782/BiasAddBiasAddlstm_602/lstm_cell_782/add:z:05lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_602/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_602/lstm_cell_782/splitSplit/lstm_602/lstm_cell_782/split/split_dim:output:0'lstm_602/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_602/lstm_cell_782/SigmoidSigmoid%lstm_602/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_602/lstm_cell_782/Sigmoid_1Sigmoid%lstm_602/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/mulMul$lstm_602/lstm_cell_782/Sigmoid_1:y:0lstm_602/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_602/lstm_cell_782/ReluRelu%lstm_602/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/mul_1Mul"lstm_602/lstm_cell_782/Sigmoid:y:0)lstm_602/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/add_1AddV2lstm_602/lstm_cell_782/mul:z:0 lstm_602/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_602/lstm_cell_782/Sigmoid_2Sigmoid%lstm_602/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_602/lstm_cell_782/Relu_1Relu lstm_602/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/mul_2Mul$lstm_602/lstm_cell_782/Sigmoid_2:y:0+lstm_602/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_602/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_602/TensorArrayV2_1TensorListReserve/lstm_602/TensorArrayV2_1/element_shape:output:0!lstm_602/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_602/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_602/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_602/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_602/whileWhile$lstm_602/while/loop_counter:output:0*lstm_602/while/maximum_iterations:output:0lstm_602/time:output:0!lstm_602/TensorArrayV2_1:handle:0lstm_602/zeros:output:0lstm_602/zeros_1:output:0!lstm_602/strided_slice_1:output:0@lstm_602/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_602_lstm_cell_782_matmul_readvariableop_resource7lstm_602_lstm_cell_782_matmul_1_readvariableop_resource6lstm_602_lstm_cell_782_biasadd_readvariableop_resource*
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
lstm_602_while_body_4732064*'
condR
lstm_602_while_cond_4732063*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_602/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_602/TensorArrayV2Stack/TensorListStackTensorListStacklstm_602/while:output:3Blstm_602/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_602/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_602/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_602/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_slice_3StridedSlice4lstm_602/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_602/strided_slice_3/stack:output:0)lstm_602/strided_slice_3/stack_1:output:0)lstm_602/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_602/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_602/transpose_1	Transpose4lstm_602/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_602/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_602/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_200/MatMul/ReadVariableOpReadVariableOp(dense_200_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_200/MatMulMatMul!lstm_602/strided_slice_3:output:0'dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_200/BiasAdd/ReadVariableOpReadVariableOp)dense_200_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_200/BiasAddBiasAdddense_200/MatMul:product:0(dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_200/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_200/BiasAdd/ReadVariableOp ^dense_200/MatMul/ReadVariableOp.^lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp-^lstm_600/lstm_cell_780/MatMul/ReadVariableOp/^lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp^lstm_600/while.^lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp-^lstm_601/lstm_cell_781/MatMul/ReadVariableOp/^lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp^lstm_601/while.^lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp-^lstm_602/lstm_cell_782/MatMul/ReadVariableOp/^lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp^lstm_602/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_200/BiasAdd/ReadVariableOp dense_200/BiasAdd/ReadVariableOp2B
dense_200/MatMul/ReadVariableOpdense_200/MatMul/ReadVariableOp2^
-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp2\
,lstm_600/lstm_cell_780/MatMul/ReadVariableOp,lstm_600/lstm_cell_780/MatMul/ReadVariableOp2`
.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp2 
lstm_600/whilelstm_600/while2^
-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp2\
,lstm_601/lstm_cell_781/MatMul/ReadVariableOp,lstm_601/lstm_cell_781/MatMul/ReadVariableOp2`
.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp2 
lstm_601/whilelstm_601/while2^
-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp2\
,lstm_602/lstm_cell_782/MatMul/ReadVariableOp,lstm_602/lstm_cell_782/MatMul/ReadVariableOp2`
.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp2 
lstm_602/whilelstm_602/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4729684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4729684___redundant_placeholder05
1while_while_cond_4729684___redundant_placeholder15
1while_while_cond_4729684___redundant_placeholder25
1while_while_cond_4729684___redundant_placeholder3
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730263

inputs'
lstm_cell_782_4730181:2('
lstm_cell_782_4730183:
(#
lstm_cell_782_4730185:(
identity??%lstm_cell_782/StatefulPartitionedCall?while;
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
%lstm_cell_782/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_782_4730181lstm_cell_782_4730183lstm_cell_782_4730185*
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730180n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_782_4730181lstm_cell_782_4730183lstm_cell_782_4730185*
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
while_body_4730194*
condR
while_cond_4730193*K
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
NoOpNoOp&^lstm_cell_782/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_782/StatefulPartitionedCall%lstm_cell_782/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4733915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4733915___redundant_placeholder05
1while_while_cond_4733915___redundant_placeholder15
1while_while_cond_4733915___redundant_placeholder25
1while_while_cond_4733915___redundant_placeholder3
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
while_body_4733443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_781_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_781_matmul_readvariableop_resource:	d?G
4while_lstm_cell_781_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_781_biasadd_readvariableop_resource:	???*while/lstm_cell_781/BiasAdd/ReadVariableOp?)while/lstm_cell_781/MatMul/ReadVariableOp?+while/lstm_cell_781/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_781/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_781/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_781/addAddV2$while/lstm_cell_781/MatMul:product:0&while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_781/BiasAddBiasAddwhile/lstm_cell_781/add:z:02while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_781/splitSplit,while/lstm_cell_781/split/split_dim:output:0$while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_781/SigmoidSigmoid"while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_1Sigmoid"while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mulMul!while/lstm_cell_781/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_781/ReluRelu"while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_1Mulwhile/lstm_cell_781/Sigmoid:y:0&while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/add_1AddV2while/lstm_cell_781/mul:z:0while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_2Sigmoid"while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_781/Relu_1Reluwhile/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_2Mul!while/lstm_cell_781/Sigmoid_2:y:0(while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_781/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_781/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_781/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_781/BiasAdd/ReadVariableOp*^while/lstm_cell_781/MatMul/ReadVariableOp,^while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_781_biasadd_readvariableop_resource5while_lstm_cell_781_biasadd_readvariableop_resource_0"n
4while_lstm_cell_781_matmul_1_readvariableop_resource6while_lstm_cell_781_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_781_matmul_readvariableop_resource4while_lstm_cell_781_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_781/BiasAdd/ReadVariableOp*while/lstm_cell_781/BiasAdd/ReadVariableOp2V
)while/lstm_cell_781/MatMul/ReadVariableOp)while/lstm_cell_781/MatMul/ReadVariableOp2Z
+while/lstm_cell_781/MatMul_1/ReadVariableOp+while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4729830

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

lstm_602_while_body_4732064.
*lstm_602_while_lstm_602_while_loop_counter4
0lstm_602_while_lstm_602_while_maximum_iterations
lstm_602_while_placeholder 
lstm_602_while_placeholder_1 
lstm_602_while_placeholder_2 
lstm_602_while_placeholder_3-
)lstm_602_while_lstm_602_strided_slice_1_0i
elstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0:2(Q
?lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(L
>lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0:(
lstm_602_while_identity
lstm_602_while_identity_1
lstm_602_while_identity_2
lstm_602_while_identity_3
lstm_602_while_identity_4
lstm_602_while_identity_5+
'lstm_602_while_lstm_602_strided_slice_1g
clstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensorM
;lstm_602_while_lstm_cell_782_matmul_readvariableop_resource:2(O
=lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource:
(J
<lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource:(??3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp?2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp?4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp?
@lstm_602/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_602/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensor_0lstm_602_while_placeholderIlstm_602/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp=lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_602/while/lstm_cell_782/MatMulMatMul9lstm_602/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp?lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_602/while/lstm_cell_782/MatMul_1MatMullstm_602_while_placeholder_2<lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_602/while/lstm_cell_782/addAddV2-lstm_602/while/lstm_cell_782/MatMul:product:0/lstm_602/while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp>lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_602/while/lstm_cell_782/BiasAddBiasAdd$lstm_602/while/lstm_cell_782/add:z:0;lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_602/while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_602/while/lstm_cell_782/splitSplit5lstm_602/while/lstm_cell_782/split/split_dim:output:0-lstm_602/while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_602/while/lstm_cell_782/SigmoidSigmoid+lstm_602/while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_602/while/lstm_cell_782/Sigmoid_1Sigmoid+lstm_602/while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_602/while/lstm_cell_782/mulMul*lstm_602/while/lstm_cell_782/Sigmoid_1:y:0lstm_602_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_602/while/lstm_cell_782/ReluRelu+lstm_602/while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_602/while/lstm_cell_782/mul_1Mul(lstm_602/while/lstm_cell_782/Sigmoid:y:0/lstm_602/while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_602/while/lstm_cell_782/add_1AddV2$lstm_602/while/lstm_cell_782/mul:z:0&lstm_602/while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_602/while/lstm_cell_782/Sigmoid_2Sigmoid+lstm_602/while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_602/while/lstm_cell_782/Relu_1Relu&lstm_602/while/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_602/while/lstm_cell_782/mul_2Mul*lstm_602/while/lstm_cell_782/Sigmoid_2:y:01lstm_602/while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_602/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_602_while_placeholder_1lstm_602_while_placeholder&lstm_602/while/lstm_cell_782/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_602/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_602/while/addAddV2lstm_602_while_placeholderlstm_602/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_602/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_602/while/add_1AddV2*lstm_602_while_lstm_602_while_loop_counterlstm_602/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_602/while/IdentityIdentitylstm_602/while/add_1:z:0^lstm_602/while/NoOp*
T0*
_output_shapes
: ?
lstm_602/while/Identity_1Identity0lstm_602_while_lstm_602_while_maximum_iterations^lstm_602/while/NoOp*
T0*
_output_shapes
: t
lstm_602/while/Identity_2Identitylstm_602/while/add:z:0^lstm_602/while/NoOp*
T0*
_output_shapes
: ?
lstm_602/while/Identity_3IdentityClstm_602/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_602/while/NoOp*
T0*
_output_shapes
: ?
lstm_602/while/Identity_4Identity&lstm_602/while/lstm_cell_782/mul_2:z:0^lstm_602/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_602/while/Identity_5Identity&lstm_602/while/lstm_cell_782/add_1:z:0^lstm_602/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_602/while/NoOpNoOp4^lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp3^lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp5^lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_602_while_identity lstm_602/while/Identity:output:0"?
lstm_602_while_identity_1"lstm_602/while/Identity_1:output:0"?
lstm_602_while_identity_2"lstm_602/while/Identity_2:output:0"?
lstm_602_while_identity_3"lstm_602/while/Identity_3:output:0"?
lstm_602_while_identity_4"lstm_602/while/Identity_4:output:0"?
lstm_602_while_identity_5"lstm_602/while/Identity_5:output:0"T
'lstm_602_while_lstm_602_strided_slice_1)lstm_602_while_lstm_602_strided_slice_1_0"~
<lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource>lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0"?
=lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource?lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0"|
;lstm_602_while_lstm_cell_782_matmul_readvariableop_resource=lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0"?
clstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensorelstm_602_while_tensorarrayv2read_tensorlistgetitem_lstm_602_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp3lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp2h
2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp2lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp2l
4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp4lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4730528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_780_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_780_matmul_readvariableop_resource:	?G
4while_lstm_cell_780_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_780_biasadd_readvariableop_resource:	???*while/lstm_cell_780/BiasAdd/ReadVariableOp?)while/lstm_cell_780/MatMul/ReadVariableOp?+while/lstm_cell_780/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_780/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_780/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_780/addAddV2$while/lstm_cell_780/MatMul:product:0&while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_780/BiasAddBiasAddwhile/lstm_cell_780/add:z:02while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_780/splitSplit,while/lstm_cell_780/split/split_dim:output:0$while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_780/SigmoidSigmoid"while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_1Sigmoid"while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mulMul!while/lstm_cell_780/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_780/ReluRelu"while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_1Mulwhile/lstm_cell_780/Sigmoid:y:0&while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/add_1AddV2while/lstm_cell_780/mul:z:0while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_2Sigmoid"while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_780/Relu_1Reluwhile/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_2Mul!while/lstm_cell_780/Sigmoid_2:y:0(while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_780/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_780/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_780/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_780/BiasAdd/ReadVariableOp*^while/lstm_cell_780/MatMul/ReadVariableOp,^while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_780_biasadd_readvariableop_resource5while_lstm_cell_780_biasadd_readvariableop_resource_0"n
4while_lstm_cell_780_matmul_1_readvariableop_resource6while_lstm_cell_780_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_780_matmul_readvariableop_resource4while_lstm_cell_780_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_780/BiasAdd/ReadVariableOp*while/lstm_cell_780/BiasAdd/ReadVariableOp2V
)while/lstm_cell_780/MatMul/ReadVariableOp)while/lstm_cell_780/MatMul/ReadVariableOp2Z
+while/lstm_cell_780/MatMul_1/ReadVariableOp+while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
0__inference_sequential_200_layer_call_fn_4731727

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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731526o
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
while_cond_4730527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4730527___redundant_placeholder05
1while_while_cond_4730527___redundant_placeholder15
1while_while_cond_4730527___redundant_placeholder25
1while_while_cond_4730527___redundant_placeholder3
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
lstm_602_while_cond_4732063.
*lstm_602_while_lstm_602_while_loop_counter4
0lstm_602_while_lstm_602_while_maximum_iterations
lstm_602_while_placeholder 
lstm_602_while_placeholder_1 
lstm_602_while_placeholder_2 
lstm_602_while_placeholder_30
,lstm_602_while_less_lstm_602_strided_slice_1G
Clstm_602_while_lstm_602_while_cond_4732063___redundant_placeholder0G
Clstm_602_while_lstm_602_while_cond_4732063___redundant_placeholder1G
Clstm_602_while_lstm_602_while_cond_4732063___redundant_placeholder2G
Clstm_602_while_lstm_602_while_cond_4732063___redundant_placeholder3
lstm_602_while_identity
?
lstm_602/while/LessLesslstm_602_while_placeholder,lstm_602_while_less_lstm_602_strided_slice_1*
T0*
_output_shapes
: ]
lstm_602/while/IdentityIdentitylstm_602/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_602_while_identity lstm_602/while/Identity:output:0*(
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
while_body_4733113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_780_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_780_matmul_readvariableop_resource:	?G
4while_lstm_cell_780_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_780_biasadd_readvariableop_resource:	???*while/lstm_cell_780/BiasAdd/ReadVariableOp?)while/lstm_cell_780/MatMul/ReadVariableOp?+while/lstm_cell_780/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_780/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_780/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_780/addAddV2$while/lstm_cell_780/MatMul:product:0&while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_780/BiasAddBiasAddwhile/lstm_cell_780/add:z:02while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_780/splitSplit,while/lstm_cell_780/split/split_dim:output:0$while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_780/SigmoidSigmoid"while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_1Sigmoid"while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mulMul!while/lstm_cell_780/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_780/ReluRelu"while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_1Mulwhile/lstm_cell_780/Sigmoid:y:0&while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/add_1AddV2while/lstm_cell_780/mul:z:0while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_2Sigmoid"while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_780/Relu_1Reluwhile/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_2Mul!while/lstm_cell_780/Sigmoid_2:y:0(while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_780/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_780/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_780/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_780/BiasAdd/ReadVariableOp*^while/lstm_cell_780/MatMul/ReadVariableOp,^while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_780_biasadd_readvariableop_resource5while_lstm_cell_780_biasadd_readvariableop_resource_0"n
4while_lstm_cell_780_matmul_1_readvariableop_resource6while_lstm_cell_780_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_780_matmul_readvariableop_resource4while_lstm_cell_780_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_780/BiasAdd/ReadVariableOp*while/lstm_cell_780/BiasAdd/ReadVariableOp2V
)while/lstm_cell_780/MatMul/ReadVariableOp)while/lstm_cell_780/MatMul/ReadVariableOp2Z
+while/lstm_cell_780/MatMul_1/ReadVariableOp+while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_600_while_body_4732213.
*lstm_600_while_lstm_600_while_loop_counter4
0lstm_600_while_lstm_600_while_maximum_iterations
lstm_600_while_placeholder 
lstm_600_while_placeholder_1 
lstm_600_while_placeholder_2 
lstm_600_while_placeholder_3-
)lstm_600_while_lstm_600_strided_slice_1_0i
elstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0:	?R
?lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?M
>lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
lstm_600_while_identity
lstm_600_while_identity_1
lstm_600_while_identity_2
lstm_600_while_identity_3
lstm_600_while_identity_4
lstm_600_while_identity_5+
'lstm_600_while_lstm_600_strided_slice_1g
clstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensorN
;lstm_600_while_lstm_cell_780_matmul_readvariableop_resource:	?P
=lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource:	d?K
<lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource:	???3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp?2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp?4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp?
@lstm_600/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_600/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensor_0lstm_600_while_placeholderIlstm_600/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp=lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_600/while/lstm_cell_780/MatMulMatMul9lstm_600/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp?lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_600/while/lstm_cell_780/MatMul_1MatMullstm_600_while_placeholder_2<lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_600/while/lstm_cell_780/addAddV2-lstm_600/while/lstm_cell_780/MatMul:product:0/lstm_600/while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp>lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_600/while/lstm_cell_780/BiasAddBiasAdd$lstm_600/while/lstm_cell_780/add:z:0;lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_600/while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_600/while/lstm_cell_780/splitSplit5lstm_600/while/lstm_cell_780/split/split_dim:output:0-lstm_600/while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_600/while/lstm_cell_780/SigmoidSigmoid+lstm_600/while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_600/while/lstm_cell_780/Sigmoid_1Sigmoid+lstm_600/while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_600/while/lstm_cell_780/mulMul*lstm_600/while/lstm_cell_780/Sigmoid_1:y:0lstm_600_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_600/while/lstm_cell_780/ReluRelu+lstm_600/while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_600/while/lstm_cell_780/mul_1Mul(lstm_600/while/lstm_cell_780/Sigmoid:y:0/lstm_600/while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_600/while/lstm_cell_780/add_1AddV2$lstm_600/while/lstm_cell_780/mul:z:0&lstm_600/while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_600/while/lstm_cell_780/Sigmoid_2Sigmoid+lstm_600/while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_600/while/lstm_cell_780/Relu_1Relu&lstm_600/while/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_600/while/lstm_cell_780/mul_2Mul*lstm_600/while/lstm_cell_780/Sigmoid_2:y:01lstm_600/while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_600/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_600_while_placeholder_1lstm_600_while_placeholder&lstm_600/while/lstm_cell_780/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_600/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_600/while/addAddV2lstm_600_while_placeholderlstm_600/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_600/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_600/while/add_1AddV2*lstm_600_while_lstm_600_while_loop_counterlstm_600/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_600/while/IdentityIdentitylstm_600/while/add_1:z:0^lstm_600/while/NoOp*
T0*
_output_shapes
: ?
lstm_600/while/Identity_1Identity0lstm_600_while_lstm_600_while_maximum_iterations^lstm_600/while/NoOp*
T0*
_output_shapes
: t
lstm_600/while/Identity_2Identitylstm_600/while/add:z:0^lstm_600/while/NoOp*
T0*
_output_shapes
: ?
lstm_600/while/Identity_3IdentityClstm_600/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_600/while/NoOp*
T0*
_output_shapes
: ?
lstm_600/while/Identity_4Identity&lstm_600/while/lstm_cell_780/mul_2:z:0^lstm_600/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_600/while/Identity_5Identity&lstm_600/while/lstm_cell_780/add_1:z:0^lstm_600/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_600/while/NoOpNoOp4^lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp3^lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp5^lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_600_while_identity lstm_600/while/Identity:output:0"?
lstm_600_while_identity_1"lstm_600/while/Identity_1:output:0"?
lstm_600_while_identity_2"lstm_600/while/Identity_2:output:0"?
lstm_600_while_identity_3"lstm_600/while/Identity_3:output:0"?
lstm_600_while_identity_4"lstm_600/while/Identity_4:output:0"?
lstm_600_while_identity_5"lstm_600/while/Identity_5:output:0"T
'lstm_600_while_lstm_600_strided_slice_1)lstm_600_while_lstm_600_strided_slice_1_0"~
<lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource>lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0"?
=lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource?lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0"|
;lstm_600_while_lstm_cell_780_matmul_readvariableop_resource=lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0"?
clstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensorelstm_600_while_tensorarrayv2read_tensorlistgetitem_lstm_600_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp3lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp2h
2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp2lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp2l
4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp4lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4729754

inputs(
lstm_cell_780_4729672:	?(
lstm_cell_780_4729674:	d?$
lstm_cell_780_4729676:	?
identity??%lstm_cell_780/StatefulPartitionedCall?while;
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
%lstm_cell_780/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_780_4729672lstm_cell_780_4729674lstm_cell_780_4729676*
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729626n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_780_4729672lstm_cell_780_4729674lstm_cell_780_4729676*
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
while_body_4729685*
condR
while_cond_4729684*K
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
NoOpNoOp&^lstm_cell_780/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_780/StatefulPartitionedCall%lstm_cell_780/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?T
?
*sequential_200_lstm_601_while_body_4729184L
Hsequential_200_lstm_601_while_sequential_200_lstm_601_while_loop_counterR
Nsequential_200_lstm_601_while_sequential_200_lstm_601_while_maximum_iterations-
)sequential_200_lstm_601_while_placeholder/
+sequential_200_lstm_601_while_placeholder_1/
+sequential_200_lstm_601_while_placeholder_2/
+sequential_200_lstm_601_while_placeholder_3K
Gsequential_200_lstm_601_while_sequential_200_lstm_601_strided_slice_1_0?
?sequential_200_lstm_601_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_601_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_200_lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0:	d?a
Nsequential_200_lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?\
Msequential_200_lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0:	?*
&sequential_200_lstm_601_while_identity,
(sequential_200_lstm_601_while_identity_1,
(sequential_200_lstm_601_while_identity_2,
(sequential_200_lstm_601_while_identity_3,
(sequential_200_lstm_601_while_identity_4,
(sequential_200_lstm_601_while_identity_5I
Esequential_200_lstm_601_while_sequential_200_lstm_601_strided_slice_1?
?sequential_200_lstm_601_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_601_tensorarrayunstack_tensorlistfromtensor]
Jsequential_200_lstm_601_while_lstm_cell_781_matmul_readvariableop_resource:	d?_
Lsequential_200_lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource:	2?Z
Ksequential_200_lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource:	???Bsequential_200/lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp?Asequential_200/lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp?Csequential_200/lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp?
Osequential_200/lstm_601/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_200/lstm_601/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_200_lstm_601_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_601_tensorarrayunstack_tensorlistfromtensor_0)sequential_200_lstm_601_while_placeholderXsequential_200/lstm_601/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_200/lstm_601/while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOpLsequential_200_lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_200/lstm_601/while/lstm_cell_781/MatMulMatMulHsequential_200/lstm_601/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_200/lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_200/lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOpNsequential_200_lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_200/lstm_601/while/lstm_cell_781/MatMul_1MatMul+sequential_200_lstm_601_while_placeholder_2Ksequential_200/lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_200/lstm_601/while/lstm_cell_781/addAddV2<sequential_200/lstm_601/while/lstm_cell_781/MatMul:product:0>sequential_200/lstm_601/while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_200/lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOpMsequential_200_lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_200/lstm_601/while/lstm_cell_781/BiasAddBiasAdd3sequential_200/lstm_601/while/lstm_cell_781/add:z:0Jsequential_200/lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_200/lstm_601/while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_200/lstm_601/while/lstm_cell_781/splitSplitDsequential_200/lstm_601/while/lstm_cell_781/split/split_dim:output:0<sequential_200/lstm_601/while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_200/lstm_601/while/lstm_cell_781/SigmoidSigmoid:sequential_200/lstm_601/while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_200/lstm_601/while/lstm_cell_781/Sigmoid_1Sigmoid:sequential_200/lstm_601/while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_200/lstm_601/while/lstm_cell_781/mulMul9sequential_200/lstm_601/while/lstm_cell_781/Sigmoid_1:y:0+sequential_200_lstm_601_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_200/lstm_601/while/lstm_cell_781/ReluRelu:sequential_200/lstm_601/while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_200/lstm_601/while/lstm_cell_781/mul_1Mul7sequential_200/lstm_601/while/lstm_cell_781/Sigmoid:y:0>sequential_200/lstm_601/while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_200/lstm_601/while/lstm_cell_781/add_1AddV23sequential_200/lstm_601/while/lstm_cell_781/mul:z:05sequential_200/lstm_601/while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_200/lstm_601/while/lstm_cell_781/Sigmoid_2Sigmoid:sequential_200/lstm_601/while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_200/lstm_601/while/lstm_cell_781/Relu_1Relu5sequential_200/lstm_601/while/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_200/lstm_601/while/lstm_cell_781/mul_2Mul9sequential_200/lstm_601/while/lstm_cell_781/Sigmoid_2:y:0@sequential_200/lstm_601/while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_200/lstm_601/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_200_lstm_601_while_placeholder_1)sequential_200_lstm_601_while_placeholder5sequential_200/lstm_601/while/lstm_cell_781/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_200/lstm_601/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_200/lstm_601/while/addAddV2)sequential_200_lstm_601_while_placeholder,sequential_200/lstm_601/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_200/lstm_601/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_200/lstm_601/while/add_1AddV2Hsequential_200_lstm_601_while_sequential_200_lstm_601_while_loop_counter.sequential_200/lstm_601/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_200/lstm_601/while/IdentityIdentity'sequential_200/lstm_601/while/add_1:z:0#^sequential_200/lstm_601/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_601/while/Identity_1IdentityNsequential_200_lstm_601_while_sequential_200_lstm_601_while_maximum_iterations#^sequential_200/lstm_601/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_601/while/Identity_2Identity%sequential_200/lstm_601/while/add:z:0#^sequential_200/lstm_601/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_601/while/Identity_3IdentityRsequential_200/lstm_601/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_200/lstm_601/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_601/while/Identity_4Identity5sequential_200/lstm_601/while/lstm_cell_781/mul_2:z:0#^sequential_200/lstm_601/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_200/lstm_601/while/Identity_5Identity5sequential_200/lstm_601/while/lstm_cell_781/add_1:z:0#^sequential_200/lstm_601/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_200/lstm_601/while/NoOpNoOpC^sequential_200/lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOpB^sequential_200/lstm_601/while/lstm_cell_781/MatMul/ReadVariableOpD^sequential_200/lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_200_lstm_601_while_identity/sequential_200/lstm_601/while/Identity:output:0"]
(sequential_200_lstm_601_while_identity_11sequential_200/lstm_601/while/Identity_1:output:0"]
(sequential_200_lstm_601_while_identity_21sequential_200/lstm_601/while/Identity_2:output:0"]
(sequential_200_lstm_601_while_identity_31sequential_200/lstm_601/while/Identity_3:output:0"]
(sequential_200_lstm_601_while_identity_41sequential_200/lstm_601/while/Identity_4:output:0"]
(sequential_200_lstm_601_while_identity_51sequential_200/lstm_601/while/Identity_5:output:0"?
Ksequential_200_lstm_601_while_lstm_cell_781_biasadd_readvariableop_resourceMsequential_200_lstm_601_while_lstm_cell_781_biasadd_readvariableop_resource_0"?
Lsequential_200_lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resourceNsequential_200_lstm_601_while_lstm_cell_781_matmul_1_readvariableop_resource_0"?
Jsequential_200_lstm_601_while_lstm_cell_781_matmul_readvariableop_resourceLsequential_200_lstm_601_while_lstm_cell_781_matmul_readvariableop_resource_0"?
Esequential_200_lstm_601_while_sequential_200_lstm_601_strided_slice_1Gsequential_200_lstm_601_while_sequential_200_lstm_601_strided_slice_1_0"?
?sequential_200_lstm_601_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_601_tensorarrayunstack_tensorlistfromtensor?sequential_200_lstm_601_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_601_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_200/lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOpBsequential_200/lstm_601/while/lstm_cell_781/BiasAdd/ReadVariableOp2?
Asequential_200/lstm_601/while/lstm_cell_781/MatMul/ReadVariableOpAsequential_200/lstm_601/while/lstm_cell_781/MatMul/ReadVariableOp2?
Csequential_200/lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOpCsequential_200/lstm_601/while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731608
lstm_600_input#
lstm_600_4731581:	?#
lstm_600_4731583:	d?
lstm_600_4731585:	?#
lstm_601_4731588:	d?#
lstm_601_4731590:	2?
lstm_601_4731592:	?"
lstm_602_4731595:2("
lstm_602_4731597:
(
lstm_602_4731599:(#
dense_200_4731602:

dense_200_4731604:
identity??!dense_200/StatefulPartitionedCall? lstm_600/StatefulPartitionedCall? lstm_601/StatefulPartitionedCall? lstm_602/StatefulPartitionedCall?
 lstm_600/StatefulPartitionedCallStatefulPartitionedCalllstm_600_inputlstm_600_4731581lstm_600_4731583lstm_600_4731585*
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4730612?
 lstm_601/StatefulPartitionedCallStatefulPartitionedCall)lstm_600/StatefulPartitionedCall:output:0lstm_601_4731588lstm_601_4731590lstm_601_4731592*
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4730762?
 lstm_602/StatefulPartitionedCallStatefulPartitionedCall)lstm_601/StatefulPartitionedCall:output:0lstm_602_4731595lstm_602_4731597lstm_602_4731599*
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730912?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_602/StatefulPartitionedCall:output:0dense_200_4731602dense_200_4731604*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4730930y
IdentityIdentity*dense_200/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_200/StatefulPartitionedCall!^lstm_600/StatefulPartitionedCall!^lstm_601/StatefulPartitionedCall!^lstm_602/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2D
 lstm_600/StatefulPartitionedCall lstm_600/StatefulPartitionedCall2D
 lstm_601/StatefulPartitionedCall lstm_601/StatefulPartitionedCall2D
 lstm_602/StatefulPartitionedCall lstm_602/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_600_input
?K
?
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733527
inputs_0?
,lstm_cell_781_matmul_readvariableop_resource:	d?A
.lstm_cell_781_matmul_1_readvariableop_resource:	2?<
-lstm_cell_781_biasadd_readvariableop_resource:	?
identity??$lstm_cell_781/BiasAdd/ReadVariableOp?#lstm_cell_781/MatMul/ReadVariableOp?%lstm_cell_781/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_781/MatMul/ReadVariableOpReadVariableOp,lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_781/MatMulMatMulstrided_slice_2:output:0+lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_781/MatMul_1MatMulzeros:output:0-lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_781/addAddV2lstm_cell_781/MatMul:product:0 lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_781/BiasAddBiasAddlstm_cell_781/add:z:0,lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_781/splitSplit&lstm_cell_781/split/split_dim:output:0lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_781/SigmoidSigmoidlstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_1Sigmoidlstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_781/mulMullstm_cell_781/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_781/ReluRelulstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_1Mullstm_cell_781/Sigmoid:y:0 lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_781/add_1AddV2lstm_cell_781/mul:z:0lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_2Sigmoidlstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_781/Relu_1Relulstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_2Mullstm_cell_781/Sigmoid_2:y:0"lstm_cell_781/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_781_matmul_readvariableop_resource.lstm_cell_781_matmul_1_readvariableop_resource-lstm_cell_781_biasadd_readvariableop_resource*
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
while_body_4733443*
condR
while_cond_4733442*K
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
NoOpNoOp%^lstm_cell_781/BiasAdd/ReadVariableOp$^lstm_cell_781/MatMul/ReadVariableOp&^lstm_cell_781/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_781/BiasAdd/ReadVariableOp$lstm_cell_781/BiasAdd/ReadVariableOp2J
#lstm_cell_781/MatMul/ReadVariableOp#lstm_cell_781/MatMul/ReadVariableOp2N
%lstm_cell_781/MatMul_1/ReadVariableOp%lstm_cell_781/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4731209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_781_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_781_matmul_readvariableop_resource:	d?G
4while_lstm_cell_781_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_781_biasadd_readvariableop_resource:	???*while/lstm_cell_781/BiasAdd/ReadVariableOp?)while/lstm_cell_781/MatMul/ReadVariableOp?+while/lstm_cell_781/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_781/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_781/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_781/addAddV2$while/lstm_cell_781/MatMul:product:0&while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_781/BiasAddBiasAddwhile/lstm_cell_781/add:z:02while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_781/splitSplit,while/lstm_cell_781/split/split_dim:output:0$while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_781/SigmoidSigmoid"while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_1Sigmoid"while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mulMul!while/lstm_cell_781/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_781/ReluRelu"while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_1Mulwhile/lstm_cell_781/Sigmoid:y:0&while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/add_1AddV2while/lstm_cell_781/mul:z:0while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_2Sigmoid"while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_781/Relu_1Reluwhile/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_2Mul!while/lstm_cell_781/Sigmoid_2:y:0(while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_781/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_781/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_781/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_781/BiasAdd/ReadVariableOp*^while/lstm_cell_781/MatMul/ReadVariableOp,^while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_781_biasadd_readvariableop_resource5while_lstm_cell_781_biasadd_readvariableop_resource_0"n
4while_lstm_cell_781_matmul_1_readvariableop_resource6while_lstm_cell_781_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_781_matmul_readvariableop_resource4while_lstm_cell_781_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_781/BiasAdd/ReadVariableOp*while/lstm_cell_781/BiasAdd/ReadVariableOp2V
)while/lstm_cell_781/MatMul/ReadVariableOp)while/lstm_cell_781/MatMul/ReadVariableOp2Z
+while/lstm_cell_781/MatMul_1/ReadVariableOp+while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4730034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4730034___redundant_placeholder05
1while_while_cond_4730034___redundant_placeholder15
1while_while_cond_4730034___redundant_placeholder25
1while_while_cond_4730034___redundant_placeholder3
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
#__inference__traced_restore_4735015
file_prefix3
!assignvariableop_dense_200_kernel:
/
!assignvariableop_1_dense_200_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_600_lstm_cell_600_kernel:	?M
:assignvariableop_8_lstm_600_lstm_cell_600_recurrent_kernel:	d?=
.assignvariableop_9_lstm_600_lstm_cell_600_bias:	?D
1assignvariableop_10_lstm_601_lstm_cell_601_kernel:	d?N
;assignvariableop_11_lstm_601_lstm_cell_601_recurrent_kernel:	2?>
/assignvariableop_12_lstm_601_lstm_cell_601_bias:	?C
1assignvariableop_13_lstm_602_lstm_cell_602_kernel:2(M
;assignvariableop_14_lstm_602_lstm_cell_602_recurrent_kernel:
(=
/assignvariableop_15_lstm_602_lstm_cell_602_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_200_kernel_m:
7
)assignvariableop_19_adam_dense_200_bias_m:K
8assignvariableop_20_adam_lstm_600_lstm_cell_600_kernel_m:	?U
Bassignvariableop_21_adam_lstm_600_lstm_cell_600_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_600_lstm_cell_600_bias_m:	?K
8assignvariableop_23_adam_lstm_601_lstm_cell_601_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_601_lstm_cell_601_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_601_lstm_cell_601_bias_m:	?J
8assignvariableop_26_adam_lstm_602_lstm_cell_602_kernel_m:2(T
Bassignvariableop_27_adam_lstm_602_lstm_cell_602_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_602_lstm_cell_602_bias_m:(=
+assignvariableop_29_adam_dense_200_kernel_v:
7
)assignvariableop_30_adam_dense_200_bias_v:K
8assignvariableop_31_adam_lstm_600_lstm_cell_600_kernel_v:	?U
Bassignvariableop_32_adam_lstm_600_lstm_cell_600_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_600_lstm_cell_600_bias_v:	?K
8assignvariableop_34_adam_lstm_601_lstm_cell_601_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_601_lstm_cell_601_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_601_lstm_cell_601_bias_v:	?J
8assignvariableop_37_adam_lstm_602_lstm_cell_602_kernel_v:2(T
Bassignvariableop_38_adam_lstm_602_lstm_cell_602_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_602_lstm_cell_602_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_200_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_200_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_600_lstm_cell_600_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_600_lstm_cell_600_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_600_lstm_cell_600_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_601_lstm_cell_601_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_601_lstm_cell_601_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_601_lstm_cell_601_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_602_lstm_cell_602_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_602_lstm_cell_602_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_602_lstm_cell_602_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_200_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_200_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_600_lstm_cell_600_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_600_lstm_cell_600_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_600_lstm_cell_600_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_601_lstm_cell_601_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_601_lstm_cell_601_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_601_lstm_cell_601_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_602_lstm_cell_602_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_602_lstm_cell_602_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_602_lstm_cell_602_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_200_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_200_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_600_lstm_cell_600_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_600_lstm_cell_600_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_600_lstm_cell_600_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_601_lstm_cell_601_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_601_lstm_cell_601_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_601_lstm_cell_601_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_602_lstm_cell_602_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_602_lstm_cell_602_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_602_lstm_cell_602_bias_vIdentity_39:output:0"/device:CPU:0*
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
?T
?
*sequential_200_lstm_602_while_body_4729323L
Hsequential_200_lstm_602_while_sequential_200_lstm_602_while_loop_counterR
Nsequential_200_lstm_602_while_sequential_200_lstm_602_while_maximum_iterations-
)sequential_200_lstm_602_while_placeholder/
+sequential_200_lstm_602_while_placeholder_1/
+sequential_200_lstm_602_while_placeholder_2/
+sequential_200_lstm_602_while_placeholder_3K
Gsequential_200_lstm_602_while_sequential_200_lstm_602_strided_slice_1_0?
?sequential_200_lstm_602_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_602_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_200_lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0:2(`
Nsequential_200_lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0:
([
Msequential_200_lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0:(*
&sequential_200_lstm_602_while_identity,
(sequential_200_lstm_602_while_identity_1,
(sequential_200_lstm_602_while_identity_2,
(sequential_200_lstm_602_while_identity_3,
(sequential_200_lstm_602_while_identity_4,
(sequential_200_lstm_602_while_identity_5I
Esequential_200_lstm_602_while_sequential_200_lstm_602_strided_slice_1?
?sequential_200_lstm_602_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_602_tensorarrayunstack_tensorlistfromtensor\
Jsequential_200_lstm_602_while_lstm_cell_782_matmul_readvariableop_resource:2(^
Lsequential_200_lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource:
(Y
Ksequential_200_lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource:(??Bsequential_200/lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp?Asequential_200/lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp?Csequential_200/lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp?
Osequential_200/lstm_602/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_200/lstm_602/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_200_lstm_602_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_602_tensorarrayunstack_tensorlistfromtensor_0)sequential_200_lstm_602_while_placeholderXsequential_200/lstm_602/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_200/lstm_602/while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOpLsequential_200_lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_200/lstm_602/while/lstm_cell_782/MatMulMatMulHsequential_200/lstm_602/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_200/lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_200/lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOpNsequential_200_lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_200/lstm_602/while/lstm_cell_782/MatMul_1MatMul+sequential_200_lstm_602_while_placeholder_2Ksequential_200/lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_200/lstm_602/while/lstm_cell_782/addAddV2<sequential_200/lstm_602/while/lstm_cell_782/MatMul:product:0>sequential_200/lstm_602/while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_200/lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOpMsequential_200_lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_200/lstm_602/while/lstm_cell_782/BiasAddBiasAdd3sequential_200/lstm_602/while/lstm_cell_782/add:z:0Jsequential_200/lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_200/lstm_602/while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_200/lstm_602/while/lstm_cell_782/splitSplitDsequential_200/lstm_602/while/lstm_cell_782/split/split_dim:output:0<sequential_200/lstm_602/while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_200/lstm_602/while/lstm_cell_782/SigmoidSigmoid:sequential_200/lstm_602/while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_200/lstm_602/while/lstm_cell_782/Sigmoid_1Sigmoid:sequential_200/lstm_602/while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_200/lstm_602/while/lstm_cell_782/mulMul9sequential_200/lstm_602/while/lstm_cell_782/Sigmoid_1:y:0+sequential_200_lstm_602_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_200/lstm_602/while/lstm_cell_782/ReluRelu:sequential_200/lstm_602/while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_200/lstm_602/while/lstm_cell_782/mul_1Mul7sequential_200/lstm_602/while/lstm_cell_782/Sigmoid:y:0>sequential_200/lstm_602/while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_200/lstm_602/while/lstm_cell_782/add_1AddV23sequential_200/lstm_602/while/lstm_cell_782/mul:z:05sequential_200/lstm_602/while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_200/lstm_602/while/lstm_cell_782/Sigmoid_2Sigmoid:sequential_200/lstm_602/while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_200/lstm_602/while/lstm_cell_782/Relu_1Relu5sequential_200/lstm_602/while/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_200/lstm_602/while/lstm_cell_782/mul_2Mul9sequential_200/lstm_602/while/lstm_cell_782/Sigmoid_2:y:0@sequential_200/lstm_602/while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_200/lstm_602/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_200_lstm_602_while_placeholder_1)sequential_200_lstm_602_while_placeholder5sequential_200/lstm_602/while/lstm_cell_782/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_200/lstm_602/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_200/lstm_602/while/addAddV2)sequential_200_lstm_602_while_placeholder,sequential_200/lstm_602/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_200/lstm_602/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_200/lstm_602/while/add_1AddV2Hsequential_200_lstm_602_while_sequential_200_lstm_602_while_loop_counter.sequential_200/lstm_602/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_200/lstm_602/while/IdentityIdentity'sequential_200/lstm_602/while/add_1:z:0#^sequential_200/lstm_602/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_602/while/Identity_1IdentityNsequential_200_lstm_602_while_sequential_200_lstm_602_while_maximum_iterations#^sequential_200/lstm_602/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_602/while/Identity_2Identity%sequential_200/lstm_602/while/add:z:0#^sequential_200/lstm_602/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_602/while/Identity_3IdentityRsequential_200/lstm_602/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_200/lstm_602/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_602/while/Identity_4Identity5sequential_200/lstm_602/while/lstm_cell_782/mul_2:z:0#^sequential_200/lstm_602/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_200/lstm_602/while/Identity_5Identity5sequential_200/lstm_602/while/lstm_cell_782/add_1:z:0#^sequential_200/lstm_602/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_200/lstm_602/while/NoOpNoOpC^sequential_200/lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOpB^sequential_200/lstm_602/while/lstm_cell_782/MatMul/ReadVariableOpD^sequential_200/lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_200_lstm_602_while_identity/sequential_200/lstm_602/while/Identity:output:0"]
(sequential_200_lstm_602_while_identity_11sequential_200/lstm_602/while/Identity_1:output:0"]
(sequential_200_lstm_602_while_identity_21sequential_200/lstm_602/while/Identity_2:output:0"]
(sequential_200_lstm_602_while_identity_31sequential_200/lstm_602/while/Identity_3:output:0"]
(sequential_200_lstm_602_while_identity_41sequential_200/lstm_602/while/Identity_4:output:0"]
(sequential_200_lstm_602_while_identity_51sequential_200/lstm_602/while/Identity_5:output:0"?
Ksequential_200_lstm_602_while_lstm_cell_782_biasadd_readvariableop_resourceMsequential_200_lstm_602_while_lstm_cell_782_biasadd_readvariableop_resource_0"?
Lsequential_200_lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resourceNsequential_200_lstm_602_while_lstm_cell_782_matmul_1_readvariableop_resource_0"?
Jsequential_200_lstm_602_while_lstm_cell_782_matmul_readvariableop_resourceLsequential_200_lstm_602_while_lstm_cell_782_matmul_readvariableop_resource_0"?
Esequential_200_lstm_602_while_sequential_200_lstm_602_strided_slice_1Gsequential_200_lstm_602_while_sequential_200_lstm_602_strided_slice_1_0"?
?sequential_200_lstm_602_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_602_tensorarrayunstack_tensorlistfromtensor?sequential_200_lstm_602_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_602_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_200/lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOpBsequential_200/lstm_602/while/lstm_cell_782/BiasAdd/ReadVariableOp2?
Asequential_200/lstm_602/while/lstm_cell_782/MatMul/ReadVariableOpAsequential_200/lstm_602/while/lstm_cell_782/MatMul/ReadVariableOp2?
Csequential_200/lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOpCsequential_200/lstm_602/while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_200_layer_call_fn_4731700

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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4730937o
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
while_body_4732684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_780_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_780_matmul_readvariableop_resource:	?G
4while_lstm_cell_780_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_780_biasadd_readvariableop_resource:	???*while/lstm_cell_780/BiasAdd/ReadVariableOp?)while/lstm_cell_780/MatMul/ReadVariableOp?+while/lstm_cell_780/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_780/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_780/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_780/addAddV2$while/lstm_cell_780/MatMul:product:0&while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_780/BiasAddBiasAddwhile/lstm_cell_780/add:z:02while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_780/splitSplit,while/lstm_cell_780/split/split_dim:output:0$while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_780/SigmoidSigmoid"while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_1Sigmoid"while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mulMul!while/lstm_cell_780/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_780/ReluRelu"while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_1Mulwhile/lstm_cell_780/Sigmoid:y:0&while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/add_1AddV2while/lstm_cell_780/mul:z:0while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_2Sigmoid"while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_780/Relu_1Reluwhile/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_2Mul!while/lstm_cell_780/Sigmoid_2:y:0(while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_780/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_780/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_780/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_780/BiasAdd/ReadVariableOp*^while/lstm_cell_780/MatMul/ReadVariableOp,^while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_780_biasadd_readvariableop_resource5while_lstm_cell_780_biasadd_readvariableop_resource_0"n
4while_lstm_cell_780_matmul_1_readvariableop_resource6while_lstm_cell_780_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_780_matmul_readvariableop_resource4while_lstm_cell_780_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_780/BiasAdd/ReadVariableOp*while/lstm_cell_780/BiasAdd/ReadVariableOp2V
)while/lstm_cell_780/MatMul/ReadVariableOp)while/lstm_cell_780/MatMul/ReadVariableOp2Z
+while/lstm_cell_780/MatMul_1/ReadVariableOp+while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733813

inputs?
,lstm_cell_781_matmul_readvariableop_resource:	d?A
.lstm_cell_781_matmul_1_readvariableop_resource:	2?<
-lstm_cell_781_biasadd_readvariableop_resource:	?
identity??$lstm_cell_781/BiasAdd/ReadVariableOp?#lstm_cell_781/MatMul/ReadVariableOp?%lstm_cell_781/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_781/MatMul/ReadVariableOpReadVariableOp,lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_781/MatMulMatMulstrided_slice_2:output:0+lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_781/MatMul_1MatMulzeros:output:0-lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_781/addAddV2lstm_cell_781/MatMul:product:0 lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_781/BiasAddBiasAddlstm_cell_781/add:z:0,lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_781/splitSplit&lstm_cell_781/split/split_dim:output:0lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_781/SigmoidSigmoidlstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_1Sigmoidlstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_781/mulMullstm_cell_781/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_781/ReluRelulstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_1Mullstm_cell_781/Sigmoid:y:0 lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_781/add_1AddV2lstm_cell_781/mul:z:0lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_2Sigmoidlstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_781/Relu_1Relulstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_2Mullstm_cell_781/Sigmoid_2:y:0"lstm_cell_781/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_781_matmul_readvariableop_resource.lstm_cell_781_matmul_1_readvariableop_resource-lstm_cell_781_biasadd_readvariableop_resource*
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
while_body_4733729*
condR
while_cond_4733728*K
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
NoOpNoOp%^lstm_cell_781/BiasAdd/ReadVariableOp$^lstm_cell_781/MatMul/ReadVariableOp&^lstm_cell_781/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_781/BiasAdd/ReadVariableOp$lstm_cell_781/BiasAdd/ReadVariableOp2J
#lstm_cell_781/MatMul/ReadVariableOp#lstm_cell_781/MatMul/ReadVariableOp2N
%lstm_cell_781/MatMul_1/ReadVariableOp%lstm_cell_781/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_602_layer_call_and_return_conditional_losses_4731128

inputs>
,lstm_cell_782_matmul_readvariableop_resource:2(@
.lstm_cell_782_matmul_1_readvariableop_resource:
(;
-lstm_cell_782_biasadd_readvariableop_resource:(
identity??$lstm_cell_782/BiasAdd/ReadVariableOp?#lstm_cell_782/MatMul/ReadVariableOp?%lstm_cell_782/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_782/MatMul/ReadVariableOpReadVariableOp,lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_782/MatMulMatMulstrided_slice_2:output:0+lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_782/MatMul_1MatMulzeros:output:0-lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_782/addAddV2lstm_cell_782/MatMul:product:0 lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_782/BiasAddBiasAddlstm_cell_782/add:z:0,lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_782/splitSplit&lstm_cell_782/split/split_dim:output:0lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_782/SigmoidSigmoidlstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_1Sigmoidlstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_782/mulMullstm_cell_782/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_782/ReluRelulstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_1Mullstm_cell_782/Sigmoid:y:0 lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_782/add_1AddV2lstm_cell_782/mul:z:0lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_2Sigmoidlstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_782/Relu_1Relulstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_2Mullstm_cell_782/Sigmoid_2:y:0"lstm_cell_782/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_782_matmul_readvariableop_resource.lstm_cell_782_matmul_1_readvariableop_resource-lstm_cell_782_biasadd_readvariableop_resource*
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
while_body_4731044*
condR
while_cond_4731043*K
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
NoOpNoOp%^lstm_cell_782/BiasAdd/ReadVariableOp$^lstm_cell_782/MatMul/ReadVariableOp&^lstm_cell_782/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_782/BiasAdd/ReadVariableOp$lstm_cell_782/BiasAdd/ReadVariableOp2J
#lstm_cell_782/MatMul/ReadVariableOp#lstm_cell_782/MatMul/ReadVariableOp2N
%lstm_cell_782/MatMul_1/ReadVariableOp%lstm_cell_782/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*sequential_200_lstm_600_while_cond_4729044L
Hsequential_200_lstm_600_while_sequential_200_lstm_600_while_loop_counterR
Nsequential_200_lstm_600_while_sequential_200_lstm_600_while_maximum_iterations-
)sequential_200_lstm_600_while_placeholder/
+sequential_200_lstm_600_while_placeholder_1/
+sequential_200_lstm_600_while_placeholder_2/
+sequential_200_lstm_600_while_placeholder_3N
Jsequential_200_lstm_600_while_less_sequential_200_lstm_600_strided_slice_1e
asequential_200_lstm_600_while_sequential_200_lstm_600_while_cond_4729044___redundant_placeholder0e
asequential_200_lstm_600_while_sequential_200_lstm_600_while_cond_4729044___redundant_placeholder1e
asequential_200_lstm_600_while_sequential_200_lstm_600_while_cond_4729044___redundant_placeholder2e
asequential_200_lstm_600_while_sequential_200_lstm_600_while_cond_4729044___redundant_placeholder3*
&sequential_200_lstm_600_while_identity
?
"sequential_200/lstm_600/while/LessLess)sequential_200_lstm_600_while_placeholderJsequential_200_lstm_600_while_less_sequential_200_lstm_600_strided_slice_1*
T0*
_output_shapes
: {
&sequential_200/lstm_600/while/IdentityIdentity&sequential_200/lstm_600/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_200_lstm_600_while_identity/sequential_200/lstm_600/while/Identity:output:0*(
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
0__inference_sequential_200_layer_call_fn_4730962
lstm_600_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_600_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4730937o
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
_user_specified_namelstm_600_input
?T
?
*sequential_200_lstm_600_while_body_4729045L
Hsequential_200_lstm_600_while_sequential_200_lstm_600_while_loop_counterR
Nsequential_200_lstm_600_while_sequential_200_lstm_600_while_maximum_iterations-
)sequential_200_lstm_600_while_placeholder/
+sequential_200_lstm_600_while_placeholder_1/
+sequential_200_lstm_600_while_placeholder_2/
+sequential_200_lstm_600_while_placeholder_3K
Gsequential_200_lstm_600_while_sequential_200_lstm_600_strided_slice_1_0?
?sequential_200_lstm_600_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_600_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_200_lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0:	?a
Nsequential_200_lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?\
Msequential_200_lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0:	?*
&sequential_200_lstm_600_while_identity,
(sequential_200_lstm_600_while_identity_1,
(sequential_200_lstm_600_while_identity_2,
(sequential_200_lstm_600_while_identity_3,
(sequential_200_lstm_600_while_identity_4,
(sequential_200_lstm_600_while_identity_5I
Esequential_200_lstm_600_while_sequential_200_lstm_600_strided_slice_1?
?sequential_200_lstm_600_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_600_tensorarrayunstack_tensorlistfromtensor]
Jsequential_200_lstm_600_while_lstm_cell_780_matmul_readvariableop_resource:	?_
Lsequential_200_lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource:	d?Z
Ksequential_200_lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource:	???Bsequential_200/lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp?Asequential_200/lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp?Csequential_200/lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp?
Osequential_200/lstm_600/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_200/lstm_600/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_200_lstm_600_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_600_tensorarrayunstack_tensorlistfromtensor_0)sequential_200_lstm_600_while_placeholderXsequential_200/lstm_600/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_200/lstm_600/while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOpLsequential_200_lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_200/lstm_600/while/lstm_cell_780/MatMulMatMulHsequential_200/lstm_600/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_200/lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_200/lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOpNsequential_200_lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_200/lstm_600/while/lstm_cell_780/MatMul_1MatMul+sequential_200_lstm_600_while_placeholder_2Ksequential_200/lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_200/lstm_600/while/lstm_cell_780/addAddV2<sequential_200/lstm_600/while/lstm_cell_780/MatMul:product:0>sequential_200/lstm_600/while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_200/lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOpMsequential_200_lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_200/lstm_600/while/lstm_cell_780/BiasAddBiasAdd3sequential_200/lstm_600/while/lstm_cell_780/add:z:0Jsequential_200/lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_200/lstm_600/while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_200/lstm_600/while/lstm_cell_780/splitSplitDsequential_200/lstm_600/while/lstm_cell_780/split/split_dim:output:0<sequential_200/lstm_600/while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_200/lstm_600/while/lstm_cell_780/SigmoidSigmoid:sequential_200/lstm_600/while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_200/lstm_600/while/lstm_cell_780/Sigmoid_1Sigmoid:sequential_200/lstm_600/while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_200/lstm_600/while/lstm_cell_780/mulMul9sequential_200/lstm_600/while/lstm_cell_780/Sigmoid_1:y:0+sequential_200_lstm_600_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_200/lstm_600/while/lstm_cell_780/ReluRelu:sequential_200/lstm_600/while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_200/lstm_600/while/lstm_cell_780/mul_1Mul7sequential_200/lstm_600/while/lstm_cell_780/Sigmoid:y:0>sequential_200/lstm_600/while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_200/lstm_600/while/lstm_cell_780/add_1AddV23sequential_200/lstm_600/while/lstm_cell_780/mul:z:05sequential_200/lstm_600/while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_200/lstm_600/while/lstm_cell_780/Sigmoid_2Sigmoid:sequential_200/lstm_600/while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_200/lstm_600/while/lstm_cell_780/Relu_1Relu5sequential_200/lstm_600/while/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_200/lstm_600/while/lstm_cell_780/mul_2Mul9sequential_200/lstm_600/while/lstm_cell_780/Sigmoid_2:y:0@sequential_200/lstm_600/while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_200/lstm_600/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_200_lstm_600_while_placeholder_1)sequential_200_lstm_600_while_placeholder5sequential_200/lstm_600/while/lstm_cell_780/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_200/lstm_600/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_200/lstm_600/while/addAddV2)sequential_200_lstm_600_while_placeholder,sequential_200/lstm_600/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_200/lstm_600/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_200/lstm_600/while/add_1AddV2Hsequential_200_lstm_600_while_sequential_200_lstm_600_while_loop_counter.sequential_200/lstm_600/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_200/lstm_600/while/IdentityIdentity'sequential_200/lstm_600/while/add_1:z:0#^sequential_200/lstm_600/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_600/while/Identity_1IdentityNsequential_200_lstm_600_while_sequential_200_lstm_600_while_maximum_iterations#^sequential_200/lstm_600/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_600/while/Identity_2Identity%sequential_200/lstm_600/while/add:z:0#^sequential_200/lstm_600/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_600/while/Identity_3IdentityRsequential_200/lstm_600/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_200/lstm_600/while/NoOp*
T0*
_output_shapes
: ?
(sequential_200/lstm_600/while/Identity_4Identity5sequential_200/lstm_600/while/lstm_cell_780/mul_2:z:0#^sequential_200/lstm_600/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_200/lstm_600/while/Identity_5Identity5sequential_200/lstm_600/while/lstm_cell_780/add_1:z:0#^sequential_200/lstm_600/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_200/lstm_600/while/NoOpNoOpC^sequential_200/lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOpB^sequential_200/lstm_600/while/lstm_cell_780/MatMul/ReadVariableOpD^sequential_200/lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_200_lstm_600_while_identity/sequential_200/lstm_600/while/Identity:output:0"]
(sequential_200_lstm_600_while_identity_11sequential_200/lstm_600/while/Identity_1:output:0"]
(sequential_200_lstm_600_while_identity_21sequential_200/lstm_600/while/Identity_2:output:0"]
(sequential_200_lstm_600_while_identity_31sequential_200/lstm_600/while/Identity_3:output:0"]
(sequential_200_lstm_600_while_identity_41sequential_200/lstm_600/while/Identity_4:output:0"]
(sequential_200_lstm_600_while_identity_51sequential_200/lstm_600/while/Identity_5:output:0"?
Ksequential_200_lstm_600_while_lstm_cell_780_biasadd_readvariableop_resourceMsequential_200_lstm_600_while_lstm_cell_780_biasadd_readvariableop_resource_0"?
Lsequential_200_lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resourceNsequential_200_lstm_600_while_lstm_cell_780_matmul_1_readvariableop_resource_0"?
Jsequential_200_lstm_600_while_lstm_cell_780_matmul_readvariableop_resourceLsequential_200_lstm_600_while_lstm_cell_780_matmul_readvariableop_resource_0"?
Esequential_200_lstm_600_while_sequential_200_lstm_600_strided_slice_1Gsequential_200_lstm_600_while_sequential_200_lstm_600_strided_slice_1_0"?
?sequential_200_lstm_600_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_600_tensorarrayunstack_tensorlistfromtensor?sequential_200_lstm_600_while_tensorarrayv2read_tensorlistgetitem_sequential_200_lstm_600_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_200/lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOpBsequential_200/lstm_600/while/lstm_cell_780/BiasAdd/ReadVariableOp2?
Asequential_200/lstm_600/while/lstm_cell_780/MatMul/ReadVariableOpAsequential_200/lstm_600/while/lstm_cell_780/MatMul/ReadVariableOp2?
Csequential_200/lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOpCsequential_200/lstm_600/while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_782_layer_call_fn_4734661

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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730180o
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
lstm_601_while_cond_4732351.
*lstm_601_while_lstm_601_while_loop_counter4
0lstm_601_while_lstm_601_while_maximum_iterations
lstm_601_while_placeholder 
lstm_601_while_placeholder_1 
lstm_601_while_placeholder_2 
lstm_601_while_placeholder_30
,lstm_601_while_less_lstm_601_strided_slice_1G
Clstm_601_while_lstm_601_while_cond_4732351___redundant_placeholder0G
Clstm_601_while_lstm_601_while_cond_4732351___redundant_placeholder1G
Clstm_601_while_lstm_601_while_cond_4732351___redundant_placeholder2G
Clstm_601_while_lstm_601_while_cond_4732351___redundant_placeholder3
lstm_601_while_identity
?
lstm_601/while/LessLesslstm_601_while_placeholder,lstm_601_while_less_lstm_601_strided_slice_1*
T0*
_output_shapes
: ]
lstm_601/while/IdentityIdentitylstm_601/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_601_while_identity lstm_601/while/Identity:output:0*(
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733670

inputs?
,lstm_cell_781_matmul_readvariableop_resource:	d?A
.lstm_cell_781_matmul_1_readvariableop_resource:	2?<
-lstm_cell_781_biasadd_readvariableop_resource:	?
identity??$lstm_cell_781/BiasAdd/ReadVariableOp?#lstm_cell_781/MatMul/ReadVariableOp?%lstm_cell_781/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_781/MatMul/ReadVariableOpReadVariableOp,lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_781/MatMulMatMulstrided_slice_2:output:0+lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_781/MatMul_1MatMulzeros:output:0-lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_781/addAddV2lstm_cell_781/MatMul:product:0 lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_781/BiasAddBiasAddlstm_cell_781/add:z:0,lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_781/splitSplit&lstm_cell_781/split/split_dim:output:0lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_781/SigmoidSigmoidlstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_1Sigmoidlstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_781/mulMullstm_cell_781/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_781/ReluRelulstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_1Mullstm_cell_781/Sigmoid:y:0 lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_781/add_1AddV2lstm_cell_781/mul:z:0lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_2Sigmoidlstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_781/Relu_1Relulstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_2Mullstm_cell_781/Sigmoid_2:y:0"lstm_cell_781/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_781_matmul_readvariableop_resource.lstm_cell_781_matmul_1_readvariableop_resource-lstm_cell_781_biasadd_readvariableop_resource*
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
while_body_4733586*
condR
while_cond_4733585*K
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
NoOpNoOp%^lstm_cell_781/BiasAdd/ReadVariableOp$^lstm_cell_781/MatMul/ReadVariableOp&^lstm_cell_781/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_781/BiasAdd/ReadVariableOp$lstm_cell_781/BiasAdd/ReadVariableOp2J
#lstm_cell_781/MatMul/ReadVariableOp#lstm_cell_781/MatMul/ReadVariableOp2N
%lstm_cell_781/MatMul_1/ReadVariableOp%lstm_cell_781/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_601_while_cond_4731924.
*lstm_601_while_lstm_601_while_loop_counter4
0lstm_601_while_lstm_601_while_maximum_iterations
lstm_601_while_placeholder 
lstm_601_while_placeholder_1 
lstm_601_while_placeholder_2 
lstm_601_while_placeholder_30
,lstm_601_while_less_lstm_601_strided_slice_1G
Clstm_601_while_lstm_601_while_cond_4731924___redundant_placeholder0G
Clstm_601_while_lstm_601_while_cond_4731924___redundant_placeholder1G
Clstm_601_while_lstm_601_while_cond_4731924___redundant_placeholder2G
Clstm_601_while_lstm_601_while_cond_4731924___redundant_placeholder3
lstm_601_while_identity
?
lstm_601/while/LessLesslstm_601_while_placeholder,lstm_601_while_less_lstm_601_strided_slice_1*
T0*
_output_shapes
: ]
lstm_601/while/IdentityIdentitylstm_601/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_601_while_identity lstm_601/while/Identity:output:0*(
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
*sequential_200_lstm_601_while_cond_4729183L
Hsequential_200_lstm_601_while_sequential_200_lstm_601_while_loop_counterR
Nsequential_200_lstm_601_while_sequential_200_lstm_601_while_maximum_iterations-
)sequential_200_lstm_601_while_placeholder/
+sequential_200_lstm_601_while_placeholder_1/
+sequential_200_lstm_601_while_placeholder_2/
+sequential_200_lstm_601_while_placeholder_3N
Jsequential_200_lstm_601_while_less_sequential_200_lstm_601_strided_slice_1e
asequential_200_lstm_601_while_sequential_200_lstm_601_while_cond_4729183___redundant_placeholder0e
asequential_200_lstm_601_while_sequential_200_lstm_601_while_cond_4729183___redundant_placeholder1e
asequential_200_lstm_601_while_sequential_200_lstm_601_while_cond_4729183___redundant_placeholder2e
asequential_200_lstm_601_while_sequential_200_lstm_601_while_cond_4729183___redundant_placeholder3*
&sequential_200_lstm_601_while_identity
?
"sequential_200/lstm_601/while/LessLess)sequential_200_lstm_601_while_placeholderJsequential_200_lstm_601_while_less_sequential_200_lstm_601_strided_slice_1*
T0*
_output_shapes
: {
&sequential_200/lstm_601/while/IdentityIdentity&sequential_200/lstm_601/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_200_lstm_601_while_identity/sequential_200/lstm_601/while/Identity:output:0*(
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733384
inputs_0?
,lstm_cell_781_matmul_readvariableop_resource:	d?A
.lstm_cell_781_matmul_1_readvariableop_resource:	2?<
-lstm_cell_781_biasadd_readvariableop_resource:	?
identity??$lstm_cell_781/BiasAdd/ReadVariableOp?#lstm_cell_781/MatMul/ReadVariableOp?%lstm_cell_781/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_781/MatMul/ReadVariableOpReadVariableOp,lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_781/MatMulMatMulstrided_slice_2:output:0+lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_781/MatMul_1MatMulzeros:output:0-lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_781/addAddV2lstm_cell_781/MatMul:product:0 lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_781/BiasAddBiasAddlstm_cell_781/add:z:0,lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_781/splitSplit&lstm_cell_781/split/split_dim:output:0lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_781/SigmoidSigmoidlstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_1Sigmoidlstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_781/mulMullstm_cell_781/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_781/ReluRelulstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_1Mullstm_cell_781/Sigmoid:y:0 lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_781/add_1AddV2lstm_cell_781/mul:z:0lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_2Sigmoidlstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_781/Relu_1Relulstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_2Mullstm_cell_781/Sigmoid_2:y:0"lstm_cell_781/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_781_matmul_readvariableop_resource.lstm_cell_781_matmul_1_readvariableop_resource-lstm_cell_781_biasadd_readvariableop_resource*
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
while_body_4733300*
condR
while_cond_4733299*K
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
NoOpNoOp%^lstm_cell_781/BiasAdd/ReadVariableOp$^lstm_cell_781/MatMul/ReadVariableOp&^lstm_cell_781/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_781/BiasAdd/ReadVariableOp$lstm_cell_781/BiasAdd/ReadVariableOp2J
#lstm_cell_781/MatMul/ReadVariableOp#lstm_cell_781/MatMul/ReadVariableOp2N
%lstm_cell_781/MatMul_1/ReadVariableOp%lstm_cell_781/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
%__inference_signature_wrapper_4731673
lstm_600_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_600_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4729413o
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
_user_specified_namelstm_600_input
?
?
while_cond_4731208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4731208___redundant_placeholder05
1while_while_cond_4731208___redundant_placeholder15
1while_while_cond_4731208___redundant_placeholder25
1while_while_cond_4731208___redundant_placeholder3
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
while_body_4733300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_781_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_781_matmul_readvariableop_resource:	d?G
4while_lstm_cell_781_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_781_biasadd_readvariableop_resource:	???*while/lstm_cell_781/BiasAdd/ReadVariableOp?)while/lstm_cell_781/MatMul/ReadVariableOp?+while/lstm_cell_781/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_781/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_781/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_781/addAddV2$while/lstm_cell_781/MatMul:product:0&while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_781/BiasAddBiasAddwhile/lstm_cell_781/add:z:02while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_781/splitSplit,while/lstm_cell_781/split/split_dim:output:0$while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_781/SigmoidSigmoid"while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_1Sigmoid"while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mulMul!while/lstm_cell_781/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_781/ReluRelu"while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_1Mulwhile/lstm_cell_781/Sigmoid:y:0&while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/add_1AddV2while/lstm_cell_781/mul:z:0while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_2Sigmoid"while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_781/Relu_1Reluwhile/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_2Mul!while/lstm_cell_781/Sigmoid_2:y:0(while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_781/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_781/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_781/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_781/BiasAdd/ReadVariableOp*^while/lstm_cell_781/MatMul/ReadVariableOp,^while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_781_biasadd_readvariableop_resource5while_lstm_cell_781_biasadd_readvariableop_resource_0"n
4while_lstm_cell_781_matmul_1_readvariableop_resource6while_lstm_cell_781_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_781_matmul_readvariableop_resource4while_lstm_cell_781_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_781/BiasAdd/ReadVariableOp*while/lstm_cell_781/BiasAdd/ReadVariableOp2V
)while/lstm_cell_781/MatMul/ReadVariableOp)while/lstm_cell_781/MatMul/ReadVariableOp2Z
+while/lstm_cell_781/MatMul_1/ReadVariableOp+while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4730937

inputs#
lstm_600_4730613:	?#
lstm_600_4730615:	d?
lstm_600_4730617:	?#
lstm_601_4730763:	d?#
lstm_601_4730765:	2?
lstm_601_4730767:	?"
lstm_602_4730913:2("
lstm_602_4730915:
(
lstm_602_4730917:(#
dense_200_4730931:

dense_200_4730933:
identity??!dense_200/StatefulPartitionedCall? lstm_600/StatefulPartitionedCall? lstm_601/StatefulPartitionedCall? lstm_602/StatefulPartitionedCall?
 lstm_600/StatefulPartitionedCallStatefulPartitionedCallinputslstm_600_4730613lstm_600_4730615lstm_600_4730617*
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4730612?
 lstm_601/StatefulPartitionedCallStatefulPartitionedCall)lstm_600/StatefulPartitionedCall:output:0lstm_601_4730763lstm_601_4730765lstm_601_4730767*
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4730762?
 lstm_602/StatefulPartitionedCallStatefulPartitionedCall)lstm_601/StatefulPartitionedCall:output:0lstm_602_4730913lstm_602_4730915lstm_602_4730917*
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4730912?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall)lstm_602/StatefulPartitionedCall:output:0dense_200_4730931dense_200_4730933*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4730930y
IdentityIdentity*dense_200/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_200/StatefulPartitionedCall!^lstm_600/StatefulPartitionedCall!^lstm_601/StatefulPartitionedCall!^lstm_602/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2D
 lstm_600/StatefulPartitionedCall lstm_600/StatefulPartitionedCall2D
 lstm_601/StatefulPartitionedCall lstm_601/StatefulPartitionedCall2D
 lstm_602/StatefulPartitionedCall lstm_602/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734429

inputs>
,lstm_cell_782_matmul_readvariableop_resource:2(@
.lstm_cell_782_matmul_1_readvariableop_resource:
(;
-lstm_cell_782_biasadd_readvariableop_resource:(
identity??$lstm_cell_782/BiasAdd/ReadVariableOp?#lstm_cell_782/MatMul/ReadVariableOp?%lstm_cell_782/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_782/MatMul/ReadVariableOpReadVariableOp,lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_782/MatMulMatMulstrided_slice_2:output:0+lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_782/MatMul_1MatMulzeros:output:0-lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_782/addAddV2lstm_cell_782/MatMul:product:0 lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_782/BiasAddBiasAddlstm_cell_782/add:z:0,lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_782/splitSplit&lstm_cell_782/split/split_dim:output:0lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_782/SigmoidSigmoidlstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_1Sigmoidlstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_782/mulMullstm_cell_782/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_782/ReluRelulstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_1Mullstm_cell_782/Sigmoid:y:0 lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_782/add_1AddV2lstm_cell_782/mul:z:0lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_2Sigmoidlstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_782/Relu_1Relulstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_2Mullstm_cell_782/Sigmoid_2:y:0"lstm_cell_782/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_782_matmul_readvariableop_resource.lstm_cell_782_matmul_1_readvariableop_resource-lstm_cell_782_biasadd_readvariableop_resource*
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
while_body_4734345*
condR
while_cond_4734344*K
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
NoOpNoOp%^lstm_cell_782/BiasAdd/ReadVariableOp$^lstm_cell_782/MatMul/ReadVariableOp&^lstm_cell_782/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_782/BiasAdd/ReadVariableOp$lstm_cell_782/BiasAdd/ReadVariableOp2J
#lstm_cell_782/MatMul/ReadVariableOp#lstm_cell_782/MatMul/ReadVariableOp2N
%lstm_cell_782/MatMul_1/ReadVariableOp%lstm_cell_782/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4729493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4729493___redundant_placeholder05
1while_while_cond_4729493___redundant_placeholder15
1while_while_cond_4729493___redundant_placeholder25
1while_while_cond_4729493___redundant_placeholder3
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
*__inference_lstm_601_layer_call_fn_4733208
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4729913|
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
?J
?
E__inference_lstm_601_layer_call_and_return_conditional_losses_4730762

inputs?
,lstm_cell_781_matmul_readvariableop_resource:	d?A
.lstm_cell_781_matmul_1_readvariableop_resource:	2?<
-lstm_cell_781_biasadd_readvariableop_resource:	?
identity??$lstm_cell_781/BiasAdd/ReadVariableOp?#lstm_cell_781/MatMul/ReadVariableOp?%lstm_cell_781/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_781/MatMul/ReadVariableOpReadVariableOp,lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_781/MatMulMatMulstrided_slice_2:output:0+lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_781/MatMul_1MatMulzeros:output:0-lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_781/addAddV2lstm_cell_781/MatMul:product:0 lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_781/BiasAddBiasAddlstm_cell_781/add:z:0,lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_781/splitSplit&lstm_cell_781/split/split_dim:output:0lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_781/SigmoidSigmoidlstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_1Sigmoidlstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_781/mulMullstm_cell_781/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_781/ReluRelulstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_1Mullstm_cell_781/Sigmoid:y:0 lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_781/add_1AddV2lstm_cell_781/mul:z:0lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_2Sigmoidlstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_781/Relu_1Relulstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_2Mullstm_cell_781/Sigmoid_2:y:0"lstm_cell_781/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_781_matmul_readvariableop_resource.lstm_cell_781_matmul_1_readvariableop_resource-lstm_cell_781_biasadd_readvariableop_resource*
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
while_body_4730678*
condR
while_cond_4730677*K
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
NoOpNoOp%^lstm_cell_781/BiasAdd/ReadVariableOp$^lstm_cell_781/MatMul/ReadVariableOp&^lstm_cell_781/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_781/BiasAdd/ReadVariableOp$lstm_cell_781/BiasAdd/ReadVariableOp2J
#lstm_cell_781/MatMul/ReadVariableOp#lstm_cell_781/MatMul/ReadVariableOp2N
%lstm_cell_781/MatMul_1/ReadVariableOp%lstm_cell_781/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_601_layer_call_and_return_conditional_losses_4731293

inputs?
,lstm_cell_781_matmul_readvariableop_resource:	d?A
.lstm_cell_781_matmul_1_readvariableop_resource:	2?<
-lstm_cell_781_biasadd_readvariableop_resource:	?
identity??$lstm_cell_781/BiasAdd/ReadVariableOp?#lstm_cell_781/MatMul/ReadVariableOp?%lstm_cell_781/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_781/MatMul/ReadVariableOpReadVariableOp,lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_781/MatMulMatMulstrided_slice_2:output:0+lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_781/MatMul_1MatMulzeros:output:0-lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_781/addAddV2lstm_cell_781/MatMul:product:0 lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_781/BiasAddBiasAddlstm_cell_781/add:z:0,lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_781/splitSplit&lstm_cell_781/split/split_dim:output:0lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_781/SigmoidSigmoidlstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_1Sigmoidlstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_781/mulMullstm_cell_781/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_781/ReluRelulstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_1Mullstm_cell_781/Sigmoid:y:0 lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_781/add_1AddV2lstm_cell_781/mul:z:0lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_781/Sigmoid_2Sigmoidlstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_781/Relu_1Relulstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_781/mul_2Mullstm_cell_781/Sigmoid_2:y:0"lstm_cell_781/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_781_matmul_readvariableop_resource.lstm_cell_781_matmul_1_readvariableop_resource-lstm_cell_781_biasadd_readvariableop_resource*
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
while_body_4731209*
condR
while_cond_4731208*K
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
NoOpNoOp%^lstm_cell_781/BiasAdd/ReadVariableOp$^lstm_cell_781/MatMul/ReadVariableOp&^lstm_cell_781/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_781/BiasAdd/ReadVariableOp$lstm_cell_781/BiasAdd/ReadVariableOp2J
#lstm_cell_781/MatMul/ReadVariableOp#lstm_cell_781/MatMul/ReadVariableOp2N
%lstm_cell_781/MatMul_1/ReadVariableOp%lstm_cell_781/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_780_layer_call_fn_4734482

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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729626o
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4732581

inputsH
5lstm_600_lstm_cell_780_matmul_readvariableop_resource:	?J
7lstm_600_lstm_cell_780_matmul_1_readvariableop_resource:	d?E
6lstm_600_lstm_cell_780_biasadd_readvariableop_resource:	?H
5lstm_601_lstm_cell_781_matmul_readvariableop_resource:	d?J
7lstm_601_lstm_cell_781_matmul_1_readvariableop_resource:	2?E
6lstm_601_lstm_cell_781_biasadd_readvariableop_resource:	?G
5lstm_602_lstm_cell_782_matmul_readvariableop_resource:2(I
7lstm_602_lstm_cell_782_matmul_1_readvariableop_resource:
(D
6lstm_602_lstm_cell_782_biasadd_readvariableop_resource:(:
(dense_200_matmul_readvariableop_resource:
7
)dense_200_biasadd_readvariableop_resource:
identity?? dense_200/BiasAdd/ReadVariableOp?dense_200/MatMul/ReadVariableOp?-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp?,lstm_600/lstm_cell_780/MatMul/ReadVariableOp?.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp?lstm_600/while?-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp?,lstm_601/lstm_cell_781/MatMul/ReadVariableOp?.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp?lstm_601/while?-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp?,lstm_602/lstm_cell_782/MatMul/ReadVariableOp?.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp?lstm_602/whileD
lstm_600/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_600/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_600/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_600/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_sliceStridedSlicelstm_600/Shape:output:0%lstm_600/strided_slice/stack:output:0'lstm_600/strided_slice/stack_1:output:0'lstm_600/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_600/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_600/zeros/packedPacklstm_600/strided_slice:output:0 lstm_600/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_600/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_600/zerosFilllstm_600/zeros/packed:output:0lstm_600/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_600/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_600/zeros_1/packedPacklstm_600/strided_slice:output:0"lstm_600/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_600/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_600/zeros_1Fill lstm_600/zeros_1/packed:output:0lstm_600/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_600/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_600/transpose	Transposeinputs lstm_600/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_600/Shape_1Shapelstm_600/transpose:y:0*
T0*
_output_shapes
:h
lstm_600/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_600/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_600/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_slice_1StridedSlicelstm_600/Shape_1:output:0'lstm_600/strided_slice_1/stack:output:0)lstm_600/strided_slice_1/stack_1:output:0)lstm_600/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_600/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_600/TensorArrayV2TensorListReserve-lstm_600/TensorArrayV2/element_shape:output:0!lstm_600/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_600/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_600/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_600/transpose:y:0Glstm_600/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_600/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_600/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_600/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_slice_2StridedSlicelstm_600/transpose:y:0'lstm_600/strided_slice_2/stack:output:0)lstm_600/strided_slice_2/stack_1:output:0)lstm_600/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_600/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp5lstm_600_lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_600/lstm_cell_780/MatMulMatMul!lstm_600/strided_slice_2:output:04lstm_600/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp7lstm_600_lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_600/lstm_cell_780/MatMul_1MatMullstm_600/zeros:output:06lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_600/lstm_cell_780/addAddV2'lstm_600/lstm_cell_780/MatMul:product:0)lstm_600/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp6lstm_600_lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_600/lstm_cell_780/BiasAddBiasAddlstm_600/lstm_cell_780/add:z:05lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_600/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_600/lstm_cell_780/splitSplit/lstm_600/lstm_cell_780/split/split_dim:output:0'lstm_600/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_600/lstm_cell_780/SigmoidSigmoid%lstm_600/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_600/lstm_cell_780/Sigmoid_1Sigmoid%lstm_600/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/mulMul$lstm_600/lstm_cell_780/Sigmoid_1:y:0lstm_600/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_600/lstm_cell_780/ReluRelu%lstm_600/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/mul_1Mul"lstm_600/lstm_cell_780/Sigmoid:y:0)lstm_600/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/add_1AddV2lstm_600/lstm_cell_780/mul:z:0 lstm_600/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_600/lstm_cell_780/Sigmoid_2Sigmoid%lstm_600/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_600/lstm_cell_780/Relu_1Relu lstm_600/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_600/lstm_cell_780/mul_2Mul$lstm_600/lstm_cell_780/Sigmoid_2:y:0+lstm_600/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_600/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_600/TensorArrayV2_1TensorListReserve/lstm_600/TensorArrayV2_1/element_shape:output:0!lstm_600/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_600/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_600/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_600/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_600/whileWhile$lstm_600/while/loop_counter:output:0*lstm_600/while/maximum_iterations:output:0lstm_600/time:output:0!lstm_600/TensorArrayV2_1:handle:0lstm_600/zeros:output:0lstm_600/zeros_1:output:0!lstm_600/strided_slice_1:output:0@lstm_600/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_600_lstm_cell_780_matmul_readvariableop_resource7lstm_600_lstm_cell_780_matmul_1_readvariableop_resource6lstm_600_lstm_cell_780_biasadd_readvariableop_resource*
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
lstm_600_while_body_4732213*'
condR
lstm_600_while_cond_4732212*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_600/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_600/TensorArrayV2Stack/TensorListStackTensorListStacklstm_600/while:output:3Blstm_600/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_600/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_600/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_600/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_600/strided_slice_3StridedSlice4lstm_600/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_600/strided_slice_3/stack:output:0)lstm_600/strided_slice_3/stack_1:output:0)lstm_600/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_600/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_600/transpose_1	Transpose4lstm_600/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_600/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_600/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_601/ShapeShapelstm_600/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_601/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_601/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_601/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_sliceStridedSlicelstm_601/Shape:output:0%lstm_601/strided_slice/stack:output:0'lstm_601/strided_slice/stack_1:output:0'lstm_601/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_601/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_601/zeros/packedPacklstm_601/strided_slice:output:0 lstm_601/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_601/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_601/zerosFilllstm_601/zeros/packed:output:0lstm_601/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_601/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_601/zeros_1/packedPacklstm_601/strided_slice:output:0"lstm_601/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_601/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_601/zeros_1Fill lstm_601/zeros_1/packed:output:0lstm_601/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_601/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_601/transpose	Transposelstm_600/transpose_1:y:0 lstm_601/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_601/Shape_1Shapelstm_601/transpose:y:0*
T0*
_output_shapes
:h
lstm_601/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_601/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_601/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_slice_1StridedSlicelstm_601/Shape_1:output:0'lstm_601/strided_slice_1/stack:output:0)lstm_601/strided_slice_1/stack_1:output:0)lstm_601/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_601/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_601/TensorArrayV2TensorListReserve-lstm_601/TensorArrayV2/element_shape:output:0!lstm_601/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_601/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_601/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_601/transpose:y:0Glstm_601/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_601/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_601/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_601/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_slice_2StridedSlicelstm_601/transpose:y:0'lstm_601/strided_slice_2/stack:output:0)lstm_601/strided_slice_2/stack_1:output:0)lstm_601/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_601/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp5lstm_601_lstm_cell_781_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_601/lstm_cell_781/MatMulMatMul!lstm_601/strided_slice_2:output:04lstm_601/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp7lstm_601_lstm_cell_781_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_601/lstm_cell_781/MatMul_1MatMullstm_601/zeros:output:06lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_601/lstm_cell_781/addAddV2'lstm_601/lstm_cell_781/MatMul:product:0)lstm_601/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp6lstm_601_lstm_cell_781_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_601/lstm_cell_781/BiasAddBiasAddlstm_601/lstm_cell_781/add:z:05lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_601/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_601/lstm_cell_781/splitSplit/lstm_601/lstm_cell_781/split/split_dim:output:0'lstm_601/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_601/lstm_cell_781/SigmoidSigmoid%lstm_601/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_601/lstm_cell_781/Sigmoid_1Sigmoid%lstm_601/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/mulMul$lstm_601/lstm_cell_781/Sigmoid_1:y:0lstm_601/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_601/lstm_cell_781/ReluRelu%lstm_601/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/mul_1Mul"lstm_601/lstm_cell_781/Sigmoid:y:0)lstm_601/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/add_1AddV2lstm_601/lstm_cell_781/mul:z:0 lstm_601/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_601/lstm_cell_781/Sigmoid_2Sigmoid%lstm_601/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_601/lstm_cell_781/Relu_1Relu lstm_601/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_601/lstm_cell_781/mul_2Mul$lstm_601/lstm_cell_781/Sigmoid_2:y:0+lstm_601/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_601/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_601/TensorArrayV2_1TensorListReserve/lstm_601/TensorArrayV2_1/element_shape:output:0!lstm_601/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_601/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_601/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_601/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_601/whileWhile$lstm_601/while/loop_counter:output:0*lstm_601/while/maximum_iterations:output:0lstm_601/time:output:0!lstm_601/TensorArrayV2_1:handle:0lstm_601/zeros:output:0lstm_601/zeros_1:output:0!lstm_601/strided_slice_1:output:0@lstm_601/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_601_lstm_cell_781_matmul_readvariableop_resource7lstm_601_lstm_cell_781_matmul_1_readvariableop_resource6lstm_601_lstm_cell_781_biasadd_readvariableop_resource*
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
lstm_601_while_body_4732352*'
condR
lstm_601_while_cond_4732351*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_601/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_601/TensorArrayV2Stack/TensorListStackTensorListStacklstm_601/while:output:3Blstm_601/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_601/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_601/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_601/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_601/strided_slice_3StridedSlice4lstm_601/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_601/strided_slice_3/stack:output:0)lstm_601/strided_slice_3/stack_1:output:0)lstm_601/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_601/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_601/transpose_1	Transpose4lstm_601/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_601/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_601/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_602/ShapeShapelstm_601/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_602/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_602/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_602/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_sliceStridedSlicelstm_602/Shape:output:0%lstm_602/strided_slice/stack:output:0'lstm_602/strided_slice/stack_1:output:0'lstm_602/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_602/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_602/zeros/packedPacklstm_602/strided_slice:output:0 lstm_602/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_602/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_602/zerosFilllstm_602/zeros/packed:output:0lstm_602/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_602/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_602/zeros_1/packedPacklstm_602/strided_slice:output:0"lstm_602/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_602/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_602/zeros_1Fill lstm_602/zeros_1/packed:output:0lstm_602/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_602/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_602/transpose	Transposelstm_601/transpose_1:y:0 lstm_602/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_602/Shape_1Shapelstm_602/transpose:y:0*
T0*
_output_shapes
:h
lstm_602/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_602/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_602/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_slice_1StridedSlicelstm_602/Shape_1:output:0'lstm_602/strided_slice_1/stack:output:0)lstm_602/strided_slice_1/stack_1:output:0)lstm_602/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_602/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_602/TensorArrayV2TensorListReserve-lstm_602/TensorArrayV2/element_shape:output:0!lstm_602/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_602/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_602/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_602/transpose:y:0Glstm_602/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_602/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_602/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_602/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_slice_2StridedSlicelstm_602/transpose:y:0'lstm_602/strided_slice_2/stack:output:0)lstm_602/strided_slice_2/stack_1:output:0)lstm_602/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_602/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp5lstm_602_lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_602/lstm_cell_782/MatMulMatMul!lstm_602/strided_slice_2:output:04lstm_602/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp7lstm_602_lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_602/lstm_cell_782/MatMul_1MatMullstm_602/zeros:output:06lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_602/lstm_cell_782/addAddV2'lstm_602/lstm_cell_782/MatMul:product:0)lstm_602/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp6lstm_602_lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_602/lstm_cell_782/BiasAddBiasAddlstm_602/lstm_cell_782/add:z:05lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_602/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_602/lstm_cell_782/splitSplit/lstm_602/lstm_cell_782/split/split_dim:output:0'lstm_602/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_602/lstm_cell_782/SigmoidSigmoid%lstm_602/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_602/lstm_cell_782/Sigmoid_1Sigmoid%lstm_602/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/mulMul$lstm_602/lstm_cell_782/Sigmoid_1:y:0lstm_602/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_602/lstm_cell_782/ReluRelu%lstm_602/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/mul_1Mul"lstm_602/lstm_cell_782/Sigmoid:y:0)lstm_602/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/add_1AddV2lstm_602/lstm_cell_782/mul:z:0 lstm_602/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_602/lstm_cell_782/Sigmoid_2Sigmoid%lstm_602/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_602/lstm_cell_782/Relu_1Relu lstm_602/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_602/lstm_cell_782/mul_2Mul$lstm_602/lstm_cell_782/Sigmoid_2:y:0+lstm_602/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_602/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_602/TensorArrayV2_1TensorListReserve/lstm_602/TensorArrayV2_1/element_shape:output:0!lstm_602/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_602/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_602/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_602/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_602/whileWhile$lstm_602/while/loop_counter:output:0*lstm_602/while/maximum_iterations:output:0lstm_602/time:output:0!lstm_602/TensorArrayV2_1:handle:0lstm_602/zeros:output:0lstm_602/zeros_1:output:0!lstm_602/strided_slice_1:output:0@lstm_602/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_602_lstm_cell_782_matmul_readvariableop_resource7lstm_602_lstm_cell_782_matmul_1_readvariableop_resource6lstm_602_lstm_cell_782_biasadd_readvariableop_resource*
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
lstm_602_while_body_4732491*'
condR
lstm_602_while_cond_4732490*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_602/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_602/TensorArrayV2Stack/TensorListStackTensorListStacklstm_602/while:output:3Blstm_602/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_602/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_602/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_602/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_602/strided_slice_3StridedSlice4lstm_602/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_602/strided_slice_3/stack:output:0)lstm_602/strided_slice_3/stack_1:output:0)lstm_602/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_602/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_602/transpose_1	Transpose4lstm_602/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_602/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_602/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_200/MatMul/ReadVariableOpReadVariableOp(dense_200_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_200/MatMulMatMul!lstm_602/strided_slice_3:output:0'dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_200/BiasAdd/ReadVariableOpReadVariableOp)dense_200_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_200/BiasAddBiasAdddense_200/MatMul:product:0(dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_200/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_200/BiasAdd/ReadVariableOp ^dense_200/MatMul/ReadVariableOp.^lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp-^lstm_600/lstm_cell_780/MatMul/ReadVariableOp/^lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp^lstm_600/while.^lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp-^lstm_601/lstm_cell_781/MatMul/ReadVariableOp/^lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp^lstm_601/while.^lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp-^lstm_602/lstm_cell_782/MatMul/ReadVariableOp/^lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp^lstm_602/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_200/BiasAdd/ReadVariableOp dense_200/BiasAdd/ReadVariableOp2B
dense_200/MatMul/ReadVariableOpdense_200/MatMul/ReadVariableOp2^
-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp-lstm_600/lstm_cell_780/BiasAdd/ReadVariableOp2\
,lstm_600/lstm_cell_780/MatMul/ReadVariableOp,lstm_600/lstm_cell_780/MatMul/ReadVariableOp2`
.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp.lstm_600/lstm_cell_780/MatMul_1/ReadVariableOp2 
lstm_600/whilelstm_600/while2^
-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp-lstm_601/lstm_cell_781/BiasAdd/ReadVariableOp2\
,lstm_601/lstm_cell_781/MatMul/ReadVariableOp,lstm_601/lstm_cell_781/MatMul/ReadVariableOp2`
.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp.lstm_601/lstm_cell_781/MatMul_1/ReadVariableOp2 
lstm_601/whilelstm_601/while2^
-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp-lstm_602/lstm_cell_782/BiasAdd/ReadVariableOp2\
,lstm_602/lstm_cell_782/MatMul/ReadVariableOp,lstm_602/lstm_cell_782/MatMul/ReadVariableOp2`
.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp.lstm_602/lstm_cell_782/MatMul_1/ReadVariableOp2 
lstm_602/whilelstm_602/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4733299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4733299___redundant_placeholder05
1while_while_cond_4733299___redundant_placeholder15
1while_while_cond_4733299___redundant_placeholder25
1while_while_cond_4733299___redundant_placeholder3
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
while_cond_4733585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4733585___redundant_placeholder05
1while_while_cond_4733585___redundant_placeholder15
1while_while_cond_4733585___redundant_placeholder25
1while_while_cond_4733585___redundant_placeholder3
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
while_body_4731044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_782_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_782_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_782_matmul_readvariableop_resource:2(F
4while_lstm_cell_782_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_782_biasadd_readvariableop_resource:(??*while/lstm_cell_782/BiasAdd/ReadVariableOp?)while/lstm_cell_782/MatMul/ReadVariableOp?+while/lstm_cell_782/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_782/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_782/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_782/addAddV2$while/lstm_cell_782/MatMul:product:0&while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_782/BiasAddBiasAddwhile/lstm_cell_782/add:z:02while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_782/splitSplit,while/lstm_cell_782/split/split_dim:output:0$while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_782/SigmoidSigmoid"while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_1Sigmoid"while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mulMul!while/lstm_cell_782/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_782/ReluRelu"while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_1Mulwhile/lstm_cell_782/Sigmoid:y:0&while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/add_1AddV2while/lstm_cell_782/mul:z:0while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_2Sigmoid"while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_782/Relu_1Reluwhile/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_2Mul!while/lstm_cell_782/Sigmoid_2:y:0(while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_782/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_782/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_782/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_782/BiasAdd/ReadVariableOp*^while/lstm_cell_782/MatMul/ReadVariableOp,^while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_782_biasadd_readvariableop_resource5while_lstm_cell_782_biasadd_readvariableop_resource_0"n
4while_lstm_cell_782_matmul_1_readvariableop_resource6while_lstm_cell_782_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_782_matmul_readvariableop_resource4while_lstm_cell_782_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_782/BiasAdd/ReadVariableOp*while/lstm_cell_782/BiasAdd/ReadVariableOp2V
)while/lstm_cell_782/MatMul/ReadVariableOp)while/lstm_cell_782/MatMul/ReadVariableOp2Z
+while/lstm_cell_782/MatMul_1/ReadVariableOp+while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4731374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_780_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_780_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_780_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_780_matmul_readvariableop_resource:	?G
4while_lstm_cell_780_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_780_biasadd_readvariableop_resource:	???*while/lstm_cell_780/BiasAdd/ReadVariableOp?)while/lstm_cell_780/MatMul/ReadVariableOp?+while/lstm_cell_780/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_780/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_780_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_780/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_780_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_780/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_780/addAddV2$while/lstm_cell_780/MatMul:product:0&while/lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_780_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_780/BiasAddBiasAddwhile/lstm_cell_780/add:z:02while/lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_780/splitSplit,while/lstm_cell_780/split/split_dim:output:0$while/lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_780/SigmoidSigmoid"while/lstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_1Sigmoid"while/lstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mulMul!while/lstm_cell_780/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_780/ReluRelu"while/lstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_1Mulwhile/lstm_cell_780/Sigmoid:y:0&while/lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/add_1AddV2while/lstm_cell_780/mul:z:0while/lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_780/Sigmoid_2Sigmoid"while/lstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_780/Relu_1Reluwhile/lstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_780/mul_2Mul!while/lstm_cell_780/Sigmoid_2:y:0(while/lstm_cell_780/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_780/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_780/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_780/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_780/BiasAdd/ReadVariableOp*^while/lstm_cell_780/MatMul/ReadVariableOp,^while/lstm_cell_780/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_780_biasadd_readvariableop_resource5while_lstm_cell_780_biasadd_readvariableop_resource_0"n
4while_lstm_cell_780_matmul_1_readvariableop_resource6while_lstm_cell_780_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_780_matmul_readvariableop_resource4while_lstm_cell_780_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_780/BiasAdd/ReadVariableOp*while/lstm_cell_780/BiasAdd/ReadVariableOp2V
)while/lstm_cell_780/MatMul/ReadVariableOp)while/lstm_cell_780/MatMul/ReadVariableOp2Z
+while/lstm_cell_780/MatMul_1/ReadVariableOp+while/lstm_cell_780/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4731458

inputs?
,lstm_cell_780_matmul_readvariableop_resource:	?A
.lstm_cell_780_matmul_1_readvariableop_resource:	d?<
-lstm_cell_780_biasadd_readvariableop_resource:	?
identity??$lstm_cell_780/BiasAdd/ReadVariableOp?#lstm_cell_780/MatMul/ReadVariableOp?%lstm_cell_780/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_780/MatMul/ReadVariableOpReadVariableOp,lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_780/MatMulMatMulstrided_slice_2:output:0+lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_780/MatMul_1MatMulzeros:output:0-lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_780/addAddV2lstm_cell_780/MatMul:product:0 lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_780/BiasAddBiasAddlstm_cell_780/add:z:0,lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_780/splitSplit&lstm_cell_780/split/split_dim:output:0lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_780/SigmoidSigmoidlstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_1Sigmoidlstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_780/mulMullstm_cell_780/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_780/ReluRelulstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_1Mullstm_cell_780/Sigmoid:y:0 lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_780/add_1AddV2lstm_cell_780/mul:z:0lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_2Sigmoidlstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_780/Relu_1Relulstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_2Mullstm_cell_780/Sigmoid_2:y:0"lstm_cell_780/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_780_matmul_readvariableop_resource.lstm_cell_780_matmul_1_readvariableop_resource-lstm_cell_780_biasadd_readvariableop_resource*
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
while_body_4731374*
condR
while_cond_4731373*K
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
NoOpNoOp%^lstm_cell_780/BiasAdd/ReadVariableOp$^lstm_cell_780/MatMul/ReadVariableOp&^lstm_cell_780/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_780/BiasAdd/ReadVariableOp$lstm_cell_780/BiasAdd/ReadVariableOp2J
#lstm_cell_780/MatMul/ReadVariableOp#lstm_cell_780/MatMul/ReadVariableOp2N
%lstm_cell_780/MatMul_1/ReadVariableOp%lstm_cell_780/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4733916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_782_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_782_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_782_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_782_matmul_readvariableop_resource:2(F
4while_lstm_cell_782_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_782_biasadd_readvariableop_resource:(??*while/lstm_cell_782/BiasAdd/ReadVariableOp?)while/lstm_cell_782/MatMul/ReadVariableOp?+while/lstm_cell_782/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_782/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_782_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_782/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_782_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_782/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_782/addAddV2$while/lstm_cell_782/MatMul:product:0&while/lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_782_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_782/BiasAddBiasAddwhile/lstm_cell_782/add:z:02while/lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_782/splitSplit,while/lstm_cell_782/split/split_dim:output:0$while/lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_782/SigmoidSigmoid"while/lstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_1Sigmoid"while/lstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mulMul!while/lstm_cell_782/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_782/ReluRelu"while/lstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_1Mulwhile/lstm_cell_782/Sigmoid:y:0&while/lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/add_1AddV2while/lstm_cell_782/mul:z:0while/lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_782/Sigmoid_2Sigmoid"while/lstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_782/Relu_1Reluwhile/lstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_782/mul_2Mul!while/lstm_cell_782/Sigmoid_2:y:0(while/lstm_cell_782/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_782/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_782/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_782/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_782/BiasAdd/ReadVariableOp*^while/lstm_cell_782/MatMul/ReadVariableOp,^while/lstm_cell_782/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_782_biasadd_readvariableop_resource5while_lstm_cell_782_biasadd_readvariableop_resource_0"n
4while_lstm_cell_782_matmul_1_readvariableop_resource6while_lstm_cell_782_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_782_matmul_readvariableop_resource4while_lstm_cell_782_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_782/BiasAdd/ReadVariableOp*while/lstm_cell_782/BiasAdd/ReadVariableOp2V
)while/lstm_cell_782/MatMul/ReadVariableOp)while/lstm_cell_782/MatMul/ReadVariableOp2Z
+while/lstm_cell_782/MatMul_1/ReadVariableOp+while/lstm_cell_782/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_782_layer_call_fn_4734678

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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4730326o
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
?K
?
E__inference_lstm_600_layer_call_and_return_conditional_losses_4732768
inputs_0?
,lstm_cell_780_matmul_readvariableop_resource:	?A
.lstm_cell_780_matmul_1_readvariableop_resource:	d?<
-lstm_cell_780_biasadd_readvariableop_resource:	?
identity??$lstm_cell_780/BiasAdd/ReadVariableOp?#lstm_cell_780/MatMul/ReadVariableOp?%lstm_cell_780/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_780/MatMul/ReadVariableOpReadVariableOp,lstm_cell_780_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_780/MatMulMatMulstrided_slice_2:output:0+lstm_cell_780/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_780/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_780_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_780/MatMul_1MatMulzeros:output:0-lstm_cell_780/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_780/addAddV2lstm_cell_780/MatMul:product:0 lstm_cell_780/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_780/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_780_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_780/BiasAddBiasAddlstm_cell_780/add:z:0,lstm_cell_780/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_780/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_780/splitSplit&lstm_cell_780/split/split_dim:output:0lstm_cell_780/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_780/SigmoidSigmoidlstm_cell_780/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_1Sigmoidlstm_cell_780/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_780/mulMullstm_cell_780/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_780/ReluRelulstm_cell_780/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_1Mullstm_cell_780/Sigmoid:y:0 lstm_cell_780/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_780/add_1AddV2lstm_cell_780/mul:z:0lstm_cell_780/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_780/Sigmoid_2Sigmoidlstm_cell_780/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_780/Relu_1Relulstm_cell_780/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_780/mul_2Mullstm_cell_780/Sigmoid_2:y:0"lstm_cell_780/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_780_matmul_readvariableop_resource.lstm_cell_780_matmul_1_readvariableop_resource-lstm_cell_780_biasadd_readvariableop_resource*
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
while_body_4732684*
condR
while_cond_4732683*K
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
NoOpNoOp%^lstm_cell_780/BiasAdd/ReadVariableOp$^lstm_cell_780/MatMul/ReadVariableOp&^lstm_cell_780/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_780/BiasAdd/ReadVariableOp$lstm_cell_780/BiasAdd/ReadVariableOp2J
#lstm_cell_780/MatMul/ReadVariableOp#lstm_cell_780/MatMul/ReadVariableOp2N
%lstm_cell_780/MatMul_1/ReadVariableOp%lstm_cell_780/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4730677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4730677___redundant_placeholder05
1while_while_cond_4730677___redundant_placeholder15
1while_while_cond_4730677___redundant_placeholder25
1while_while_cond_4730677___redundant_placeholder3
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
while_body_4730678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_781_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_781_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_781_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_781_matmul_readvariableop_resource:	d?G
4while_lstm_cell_781_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_781_biasadd_readvariableop_resource:	???*while/lstm_cell_781/BiasAdd/ReadVariableOp?)while/lstm_cell_781/MatMul/ReadVariableOp?+while/lstm_cell_781/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_781/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_781_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_781/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_781/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_781/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_781_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_781/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_781/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_781/addAddV2$while/lstm_cell_781/MatMul:product:0&while/lstm_cell_781/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_781/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_781_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_781/BiasAddBiasAddwhile/lstm_cell_781/add:z:02while/lstm_cell_781/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_781/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_781/splitSplit,while/lstm_cell_781/split/split_dim:output:0$while/lstm_cell_781/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_781/SigmoidSigmoid"while/lstm_cell_781/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_1Sigmoid"while/lstm_cell_781/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mulMul!while/lstm_cell_781/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_781/ReluRelu"while/lstm_cell_781/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_1Mulwhile/lstm_cell_781/Sigmoid:y:0&while/lstm_cell_781/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/add_1AddV2while/lstm_cell_781/mul:z:0while/lstm_cell_781/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_781/Sigmoid_2Sigmoid"while/lstm_cell_781/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_781/Relu_1Reluwhile/lstm_cell_781/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_781/mul_2Mul!while/lstm_cell_781/Sigmoid_2:y:0(while/lstm_cell_781/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_781/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_781/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_781/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_781/BiasAdd/ReadVariableOp*^while/lstm_cell_781/MatMul/ReadVariableOp,^while/lstm_cell_781/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_781_biasadd_readvariableop_resource5while_lstm_cell_781_biasadd_readvariableop_resource_0"n
4while_lstm_cell_781_matmul_1_readvariableop_resource6while_lstm_cell_781_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_781_matmul_readvariableop_resource4while_lstm_cell_781_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_781/BiasAdd/ReadVariableOp*while/lstm_cell_781/BiasAdd/ReadVariableOp2V
)while/lstm_cell_781/MatMul/ReadVariableOp)while/lstm_cell_781/MatMul/ReadVariableOp2Z
+while/lstm_cell_781/MatMul_1/ReadVariableOp+while/lstm_cell_781/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4729685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_780_4729709_0:	?0
while_lstm_cell_780_4729711_0:	d?,
while_lstm_cell_780_4729713_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_780_4729709:	?.
while_lstm_cell_780_4729711:	d?*
while_lstm_cell_780_4729713:	???+while/lstm_cell_780/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_780/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_780_4729709_0while_lstm_cell_780_4729711_0while_lstm_cell_780_4729713_0*
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4729626?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_780/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_780/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_780/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_780/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_780_4729709while_lstm_cell_780_4729709_0"<
while_lstm_cell_780_4729711while_lstm_cell_780_4729711_0"<
while_lstm_cell_780_4729713while_lstm_cell_780_4729713_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_780/StatefulPartitionedCall+while/lstm_cell_780/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4731043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4731043___redundant_placeholder05
1while_while_cond_4731043___redundant_placeholder15
1while_while_cond_4731043___redundant_placeholder25
1while_while_cond_4731043___redundant_placeholder3
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
while_cond_4730193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4730193___redundant_placeholder05
1while_while_cond_4730193___redundant_placeholder15
1while_while_cond_4730193___redundant_placeholder25
1while_while_cond_4730193___redundant_placeholder3
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
lstm_600_while_cond_4731785.
*lstm_600_while_lstm_600_while_loop_counter4
0lstm_600_while_lstm_600_while_maximum_iterations
lstm_600_while_placeholder 
lstm_600_while_placeholder_1 
lstm_600_while_placeholder_2 
lstm_600_while_placeholder_30
,lstm_600_while_less_lstm_600_strided_slice_1G
Clstm_600_while_lstm_600_while_cond_4731785___redundant_placeholder0G
Clstm_600_while_lstm_600_while_cond_4731785___redundant_placeholder1G
Clstm_600_while_lstm_600_while_cond_4731785___redundant_placeholder2G
Clstm_600_while_lstm_600_while_cond_4731785___redundant_placeholder3
lstm_600_while_identity
?
lstm_600/while/LessLesslstm_600_while_placeholder,lstm_600_while_less_lstm_600_strided_slice_1*
T0*
_output_shapes
: ]
lstm_600/while/IdentityIdentitylstm_600/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_600_while_identity lstm_600/while/Identity:output:0*(
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734000
inputs_0>
,lstm_cell_782_matmul_readvariableop_resource:2(@
.lstm_cell_782_matmul_1_readvariableop_resource:
(;
-lstm_cell_782_biasadd_readvariableop_resource:(
identity??$lstm_cell_782/BiasAdd/ReadVariableOp?#lstm_cell_782/MatMul/ReadVariableOp?%lstm_cell_782/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_782/MatMul/ReadVariableOpReadVariableOp,lstm_cell_782_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_782/MatMulMatMulstrided_slice_2:output:0+lstm_cell_782/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_782/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_782_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_782/MatMul_1MatMulzeros:output:0-lstm_cell_782/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_782/addAddV2lstm_cell_782/MatMul:product:0 lstm_cell_782/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_782/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_782_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_782/BiasAddBiasAddlstm_cell_782/add:z:0,lstm_cell_782/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_782/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_782/splitSplit&lstm_cell_782/split/split_dim:output:0lstm_cell_782/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_782/SigmoidSigmoidlstm_cell_782/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_1Sigmoidlstm_cell_782/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_782/mulMullstm_cell_782/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_782/ReluRelulstm_cell_782/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_1Mullstm_cell_782/Sigmoid:y:0 lstm_cell_782/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_782/add_1AddV2lstm_cell_782/mul:z:0lstm_cell_782/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_782/Sigmoid_2Sigmoidlstm_cell_782/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_782/Relu_1Relulstm_cell_782/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_782/mul_2Mullstm_cell_782/Sigmoid_2:y:0"lstm_cell_782/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_782_matmul_readvariableop_resource.lstm_cell_782_matmul_1_readvariableop_resource-lstm_cell_782_biasadd_readvariableop_resource*
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
while_body_4733916*
condR
while_cond_4733915*K
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
NoOpNoOp%^lstm_cell_782/BiasAdd/ReadVariableOp$^lstm_cell_782/MatMul/ReadVariableOp&^lstm_cell_782/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_782/BiasAdd/ReadVariableOp$lstm_cell_782/BiasAdd/ReadVariableOp2J
#lstm_cell_782/MatMul/ReadVariableOp#lstm_cell_782/MatMul/ReadVariableOp2N
%lstm_cell_782/MatMul_1/ReadVariableOp%lstm_cell_782/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
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
lstm_600_input;
 serving_default_lstm_600_input:0?????????=
	dense_2000
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
2dense_200/kernel
:2dense_200/bias
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
0:.	?2lstm_600/lstm_cell_600/kernel
::8	d?2'lstm_600/lstm_cell_600/recurrent_kernel
*:(?2lstm_600/lstm_cell_600/bias
0:.	d?2lstm_601/lstm_cell_601/kernel
::8	2?2'lstm_601/lstm_cell_601/recurrent_kernel
*:(?2lstm_601/lstm_cell_601/bias
/:-2(2lstm_602/lstm_cell_602/kernel
9:7
(2'lstm_602/lstm_cell_602/recurrent_kernel
):'(2lstm_602/lstm_cell_602/bias
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
2Adam/dense_200/kernel/m
!:2Adam/dense_200/bias/m
5:3	?2$Adam/lstm_600/lstm_cell_600/kernel/m
?:=	d?2.Adam/lstm_600/lstm_cell_600/recurrent_kernel/m
/:-?2"Adam/lstm_600/lstm_cell_600/bias/m
5:3	d?2$Adam/lstm_601/lstm_cell_601/kernel/m
?:=	2?2.Adam/lstm_601/lstm_cell_601/recurrent_kernel/m
/:-?2"Adam/lstm_601/lstm_cell_601/bias/m
4:22(2$Adam/lstm_602/lstm_cell_602/kernel/m
>:<
(2.Adam/lstm_602/lstm_cell_602/recurrent_kernel/m
.:,(2"Adam/lstm_602/lstm_cell_602/bias/m
':%
2Adam/dense_200/kernel/v
!:2Adam/dense_200/bias/v
5:3	?2$Adam/lstm_600/lstm_cell_600/kernel/v
?:=	d?2.Adam/lstm_600/lstm_cell_600/recurrent_kernel/v
/:-?2"Adam/lstm_600/lstm_cell_600/bias/v
5:3	d?2$Adam/lstm_601/lstm_cell_601/kernel/v
?:=	2?2.Adam/lstm_601/lstm_cell_601/recurrent_kernel/v
/:-?2"Adam/lstm_601/lstm_cell_601/bias/v
4:22(2$Adam/lstm_602/lstm_cell_602/kernel/v
>:<
(2.Adam/lstm_602/lstm_cell_602/recurrent_kernel/v
.:,(2"Adam/lstm_602/lstm_cell_602/bias/v
?2?
0__inference_sequential_200_layer_call_fn_4730962
0__inference_sequential_200_layer_call_fn_4731700
0__inference_sequential_200_layer_call_fn_4731727
0__inference_sequential_200_layer_call_fn_4731578?
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4732154
K__inference_sequential_200_layer_call_and_return_conditional_losses_4732581
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731608
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731638?
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
"__inference__wrapped_model_4729413lstm_600_input"?
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
*__inference_lstm_600_layer_call_fn_4732592
*__inference_lstm_600_layer_call_fn_4732603
*__inference_lstm_600_layer_call_fn_4732614
*__inference_lstm_600_layer_call_fn_4732625?
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4732768
E__inference_lstm_600_layer_call_and_return_conditional_losses_4732911
E__inference_lstm_600_layer_call_and_return_conditional_losses_4733054
E__inference_lstm_600_layer_call_and_return_conditional_losses_4733197?
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
*__inference_lstm_601_layer_call_fn_4733208
*__inference_lstm_601_layer_call_fn_4733219
*__inference_lstm_601_layer_call_fn_4733230
*__inference_lstm_601_layer_call_fn_4733241?
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733384
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733527
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733670
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733813?
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
*__inference_lstm_602_layer_call_fn_4733824
*__inference_lstm_602_layer_call_fn_4733835
*__inference_lstm_602_layer_call_fn_4733846
*__inference_lstm_602_layer_call_fn_4733857?
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734000
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734143
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734286
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734429?
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
+__inference_dense_200_layer_call_fn_4734438?
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4734448?
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
%__inference_signature_wrapper_4731673lstm_600_input"?
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
/__inference_lstm_cell_780_layer_call_fn_4734465
/__inference_lstm_cell_780_layer_call_fn_4734482?
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4734514
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4734546?
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
/__inference_lstm_cell_781_layer_call_fn_4734563
/__inference_lstm_cell_781_layer_call_fn_4734580?
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4734612
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4734644?
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
/__inference_lstm_cell_782_layer_call_fn_4734661
/__inference_lstm_cell_782_layer_call_fn_4734678?
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4734710
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4734742?
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
"__inference__wrapped_model_4729413?-./012345!";?8
1?.
,?)
lstm_600_input?????????
? "5?2
0
	dense_200#? 
	dense_200??????????
F__inference_dense_200_layer_call_and_return_conditional_losses_4734448\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_200_layer_call_fn_4734438O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_600_layer_call_and_return_conditional_losses_4732768?-./O?L
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4732911?-./O?L
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4733054q-./??<
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
E__inference_lstm_600_layer_call_and_return_conditional_losses_4733197q-./??<
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
*__inference_lstm_600_layer_call_fn_4732592}-./O?L
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
*__inference_lstm_600_layer_call_fn_4732603}-./O?L
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
*__inference_lstm_600_layer_call_fn_4732614d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_600_layer_call_fn_4732625d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733384?012O?L
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733527?012O?L
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733670q012??<
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
E__inference_lstm_601_layer_call_and_return_conditional_losses_4733813q012??<
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
*__inference_lstm_601_layer_call_fn_4733208}012O?L
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
*__inference_lstm_601_layer_call_fn_4733219}012O?L
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
*__inference_lstm_601_layer_call_fn_4733230d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_601_layer_call_fn_4733241d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734000}345O?L
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734143}345O?L
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734286m345??<
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
E__inference_lstm_602_layer_call_and_return_conditional_losses_4734429m345??<
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
*__inference_lstm_602_layer_call_fn_4733824p345O?L
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
*__inference_lstm_602_layer_call_fn_4733835p345O?L
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
*__inference_lstm_602_layer_call_fn_4733846`345??<
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
*__inference_lstm_602_layer_call_fn_4733857`345??<
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4734514?-./??}
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
J__inference_lstm_cell_780_layer_call_and_return_conditional_losses_4734546?-./??}
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
/__inference_lstm_cell_780_layer_call_fn_4734465?-./??}
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
/__inference_lstm_cell_780_layer_call_fn_4734482?-./??}
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4734612?012??}
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
J__inference_lstm_cell_781_layer_call_and_return_conditional_losses_4734644?012??}
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
/__inference_lstm_cell_781_layer_call_fn_4734563?012??}
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
/__inference_lstm_cell_781_layer_call_fn_4734580?012??}
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4734710?345??}
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
J__inference_lstm_cell_782_layer_call_and_return_conditional_losses_4734742?345??}
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
/__inference_lstm_cell_782_layer_call_fn_4734661?345??}
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
/__inference_lstm_cell_782_layer_call_fn_4734678?345??}
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731608y-./012345!"C?@
9?6
,?)
lstm_600_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_200_layer_call_and_return_conditional_losses_4731638y-./012345!"C?@
9?6
,?)
lstm_600_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_200_layer_call_and_return_conditional_losses_4732154q-./012345!";?8
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
K__inference_sequential_200_layer_call_and_return_conditional_losses_4732581q-./012345!";?8
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
0__inference_sequential_200_layer_call_fn_4730962l-./012345!"C?@
9?6
,?)
lstm_600_input?????????
p 

 
? "???????????
0__inference_sequential_200_layer_call_fn_4731578l-./012345!"C?@
9?6
,?)
lstm_600_input?????????
p

 
? "???????????
0__inference_sequential_200_layer_call_fn_4731700d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_200_layer_call_fn_4731727d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4731673?-./012345!"M?J
? 
C?@
>
lstm_600_input,?)
lstm_600_input?????????"5?2
0
	dense_200#? 
	dense_200?????????