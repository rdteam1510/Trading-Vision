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
dense_180/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_180/kernel
u
$dense_180/kernel/Read/ReadVariableOpReadVariableOpdense_180/kernel*
_output_shapes

:
*
dtype0
t
dense_180/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_180/bias
m
"dense_180/bias/Read/ReadVariableOpReadVariableOpdense_180/bias*
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
lstm_540/lstm_cell_540/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_540/lstm_cell_540/kernel
?
1lstm_540/lstm_cell_540/kernel/Read/ReadVariableOpReadVariableOplstm_540/lstm_cell_540/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_540/lstm_cell_540/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_540/lstm_cell_540/recurrent_kernel
?
;lstm_540/lstm_cell_540/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_540/lstm_cell_540/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_540/lstm_cell_540/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_540/lstm_cell_540/bias
?
/lstm_540/lstm_cell_540/bias/Read/ReadVariableOpReadVariableOplstm_540/lstm_cell_540/bias*
_output_shapes	
:?*
dtype0
?
lstm_541/lstm_cell_541/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_541/lstm_cell_541/kernel
?
1lstm_541/lstm_cell_541/kernel/Read/ReadVariableOpReadVariableOplstm_541/lstm_cell_541/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_541/lstm_cell_541/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_541/lstm_cell_541/recurrent_kernel
?
;lstm_541/lstm_cell_541/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_541/lstm_cell_541/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_541/lstm_cell_541/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_541/lstm_cell_541/bias
?
/lstm_541/lstm_cell_541/bias/Read/ReadVariableOpReadVariableOplstm_541/lstm_cell_541/bias*
_output_shapes	
:?*
dtype0
?
lstm_542/lstm_cell_542/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_542/lstm_cell_542/kernel
?
1lstm_542/lstm_cell_542/kernel/Read/ReadVariableOpReadVariableOplstm_542/lstm_cell_542/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_542/lstm_cell_542/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_542/lstm_cell_542/recurrent_kernel
?
;lstm_542/lstm_cell_542/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_542/lstm_cell_542/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_542/lstm_cell_542/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_542/lstm_cell_542/bias
?
/lstm_542/lstm_cell_542/bias/Read/ReadVariableOpReadVariableOplstm_542/lstm_cell_542/bias*
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
Adam/dense_180/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_180/kernel/m
?
+Adam/dense_180/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_180/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_180/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_180/bias/m
{
)Adam/dense_180/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_180/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_540/lstm_cell_540/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_540/lstm_cell_540/kernel/m
?
8Adam/lstm_540/lstm_cell_540/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_540/lstm_cell_540/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_540/lstm_cell_540/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_540/lstm_cell_540/recurrent_kernel/m
?
BAdam/lstm_540/lstm_cell_540/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_540/lstm_cell_540/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_540/lstm_cell_540/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_540/lstm_cell_540/bias/m
?
6Adam/lstm_540/lstm_cell_540/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_540/lstm_cell_540/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_541/lstm_cell_541/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_541/lstm_cell_541/kernel/m
?
8Adam/lstm_541/lstm_cell_541/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_541/lstm_cell_541/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_541/lstm_cell_541/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_541/lstm_cell_541/recurrent_kernel/m
?
BAdam/lstm_541/lstm_cell_541/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_541/lstm_cell_541/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_541/lstm_cell_541/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_541/lstm_cell_541/bias/m
?
6Adam/lstm_541/lstm_cell_541/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_541/lstm_cell_541/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_542/lstm_cell_542/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_542/lstm_cell_542/kernel/m
?
8Adam/lstm_542/lstm_cell_542/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_542/lstm_cell_542/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_542/lstm_cell_542/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_542/lstm_cell_542/recurrent_kernel/m
?
BAdam/lstm_542/lstm_cell_542/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_542/lstm_cell_542/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_542/lstm_cell_542/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_542/lstm_cell_542/bias/m
?
6Adam/lstm_542/lstm_cell_542/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_542/lstm_cell_542/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_180/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_180/kernel/v
?
+Adam/dense_180/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_180/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_180/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_180/bias/v
{
)Adam/dense_180/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_180/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_540/lstm_cell_540/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_540/lstm_cell_540/kernel/v
?
8Adam/lstm_540/lstm_cell_540/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_540/lstm_cell_540/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_540/lstm_cell_540/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_540/lstm_cell_540/recurrent_kernel/v
?
BAdam/lstm_540/lstm_cell_540/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_540/lstm_cell_540/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_540/lstm_cell_540/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_540/lstm_cell_540/bias/v
?
6Adam/lstm_540/lstm_cell_540/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_540/lstm_cell_540/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_541/lstm_cell_541/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_541/lstm_cell_541/kernel/v
?
8Adam/lstm_541/lstm_cell_541/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_541/lstm_cell_541/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_541/lstm_cell_541/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_541/lstm_cell_541/recurrent_kernel/v
?
BAdam/lstm_541/lstm_cell_541/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_541/lstm_cell_541/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_541/lstm_cell_541/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_541/lstm_cell_541/bias/v
?
6Adam/lstm_541/lstm_cell_541/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_541/lstm_cell_541/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_542/lstm_cell_542/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_542/lstm_cell_542/kernel/v
?
8Adam/lstm_542/lstm_cell_542/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_542/lstm_cell_542/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_542/lstm_cell_542/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_542/lstm_cell_542/recurrent_kernel/v
?
BAdam/lstm_542/lstm_cell_542/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_542/lstm_cell_542/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_542/lstm_cell_542/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_542/lstm_cell_542/bias/v
?
6Adam/lstm_542/lstm_cell_542/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_542/lstm_cell_542/bias/v*
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
VARIABLE_VALUEdense_180/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_180/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_540/lstm_cell_540/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_540/lstm_cell_540/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_540/lstm_cell_540/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_541/lstm_cell_541/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_541/lstm_cell_541/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_541/lstm_cell_541/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_542/lstm_cell_542/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_542/lstm_cell_542/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_542/lstm_cell_542/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_180/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_180/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_540/lstm_cell_540/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_540/lstm_cell_540/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_540/lstm_cell_540/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_541/lstm_cell_541/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_541/lstm_cell_541/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_541/lstm_cell_541/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_542/lstm_cell_542/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_542/lstm_cell_542/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_542/lstm_cell_542/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_180/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_180/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_540/lstm_cell_540/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_540/lstm_cell_540/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_540/lstm_cell_540/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_541/lstm_cell_541/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_541/lstm_cell_541/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_541/lstm_cell_541/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_542/lstm_cell_542/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_542/lstm_cell_542/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_542/lstm_cell_542/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_540_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_540_inputlstm_540/lstm_cell_540/kernel'lstm_540/lstm_cell_540/recurrent_kernellstm_540/lstm_cell_540/biaslstm_541/lstm_cell_541/kernel'lstm_541/lstm_cell_541/recurrent_kernellstm_541/lstm_cell_541/biaslstm_542/lstm_cell_542/kernel'lstm_542/lstm_cell_542/recurrent_kernellstm_542/lstm_cell_542/biasdense_180/kerneldense_180/bias*
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
%__inference_signature_wrapper_2661942
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_180/kernel/Read/ReadVariableOp"dense_180/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_540/lstm_cell_540/kernel/Read/ReadVariableOp;lstm_540/lstm_cell_540/recurrent_kernel/Read/ReadVariableOp/lstm_540/lstm_cell_540/bias/Read/ReadVariableOp1lstm_541/lstm_cell_541/kernel/Read/ReadVariableOp;lstm_541/lstm_cell_541/recurrent_kernel/Read/ReadVariableOp/lstm_541/lstm_cell_541/bias/Read/ReadVariableOp1lstm_542/lstm_cell_542/kernel/Read/ReadVariableOp;lstm_542/lstm_cell_542/recurrent_kernel/Read/ReadVariableOp/lstm_542/lstm_cell_542/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_180/kernel/m/Read/ReadVariableOp)Adam/dense_180/bias/m/Read/ReadVariableOp8Adam/lstm_540/lstm_cell_540/kernel/m/Read/ReadVariableOpBAdam/lstm_540/lstm_cell_540/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_540/lstm_cell_540/bias/m/Read/ReadVariableOp8Adam/lstm_541/lstm_cell_541/kernel/m/Read/ReadVariableOpBAdam/lstm_541/lstm_cell_541/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_541/lstm_cell_541/bias/m/Read/ReadVariableOp8Adam/lstm_542/lstm_cell_542/kernel/m/Read/ReadVariableOpBAdam/lstm_542/lstm_cell_542/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_542/lstm_cell_542/bias/m/Read/ReadVariableOp+Adam/dense_180/kernel/v/Read/ReadVariableOp)Adam/dense_180/bias/v/Read/ReadVariableOp8Adam/lstm_540/lstm_cell_540/kernel/v/Read/ReadVariableOpBAdam/lstm_540/lstm_cell_540/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_540/lstm_cell_540/bias/v/Read/ReadVariableOp8Adam/lstm_541/lstm_cell_541/kernel/v/Read/ReadVariableOpBAdam/lstm_541/lstm_cell_541/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_541/lstm_cell_541/bias/v/Read/ReadVariableOp8Adam/lstm_542/lstm_cell_542/kernel/v/Read/ReadVariableOpBAdam/lstm_542/lstm_cell_542/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_542/lstm_cell_542/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2665154
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_180/kerneldense_180/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_540/lstm_cell_540/kernel'lstm_540/lstm_cell_540/recurrent_kernellstm_540/lstm_cell_540/biaslstm_541/lstm_cell_541/kernel'lstm_541/lstm_cell_541/recurrent_kernellstm_541/lstm_cell_541/biaslstm_542/lstm_cell_542/kernel'lstm_542/lstm_cell_542/recurrent_kernellstm_542/lstm_cell_542/biastotalcountAdam/dense_180/kernel/mAdam/dense_180/bias/m$Adam/lstm_540/lstm_cell_540/kernel/m.Adam/lstm_540/lstm_cell_540/recurrent_kernel/m"Adam/lstm_540/lstm_cell_540/bias/m$Adam/lstm_541/lstm_cell_541/kernel/m.Adam/lstm_541/lstm_cell_541/recurrent_kernel/m"Adam/lstm_541/lstm_cell_541/bias/m$Adam/lstm_542/lstm_cell_542/kernel/m.Adam/lstm_542/lstm_cell_542/recurrent_kernel/m"Adam/lstm_542/lstm_cell_542/bias/mAdam/dense_180/kernel/vAdam/dense_180/bias/v$Adam/lstm_540/lstm_cell_540/kernel/v.Adam/lstm_540/lstm_cell_540/recurrent_kernel/v"Adam/lstm_540/lstm_cell_540/bias/v$Adam/lstm_541/lstm_cell_541/kernel/v.Adam/lstm_541/lstm_cell_541/recurrent_kernel/v"Adam/lstm_541/lstm_cell_541/bias/v$Adam/lstm_542/lstm_cell_542/kernel/v.Adam/lstm_542/lstm_cell_542/recurrent_kernel/v"Adam/lstm_542/lstm_cell_542/bias/v*4
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
#__inference__traced_restore_2665284??+
?

?
0__inference_sequential_180_layer_call_fn_2661996

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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661795o
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2660881

inputs?
,lstm_cell_438_matmul_readvariableop_resource:	?A
.lstm_cell_438_matmul_1_readvariableop_resource:	d?<
-lstm_cell_438_biasadd_readvariableop_resource:	?
identity??$lstm_cell_438/BiasAdd/ReadVariableOp?#lstm_cell_438/MatMul/ReadVariableOp?%lstm_cell_438/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_438/MatMul/ReadVariableOpReadVariableOp,lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_438/MatMulMatMulstrided_slice_2:output:0+lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_438/MatMul_1MatMulzeros:output:0-lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_438/addAddV2lstm_cell_438/MatMul:product:0 lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_438/BiasAddBiasAddlstm_cell_438/add:z:0,lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_438/splitSplit&lstm_cell_438/split/split_dim:output:0lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_438/SigmoidSigmoidlstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_1Sigmoidlstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_438/mulMullstm_cell_438/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_438/ReluRelulstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_1Mullstm_cell_438/Sigmoid:y:0 lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_438/add_1AddV2lstm_cell_438/mul:z:0lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_2Sigmoidlstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_438/Relu_1Relulstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_2Mullstm_cell_438/Sigmoid_2:y:0"lstm_cell_438/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_438_matmul_readvariableop_resource.lstm_cell_438_matmul_1_readvariableop_resource-lstm_cell_438_biasadd_readvariableop_resource*
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
while_body_2660797*
condR
while_cond_2660796*K
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
NoOpNoOp%^lstm_cell_438/BiasAdd/ReadVariableOp$^lstm_cell_438/MatMul/ReadVariableOp&^lstm_cell_438/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_438/BiasAdd/ReadVariableOp$lstm_cell_438/BiasAdd/ReadVariableOp2J
#lstm_cell_438/MatMul/ReadVariableOp#lstm_cell_438/MatMul/ReadVariableOp2N
%lstm_cell_438/MatMul_1/ReadVariableOp%lstm_cell_438/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2663096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_438_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_438_matmul_readvariableop_resource:	?G
4while_lstm_cell_438_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_438_biasadd_readvariableop_resource:	???*while/lstm_cell_438/BiasAdd/ReadVariableOp?)while/lstm_cell_438/MatMul/ReadVariableOp?+while/lstm_cell_438/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_438/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_438/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_438/addAddV2$while/lstm_cell_438/MatMul:product:0&while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_438/BiasAddBiasAddwhile/lstm_cell_438/add:z:02while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_438/splitSplit,while/lstm_cell_438/split/split_dim:output:0$while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_438/SigmoidSigmoid"while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_1Sigmoid"while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mulMul!while/lstm_cell_438/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_438/ReluRelu"while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_1Mulwhile/lstm_cell_438/Sigmoid:y:0&while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/add_1AddV2while/lstm_cell_438/mul:z:0while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_2Sigmoid"while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_438/Relu_1Reluwhile/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_2Mul!while/lstm_cell_438/Sigmoid_2:y:0(while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_438/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_438/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_438/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_438/BiasAdd/ReadVariableOp*^while/lstm_cell_438/MatMul/ReadVariableOp,^while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_438_biasadd_readvariableop_resource5while_lstm_cell_438_biasadd_readvariableop_resource_0"n
4while_lstm_cell_438_matmul_1_readvariableop_resource6while_lstm_cell_438_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_438_matmul_readvariableop_resource4while_lstm_cell_438_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_438/BiasAdd/ReadVariableOp*while/lstm_cell_438/BiasAdd/ReadVariableOp2V
)while/lstm_cell_438/MatMul/ReadVariableOp)while/lstm_cell_438/MatMul/ReadVariableOp2Z
+while/lstm_cell_438/MatMul_1/ReadVariableOp+while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660099

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

lstm_542_while_body_2662333.
*lstm_542_while_lstm_542_while_loop_counter4
0lstm_542_while_lstm_542_while_maximum_iterations
lstm_542_while_placeholder 
lstm_542_while_placeholder_1 
lstm_542_while_placeholder_2 
lstm_542_while_placeholder_3-
)lstm_542_while_lstm_542_strided_slice_1_0i
elstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0:2(Q
?lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(L
>lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0:(
lstm_542_while_identity
lstm_542_while_identity_1
lstm_542_while_identity_2
lstm_542_while_identity_3
lstm_542_while_identity_4
lstm_542_while_identity_5+
'lstm_542_while_lstm_542_strided_slice_1g
clstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensorM
;lstm_542_while_lstm_cell_440_matmul_readvariableop_resource:2(O
=lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource:
(J
<lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource:(??3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp?2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp?4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp?
@lstm_542/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_542/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensor_0lstm_542_while_placeholderIlstm_542/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp=lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_542/while/lstm_cell_440/MatMulMatMul9lstm_542/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp?lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_542/while/lstm_cell_440/MatMul_1MatMullstm_542_while_placeholder_2<lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_542/while/lstm_cell_440/addAddV2-lstm_542/while/lstm_cell_440/MatMul:product:0/lstm_542/while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp>lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_542/while/lstm_cell_440/BiasAddBiasAdd$lstm_542/while/lstm_cell_440/add:z:0;lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_542/while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_542/while/lstm_cell_440/splitSplit5lstm_542/while/lstm_cell_440/split/split_dim:output:0-lstm_542/while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_542/while/lstm_cell_440/SigmoidSigmoid+lstm_542/while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_542/while/lstm_cell_440/Sigmoid_1Sigmoid+lstm_542/while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_542/while/lstm_cell_440/mulMul*lstm_542/while/lstm_cell_440/Sigmoid_1:y:0lstm_542_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_542/while/lstm_cell_440/ReluRelu+lstm_542/while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_542/while/lstm_cell_440/mul_1Mul(lstm_542/while/lstm_cell_440/Sigmoid:y:0/lstm_542/while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_542/while/lstm_cell_440/add_1AddV2$lstm_542/while/lstm_cell_440/mul:z:0&lstm_542/while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_542/while/lstm_cell_440/Sigmoid_2Sigmoid+lstm_542/while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_542/while/lstm_cell_440/Relu_1Relu&lstm_542/while/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_542/while/lstm_cell_440/mul_2Mul*lstm_542/while/lstm_cell_440/Sigmoid_2:y:01lstm_542/while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_542/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_542_while_placeholder_1lstm_542_while_placeholder&lstm_542/while/lstm_cell_440/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_542/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_542/while/addAddV2lstm_542_while_placeholderlstm_542/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_542/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_542/while/add_1AddV2*lstm_542_while_lstm_542_while_loop_counterlstm_542/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_542/while/IdentityIdentitylstm_542/while/add_1:z:0^lstm_542/while/NoOp*
T0*
_output_shapes
: ?
lstm_542/while/Identity_1Identity0lstm_542_while_lstm_542_while_maximum_iterations^lstm_542/while/NoOp*
T0*
_output_shapes
: t
lstm_542/while/Identity_2Identitylstm_542/while/add:z:0^lstm_542/while/NoOp*
T0*
_output_shapes
: ?
lstm_542/while/Identity_3IdentityClstm_542/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_542/while/NoOp*
T0*
_output_shapes
: ?
lstm_542/while/Identity_4Identity&lstm_542/while/lstm_cell_440/mul_2:z:0^lstm_542/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_542/while/Identity_5Identity&lstm_542/while/lstm_cell_440/add_1:z:0^lstm_542/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_542/while/NoOpNoOp4^lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp3^lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp5^lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_542_while_identity lstm_542/while/Identity:output:0"?
lstm_542_while_identity_1"lstm_542/while/Identity_1:output:0"?
lstm_542_while_identity_2"lstm_542/while/Identity_2:output:0"?
lstm_542_while_identity_3"lstm_542/while/Identity_3:output:0"?
lstm_542_while_identity_4"lstm_542/while/Identity_4:output:0"?
lstm_542_while_identity_5"lstm_542/while/Identity_5:output:0"T
'lstm_542_while_lstm_542_strided_slice_1)lstm_542_while_lstm_542_strided_slice_1_0"~
<lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource>lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0"?
=lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource?lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0"|
;lstm_542_while_lstm_cell_440_matmul_readvariableop_resource=lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0"?
clstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensorelstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp2h
2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp2l
4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661206

inputs#
lstm_540_2660882:	?#
lstm_540_2660884:	d?
lstm_540_2660886:	?#
lstm_541_2661032:	d?#
lstm_541_2661034:	2?
lstm_541_2661036:	?"
lstm_542_2661182:2("
lstm_542_2661184:
(
lstm_542_2661186:(#
dense_180_2661200:

dense_180_2661202:
identity??!dense_180/StatefulPartitionedCall? lstm_540/StatefulPartitionedCall? lstm_541/StatefulPartitionedCall? lstm_542/StatefulPartitionedCall?
 lstm_540/StatefulPartitionedCallStatefulPartitionedCallinputslstm_540_2660882lstm_540_2660884lstm_540_2660886*
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2660881?
 lstm_541/StatefulPartitionedCallStatefulPartitionedCall)lstm_540/StatefulPartitionedCall:output:0lstm_541_2661032lstm_541_2661034lstm_541_2661036*
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661031?
 lstm_542/StatefulPartitionedCallStatefulPartitionedCall)lstm_541/StatefulPartitionedCall:output:0lstm_542_2661182lstm_542_2661184lstm_542_2661186*
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661181?
!dense_180/StatefulPartitionedCallStatefulPartitionedCall)lstm_542/StatefulPartitionedCall:output:0dense_180_2661200dense_180_2661202*
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
F__inference_dense_180_layer_call_and_return_conditional_losses_2661199y
IdentityIdentity*dense_180/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_180/StatefulPartitionedCall!^lstm_540/StatefulPartitionedCall!^lstm_541/StatefulPartitionedCall!^lstm_542/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_180/StatefulPartitionedCall!dense_180/StatefulPartitionedCall2D
 lstm_540/StatefulPartitionedCall lstm_540/StatefulPartitionedCall2D
 lstm_541/StatefulPartitionedCall lstm_541/StatefulPartitionedCall2D
 lstm_542/StatefulPartitionedCall lstm_542/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661795

inputs#
lstm_540_2661768:	?#
lstm_540_2661770:	d?
lstm_540_2661772:	?#
lstm_541_2661775:	d?#
lstm_541_2661777:	2?
lstm_541_2661779:	?"
lstm_542_2661782:2("
lstm_542_2661784:
(
lstm_542_2661786:(#
dense_180_2661789:

dense_180_2661791:
identity??!dense_180/StatefulPartitionedCall? lstm_540/StatefulPartitionedCall? lstm_541/StatefulPartitionedCall? lstm_542/StatefulPartitionedCall?
 lstm_540/StatefulPartitionedCallStatefulPartitionedCallinputslstm_540_2661768lstm_540_2661770lstm_540_2661772*
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2661727?
 lstm_541/StatefulPartitionedCallStatefulPartitionedCall)lstm_540/StatefulPartitionedCall:output:0lstm_541_2661775lstm_541_2661777lstm_541_2661779*
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661562?
 lstm_542/StatefulPartitionedCallStatefulPartitionedCall)lstm_541/StatefulPartitionedCall:output:0lstm_542_2661782lstm_542_2661784lstm_542_2661786*
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661397?
!dense_180/StatefulPartitionedCallStatefulPartitionedCall)lstm_542/StatefulPartitionedCall:output:0dense_180_2661789dense_180_2661791*
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
F__inference_dense_180_layer_call_and_return_conditional_losses_2661199y
IdentityIdentity*dense_180/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_180/StatefulPartitionedCall!^lstm_540/StatefulPartitionedCall!^lstm_541/StatefulPartitionedCall!^lstm_542/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_180/StatefulPartitionedCall!dense_180/StatefulPartitionedCall2D
 lstm_540/StatefulPartitionedCall lstm_540/StatefulPartitionedCall2D
 lstm_541/StatefulPartitionedCall lstm_541/StatefulPartitionedCall2D
 lstm_542/StatefulPartitionedCall lstm_542/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_540_while_cond_2662481.
*lstm_540_while_lstm_540_while_loop_counter4
0lstm_540_while_lstm_540_while_maximum_iterations
lstm_540_while_placeholder 
lstm_540_while_placeholder_1 
lstm_540_while_placeholder_2 
lstm_540_while_placeholder_30
,lstm_540_while_less_lstm_540_strided_slice_1G
Clstm_540_while_lstm_540_while_cond_2662481___redundant_placeholder0G
Clstm_540_while_lstm_540_while_cond_2662481___redundant_placeholder1G
Clstm_540_while_lstm_540_while_cond_2662481___redundant_placeholder2G
Clstm_540_while_lstm_540_while_cond_2662481___redundant_placeholder3
lstm_540_while_identity
?
lstm_540/while/LessLesslstm_540_while_placeholder,lstm_540_while_less_lstm_540_strided_slice_1*
T0*
_output_shapes
: ]
lstm_540/while/IdentityIdentitylstm_540/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_540_while_identity lstm_540/while/Identity:output:0*(
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
while_cond_2664613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2664613___redundant_placeholder05
1while_while_cond_2664613___redundant_placeholder15
1while_while_cond_2664613___redundant_placeholder25
1while_while_cond_2664613___redundant_placeholder3
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
while_body_2663382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_438_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_438_matmul_readvariableop_resource:	?G
4while_lstm_cell_438_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_438_biasadd_readvariableop_resource:	???*while/lstm_cell_438/BiasAdd/ReadVariableOp?)while/lstm_cell_438/MatMul/ReadVariableOp?+while/lstm_cell_438/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_438/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_438/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_438/addAddV2$while/lstm_cell_438/MatMul:product:0&while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_438/BiasAddBiasAddwhile/lstm_cell_438/add:z:02while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_438/splitSplit,while/lstm_cell_438/split/split_dim:output:0$while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_438/SigmoidSigmoid"while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_1Sigmoid"while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mulMul!while/lstm_cell_438/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_438/ReluRelu"while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_1Mulwhile/lstm_cell_438/Sigmoid:y:0&while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/add_1AddV2while/lstm_cell_438/mul:z:0while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_2Sigmoid"while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_438/Relu_1Reluwhile/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_2Mul!while/lstm_cell_438/Sigmoid_2:y:0(while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_438/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_438/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_438/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_438/BiasAdd/ReadVariableOp*^while/lstm_cell_438/MatMul/ReadVariableOp,^while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_438_biasadd_readvariableop_resource5while_lstm_cell_438_biasadd_readvariableop_resource_0"n
4while_lstm_cell_438_matmul_1_readvariableop_resource6while_lstm_cell_438_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_438_matmul_readvariableop_resource4while_lstm_cell_438_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_438/BiasAdd/ReadVariableOp*while/lstm_cell_438/BiasAdd/ReadVariableOp2V
)while/lstm_cell_438/MatMul/ReadVariableOp)while/lstm_cell_438/MatMul/ReadVariableOp2Z
+while/lstm_cell_438/MatMul_1/ReadVariableOp+while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2664815

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
/__inference_lstm_cell_438_layer_call_fn_2664751

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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659895o
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
?
?
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661877
lstm_540_input#
lstm_540_2661850:	?#
lstm_540_2661852:	d?
lstm_540_2661854:	?#
lstm_541_2661857:	d?#
lstm_541_2661859:	2?
lstm_541_2661861:	?"
lstm_542_2661864:2("
lstm_542_2661866:
(
lstm_542_2661868:(#
dense_180_2661871:

dense_180_2661873:
identity??!dense_180/StatefulPartitionedCall? lstm_540/StatefulPartitionedCall? lstm_541/StatefulPartitionedCall? lstm_542/StatefulPartitionedCall?
 lstm_540/StatefulPartitionedCallStatefulPartitionedCalllstm_540_inputlstm_540_2661850lstm_540_2661852lstm_540_2661854*
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2660881?
 lstm_541/StatefulPartitionedCallStatefulPartitionedCall)lstm_540/StatefulPartitionedCall:output:0lstm_541_2661857lstm_541_2661859lstm_541_2661861*
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661031?
 lstm_542/StatefulPartitionedCallStatefulPartitionedCall)lstm_541/StatefulPartitionedCall:output:0lstm_542_2661864lstm_542_2661866lstm_542_2661868*
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661181?
!dense_180/StatefulPartitionedCallStatefulPartitionedCall)lstm_542/StatefulPartitionedCall:output:0dense_180_2661871dense_180_2661873*
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
F__inference_dense_180_layer_call_and_return_conditional_losses_2661199y
IdentityIdentity*dense_180/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_180/StatefulPartitionedCall!^lstm_540/StatefulPartitionedCall!^lstm_541/StatefulPartitionedCall!^lstm_542/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_180/StatefulPartitionedCall!dense_180/StatefulPartitionedCall2D
 lstm_540/StatefulPartitionedCall lstm_540/StatefulPartitionedCall2D
 lstm_541/StatefulPartitionedCall lstm_541/StatefulPartitionedCall2D
 lstm_542/StatefulPartitionedCall lstm_542/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_540_input
?J
?
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663939

inputs?
,lstm_cell_439_matmul_readvariableop_resource:	d?A
.lstm_cell_439_matmul_1_readvariableop_resource:	2?<
-lstm_cell_439_biasadd_readvariableop_resource:	?
identity??$lstm_cell_439/BiasAdd/ReadVariableOp?#lstm_cell_439/MatMul/ReadVariableOp?%lstm_cell_439/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_439/MatMul/ReadVariableOpReadVariableOp,lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_439/MatMulMatMulstrided_slice_2:output:0+lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_439/MatMul_1MatMulzeros:output:0-lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_439/addAddV2lstm_cell_439/MatMul:product:0 lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_439/BiasAddBiasAddlstm_cell_439/add:z:0,lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_439/splitSplit&lstm_cell_439/split/split_dim:output:0lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_439/SigmoidSigmoidlstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_1Sigmoidlstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_439/mulMullstm_cell_439/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_439/ReluRelulstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_1Mullstm_cell_439/Sigmoid:y:0 lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_439/add_1AddV2lstm_cell_439/mul:z:0lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_2Sigmoidlstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_439/Relu_1Relulstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_2Mullstm_cell_439/Sigmoid_2:y:0"lstm_cell_439/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_439_matmul_readvariableop_resource.lstm_cell_439_matmul_1_readvariableop_resource-lstm_cell_439_biasadd_readvariableop_resource*
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
while_body_2663855*
condR
while_cond_2663854*K
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
NoOpNoOp%^lstm_cell_439/BiasAdd/ReadVariableOp$^lstm_cell_439/MatMul/ReadVariableOp&^lstm_cell_439/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_439/BiasAdd/ReadVariableOp$lstm_cell_439/BiasAdd/ReadVariableOp2J
#lstm_cell_439/MatMul/ReadVariableOp#lstm_cell_439/MatMul/ReadVariableOp2N
%lstm_cell_439/MatMul_1/ReadVariableOp%lstm_cell_439/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2661477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2661477___redundant_placeholder05
1while_while_cond_2661477___redundant_placeholder15
1while_while_cond_2661477___redundant_placeholder25
1while_while_cond_2661477___redundant_placeholder3
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
while_body_2659763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_438_2659787_0:	?0
while_lstm_cell_438_2659789_0:	d?,
while_lstm_cell_438_2659791_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_438_2659787:	?.
while_lstm_cell_438_2659789:	d?*
while_lstm_cell_438_2659791:	???+while/lstm_cell_438/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_438/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_438_2659787_0while_lstm_cell_438_2659789_0while_lstm_cell_438_2659791_0*
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659749?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_438/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_438/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_438/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_438/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_438_2659787while_lstm_cell_438_2659787_0"<
while_lstm_cell_438_2659789while_lstm_cell_438_2659789_0"<
while_lstm_cell_438_2659791while_lstm_cell_438_2659791_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_438/StatefulPartitionedCall+while/lstm_cell_438/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_542_layer_call_fn_2664093
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2660532o
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
?C
?

lstm_540_while_body_2662482.
*lstm_540_while_lstm_540_while_loop_counter4
0lstm_540_while_lstm_540_while_maximum_iterations
lstm_540_while_placeholder 
lstm_540_while_placeholder_1 
lstm_540_while_placeholder_2 
lstm_540_while_placeholder_3-
)lstm_540_while_lstm_540_strided_slice_1_0i
elstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0:	?R
?lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?M
>lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
lstm_540_while_identity
lstm_540_while_identity_1
lstm_540_while_identity_2
lstm_540_while_identity_3
lstm_540_while_identity_4
lstm_540_while_identity_5+
'lstm_540_while_lstm_540_strided_slice_1g
clstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensorN
;lstm_540_while_lstm_cell_438_matmul_readvariableop_resource:	?P
=lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource:	d?K
<lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource:	???3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp?2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp?4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp?
@lstm_540/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_540/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensor_0lstm_540_while_placeholderIlstm_540/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp=lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_540/while/lstm_cell_438/MatMulMatMul9lstm_540/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp?lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_540/while/lstm_cell_438/MatMul_1MatMullstm_540_while_placeholder_2<lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_540/while/lstm_cell_438/addAddV2-lstm_540/while/lstm_cell_438/MatMul:product:0/lstm_540/while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp>lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_540/while/lstm_cell_438/BiasAddBiasAdd$lstm_540/while/lstm_cell_438/add:z:0;lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_540/while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_540/while/lstm_cell_438/splitSplit5lstm_540/while/lstm_cell_438/split/split_dim:output:0-lstm_540/while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_540/while/lstm_cell_438/SigmoidSigmoid+lstm_540/while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_540/while/lstm_cell_438/Sigmoid_1Sigmoid+lstm_540/while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_540/while/lstm_cell_438/mulMul*lstm_540/while/lstm_cell_438/Sigmoid_1:y:0lstm_540_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_540/while/lstm_cell_438/ReluRelu+lstm_540/while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_540/while/lstm_cell_438/mul_1Mul(lstm_540/while/lstm_cell_438/Sigmoid:y:0/lstm_540/while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_540/while/lstm_cell_438/add_1AddV2$lstm_540/while/lstm_cell_438/mul:z:0&lstm_540/while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_540/while/lstm_cell_438/Sigmoid_2Sigmoid+lstm_540/while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_540/while/lstm_cell_438/Relu_1Relu&lstm_540/while/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_540/while/lstm_cell_438/mul_2Mul*lstm_540/while/lstm_cell_438/Sigmoid_2:y:01lstm_540/while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_540/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_540_while_placeholder_1lstm_540_while_placeholder&lstm_540/while/lstm_cell_438/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_540/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_540/while/addAddV2lstm_540_while_placeholderlstm_540/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_540/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_540/while/add_1AddV2*lstm_540_while_lstm_540_while_loop_counterlstm_540/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_540/while/IdentityIdentitylstm_540/while/add_1:z:0^lstm_540/while/NoOp*
T0*
_output_shapes
: ?
lstm_540/while/Identity_1Identity0lstm_540_while_lstm_540_while_maximum_iterations^lstm_540/while/NoOp*
T0*
_output_shapes
: t
lstm_540/while/Identity_2Identitylstm_540/while/add:z:0^lstm_540/while/NoOp*
T0*
_output_shapes
: ?
lstm_540/while/Identity_3IdentityClstm_540/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_540/while/NoOp*
T0*
_output_shapes
: ?
lstm_540/while/Identity_4Identity&lstm_540/while/lstm_cell_438/mul_2:z:0^lstm_540/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_540/while/Identity_5Identity&lstm_540/while/lstm_cell_438/add_1:z:0^lstm_540/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_540/while/NoOpNoOp4^lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp3^lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp5^lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_540_while_identity lstm_540/while/Identity:output:0"?
lstm_540_while_identity_1"lstm_540/while/Identity_1:output:0"?
lstm_540_while_identity_2"lstm_540/while/Identity_2:output:0"?
lstm_540_while_identity_3"lstm_540/while/Identity_3:output:0"?
lstm_540_while_identity_4"lstm_540/while/Identity_4:output:0"?
lstm_540_while_identity_5"lstm_540/while/Identity_5:output:0"T
'lstm_540_while_lstm_540_strided_slice_1)lstm_540_while_lstm_540_strided_slice_1_0"~
<lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource>lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0"?
=lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource?lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0"|
;lstm_540_while_lstm_cell_438_matmul_readvariableop_resource=lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0"?
clstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensorelstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp2h
2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp2l
4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2664913

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
*__inference_lstm_540_layer_call_fn_2662872
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2660023|
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661181

inputs>
,lstm_cell_440_matmul_readvariableop_resource:2(@
.lstm_cell_440_matmul_1_readvariableop_resource:
(;
-lstm_cell_440_biasadd_readvariableop_resource:(
identity??$lstm_cell_440/BiasAdd/ReadVariableOp?#lstm_cell_440/MatMul/ReadVariableOp?%lstm_cell_440/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_440/MatMul/ReadVariableOpReadVariableOp,lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_440/MatMulMatMulstrided_slice_2:output:0+lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_440/MatMul_1MatMulzeros:output:0-lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_440/addAddV2lstm_cell_440/MatMul:product:0 lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_440/BiasAddBiasAddlstm_cell_440/add:z:0,lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_440/splitSplit&lstm_cell_440/split/split_dim:output:0lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_440/SigmoidSigmoidlstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_1Sigmoidlstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_440/mulMullstm_cell_440/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_440/ReluRelulstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_1Mullstm_cell_440/Sigmoid:y:0 lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_440/add_1AddV2lstm_cell_440/mul:z:0lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_2Sigmoidlstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_440/Relu_1Relulstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_2Mullstm_cell_440/Sigmoid_2:y:0"lstm_cell_440/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_440_matmul_readvariableop_resource.lstm_cell_440_matmul_1_readvariableop_resource-lstm_cell_440_biasadd_readvariableop_resource*
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
while_body_2661097*
condR
while_cond_2661096*K
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
NoOpNoOp%^lstm_cell_440/BiasAdd/ReadVariableOp$^lstm_cell_440/MatMul/ReadVariableOp&^lstm_cell_440/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_440/BiasAdd/ReadVariableOp$lstm_cell_440/BiasAdd/ReadVariableOp2J
#lstm_cell_440/MatMul/ReadVariableOp#lstm_cell_440/MatMul/ReadVariableOp2N
%lstm_cell_440/MatMul_1/ReadVariableOp%lstm_cell_440/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2664979

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
while_body_2663239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_438_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_438_matmul_readvariableop_resource:	?G
4while_lstm_cell_438_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_438_biasadd_readvariableop_resource:	???*while/lstm_cell_438/BiasAdd/ReadVariableOp?)while/lstm_cell_438/MatMul/ReadVariableOp?+while/lstm_cell_438/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_438/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_438/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_438/addAddV2$while/lstm_cell_438/MatMul:product:0&while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_438/BiasAddBiasAddwhile/lstm_cell_438/add:z:02while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_438/splitSplit,while/lstm_cell_438/split/split_dim:output:0$while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_438/SigmoidSigmoid"while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_1Sigmoid"while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mulMul!while/lstm_cell_438/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_438/ReluRelu"while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_1Mulwhile/lstm_cell_438/Sigmoid:y:0&while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/add_1AddV2while/lstm_cell_438/mul:z:0while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_2Sigmoid"while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_438/Relu_1Reluwhile/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_2Mul!while/lstm_cell_438/Sigmoid_2:y:0(while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_438/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_438/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_438/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_438/BiasAdd/ReadVariableOp*^while/lstm_cell_438/MatMul/ReadVariableOp,^while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_438_biasadd_readvariableop_resource5while_lstm_cell_438_biasadd_readvariableop_resource_0"n
4while_lstm_cell_438_matmul_1_readvariableop_resource6while_lstm_cell_438_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_438_matmul_readvariableop_resource4while_lstm_cell_438_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_438/BiasAdd/ReadVariableOp*while/lstm_cell_438/BiasAdd/ReadVariableOp2V
)while/lstm_cell_438/MatMul/ReadVariableOp)while/lstm_cell_438/MatMul/ReadVariableOp2Z
+while/lstm_cell_438/MatMul_1/ReadVariableOp+while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_180_layer_call_and_return_conditional_losses_2661199

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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663796
inputs_0?
,lstm_cell_439_matmul_readvariableop_resource:	d?A
.lstm_cell_439_matmul_1_readvariableop_resource:	2?<
-lstm_cell_439_biasadd_readvariableop_resource:	?
identity??$lstm_cell_439/BiasAdd/ReadVariableOp?#lstm_cell_439/MatMul/ReadVariableOp?%lstm_cell_439/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_439/MatMul/ReadVariableOpReadVariableOp,lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_439/MatMulMatMulstrided_slice_2:output:0+lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_439/MatMul_1MatMulzeros:output:0-lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_439/addAddV2lstm_cell_439/MatMul:product:0 lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_439/BiasAddBiasAddlstm_cell_439/add:z:0,lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_439/splitSplit&lstm_cell_439/split/split_dim:output:0lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_439/SigmoidSigmoidlstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_1Sigmoidlstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_439/mulMullstm_cell_439/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_439/ReluRelulstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_1Mullstm_cell_439/Sigmoid:y:0 lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_439/add_1AddV2lstm_cell_439/mul:z:0lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_2Sigmoidlstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_439/Relu_1Relulstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_2Mullstm_cell_439/Sigmoid_2:y:0"lstm_cell_439/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_439_matmul_readvariableop_resource.lstm_cell_439_matmul_1_readvariableop_resource-lstm_cell_439_biasadd_readvariableop_resource*
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
while_body_2663712*
condR
while_cond_2663711*K
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
NoOpNoOp%^lstm_cell_439/BiasAdd/ReadVariableOp$^lstm_cell_439/MatMul/ReadVariableOp&^lstm_cell_439/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_439/BiasAdd/ReadVariableOp$lstm_cell_439/BiasAdd/ReadVariableOp2J
#lstm_cell_439/MatMul/ReadVariableOp#lstm_cell_439/MatMul/ReadVariableOp2N
%lstm_cell_439/MatMul_1/ReadVariableOp%lstm_cell_439/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2660797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_438_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_438_matmul_readvariableop_resource:	?G
4while_lstm_cell_438_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_438_biasadd_readvariableop_resource:	???*while/lstm_cell_438/BiasAdd/ReadVariableOp?)while/lstm_cell_438/MatMul/ReadVariableOp?+while/lstm_cell_438/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_438/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_438/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_438/addAddV2$while/lstm_cell_438/MatMul:product:0&while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_438/BiasAddBiasAddwhile/lstm_cell_438/add:z:02while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_438/splitSplit,while/lstm_cell_438/split/split_dim:output:0$while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_438/SigmoidSigmoid"while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_1Sigmoid"while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mulMul!while/lstm_cell_438/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_438/ReluRelu"while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_1Mulwhile/lstm_cell_438/Sigmoid:y:0&while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/add_1AddV2while/lstm_cell_438/mul:z:0while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_2Sigmoid"while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_438/Relu_1Reluwhile/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_2Mul!while/lstm_cell_438/Sigmoid_2:y:0(while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_438/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_438/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_438/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_438/BiasAdd/ReadVariableOp*^while/lstm_cell_438/MatMul/ReadVariableOp,^while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_438_biasadd_readvariableop_resource5while_lstm_cell_438_biasadd_readvariableop_resource_0"n
4while_lstm_cell_438_matmul_1_readvariableop_resource6while_lstm_cell_438_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_438_matmul_readvariableop_resource4while_lstm_cell_438_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_438/BiasAdd/ReadVariableOp*while/lstm_cell_438/BiasAdd/ReadVariableOp2V
)while/lstm_cell_438/MatMul/ReadVariableOp)while/lstm_cell_438/MatMul/ReadVariableOp2Z
+while/lstm_cell_438/MatMul_1/ReadVariableOp+while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_542_layer_call_fn_2664104
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2660723o
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
?
?
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2665011

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
while_body_2663855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_439_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_439_matmul_readvariableop_resource:	d?G
4while_lstm_cell_439_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_439_biasadd_readvariableop_resource:	???*while/lstm_cell_439/BiasAdd/ReadVariableOp?)while/lstm_cell_439/MatMul/ReadVariableOp?+while/lstm_cell_439/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_439/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_439/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_439/addAddV2$while/lstm_cell_439/MatMul:product:0&while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_439/BiasAddBiasAddwhile/lstm_cell_439/add:z:02while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_439/splitSplit,while/lstm_cell_439/split/split_dim:output:0$while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_439/SigmoidSigmoid"while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_1Sigmoid"while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mulMul!while/lstm_cell_439/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_439/ReluRelu"while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_1Mulwhile/lstm_cell_439/Sigmoid:y:0&while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/add_1AddV2while/lstm_cell_439/mul:z:0while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_2Sigmoid"while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_439/Relu_1Reluwhile/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_2Mul!while/lstm_cell_439/Sigmoid_2:y:0(while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_439/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_439/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_439/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_439/BiasAdd/ReadVariableOp*^while/lstm_cell_439/MatMul/ReadVariableOp,^while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_439_biasadd_readvariableop_resource5while_lstm_cell_439_biasadd_readvariableop_resource_0"n
4while_lstm_cell_439_matmul_1_readvariableop_resource6while_lstm_cell_439_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_439_matmul_readvariableop_resource4while_lstm_cell_439_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_439/BiasAdd/ReadVariableOp*while/lstm_cell_439/BiasAdd/ReadVariableOp2V
)while/lstm_cell_439/MatMul/ReadVariableOp)while/lstm_cell_439/MatMul/ReadVariableOp2Z
+while/lstm_cell_439/MatMul_1/ReadVariableOp+while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2660462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2660462___redundant_placeholder05
1while_while_cond_2660462___redundant_placeholder15
1while_while_cond_2660462___redundant_placeholder25
1while_while_cond_2660462___redundant_placeholder3
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661562

inputs?
,lstm_cell_439_matmul_readvariableop_resource:	d?A
.lstm_cell_439_matmul_1_readvariableop_resource:	2?<
-lstm_cell_439_biasadd_readvariableop_resource:	?
identity??$lstm_cell_439/BiasAdd/ReadVariableOp?#lstm_cell_439/MatMul/ReadVariableOp?%lstm_cell_439/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_439/MatMul/ReadVariableOpReadVariableOp,lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_439/MatMulMatMulstrided_slice_2:output:0+lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_439/MatMul_1MatMulzeros:output:0-lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_439/addAddV2lstm_cell_439/MatMul:product:0 lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_439/BiasAddBiasAddlstm_cell_439/add:z:0,lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_439/splitSplit&lstm_cell_439/split/split_dim:output:0lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_439/SigmoidSigmoidlstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_1Sigmoidlstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_439/mulMullstm_cell_439/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_439/ReluRelulstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_1Mullstm_cell_439/Sigmoid:y:0 lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_439/add_1AddV2lstm_cell_439/mul:z:0lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_2Sigmoidlstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_439/Relu_1Relulstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_2Mullstm_cell_439/Sigmoid_2:y:0"lstm_cell_439/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_439_matmul_readvariableop_resource.lstm_cell_439_matmul_1_readvariableop_resource-lstm_cell_439_biasadd_readvariableop_resource*
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
while_body_2661478*
condR
while_cond_2661477*K
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
NoOpNoOp%^lstm_cell_439/BiasAdd/ReadVariableOp$^lstm_cell_439/MatMul/ReadVariableOp&^lstm_cell_439/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_439/BiasAdd/ReadVariableOp$lstm_cell_439/BiasAdd/ReadVariableOp2J
#lstm_cell_439/MatMul/ReadVariableOp#lstm_cell_439/MatMul/ReadVariableOp2N
%lstm_cell_439/MatMul_1/ReadVariableOp%lstm_cell_439/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_541_layer_call_and_return_conditional_losses_2660373

inputs(
lstm_cell_439_2660291:	d?(
lstm_cell_439_2660293:	2?$
lstm_cell_439_2660295:	?
identity??%lstm_cell_439/StatefulPartitionedCall?while;
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
%lstm_cell_439/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_439_2660291lstm_cell_439_2660293lstm_cell_439_2660295*
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660245n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_439_2660291lstm_cell_439_2660293lstm_cell_439_2660295*
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
while_body_2660304*
condR
while_cond_2660303*K
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
NoOpNoOp&^lstm_cell_439/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_439/StatefulPartitionedCall%lstm_cell_439/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_541_layer_call_fn_2663499

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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661031s
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
?#
?
while_body_2660463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_440_2660487_0:2(/
while_lstm_cell_440_2660489_0:
(+
while_lstm_cell_440_2660491_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_440_2660487:2(-
while_lstm_cell_440_2660489:
()
while_lstm_cell_440_2660491:(??+while/lstm_cell_440/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_440/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_440_2660487_0while_lstm_cell_440_2660489_0while_lstm_cell_440_2660491_0*
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660449?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_440/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_440/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_440/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_440/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_440_2660487while_lstm_cell_440_2660487_0"<
while_lstm_cell_440_2660489while_lstm_cell_440_2660489_0"<
while_lstm_cell_440_2660491while_lstm_cell_440_2660491_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_440/StatefulPartitionedCall+while/lstm_cell_440/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663180
inputs_0?
,lstm_cell_438_matmul_readvariableop_resource:	?A
.lstm_cell_438_matmul_1_readvariableop_resource:	d?<
-lstm_cell_438_biasadd_readvariableop_resource:	?
identity??$lstm_cell_438/BiasAdd/ReadVariableOp?#lstm_cell_438/MatMul/ReadVariableOp?%lstm_cell_438/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_438/MatMul/ReadVariableOpReadVariableOp,lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_438/MatMulMatMulstrided_slice_2:output:0+lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_438/MatMul_1MatMulzeros:output:0-lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_438/addAddV2lstm_cell_438/MatMul:product:0 lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_438/BiasAddBiasAddlstm_cell_438/add:z:0,lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_438/splitSplit&lstm_cell_438/split/split_dim:output:0lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_438/SigmoidSigmoidlstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_1Sigmoidlstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_438/mulMullstm_cell_438/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_438/ReluRelulstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_1Mullstm_cell_438/Sigmoid:y:0 lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_438/add_1AddV2lstm_cell_438/mul:z:0lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_2Sigmoidlstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_438/Relu_1Relulstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_2Mullstm_cell_438/Sigmoid_2:y:0"lstm_cell_438/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_438_matmul_readvariableop_resource.lstm_cell_438_matmul_1_readvariableop_resource-lstm_cell_438_biasadd_readvariableop_resource*
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
while_body_2663096*
condR
while_cond_2663095*K
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
NoOpNoOp%^lstm_cell_438/BiasAdd/ReadVariableOp$^lstm_cell_438/MatMul/ReadVariableOp&^lstm_cell_438/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_438/BiasAdd/ReadVariableOp$lstm_cell_438/BiasAdd/ReadVariableOp2J
#lstm_cell_438/MatMul/ReadVariableOp#lstm_cell_438/MatMul/ReadVariableOp2N
%lstm_cell_438/MatMul_1/ReadVariableOp%lstm_cell_438/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_542_while_cond_2662759.
*lstm_542_while_lstm_542_while_loop_counter4
0lstm_542_while_lstm_542_while_maximum_iterations
lstm_542_while_placeholder 
lstm_542_while_placeholder_1 
lstm_542_while_placeholder_2 
lstm_542_while_placeholder_30
,lstm_542_while_less_lstm_542_strided_slice_1G
Clstm_542_while_lstm_542_while_cond_2662759___redundant_placeholder0G
Clstm_542_while_lstm_542_while_cond_2662759___redundant_placeholder1G
Clstm_542_while_lstm_542_while_cond_2662759___redundant_placeholder2G
Clstm_542_while_lstm_542_while_cond_2662759___redundant_placeholder3
lstm_542_while_identity
?
lstm_542/while/LessLesslstm_542_while_placeholder,lstm_542_while_less_lstm_542_strided_slice_1*
T0*
_output_shapes
: ]
lstm_542/while/IdentityIdentitylstm_542/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_542_while_identity lstm_542/while/Identity:output:0*(
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664269
inputs_0>
,lstm_cell_440_matmul_readvariableop_resource:2(@
.lstm_cell_440_matmul_1_readvariableop_resource:
(;
-lstm_cell_440_biasadd_readvariableop_resource:(
identity??$lstm_cell_440/BiasAdd/ReadVariableOp?#lstm_cell_440/MatMul/ReadVariableOp?%lstm_cell_440/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_440/MatMul/ReadVariableOpReadVariableOp,lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_440/MatMulMatMulstrided_slice_2:output:0+lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_440/MatMul_1MatMulzeros:output:0-lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_440/addAddV2lstm_cell_440/MatMul:product:0 lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_440/BiasAddBiasAddlstm_cell_440/add:z:0,lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_440/splitSplit&lstm_cell_440/split/split_dim:output:0lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_440/SigmoidSigmoidlstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_1Sigmoidlstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_440/mulMullstm_cell_440/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_440/ReluRelulstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_1Mullstm_cell_440/Sigmoid:y:0 lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_440/add_1AddV2lstm_cell_440/mul:z:0lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_2Sigmoidlstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_440/Relu_1Relulstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_2Mullstm_cell_440/Sigmoid_2:y:0"lstm_cell_440/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_440_matmul_readvariableop_resource.lstm_cell_440_matmul_1_readvariableop_resource-lstm_cell_440_biasadd_readvariableop_resource*
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
while_body_2664185*
condR
while_cond_2664184*K
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
NoOpNoOp%^lstm_cell_440/BiasAdd/ReadVariableOp$^lstm_cell_440/MatMul/ReadVariableOp&^lstm_cell_440/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_440/BiasAdd/ReadVariableOp$lstm_cell_440/BiasAdd/ReadVariableOp2J
#lstm_cell_440/MatMul/ReadVariableOp#lstm_cell_440/MatMul/ReadVariableOp2N
%lstm_cell_440/MatMul_1/ReadVariableOp%lstm_cell_440/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_2665154
file_prefix/
+savev2_dense_180_kernel_read_readvariableop-
)savev2_dense_180_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_540_lstm_cell_540_kernel_read_readvariableopF
Bsavev2_lstm_540_lstm_cell_540_recurrent_kernel_read_readvariableop:
6savev2_lstm_540_lstm_cell_540_bias_read_readvariableop<
8savev2_lstm_541_lstm_cell_541_kernel_read_readvariableopF
Bsavev2_lstm_541_lstm_cell_541_recurrent_kernel_read_readvariableop:
6savev2_lstm_541_lstm_cell_541_bias_read_readvariableop<
8savev2_lstm_542_lstm_cell_542_kernel_read_readvariableopF
Bsavev2_lstm_542_lstm_cell_542_recurrent_kernel_read_readvariableop:
6savev2_lstm_542_lstm_cell_542_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_180_kernel_m_read_readvariableop4
0savev2_adam_dense_180_bias_m_read_readvariableopC
?savev2_adam_lstm_540_lstm_cell_540_kernel_m_read_readvariableopM
Isavev2_adam_lstm_540_lstm_cell_540_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_540_lstm_cell_540_bias_m_read_readvariableopC
?savev2_adam_lstm_541_lstm_cell_541_kernel_m_read_readvariableopM
Isavev2_adam_lstm_541_lstm_cell_541_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_541_lstm_cell_541_bias_m_read_readvariableopC
?savev2_adam_lstm_542_lstm_cell_542_kernel_m_read_readvariableopM
Isavev2_adam_lstm_542_lstm_cell_542_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_542_lstm_cell_542_bias_m_read_readvariableop6
2savev2_adam_dense_180_kernel_v_read_readvariableop4
0savev2_adam_dense_180_bias_v_read_readvariableopC
?savev2_adam_lstm_540_lstm_cell_540_kernel_v_read_readvariableopM
Isavev2_adam_lstm_540_lstm_cell_540_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_540_lstm_cell_540_bias_v_read_readvariableopC
?savev2_adam_lstm_541_lstm_cell_541_kernel_v_read_readvariableopM
Isavev2_adam_lstm_541_lstm_cell_541_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_541_lstm_cell_541_bias_v_read_readvariableopC
?savev2_adam_lstm_542_lstm_cell_542_kernel_v_read_readvariableopM
Isavev2_adam_lstm_542_lstm_cell_542_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_542_lstm_cell_542_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_180_kernel_read_readvariableop)savev2_dense_180_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_540_lstm_cell_540_kernel_read_readvariableopBsavev2_lstm_540_lstm_cell_540_recurrent_kernel_read_readvariableop6savev2_lstm_540_lstm_cell_540_bias_read_readvariableop8savev2_lstm_541_lstm_cell_541_kernel_read_readvariableopBsavev2_lstm_541_lstm_cell_541_recurrent_kernel_read_readvariableop6savev2_lstm_541_lstm_cell_541_bias_read_readvariableop8savev2_lstm_542_lstm_cell_542_kernel_read_readvariableopBsavev2_lstm_542_lstm_cell_542_recurrent_kernel_read_readvariableop6savev2_lstm_542_lstm_cell_542_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_180_kernel_m_read_readvariableop0savev2_adam_dense_180_bias_m_read_readvariableop?savev2_adam_lstm_540_lstm_cell_540_kernel_m_read_readvariableopIsavev2_adam_lstm_540_lstm_cell_540_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_540_lstm_cell_540_bias_m_read_readvariableop?savev2_adam_lstm_541_lstm_cell_541_kernel_m_read_readvariableopIsavev2_adam_lstm_541_lstm_cell_541_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_541_lstm_cell_541_bias_m_read_readvariableop?savev2_adam_lstm_542_lstm_cell_542_kernel_m_read_readvariableopIsavev2_adam_lstm_542_lstm_cell_542_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_542_lstm_cell_542_bias_m_read_readvariableop2savev2_adam_dense_180_kernel_v_read_readvariableop0savev2_adam_dense_180_bias_v_read_readvariableop?savev2_adam_lstm_540_lstm_cell_540_kernel_v_read_readvariableopIsavev2_adam_lstm_540_lstm_cell_540_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_540_lstm_cell_540_bias_v_read_readvariableop?savev2_adam_lstm_541_lstm_cell_541_kernel_v_read_readvariableopIsavev2_adam_lstm_541_lstm_cell_541_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_541_lstm_cell_541_bias_v_read_readvariableop?savev2_adam_lstm_542_lstm_cell_542_kernel_v_read_readvariableopIsavev2_adam_lstm_542_lstm_cell_542_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_542_lstm_cell_542_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

?
0__inference_sequential_180_layer_call_fn_2661847
lstm_540_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_540_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661795o
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
_user_specified_namelstm_540_input
?
?
+__inference_dense_180_layer_call_fn_2664707

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
F__inference_dense_180_layer_call_and_return_conditional_losses_2661199o
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
?T
?
*sequential_180_lstm_540_while_body_2659314L
Hsequential_180_lstm_540_while_sequential_180_lstm_540_while_loop_counterR
Nsequential_180_lstm_540_while_sequential_180_lstm_540_while_maximum_iterations-
)sequential_180_lstm_540_while_placeholder/
+sequential_180_lstm_540_while_placeholder_1/
+sequential_180_lstm_540_while_placeholder_2/
+sequential_180_lstm_540_while_placeholder_3K
Gsequential_180_lstm_540_while_sequential_180_lstm_540_strided_slice_1_0?
?sequential_180_lstm_540_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_540_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_180_lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0:	?a
Nsequential_180_lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?\
Msequential_180_lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0:	?*
&sequential_180_lstm_540_while_identity,
(sequential_180_lstm_540_while_identity_1,
(sequential_180_lstm_540_while_identity_2,
(sequential_180_lstm_540_while_identity_3,
(sequential_180_lstm_540_while_identity_4,
(sequential_180_lstm_540_while_identity_5I
Esequential_180_lstm_540_while_sequential_180_lstm_540_strided_slice_1?
?sequential_180_lstm_540_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_540_tensorarrayunstack_tensorlistfromtensor]
Jsequential_180_lstm_540_while_lstm_cell_438_matmul_readvariableop_resource:	?_
Lsequential_180_lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource:	d?Z
Ksequential_180_lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource:	???Bsequential_180/lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp?Asequential_180/lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp?Csequential_180/lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp?
Osequential_180/lstm_540/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_180/lstm_540/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_180_lstm_540_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_540_tensorarrayunstack_tensorlistfromtensor_0)sequential_180_lstm_540_while_placeholderXsequential_180/lstm_540/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_180/lstm_540/while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOpLsequential_180_lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_180/lstm_540/while/lstm_cell_438/MatMulMatMulHsequential_180/lstm_540/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_180/lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_180/lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOpNsequential_180_lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_180/lstm_540/while/lstm_cell_438/MatMul_1MatMul+sequential_180_lstm_540_while_placeholder_2Ksequential_180/lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_180/lstm_540/while/lstm_cell_438/addAddV2<sequential_180/lstm_540/while/lstm_cell_438/MatMul:product:0>sequential_180/lstm_540/while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_180/lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOpMsequential_180_lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_180/lstm_540/while/lstm_cell_438/BiasAddBiasAdd3sequential_180/lstm_540/while/lstm_cell_438/add:z:0Jsequential_180/lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_180/lstm_540/while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_180/lstm_540/while/lstm_cell_438/splitSplitDsequential_180/lstm_540/while/lstm_cell_438/split/split_dim:output:0<sequential_180/lstm_540/while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_180/lstm_540/while/lstm_cell_438/SigmoidSigmoid:sequential_180/lstm_540/while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_180/lstm_540/while/lstm_cell_438/Sigmoid_1Sigmoid:sequential_180/lstm_540/while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_180/lstm_540/while/lstm_cell_438/mulMul9sequential_180/lstm_540/while/lstm_cell_438/Sigmoid_1:y:0+sequential_180_lstm_540_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_180/lstm_540/while/lstm_cell_438/ReluRelu:sequential_180/lstm_540/while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_180/lstm_540/while/lstm_cell_438/mul_1Mul7sequential_180/lstm_540/while/lstm_cell_438/Sigmoid:y:0>sequential_180/lstm_540/while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_180/lstm_540/while/lstm_cell_438/add_1AddV23sequential_180/lstm_540/while/lstm_cell_438/mul:z:05sequential_180/lstm_540/while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_180/lstm_540/while/lstm_cell_438/Sigmoid_2Sigmoid:sequential_180/lstm_540/while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_180/lstm_540/while/lstm_cell_438/Relu_1Relu5sequential_180/lstm_540/while/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_180/lstm_540/while/lstm_cell_438/mul_2Mul9sequential_180/lstm_540/while/lstm_cell_438/Sigmoid_2:y:0@sequential_180/lstm_540/while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_180/lstm_540/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_180_lstm_540_while_placeholder_1)sequential_180_lstm_540_while_placeholder5sequential_180/lstm_540/while/lstm_cell_438/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_180/lstm_540/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_180/lstm_540/while/addAddV2)sequential_180_lstm_540_while_placeholder,sequential_180/lstm_540/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_180/lstm_540/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_180/lstm_540/while/add_1AddV2Hsequential_180_lstm_540_while_sequential_180_lstm_540_while_loop_counter.sequential_180/lstm_540/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_180/lstm_540/while/IdentityIdentity'sequential_180/lstm_540/while/add_1:z:0#^sequential_180/lstm_540/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_540/while/Identity_1IdentityNsequential_180_lstm_540_while_sequential_180_lstm_540_while_maximum_iterations#^sequential_180/lstm_540/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_540/while/Identity_2Identity%sequential_180/lstm_540/while/add:z:0#^sequential_180/lstm_540/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_540/while/Identity_3IdentityRsequential_180/lstm_540/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_180/lstm_540/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_540/while/Identity_4Identity5sequential_180/lstm_540/while/lstm_cell_438/mul_2:z:0#^sequential_180/lstm_540/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_180/lstm_540/while/Identity_5Identity5sequential_180/lstm_540/while/lstm_cell_438/add_1:z:0#^sequential_180/lstm_540/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_180/lstm_540/while/NoOpNoOpC^sequential_180/lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOpB^sequential_180/lstm_540/while/lstm_cell_438/MatMul/ReadVariableOpD^sequential_180/lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_180_lstm_540_while_identity/sequential_180/lstm_540/while/Identity:output:0"]
(sequential_180_lstm_540_while_identity_11sequential_180/lstm_540/while/Identity_1:output:0"]
(sequential_180_lstm_540_while_identity_21sequential_180/lstm_540/while/Identity_2:output:0"]
(sequential_180_lstm_540_while_identity_31sequential_180/lstm_540/while/Identity_3:output:0"]
(sequential_180_lstm_540_while_identity_41sequential_180/lstm_540/while/Identity_4:output:0"]
(sequential_180_lstm_540_while_identity_51sequential_180/lstm_540/while/Identity_5:output:0"?
Ksequential_180_lstm_540_while_lstm_cell_438_biasadd_readvariableop_resourceMsequential_180_lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0"?
Lsequential_180_lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resourceNsequential_180_lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0"?
Jsequential_180_lstm_540_while_lstm_cell_438_matmul_readvariableop_resourceLsequential_180_lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0"?
Esequential_180_lstm_540_while_sequential_180_lstm_540_strided_slice_1Gsequential_180_lstm_540_while_sequential_180_lstm_540_strided_slice_1_0"?
?sequential_180_lstm_540_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_540_tensorarrayunstack_tensorlistfromtensor?sequential_180_lstm_540_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_540_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_180/lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOpBsequential_180/lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp2?
Asequential_180/lstm_540/while/lstm_cell_438/MatMul/ReadVariableOpAsequential_180/lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp2?
Csequential_180/lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOpCsequential_180/lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2660947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_439_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_439_matmul_readvariableop_resource:	d?G
4while_lstm_cell_439_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_439_biasadd_readvariableop_resource:	???*while/lstm_cell_439/BiasAdd/ReadVariableOp?)while/lstm_cell_439/MatMul/ReadVariableOp?+while/lstm_cell_439/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_439/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_439/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_439/addAddV2$while/lstm_cell_439/MatMul:product:0&while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_439/BiasAddBiasAddwhile/lstm_cell_439/add:z:02while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_439/splitSplit,while/lstm_cell_439/split/split_dim:output:0$while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_439/SigmoidSigmoid"while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_1Sigmoid"while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mulMul!while/lstm_cell_439/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_439/ReluRelu"while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_1Mulwhile/lstm_cell_439/Sigmoid:y:0&while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/add_1AddV2while/lstm_cell_439/mul:z:0while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_2Sigmoid"while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_439/Relu_1Reluwhile/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_2Mul!while/lstm_cell_439/Sigmoid_2:y:0(while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_439/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_439/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_439/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_439/BiasAdd/ReadVariableOp*^while/lstm_cell_439/MatMul/ReadVariableOp,^while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_439_biasadd_readvariableop_resource5while_lstm_cell_439_biasadd_readvariableop_resource_0"n
4while_lstm_cell_439_matmul_1_readvariableop_resource6while_lstm_cell_439_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_439_matmul_readvariableop_resource4while_lstm_cell_439_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_439/BiasAdd/ReadVariableOp*while/lstm_cell_439/BiasAdd/ReadVariableOp2V
)while/lstm_cell_439/MatMul/ReadVariableOp)while/lstm_cell_439/MatMul/ReadVariableOp2Z
+while/lstm_cell_439/MatMul_1/ReadVariableOp+while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2664185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_440_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_440_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_440_matmul_readvariableop_resource:2(F
4while_lstm_cell_440_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_440_biasadd_readvariableop_resource:(??*while/lstm_cell_440/BiasAdd/ReadVariableOp?)while/lstm_cell_440/MatMul/ReadVariableOp?+while/lstm_cell_440/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_440/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_440/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_440/addAddV2$while/lstm_cell_440/MatMul:product:0&while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_440/BiasAddBiasAddwhile/lstm_cell_440/add:z:02while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_440/splitSplit,while/lstm_cell_440/split/split_dim:output:0$while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_440/SigmoidSigmoid"while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_1Sigmoid"while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mulMul!while/lstm_cell_440/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_440/ReluRelu"while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_1Mulwhile/lstm_cell_440/Sigmoid:y:0&while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/add_1AddV2while/lstm_cell_440/mul:z:0while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_2Sigmoid"while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_440/Relu_1Reluwhile/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_2Mul!while/lstm_cell_440/Sigmoid_2:y:0(while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_440/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_440/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_440/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_440/BiasAdd/ReadVariableOp*^while/lstm_cell_440/MatMul/ReadVariableOp,^while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_440_biasadd_readvariableop_resource5while_lstm_cell_440_biasadd_readvariableop_resource_0"n
4while_lstm_cell_440_matmul_1_readvariableop_resource6while_lstm_cell_440_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_440_matmul_readvariableop_resource4while_lstm_cell_440_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_440/BiasAdd/ReadVariableOp*while/lstm_cell_440/BiasAdd/ReadVariableOp2V
)while/lstm_cell_440/MatMul/ReadVariableOp)while/lstm_cell_440/MatMul/ReadVariableOp2Z
+while/lstm_cell_440/MatMul_1/ReadVariableOp+while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2660532

inputs'
lstm_cell_440_2660450:2('
lstm_cell_440_2660452:
(#
lstm_cell_440_2660454:(
identity??%lstm_cell_440/StatefulPartitionedCall?while;
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
%lstm_cell_440/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_440_2660450lstm_cell_440_2660452lstm_cell_440_2660454*
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660449n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_440_2660450lstm_cell_440_2660452lstm_cell_440_2660454*
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
while_body_2660463*
condR
while_cond_2660462*K
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
NoOpNoOp&^lstm_cell_440/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_440/StatefulPartitionedCall%lstm_cell_440/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2660303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2660303___redundant_placeholder05
1while_while_cond_2660303___redundant_placeholder15
1while_while_cond_2660303___redundant_placeholder25
1while_while_cond_2660303___redundant_placeholder3
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
while_body_2663712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_439_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_439_matmul_readvariableop_resource:	d?G
4while_lstm_cell_439_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_439_biasadd_readvariableop_resource:	???*while/lstm_cell_439/BiasAdd/ReadVariableOp?)while/lstm_cell_439/MatMul/ReadVariableOp?+while/lstm_cell_439/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_439/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_439/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_439/addAddV2$while/lstm_cell_439/MatMul:product:0&while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_439/BiasAddBiasAddwhile/lstm_cell_439/add:z:02while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_439/splitSplit,while/lstm_cell_439/split/split_dim:output:0$while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_439/SigmoidSigmoid"while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_1Sigmoid"while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mulMul!while/lstm_cell_439/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_439/ReluRelu"while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_1Mulwhile/lstm_cell_439/Sigmoid:y:0&while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/add_1AddV2while/lstm_cell_439/mul:z:0while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_2Sigmoid"while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_439/Relu_1Reluwhile/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_2Mul!while/lstm_cell_439/Sigmoid_2:y:0(while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_439/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_439/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_439/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_439/BiasAdd/ReadVariableOp*^while/lstm_cell_439/MatMul/ReadVariableOp,^while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_439_biasadd_readvariableop_resource5while_lstm_cell_439_biasadd_readvariableop_resource_0"n
4while_lstm_cell_439_matmul_1_readvariableop_resource6while_lstm_cell_439_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_439_matmul_readvariableop_resource4while_lstm_cell_439_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_439/BiasAdd/ReadVariableOp*while/lstm_cell_439/BiasAdd/ReadVariableOp2V
)while/lstm_cell_439/MatMul/ReadVariableOp)while/lstm_cell_439/MatMul/ReadVariableOp2Z
+while/lstm_cell_439/MatMul_1/ReadVariableOp+while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2664082

inputs?
,lstm_cell_439_matmul_readvariableop_resource:	d?A
.lstm_cell_439_matmul_1_readvariableop_resource:	2?<
-lstm_cell_439_biasadd_readvariableop_resource:	?
identity??$lstm_cell_439/BiasAdd/ReadVariableOp?#lstm_cell_439/MatMul/ReadVariableOp?%lstm_cell_439/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_439/MatMul/ReadVariableOpReadVariableOp,lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_439/MatMulMatMulstrided_slice_2:output:0+lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_439/MatMul_1MatMulzeros:output:0-lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_439/addAddV2lstm_cell_439/MatMul:product:0 lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_439/BiasAddBiasAddlstm_cell_439/add:z:0,lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_439/splitSplit&lstm_cell_439/split/split_dim:output:0lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_439/SigmoidSigmoidlstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_1Sigmoidlstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_439/mulMullstm_cell_439/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_439/ReluRelulstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_1Mullstm_cell_439/Sigmoid:y:0 lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_439/add_1AddV2lstm_cell_439/mul:z:0lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_2Sigmoidlstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_439/Relu_1Relulstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_2Mullstm_cell_439/Sigmoid_2:y:0"lstm_cell_439/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_439_matmul_readvariableop_resource.lstm_cell_439_matmul_1_readvariableop_resource-lstm_cell_439_biasadd_readvariableop_resource*
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
while_body_2663998*
condR
while_cond_2663997*K
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
NoOpNoOp%^lstm_cell_439/BiasAdd/ReadVariableOp$^lstm_cell_439/MatMul/ReadVariableOp&^lstm_cell_439/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_439/BiasAdd/ReadVariableOp$lstm_cell_439/BiasAdd/ReadVariableOp2J
#lstm_cell_439/MatMul/ReadVariableOp#lstm_cell_439/MatMul/ReadVariableOp2N
%lstm_cell_439/MatMul_1/ReadVariableOp%lstm_cell_439/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
K__inference_sequential_180_layer_call_and_return_conditional_losses_2662423

inputsH
5lstm_540_lstm_cell_438_matmul_readvariableop_resource:	?J
7lstm_540_lstm_cell_438_matmul_1_readvariableop_resource:	d?E
6lstm_540_lstm_cell_438_biasadd_readvariableop_resource:	?H
5lstm_541_lstm_cell_439_matmul_readvariableop_resource:	d?J
7lstm_541_lstm_cell_439_matmul_1_readvariableop_resource:	2?E
6lstm_541_lstm_cell_439_biasadd_readvariableop_resource:	?G
5lstm_542_lstm_cell_440_matmul_readvariableop_resource:2(I
7lstm_542_lstm_cell_440_matmul_1_readvariableop_resource:
(D
6lstm_542_lstm_cell_440_biasadd_readvariableop_resource:(:
(dense_180_matmul_readvariableop_resource:
7
)dense_180_biasadd_readvariableop_resource:
identity?? dense_180/BiasAdd/ReadVariableOp?dense_180/MatMul/ReadVariableOp?-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp?,lstm_540/lstm_cell_438/MatMul/ReadVariableOp?.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp?lstm_540/while?-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp?,lstm_541/lstm_cell_439/MatMul/ReadVariableOp?.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp?lstm_541/while?-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp?,lstm_542/lstm_cell_440/MatMul/ReadVariableOp?.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp?lstm_542/whileD
lstm_540/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_540/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_540/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_540/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_sliceStridedSlicelstm_540/Shape:output:0%lstm_540/strided_slice/stack:output:0'lstm_540/strided_slice/stack_1:output:0'lstm_540/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_540/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_540/zeros/packedPacklstm_540/strided_slice:output:0 lstm_540/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_540/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_540/zerosFilllstm_540/zeros/packed:output:0lstm_540/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_540/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_540/zeros_1/packedPacklstm_540/strided_slice:output:0"lstm_540/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_540/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_540/zeros_1Fill lstm_540/zeros_1/packed:output:0lstm_540/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_540/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_540/transpose	Transposeinputs lstm_540/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_540/Shape_1Shapelstm_540/transpose:y:0*
T0*
_output_shapes
:h
lstm_540/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_540/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_540/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_slice_1StridedSlicelstm_540/Shape_1:output:0'lstm_540/strided_slice_1/stack:output:0)lstm_540/strided_slice_1/stack_1:output:0)lstm_540/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_540/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_540/TensorArrayV2TensorListReserve-lstm_540/TensorArrayV2/element_shape:output:0!lstm_540/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_540/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_540/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_540/transpose:y:0Glstm_540/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_540/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_540/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_540/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_slice_2StridedSlicelstm_540/transpose:y:0'lstm_540/strided_slice_2/stack:output:0)lstm_540/strided_slice_2/stack_1:output:0)lstm_540/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_540/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp5lstm_540_lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_540/lstm_cell_438/MatMulMatMul!lstm_540/strided_slice_2:output:04lstm_540/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp7lstm_540_lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_540/lstm_cell_438/MatMul_1MatMullstm_540/zeros:output:06lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_540/lstm_cell_438/addAddV2'lstm_540/lstm_cell_438/MatMul:product:0)lstm_540/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp6lstm_540_lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_540/lstm_cell_438/BiasAddBiasAddlstm_540/lstm_cell_438/add:z:05lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_540/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_540/lstm_cell_438/splitSplit/lstm_540/lstm_cell_438/split/split_dim:output:0'lstm_540/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_540/lstm_cell_438/SigmoidSigmoid%lstm_540/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_540/lstm_cell_438/Sigmoid_1Sigmoid%lstm_540/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/mulMul$lstm_540/lstm_cell_438/Sigmoid_1:y:0lstm_540/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_540/lstm_cell_438/ReluRelu%lstm_540/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/mul_1Mul"lstm_540/lstm_cell_438/Sigmoid:y:0)lstm_540/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/add_1AddV2lstm_540/lstm_cell_438/mul:z:0 lstm_540/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_540/lstm_cell_438/Sigmoid_2Sigmoid%lstm_540/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_540/lstm_cell_438/Relu_1Relu lstm_540/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/mul_2Mul$lstm_540/lstm_cell_438/Sigmoid_2:y:0+lstm_540/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_540/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_540/TensorArrayV2_1TensorListReserve/lstm_540/TensorArrayV2_1/element_shape:output:0!lstm_540/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_540/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_540/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_540/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_540/whileWhile$lstm_540/while/loop_counter:output:0*lstm_540/while/maximum_iterations:output:0lstm_540/time:output:0!lstm_540/TensorArrayV2_1:handle:0lstm_540/zeros:output:0lstm_540/zeros_1:output:0!lstm_540/strided_slice_1:output:0@lstm_540/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_540_lstm_cell_438_matmul_readvariableop_resource7lstm_540_lstm_cell_438_matmul_1_readvariableop_resource6lstm_540_lstm_cell_438_biasadd_readvariableop_resource*
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
lstm_540_while_body_2662055*'
condR
lstm_540_while_cond_2662054*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_540/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_540/TensorArrayV2Stack/TensorListStackTensorListStacklstm_540/while:output:3Blstm_540/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_540/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_540/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_540/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_slice_3StridedSlice4lstm_540/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_540/strided_slice_3/stack:output:0)lstm_540/strided_slice_3/stack_1:output:0)lstm_540/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_540/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_540/transpose_1	Transpose4lstm_540/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_540/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_540/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_541/ShapeShapelstm_540/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_541/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_541/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_541/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_sliceStridedSlicelstm_541/Shape:output:0%lstm_541/strided_slice/stack:output:0'lstm_541/strided_slice/stack_1:output:0'lstm_541/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_541/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_541/zeros/packedPacklstm_541/strided_slice:output:0 lstm_541/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_541/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_541/zerosFilllstm_541/zeros/packed:output:0lstm_541/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_541/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_541/zeros_1/packedPacklstm_541/strided_slice:output:0"lstm_541/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_541/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_541/zeros_1Fill lstm_541/zeros_1/packed:output:0lstm_541/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_541/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_541/transpose	Transposelstm_540/transpose_1:y:0 lstm_541/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_541/Shape_1Shapelstm_541/transpose:y:0*
T0*
_output_shapes
:h
lstm_541/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_541/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_541/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_slice_1StridedSlicelstm_541/Shape_1:output:0'lstm_541/strided_slice_1/stack:output:0)lstm_541/strided_slice_1/stack_1:output:0)lstm_541/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_541/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_541/TensorArrayV2TensorListReserve-lstm_541/TensorArrayV2/element_shape:output:0!lstm_541/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_541/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_541/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_541/transpose:y:0Glstm_541/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_541/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_541/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_541/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_slice_2StridedSlicelstm_541/transpose:y:0'lstm_541/strided_slice_2/stack:output:0)lstm_541/strided_slice_2/stack_1:output:0)lstm_541/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_541/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp5lstm_541_lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_541/lstm_cell_439/MatMulMatMul!lstm_541/strided_slice_2:output:04lstm_541/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp7lstm_541_lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_541/lstm_cell_439/MatMul_1MatMullstm_541/zeros:output:06lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_541/lstm_cell_439/addAddV2'lstm_541/lstm_cell_439/MatMul:product:0)lstm_541/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp6lstm_541_lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_541/lstm_cell_439/BiasAddBiasAddlstm_541/lstm_cell_439/add:z:05lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_541/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_541/lstm_cell_439/splitSplit/lstm_541/lstm_cell_439/split/split_dim:output:0'lstm_541/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_541/lstm_cell_439/SigmoidSigmoid%lstm_541/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_541/lstm_cell_439/Sigmoid_1Sigmoid%lstm_541/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/mulMul$lstm_541/lstm_cell_439/Sigmoid_1:y:0lstm_541/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_541/lstm_cell_439/ReluRelu%lstm_541/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/mul_1Mul"lstm_541/lstm_cell_439/Sigmoid:y:0)lstm_541/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/add_1AddV2lstm_541/lstm_cell_439/mul:z:0 lstm_541/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_541/lstm_cell_439/Sigmoid_2Sigmoid%lstm_541/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_541/lstm_cell_439/Relu_1Relu lstm_541/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/mul_2Mul$lstm_541/lstm_cell_439/Sigmoid_2:y:0+lstm_541/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_541/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_541/TensorArrayV2_1TensorListReserve/lstm_541/TensorArrayV2_1/element_shape:output:0!lstm_541/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_541/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_541/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_541/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_541/whileWhile$lstm_541/while/loop_counter:output:0*lstm_541/while/maximum_iterations:output:0lstm_541/time:output:0!lstm_541/TensorArrayV2_1:handle:0lstm_541/zeros:output:0lstm_541/zeros_1:output:0!lstm_541/strided_slice_1:output:0@lstm_541/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_541_lstm_cell_439_matmul_readvariableop_resource7lstm_541_lstm_cell_439_matmul_1_readvariableop_resource6lstm_541_lstm_cell_439_biasadd_readvariableop_resource*
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
lstm_541_while_body_2662194*'
condR
lstm_541_while_cond_2662193*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_541/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_541/TensorArrayV2Stack/TensorListStackTensorListStacklstm_541/while:output:3Blstm_541/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_541/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_541/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_541/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_slice_3StridedSlice4lstm_541/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_541/strided_slice_3/stack:output:0)lstm_541/strided_slice_3/stack_1:output:0)lstm_541/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_541/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_541/transpose_1	Transpose4lstm_541/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_541/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_541/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_542/ShapeShapelstm_541/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_542/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_542/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_542/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_sliceStridedSlicelstm_542/Shape:output:0%lstm_542/strided_slice/stack:output:0'lstm_542/strided_slice/stack_1:output:0'lstm_542/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_542/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_542/zeros/packedPacklstm_542/strided_slice:output:0 lstm_542/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_542/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_542/zerosFilllstm_542/zeros/packed:output:0lstm_542/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_542/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_542/zeros_1/packedPacklstm_542/strided_slice:output:0"lstm_542/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_542/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_542/zeros_1Fill lstm_542/zeros_1/packed:output:0lstm_542/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_542/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_542/transpose	Transposelstm_541/transpose_1:y:0 lstm_542/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_542/Shape_1Shapelstm_542/transpose:y:0*
T0*
_output_shapes
:h
lstm_542/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_542/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_542/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_slice_1StridedSlicelstm_542/Shape_1:output:0'lstm_542/strided_slice_1/stack:output:0)lstm_542/strided_slice_1/stack_1:output:0)lstm_542/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_542/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_542/TensorArrayV2TensorListReserve-lstm_542/TensorArrayV2/element_shape:output:0!lstm_542/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_542/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_542/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_542/transpose:y:0Glstm_542/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_542/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_542/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_542/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_slice_2StridedSlicelstm_542/transpose:y:0'lstm_542/strided_slice_2/stack:output:0)lstm_542/strided_slice_2/stack_1:output:0)lstm_542/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_542/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp5lstm_542_lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_542/lstm_cell_440/MatMulMatMul!lstm_542/strided_slice_2:output:04lstm_542/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp7lstm_542_lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_542/lstm_cell_440/MatMul_1MatMullstm_542/zeros:output:06lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_542/lstm_cell_440/addAddV2'lstm_542/lstm_cell_440/MatMul:product:0)lstm_542/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp6lstm_542_lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_542/lstm_cell_440/BiasAddBiasAddlstm_542/lstm_cell_440/add:z:05lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_542/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_542/lstm_cell_440/splitSplit/lstm_542/lstm_cell_440/split/split_dim:output:0'lstm_542/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_542/lstm_cell_440/SigmoidSigmoid%lstm_542/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_542/lstm_cell_440/Sigmoid_1Sigmoid%lstm_542/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/mulMul$lstm_542/lstm_cell_440/Sigmoid_1:y:0lstm_542/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_542/lstm_cell_440/ReluRelu%lstm_542/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/mul_1Mul"lstm_542/lstm_cell_440/Sigmoid:y:0)lstm_542/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/add_1AddV2lstm_542/lstm_cell_440/mul:z:0 lstm_542/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_542/lstm_cell_440/Sigmoid_2Sigmoid%lstm_542/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_542/lstm_cell_440/Relu_1Relu lstm_542/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/mul_2Mul$lstm_542/lstm_cell_440/Sigmoid_2:y:0+lstm_542/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_542/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_542/TensorArrayV2_1TensorListReserve/lstm_542/TensorArrayV2_1/element_shape:output:0!lstm_542/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_542/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_542/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_542/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_542/whileWhile$lstm_542/while/loop_counter:output:0*lstm_542/while/maximum_iterations:output:0lstm_542/time:output:0!lstm_542/TensorArrayV2_1:handle:0lstm_542/zeros:output:0lstm_542/zeros_1:output:0!lstm_542/strided_slice_1:output:0@lstm_542/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_542_lstm_cell_440_matmul_readvariableop_resource7lstm_542_lstm_cell_440_matmul_1_readvariableop_resource6lstm_542_lstm_cell_440_biasadd_readvariableop_resource*
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
lstm_542_while_body_2662333*'
condR
lstm_542_while_cond_2662332*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_542/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_542/TensorArrayV2Stack/TensorListStackTensorListStacklstm_542/while:output:3Blstm_542/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_542/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_542/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_542/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_slice_3StridedSlice4lstm_542/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_542/strided_slice_3/stack:output:0)lstm_542/strided_slice_3/stack_1:output:0)lstm_542/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_542/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_542/transpose_1	Transpose4lstm_542/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_542/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_542/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_180/MatMul/ReadVariableOpReadVariableOp(dense_180_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_180/MatMulMatMul!lstm_542/strided_slice_3:output:0'dense_180/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_180/BiasAdd/ReadVariableOpReadVariableOp)dense_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_180/BiasAddBiasAdddense_180/MatMul:product:0(dense_180/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_180/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_180/BiasAdd/ReadVariableOp ^dense_180/MatMul/ReadVariableOp.^lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp-^lstm_540/lstm_cell_438/MatMul/ReadVariableOp/^lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp^lstm_540/while.^lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp-^lstm_541/lstm_cell_439/MatMul/ReadVariableOp/^lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp^lstm_541/while.^lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp-^lstm_542/lstm_cell_440/MatMul/ReadVariableOp/^lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp^lstm_542/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_180/BiasAdd/ReadVariableOp dense_180/BiasAdd/ReadVariableOp2B
dense_180/MatMul/ReadVariableOpdense_180/MatMul/ReadVariableOp2^
-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp2\
,lstm_540/lstm_cell_438/MatMul/ReadVariableOp,lstm_540/lstm_cell_438/MatMul/ReadVariableOp2`
.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp2 
lstm_540/whilelstm_540/while2^
-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp2\
,lstm_541/lstm_cell_439/MatMul/ReadVariableOp,lstm_541/lstm_cell_439/MatMul/ReadVariableOp2`
.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp2 
lstm_541/whilelstm_541/while2^
-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp2\
,lstm_542/lstm_cell_440/MatMul/ReadVariableOp,lstm_542/lstm_cell_440/MatMul/ReadVariableOp2`
.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp2 
lstm_542/whilelstm_542/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663323

inputs?
,lstm_cell_438_matmul_readvariableop_resource:	?A
.lstm_cell_438_matmul_1_readvariableop_resource:	d?<
-lstm_cell_438_biasadd_readvariableop_resource:	?
identity??$lstm_cell_438/BiasAdd/ReadVariableOp?#lstm_cell_438/MatMul/ReadVariableOp?%lstm_cell_438/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_438/MatMul/ReadVariableOpReadVariableOp,lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_438/MatMulMatMulstrided_slice_2:output:0+lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_438/MatMul_1MatMulzeros:output:0-lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_438/addAddV2lstm_cell_438/MatMul:product:0 lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_438/BiasAddBiasAddlstm_cell_438/add:z:0,lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_438/splitSplit&lstm_cell_438/split/split_dim:output:0lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_438/SigmoidSigmoidlstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_1Sigmoidlstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_438/mulMullstm_cell_438/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_438/ReluRelulstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_1Mullstm_cell_438/Sigmoid:y:0 lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_438/add_1AddV2lstm_cell_438/mul:z:0lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_2Sigmoidlstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_438/Relu_1Relulstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_2Mullstm_cell_438/Sigmoid_2:y:0"lstm_cell_438/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_438_matmul_readvariableop_resource.lstm_cell_438_matmul_1_readvariableop_resource-lstm_cell_438_biasadd_readvariableop_resource*
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
while_body_2663239*
condR
while_cond_2663238*K
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
NoOpNoOp%^lstm_cell_438/BiasAdd/ReadVariableOp$^lstm_cell_438/MatMul/ReadVariableOp&^lstm_cell_438/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_438/BiasAdd/ReadVariableOp$lstm_cell_438/BiasAdd/ReadVariableOp2J
#lstm_cell_438/MatMul/ReadVariableOp#lstm_cell_438/MatMul/ReadVariableOp2N
%lstm_cell_438/MatMul_1/ReadVariableOp%lstm_cell_438/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2663854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2663854___redundant_placeholder05
1while_while_cond_2663854___redundant_placeholder15
1while_while_cond_2663854___redundant_placeholder25
1while_while_cond_2663854___redundant_placeholder3
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
*__inference_lstm_541_layer_call_fn_2663510

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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661562s
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
?K
?
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664412
inputs_0>
,lstm_cell_440_matmul_readvariableop_resource:2(@
.lstm_cell_440_matmul_1_readvariableop_resource:
(;
-lstm_cell_440_biasadd_readvariableop_resource:(
identity??$lstm_cell_440/BiasAdd/ReadVariableOp?#lstm_cell_440/MatMul/ReadVariableOp?%lstm_cell_440/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_440/MatMul/ReadVariableOpReadVariableOp,lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_440/MatMulMatMulstrided_slice_2:output:0+lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_440/MatMul_1MatMulzeros:output:0-lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_440/addAddV2lstm_cell_440/MatMul:product:0 lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_440/BiasAddBiasAddlstm_cell_440/add:z:0,lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_440/splitSplit&lstm_cell_440/split/split_dim:output:0lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_440/SigmoidSigmoidlstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_1Sigmoidlstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_440/mulMullstm_cell_440/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_440/ReluRelulstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_1Mullstm_cell_440/Sigmoid:y:0 lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_440/add_1AddV2lstm_cell_440/mul:z:0lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_2Sigmoidlstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_440/Relu_1Relulstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_2Mullstm_cell_440/Sigmoid_2:y:0"lstm_cell_440/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_440_matmul_readvariableop_resource.lstm_cell_440_matmul_1_readvariableop_resource-lstm_cell_440_biasadd_readvariableop_resource*
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
while_body_2664328*
condR
while_cond_2664327*K
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
NoOpNoOp%^lstm_cell_440/BiasAdd/ReadVariableOp$^lstm_cell_440/MatMul/ReadVariableOp&^lstm_cell_440/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_440/BiasAdd/ReadVariableOp$lstm_cell_440/BiasAdd/ReadVariableOp2J
#lstm_cell_440/MatMul/ReadVariableOp#lstm_cell_440/MatMul/ReadVariableOp2N
%lstm_cell_440/MatMul_1/ReadVariableOp%lstm_cell_440/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*sequential_180_lstm_542_while_cond_2659591L
Hsequential_180_lstm_542_while_sequential_180_lstm_542_while_loop_counterR
Nsequential_180_lstm_542_while_sequential_180_lstm_542_while_maximum_iterations-
)sequential_180_lstm_542_while_placeholder/
+sequential_180_lstm_542_while_placeholder_1/
+sequential_180_lstm_542_while_placeholder_2/
+sequential_180_lstm_542_while_placeholder_3N
Jsequential_180_lstm_542_while_less_sequential_180_lstm_542_strided_slice_1e
asequential_180_lstm_542_while_sequential_180_lstm_542_while_cond_2659591___redundant_placeholder0e
asequential_180_lstm_542_while_sequential_180_lstm_542_while_cond_2659591___redundant_placeholder1e
asequential_180_lstm_542_while_sequential_180_lstm_542_while_cond_2659591___redundant_placeholder2e
asequential_180_lstm_542_while_sequential_180_lstm_542_while_cond_2659591___redundant_placeholder3*
&sequential_180_lstm_542_while_identity
?
"sequential_180/lstm_542/while/LessLess)sequential_180_lstm_542_while_placeholderJsequential_180_lstm_542_while_less_sequential_180_lstm_542_strided_slice_1*
T0*
_output_shapes
: {
&sequential_180/lstm_542/while/IdentityIdentity&sequential_180/lstm_542/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_180_lstm_542_while_identity/sequential_180/lstm_542/while/Identity:output:0*(
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2664881

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
/__inference_lstm_cell_438_layer_call_fn_2664734

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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659749o
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
while_cond_2664327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2664327___redundant_placeholder05
1while_while_cond_2664327___redundant_placeholder15
1while_while_cond_2664327___redundant_placeholder25
1while_while_cond_2664327___redundant_placeholder3
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
while_cond_2663568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2663568___redundant_placeholder05
1while_while_cond_2663568___redundant_placeholder15
1while_while_cond_2663568___redundant_placeholder25
1while_while_cond_2663568___redundant_placeholder3
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
*__inference_lstm_541_layer_call_fn_2663477
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2660182|
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
lstm_541_while_cond_2662193.
*lstm_541_while_lstm_541_while_loop_counter4
0lstm_541_while_lstm_541_while_maximum_iterations
lstm_541_while_placeholder 
lstm_541_while_placeholder_1 
lstm_541_while_placeholder_2 
lstm_541_while_placeholder_30
,lstm_541_while_less_lstm_541_strided_slice_1G
Clstm_541_while_lstm_541_while_cond_2662193___redundant_placeholder0G
Clstm_541_while_lstm_541_while_cond_2662193___redundant_placeholder1G
Clstm_541_while_lstm_541_while_cond_2662193___redundant_placeholder2G
Clstm_541_while_lstm_541_while_cond_2662193___redundant_placeholder3
lstm_541_while_identity
?
lstm_541/while/LessLesslstm_541_while_placeholder,lstm_541_while_less_lstm_541_strided_slice_1*
T0*
_output_shapes
: ]
lstm_541/while/IdentityIdentitylstm_541/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_541_while_identity lstm_541/while/Identity:output:0*(
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
/__inference_lstm_cell_440_layer_call_fn_2664930

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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660449o
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
lstm_540_while_cond_2662054.
*lstm_540_while_lstm_540_while_loop_counter4
0lstm_540_while_lstm_540_while_maximum_iterations
lstm_540_while_placeholder 
lstm_540_while_placeholder_1 
lstm_540_while_placeholder_2 
lstm_540_while_placeholder_30
,lstm_540_while_less_lstm_540_strided_slice_1G
Clstm_540_while_lstm_540_while_cond_2662054___redundant_placeholder0G
Clstm_540_while_lstm_540_while_cond_2662054___redundant_placeholder1G
Clstm_540_while_lstm_540_while_cond_2662054___redundant_placeholder2G
Clstm_540_while_lstm_540_while_cond_2662054___redundant_placeholder3
lstm_540_while_identity
?
lstm_540/while/LessLesslstm_540_while_placeholder,lstm_540_while_less_lstm_540_strided_slice_1*
T0*
_output_shapes
: ]
lstm_540/while/IdentityIdentitylstm_540/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_540_while_identity lstm_540/while/Identity:output:0*(
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
while_body_2661643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_438_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_438_matmul_readvariableop_resource:	?G
4while_lstm_cell_438_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_438_biasadd_readvariableop_resource:	???*while/lstm_cell_438/BiasAdd/ReadVariableOp?)while/lstm_cell_438/MatMul/ReadVariableOp?+while/lstm_cell_438/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_438/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_438/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_438/addAddV2$while/lstm_cell_438/MatMul:product:0&while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_438/BiasAddBiasAddwhile/lstm_cell_438/add:z:02while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_438/splitSplit,while/lstm_cell_438/split/split_dim:output:0$while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_438/SigmoidSigmoid"while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_1Sigmoid"while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mulMul!while/lstm_cell_438/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_438/ReluRelu"while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_1Mulwhile/lstm_cell_438/Sigmoid:y:0&while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/add_1AddV2while/lstm_cell_438/mul:z:0while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_2Sigmoid"while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_438/Relu_1Reluwhile/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_2Mul!while/lstm_cell_438/Sigmoid_2:y:0(while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_438/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_438/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_438/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_438/BiasAdd/ReadVariableOp*^while/lstm_cell_438/MatMul/ReadVariableOp,^while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_438_biasadd_readvariableop_resource5while_lstm_cell_438_biasadd_readvariableop_resource_0"n
4while_lstm_cell_438_matmul_1_readvariableop_resource6while_lstm_cell_438_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_438_matmul_readvariableop_resource4while_lstm_cell_438_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_438/BiasAdd/ReadVariableOp*while/lstm_cell_438/BiasAdd/ReadVariableOp2V
)while/lstm_cell_438/MatMul/ReadVariableOp)while/lstm_cell_438/MatMul/ReadVariableOp2Z
+while/lstm_cell_438/MatMul_1/ReadVariableOp+while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2660796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2660796___redundant_placeholder05
1while_while_cond_2660796___redundant_placeholder15
1while_while_cond_2660796___redundant_placeholder25
1while_while_cond_2660796___redundant_placeholder3
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661907
lstm_540_input#
lstm_540_2661880:	?#
lstm_540_2661882:	d?
lstm_540_2661884:	?#
lstm_541_2661887:	d?#
lstm_541_2661889:	2?
lstm_541_2661891:	?"
lstm_542_2661894:2("
lstm_542_2661896:
(
lstm_542_2661898:(#
dense_180_2661901:

dense_180_2661903:
identity??!dense_180/StatefulPartitionedCall? lstm_540/StatefulPartitionedCall? lstm_541/StatefulPartitionedCall? lstm_542/StatefulPartitionedCall?
 lstm_540/StatefulPartitionedCallStatefulPartitionedCalllstm_540_inputlstm_540_2661880lstm_540_2661882lstm_540_2661884*
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2661727?
 lstm_541/StatefulPartitionedCallStatefulPartitionedCall)lstm_540/StatefulPartitionedCall:output:0lstm_541_2661887lstm_541_2661889lstm_541_2661891*
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661562?
 lstm_542/StatefulPartitionedCallStatefulPartitionedCall)lstm_541/StatefulPartitionedCall:output:0lstm_542_2661894lstm_542_2661896lstm_542_2661898*
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661397?
!dense_180/StatefulPartitionedCallStatefulPartitionedCall)lstm_542/StatefulPartitionedCall:output:0dense_180_2661901dense_180_2661903*
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
F__inference_dense_180_layer_call_and_return_conditional_losses_2661199y
IdentityIdentity*dense_180/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_180/StatefulPartitionedCall!^lstm_540/StatefulPartitionedCall!^lstm_541/StatefulPartitionedCall!^lstm_542/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_180/StatefulPartitionedCall!dense_180/StatefulPartitionedCall2D
 lstm_540/StatefulPartitionedCall lstm_540/StatefulPartitionedCall2D
 lstm_541/StatefulPartitionedCall lstm_541/StatefulPartitionedCall2D
 lstm_542/StatefulPartitionedCall lstm_542/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_540_input
?8
?
E__inference_lstm_540_layer_call_and_return_conditional_losses_2659832

inputs(
lstm_cell_438_2659750:	?(
lstm_cell_438_2659752:	d?$
lstm_cell_438_2659754:	?
identity??%lstm_cell_438/StatefulPartitionedCall?while;
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
%lstm_cell_438/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_438_2659750lstm_cell_438_2659752lstm_cell_438_2659754*
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659749n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_438_2659750lstm_cell_438_2659752lstm_cell_438_2659754*
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
while_body_2659763*
condR
while_cond_2659762*K
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
NoOpNoOp&^lstm_cell_438/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_438/StatefulPartitionedCall%lstm_cell_438/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2661642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2661642___redundant_placeholder05
1while_while_cond_2661642___redundant_placeholder15
1while_while_cond_2661642___redundant_placeholder25
1while_while_cond_2661642___redundant_placeholder3
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
while_cond_2661312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2661312___redundant_placeholder05
1while_while_cond_2661312___redundant_placeholder15
1while_while_cond_2661312___redundant_placeholder25
1while_while_cond_2661312___redundant_placeholder3
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
*__inference_lstm_540_layer_call_fn_2662883

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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2660881s
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
while_body_2663569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_439_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_439_matmul_readvariableop_resource:	d?G
4while_lstm_cell_439_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_439_biasadd_readvariableop_resource:	???*while/lstm_cell_439/BiasAdd/ReadVariableOp?)while/lstm_cell_439/MatMul/ReadVariableOp?+while/lstm_cell_439/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_439/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_439/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_439/addAddV2$while/lstm_cell_439/MatMul:product:0&while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_439/BiasAddBiasAddwhile/lstm_cell_439/add:z:02while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_439/splitSplit,while/lstm_cell_439/split/split_dim:output:0$while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_439/SigmoidSigmoid"while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_1Sigmoid"while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mulMul!while/lstm_cell_439/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_439/ReluRelu"while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_1Mulwhile/lstm_cell_439/Sigmoid:y:0&while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/add_1AddV2while/lstm_cell_439/mul:z:0while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_2Sigmoid"while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_439/Relu_1Reluwhile/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_2Mul!while/lstm_cell_439/Sigmoid_2:y:0(while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_439/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_439/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_439/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_439/BiasAdd/ReadVariableOp*^while/lstm_cell_439/MatMul/ReadVariableOp,^while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_439_biasadd_readvariableop_resource5while_lstm_cell_439_biasadd_readvariableop_resource_0"n
4while_lstm_cell_439_matmul_1_readvariableop_resource6while_lstm_cell_439_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_439_matmul_readvariableop_resource4while_lstm_cell_439_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_439/BiasAdd/ReadVariableOp*while/lstm_cell_439/BiasAdd/ReadVariableOp2V
)while/lstm_cell_439/MatMul/ReadVariableOp)while/lstm_cell_439/MatMul/ReadVariableOp2Z
+while/lstm_cell_439/MatMul_1/ReadVariableOp+while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_542_while_cond_2662332.
*lstm_542_while_lstm_542_while_loop_counter4
0lstm_542_while_lstm_542_while_maximum_iterations
lstm_542_while_placeholder 
lstm_542_while_placeholder_1 
lstm_542_while_placeholder_2 
lstm_542_while_placeholder_30
,lstm_542_while_less_lstm_542_strided_slice_1G
Clstm_542_while_lstm_542_while_cond_2662332___redundant_placeholder0G
Clstm_542_while_lstm_542_while_cond_2662332___redundant_placeholder1G
Clstm_542_while_lstm_542_while_cond_2662332___redundant_placeholder2G
Clstm_542_while_lstm_542_while_cond_2662332___redundant_placeholder3
lstm_542_while_identity
?
lstm_542/while/LessLesslstm_542_while_placeholder,lstm_542_while_less_lstm_542_strided_slice_1*
T0*
_output_shapes
: ]
lstm_542/while/IdentityIdentitylstm_542/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_542_while_identity lstm_542/while/Identity:output:0*(
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
*__inference_lstm_542_layer_call_fn_2664115

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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661181o
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
?
while_body_2661097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_440_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_440_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_440_matmul_readvariableop_resource:2(F
4while_lstm_cell_440_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_440_biasadd_readvariableop_resource:(??*while/lstm_cell_440/BiasAdd/ReadVariableOp?)while/lstm_cell_440/MatMul/ReadVariableOp?+while/lstm_cell_440/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_440/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_440/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_440/addAddV2$while/lstm_cell_440/MatMul:product:0&while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_440/BiasAddBiasAddwhile/lstm_cell_440/add:z:02while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_440/splitSplit,while/lstm_cell_440/split/split_dim:output:0$while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_440/SigmoidSigmoid"while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_1Sigmoid"while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mulMul!while/lstm_cell_440/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_440/ReluRelu"while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_1Mulwhile/lstm_cell_440/Sigmoid:y:0&while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/add_1AddV2while/lstm_cell_440/mul:z:0while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_2Sigmoid"while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_440/Relu_1Reluwhile/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_2Mul!while/lstm_cell_440/Sigmoid_2:y:0(while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_440/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_440/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_440/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_440/BiasAdd/ReadVariableOp*^while/lstm_cell_440/MatMul/ReadVariableOp,^while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_440_biasadd_readvariableop_resource5while_lstm_cell_440_biasadd_readvariableop_resource_0"n
4while_lstm_cell_440_matmul_1_readvariableop_resource6while_lstm_cell_440_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_440_matmul_readvariableop_resource4while_lstm_cell_440_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_440/BiasAdd/ReadVariableOp*while/lstm_cell_440/BiasAdd/ReadVariableOp2V
)while/lstm_cell_440/MatMul/ReadVariableOp)while/lstm_cell_440/MatMul/ReadVariableOp2Z
+while/lstm_cell_440/MatMul_1/ReadVariableOp+while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_541_while_body_2662194.
*lstm_541_while_lstm_541_while_loop_counter4
0lstm_541_while_lstm_541_while_maximum_iterations
lstm_541_while_placeholder 
lstm_541_while_placeholder_1 
lstm_541_while_placeholder_2 
lstm_541_while_placeholder_3-
)lstm_541_while_lstm_541_strided_slice_1_0i
elstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0:	d?R
?lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?M
>lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
lstm_541_while_identity
lstm_541_while_identity_1
lstm_541_while_identity_2
lstm_541_while_identity_3
lstm_541_while_identity_4
lstm_541_while_identity_5+
'lstm_541_while_lstm_541_strided_slice_1g
clstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensorN
;lstm_541_while_lstm_cell_439_matmul_readvariableop_resource:	d?P
=lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource:	2?K
<lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource:	???3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp?2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp?4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp?
@lstm_541/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_541/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensor_0lstm_541_while_placeholderIlstm_541/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp=lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_541/while/lstm_cell_439/MatMulMatMul9lstm_541/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp?lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_541/while/lstm_cell_439/MatMul_1MatMullstm_541_while_placeholder_2<lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_541/while/lstm_cell_439/addAddV2-lstm_541/while/lstm_cell_439/MatMul:product:0/lstm_541/while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp>lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_541/while/lstm_cell_439/BiasAddBiasAdd$lstm_541/while/lstm_cell_439/add:z:0;lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_541/while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_541/while/lstm_cell_439/splitSplit5lstm_541/while/lstm_cell_439/split/split_dim:output:0-lstm_541/while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_541/while/lstm_cell_439/SigmoidSigmoid+lstm_541/while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_541/while/lstm_cell_439/Sigmoid_1Sigmoid+lstm_541/while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_541/while/lstm_cell_439/mulMul*lstm_541/while/lstm_cell_439/Sigmoid_1:y:0lstm_541_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_541/while/lstm_cell_439/ReluRelu+lstm_541/while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_541/while/lstm_cell_439/mul_1Mul(lstm_541/while/lstm_cell_439/Sigmoid:y:0/lstm_541/while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_541/while/lstm_cell_439/add_1AddV2$lstm_541/while/lstm_cell_439/mul:z:0&lstm_541/while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_541/while/lstm_cell_439/Sigmoid_2Sigmoid+lstm_541/while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_541/while/lstm_cell_439/Relu_1Relu&lstm_541/while/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_541/while/lstm_cell_439/mul_2Mul*lstm_541/while/lstm_cell_439/Sigmoid_2:y:01lstm_541/while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_541/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_541_while_placeholder_1lstm_541_while_placeholder&lstm_541/while/lstm_cell_439/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_541/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_541/while/addAddV2lstm_541_while_placeholderlstm_541/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_541/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_541/while/add_1AddV2*lstm_541_while_lstm_541_while_loop_counterlstm_541/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_541/while/IdentityIdentitylstm_541/while/add_1:z:0^lstm_541/while/NoOp*
T0*
_output_shapes
: ?
lstm_541/while/Identity_1Identity0lstm_541_while_lstm_541_while_maximum_iterations^lstm_541/while/NoOp*
T0*
_output_shapes
: t
lstm_541/while/Identity_2Identitylstm_541/while/add:z:0^lstm_541/while/NoOp*
T0*
_output_shapes
: ?
lstm_541/while/Identity_3IdentityClstm_541/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_541/while/NoOp*
T0*
_output_shapes
: ?
lstm_541/while/Identity_4Identity&lstm_541/while/lstm_cell_439/mul_2:z:0^lstm_541/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_541/while/Identity_5Identity&lstm_541/while/lstm_cell_439/add_1:z:0^lstm_541/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_541/while/NoOpNoOp4^lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp3^lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp5^lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_541_while_identity lstm_541/while/Identity:output:0"?
lstm_541_while_identity_1"lstm_541/while/Identity_1:output:0"?
lstm_541_while_identity_2"lstm_541/while/Identity_2:output:0"?
lstm_541_while_identity_3"lstm_541/while/Identity_3:output:0"?
lstm_541_while_identity_4"lstm_541/while/Identity_4:output:0"?
lstm_541_while_identity_5"lstm_541/while/Identity_5:output:0"T
'lstm_541_while_lstm_541_strided_slice_1)lstm_541_while_lstm_541_strided_slice_1_0"~
<lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource>lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0"?
=lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource?lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0"|
;lstm_541_while_lstm_cell_439_matmul_readvariableop_resource=lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0"?
clstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensorelstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp2h
2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp2l
4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_540_layer_call_fn_2662861
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2659832|
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
while_cond_2663711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2663711___redundant_placeholder05
1while_while_cond_2663711___redundant_placeholder15
1while_while_cond_2663711___redundant_placeholder25
1while_while_cond_2663711___redundant_placeholder3
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
while_cond_2662952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2662952___redundant_placeholder05
1while_while_cond_2662952___redundant_placeholder15
1while_while_cond_2662952___redundant_placeholder25
1while_while_cond_2662952___redundant_placeholder3
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2664783

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
?T
?
*sequential_180_lstm_541_while_body_2659453L
Hsequential_180_lstm_541_while_sequential_180_lstm_541_while_loop_counterR
Nsequential_180_lstm_541_while_sequential_180_lstm_541_while_maximum_iterations-
)sequential_180_lstm_541_while_placeholder/
+sequential_180_lstm_541_while_placeholder_1/
+sequential_180_lstm_541_while_placeholder_2/
+sequential_180_lstm_541_while_placeholder_3K
Gsequential_180_lstm_541_while_sequential_180_lstm_541_strided_slice_1_0?
?sequential_180_lstm_541_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_541_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_180_lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0:	d?a
Nsequential_180_lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?\
Msequential_180_lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0:	?*
&sequential_180_lstm_541_while_identity,
(sequential_180_lstm_541_while_identity_1,
(sequential_180_lstm_541_while_identity_2,
(sequential_180_lstm_541_while_identity_3,
(sequential_180_lstm_541_while_identity_4,
(sequential_180_lstm_541_while_identity_5I
Esequential_180_lstm_541_while_sequential_180_lstm_541_strided_slice_1?
?sequential_180_lstm_541_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_541_tensorarrayunstack_tensorlistfromtensor]
Jsequential_180_lstm_541_while_lstm_cell_439_matmul_readvariableop_resource:	d?_
Lsequential_180_lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource:	2?Z
Ksequential_180_lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource:	???Bsequential_180/lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp?Asequential_180/lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp?Csequential_180/lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp?
Osequential_180/lstm_541/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_180/lstm_541/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_180_lstm_541_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_541_tensorarrayunstack_tensorlistfromtensor_0)sequential_180_lstm_541_while_placeholderXsequential_180/lstm_541/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_180/lstm_541/while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOpLsequential_180_lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_180/lstm_541/while/lstm_cell_439/MatMulMatMulHsequential_180/lstm_541/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_180/lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_180/lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOpNsequential_180_lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_180/lstm_541/while/lstm_cell_439/MatMul_1MatMul+sequential_180_lstm_541_while_placeholder_2Ksequential_180/lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_180/lstm_541/while/lstm_cell_439/addAddV2<sequential_180/lstm_541/while/lstm_cell_439/MatMul:product:0>sequential_180/lstm_541/while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_180/lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOpMsequential_180_lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_180/lstm_541/while/lstm_cell_439/BiasAddBiasAdd3sequential_180/lstm_541/while/lstm_cell_439/add:z:0Jsequential_180/lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_180/lstm_541/while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_180/lstm_541/while/lstm_cell_439/splitSplitDsequential_180/lstm_541/while/lstm_cell_439/split/split_dim:output:0<sequential_180/lstm_541/while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_180/lstm_541/while/lstm_cell_439/SigmoidSigmoid:sequential_180/lstm_541/while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_180/lstm_541/while/lstm_cell_439/Sigmoid_1Sigmoid:sequential_180/lstm_541/while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_180/lstm_541/while/lstm_cell_439/mulMul9sequential_180/lstm_541/while/lstm_cell_439/Sigmoid_1:y:0+sequential_180_lstm_541_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_180/lstm_541/while/lstm_cell_439/ReluRelu:sequential_180/lstm_541/while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_180/lstm_541/while/lstm_cell_439/mul_1Mul7sequential_180/lstm_541/while/lstm_cell_439/Sigmoid:y:0>sequential_180/lstm_541/while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_180/lstm_541/while/lstm_cell_439/add_1AddV23sequential_180/lstm_541/while/lstm_cell_439/mul:z:05sequential_180/lstm_541/while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_180/lstm_541/while/lstm_cell_439/Sigmoid_2Sigmoid:sequential_180/lstm_541/while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_180/lstm_541/while/lstm_cell_439/Relu_1Relu5sequential_180/lstm_541/while/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_180/lstm_541/while/lstm_cell_439/mul_2Mul9sequential_180/lstm_541/while/lstm_cell_439/Sigmoid_2:y:0@sequential_180/lstm_541/while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_180/lstm_541/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_180_lstm_541_while_placeholder_1)sequential_180_lstm_541_while_placeholder5sequential_180/lstm_541/while/lstm_cell_439/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_180/lstm_541/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_180/lstm_541/while/addAddV2)sequential_180_lstm_541_while_placeholder,sequential_180/lstm_541/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_180/lstm_541/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_180/lstm_541/while/add_1AddV2Hsequential_180_lstm_541_while_sequential_180_lstm_541_while_loop_counter.sequential_180/lstm_541/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_180/lstm_541/while/IdentityIdentity'sequential_180/lstm_541/while/add_1:z:0#^sequential_180/lstm_541/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_541/while/Identity_1IdentityNsequential_180_lstm_541_while_sequential_180_lstm_541_while_maximum_iterations#^sequential_180/lstm_541/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_541/while/Identity_2Identity%sequential_180/lstm_541/while/add:z:0#^sequential_180/lstm_541/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_541/while/Identity_3IdentityRsequential_180/lstm_541/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_180/lstm_541/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_541/while/Identity_4Identity5sequential_180/lstm_541/while/lstm_cell_439/mul_2:z:0#^sequential_180/lstm_541/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_180/lstm_541/while/Identity_5Identity5sequential_180/lstm_541/while/lstm_cell_439/add_1:z:0#^sequential_180/lstm_541/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_180/lstm_541/while/NoOpNoOpC^sequential_180/lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOpB^sequential_180/lstm_541/while/lstm_cell_439/MatMul/ReadVariableOpD^sequential_180/lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_180_lstm_541_while_identity/sequential_180/lstm_541/while/Identity:output:0"]
(sequential_180_lstm_541_while_identity_11sequential_180/lstm_541/while/Identity_1:output:0"]
(sequential_180_lstm_541_while_identity_21sequential_180/lstm_541/while/Identity_2:output:0"]
(sequential_180_lstm_541_while_identity_31sequential_180/lstm_541/while/Identity_3:output:0"]
(sequential_180_lstm_541_while_identity_41sequential_180/lstm_541/while/Identity_4:output:0"]
(sequential_180_lstm_541_while_identity_51sequential_180/lstm_541/while/Identity_5:output:0"?
Ksequential_180_lstm_541_while_lstm_cell_439_biasadd_readvariableop_resourceMsequential_180_lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0"?
Lsequential_180_lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resourceNsequential_180_lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0"?
Jsequential_180_lstm_541_while_lstm_cell_439_matmul_readvariableop_resourceLsequential_180_lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0"?
Esequential_180_lstm_541_while_sequential_180_lstm_541_strided_slice_1Gsequential_180_lstm_541_while_sequential_180_lstm_541_strided_slice_1_0"?
?sequential_180_lstm_541_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_541_tensorarrayunstack_tensorlistfromtensor?sequential_180_lstm_541_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_541_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_180/lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOpBsequential_180/lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp2?
Asequential_180/lstm_541/while/lstm_cell_439/MatMul/ReadVariableOpAsequential_180/lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp2?
Csequential_180/lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOpCsequential_180/lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664698

inputs>
,lstm_cell_440_matmul_readvariableop_resource:2(@
.lstm_cell_440_matmul_1_readvariableop_resource:
(;
-lstm_cell_440_biasadd_readvariableop_resource:(
identity??$lstm_cell_440/BiasAdd/ReadVariableOp?#lstm_cell_440/MatMul/ReadVariableOp?%lstm_cell_440/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_440/MatMul/ReadVariableOpReadVariableOp,lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_440/MatMulMatMulstrided_slice_2:output:0+lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_440/MatMul_1MatMulzeros:output:0-lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_440/addAddV2lstm_cell_440/MatMul:product:0 lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_440/BiasAddBiasAddlstm_cell_440/add:z:0,lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_440/splitSplit&lstm_cell_440/split/split_dim:output:0lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_440/SigmoidSigmoidlstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_1Sigmoidlstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_440/mulMullstm_cell_440/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_440/ReluRelulstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_1Mullstm_cell_440/Sigmoid:y:0 lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_440/add_1AddV2lstm_cell_440/mul:z:0lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_2Sigmoidlstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_440/Relu_1Relulstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_2Mullstm_cell_440/Sigmoid_2:y:0"lstm_cell_440/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_440_matmul_readvariableop_resource.lstm_cell_440_matmul_1_readvariableop_resource-lstm_cell_440_biasadd_readvariableop_resource*
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
while_body_2664614*
condR
while_cond_2664613*K
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
NoOpNoOp%^lstm_cell_440/BiasAdd/ReadVariableOp$^lstm_cell_440/MatMul/ReadVariableOp&^lstm_cell_440/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_440/BiasAdd/ReadVariableOp$lstm_cell_440/BiasAdd/ReadVariableOp2J
#lstm_cell_440/MatMul/ReadVariableOp#lstm_cell_440/MatMul/ReadVariableOp2N
%lstm_cell_440/MatMul_1/ReadVariableOp%lstm_cell_440/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_2661942
lstm_540_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_540_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2659682o
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
_user_specified_namelstm_540_input
?	
?
F__inference_dense_180_layer_call_and_return_conditional_losses_2664717

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

?
lstm_541_while_cond_2662620.
*lstm_541_while_lstm_541_while_loop_counter4
0lstm_541_while_lstm_541_while_maximum_iterations
lstm_541_while_placeholder 
lstm_541_while_placeholder_1 
lstm_541_while_placeholder_2 
lstm_541_while_placeholder_30
,lstm_541_while_less_lstm_541_strided_slice_1G
Clstm_541_while_lstm_541_while_cond_2662620___redundant_placeholder0G
Clstm_541_while_lstm_541_while_cond_2662620___redundant_placeholder1G
Clstm_541_while_lstm_541_while_cond_2662620___redundant_placeholder2G
Clstm_541_while_lstm_541_while_cond_2662620___redundant_placeholder3
lstm_541_while_identity
?
lstm_541/while/LessLesslstm_541_while_placeholder,lstm_541_while_less_lstm_541_strided_slice_1*
T0*
_output_shapes
: ]
lstm_541/while/IdentityIdentitylstm_541/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_541_while_identity lstm_541/while/Identity:output:0*(
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
while_body_2661313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_440_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_440_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_440_matmul_readvariableop_resource:2(F
4while_lstm_cell_440_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_440_biasadd_readvariableop_resource:(??*while/lstm_cell_440/BiasAdd/ReadVariableOp?)while/lstm_cell_440/MatMul/ReadVariableOp?+while/lstm_cell_440/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_440/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_440/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_440/addAddV2$while/lstm_cell_440/MatMul:product:0&while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_440/BiasAddBiasAddwhile/lstm_cell_440/add:z:02while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_440/splitSplit,while/lstm_cell_440/split/split_dim:output:0$while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_440/SigmoidSigmoid"while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_1Sigmoid"while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mulMul!while/lstm_cell_440/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_440/ReluRelu"while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_1Mulwhile/lstm_cell_440/Sigmoid:y:0&while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/add_1AddV2while/lstm_cell_440/mul:z:0while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_2Sigmoid"while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_440/Relu_1Reluwhile/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_2Mul!while/lstm_cell_440/Sigmoid_2:y:0(while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_440/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_440/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_440/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_440/BiasAdd/ReadVariableOp*^while/lstm_cell_440/MatMul/ReadVariableOp,^while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_440_biasadd_readvariableop_resource5while_lstm_cell_440_biasadd_readvariableop_resource_0"n
4while_lstm_cell_440_matmul_1_readvariableop_resource6while_lstm_cell_440_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_440_matmul_readvariableop_resource4while_lstm_cell_440_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_440/BiasAdd/ReadVariableOp*while/lstm_cell_440/BiasAdd/ReadVariableOp2V
)while/lstm_cell_440/MatMul/ReadVariableOp)while/lstm_cell_440/MatMul/ReadVariableOp2Z
+while/lstm_cell_440/MatMul_1/ReadVariableOp+while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2663238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2663238___redundant_placeholder05
1while_while_cond_2663238___redundant_placeholder15
1while_while_cond_2663238___redundant_placeholder25
1while_while_cond_2663238___redundant_placeholder3
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
while_cond_2659762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2659762___redundant_placeholder05
1while_while_cond_2659762___redundant_placeholder15
1while_while_cond_2659762___redundant_placeholder25
1while_while_cond_2659762___redundant_placeholder3
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663037
inputs_0?
,lstm_cell_438_matmul_readvariableop_resource:	?A
.lstm_cell_438_matmul_1_readvariableop_resource:	d?<
-lstm_cell_438_biasadd_readvariableop_resource:	?
identity??$lstm_cell_438/BiasAdd/ReadVariableOp?#lstm_cell_438/MatMul/ReadVariableOp?%lstm_cell_438/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_438/MatMul/ReadVariableOpReadVariableOp,lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_438/MatMulMatMulstrided_slice_2:output:0+lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_438/MatMul_1MatMulzeros:output:0-lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_438/addAddV2lstm_cell_438/MatMul:product:0 lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_438/BiasAddBiasAddlstm_cell_438/add:z:0,lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_438/splitSplit&lstm_cell_438/split/split_dim:output:0lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_438/SigmoidSigmoidlstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_1Sigmoidlstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_438/mulMullstm_cell_438/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_438/ReluRelulstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_1Mullstm_cell_438/Sigmoid:y:0 lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_438/add_1AddV2lstm_cell_438/mul:z:0lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_2Sigmoidlstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_438/Relu_1Relulstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_2Mullstm_cell_438/Sigmoid_2:y:0"lstm_cell_438/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_438_matmul_readvariableop_resource.lstm_cell_438_matmul_1_readvariableop_resource-lstm_cell_438_biasadd_readvariableop_resource*
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
while_body_2662953*
condR
while_cond_2662952*K
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
NoOpNoOp%^lstm_cell_438/BiasAdd/ReadVariableOp$^lstm_cell_438/MatMul/ReadVariableOp&^lstm_cell_438/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_438/BiasAdd/ReadVariableOp$lstm_cell_438/BiasAdd/ReadVariableOp2J
#lstm_cell_438/MatMul/ReadVariableOp#lstm_cell_438/MatMul/ReadVariableOp2N
%lstm_cell_438/MatMul_1/ReadVariableOp%lstm_cell_438/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663653
inputs_0?
,lstm_cell_439_matmul_readvariableop_resource:	d?A
.lstm_cell_439_matmul_1_readvariableop_resource:	2?<
-lstm_cell_439_biasadd_readvariableop_resource:	?
identity??$lstm_cell_439/BiasAdd/ReadVariableOp?#lstm_cell_439/MatMul/ReadVariableOp?%lstm_cell_439/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_439/MatMul/ReadVariableOpReadVariableOp,lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_439/MatMulMatMulstrided_slice_2:output:0+lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_439/MatMul_1MatMulzeros:output:0-lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_439/addAddV2lstm_cell_439/MatMul:product:0 lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_439/BiasAddBiasAddlstm_cell_439/add:z:0,lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_439/splitSplit&lstm_cell_439/split/split_dim:output:0lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_439/SigmoidSigmoidlstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_1Sigmoidlstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_439/mulMullstm_cell_439/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_439/ReluRelulstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_1Mullstm_cell_439/Sigmoid:y:0 lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_439/add_1AddV2lstm_cell_439/mul:z:0lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_2Sigmoidlstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_439/Relu_1Relulstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_2Mullstm_cell_439/Sigmoid_2:y:0"lstm_cell_439/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_439_matmul_readvariableop_resource.lstm_cell_439_matmul_1_readvariableop_resource-lstm_cell_439_biasadd_readvariableop_resource*
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
while_body_2663569*
condR
while_cond_2663568*K
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
NoOpNoOp%^lstm_cell_439/BiasAdd/ReadVariableOp$^lstm_cell_439/MatMul/ReadVariableOp&^lstm_cell_439/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_439/BiasAdd/ReadVariableOp$lstm_cell_439/BiasAdd/ReadVariableOp2J
#lstm_cell_439/MatMul/ReadVariableOp#lstm_cell_439/MatMul/ReadVariableOp2N
%lstm_cell_439/MatMul_1/ReadVariableOp%lstm_cell_439/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_439_layer_call_fn_2664832

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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660099o
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
?J
?
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663466

inputs?
,lstm_cell_438_matmul_readvariableop_resource:	?A
.lstm_cell_438_matmul_1_readvariableop_resource:	d?<
-lstm_cell_438_biasadd_readvariableop_resource:	?
identity??$lstm_cell_438/BiasAdd/ReadVariableOp?#lstm_cell_438/MatMul/ReadVariableOp?%lstm_cell_438/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_438/MatMul/ReadVariableOpReadVariableOp,lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_438/MatMulMatMulstrided_slice_2:output:0+lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_438/MatMul_1MatMulzeros:output:0-lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_438/addAddV2lstm_cell_438/MatMul:product:0 lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_438/BiasAddBiasAddlstm_cell_438/add:z:0,lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_438/splitSplit&lstm_cell_438/split/split_dim:output:0lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_438/SigmoidSigmoidlstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_1Sigmoidlstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_438/mulMullstm_cell_438/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_438/ReluRelulstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_1Mullstm_cell_438/Sigmoid:y:0 lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_438/add_1AddV2lstm_cell_438/mul:z:0lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_2Sigmoidlstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_438/Relu_1Relulstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_2Mullstm_cell_438/Sigmoid_2:y:0"lstm_cell_438/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_438_matmul_readvariableop_resource.lstm_cell_438_matmul_1_readvariableop_resource-lstm_cell_438_biasadd_readvariableop_resource*
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
while_body_2663382*
condR
while_cond_2663381*K
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
NoOpNoOp%^lstm_cell_438/BiasAdd/ReadVariableOp$^lstm_cell_438/MatMul/ReadVariableOp&^lstm_cell_438/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_438/BiasAdd/ReadVariableOp$lstm_cell_438/BiasAdd/ReadVariableOp2J
#lstm_cell_438/MatMul/ReadVariableOp#lstm_cell_438/MatMul/ReadVariableOp2N
%lstm_cell_438/MatMul_1/ReadVariableOp%lstm_cell_438/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_540_layer_call_and_return_conditional_losses_2660023

inputs(
lstm_cell_438_2659941:	?(
lstm_cell_438_2659943:	d?$
lstm_cell_438_2659945:	?
identity??%lstm_cell_438/StatefulPartitionedCall?while;
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
%lstm_cell_438/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_438_2659941lstm_cell_438_2659943lstm_cell_438_2659945*
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659895n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_438_2659941lstm_cell_438_2659943lstm_cell_438_2659945*
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
while_body_2659954*
condR
while_cond_2659953*K
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
NoOpNoOp&^lstm_cell_438/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_438/StatefulPartitionedCall%lstm_cell_438/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_2659954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_438_2659978_0:	?0
while_lstm_cell_438_2659980_0:	d?,
while_lstm_cell_438_2659982_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_438_2659978:	?.
while_lstm_cell_438_2659980:	d?*
while_lstm_cell_438_2659982:	???+while/lstm_cell_438/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_438/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_438_2659978_0while_lstm_cell_438_2659980_0while_lstm_cell_438_2659982_0*
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659895?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_438/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_438/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_438/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_438/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_438_2659978while_lstm_cell_438_2659978_0"<
while_lstm_cell_438_2659980while_lstm_cell_438_2659980_0"<
while_lstm_cell_438_2659982while_lstm_cell_438_2659982_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_438/StatefulPartitionedCall+while/lstm_cell_438/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_2659682
lstm_540_inputW
Dsequential_180_lstm_540_lstm_cell_438_matmul_readvariableop_resource:	?Y
Fsequential_180_lstm_540_lstm_cell_438_matmul_1_readvariableop_resource:	d?T
Esequential_180_lstm_540_lstm_cell_438_biasadd_readvariableop_resource:	?W
Dsequential_180_lstm_541_lstm_cell_439_matmul_readvariableop_resource:	d?Y
Fsequential_180_lstm_541_lstm_cell_439_matmul_1_readvariableop_resource:	2?T
Esequential_180_lstm_541_lstm_cell_439_biasadd_readvariableop_resource:	?V
Dsequential_180_lstm_542_lstm_cell_440_matmul_readvariableop_resource:2(X
Fsequential_180_lstm_542_lstm_cell_440_matmul_1_readvariableop_resource:
(S
Esequential_180_lstm_542_lstm_cell_440_biasadd_readvariableop_resource:(I
7sequential_180_dense_180_matmul_readvariableop_resource:
F
8sequential_180_dense_180_biasadd_readvariableop_resource:
identity??/sequential_180/dense_180/BiasAdd/ReadVariableOp?.sequential_180/dense_180/MatMul/ReadVariableOp?<sequential_180/lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp?;sequential_180/lstm_540/lstm_cell_438/MatMul/ReadVariableOp?=sequential_180/lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp?sequential_180/lstm_540/while?<sequential_180/lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp?;sequential_180/lstm_541/lstm_cell_439/MatMul/ReadVariableOp?=sequential_180/lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp?sequential_180/lstm_541/while?<sequential_180/lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp?;sequential_180/lstm_542/lstm_cell_440/MatMul/ReadVariableOp?=sequential_180/lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp?sequential_180/lstm_542/while[
sequential_180/lstm_540/ShapeShapelstm_540_input*
T0*
_output_shapes
:u
+sequential_180/lstm_540/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_180/lstm_540/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_180/lstm_540/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_180/lstm_540/strided_sliceStridedSlice&sequential_180/lstm_540/Shape:output:04sequential_180/lstm_540/strided_slice/stack:output:06sequential_180/lstm_540/strided_slice/stack_1:output:06sequential_180/lstm_540/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_180/lstm_540/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_180/lstm_540/zeros/packedPack.sequential_180/lstm_540/strided_slice:output:0/sequential_180/lstm_540/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_180/lstm_540/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_180/lstm_540/zerosFill-sequential_180/lstm_540/zeros/packed:output:0,sequential_180/lstm_540/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_180/lstm_540/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_180/lstm_540/zeros_1/packedPack.sequential_180/lstm_540/strided_slice:output:01sequential_180/lstm_540/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_180/lstm_540/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_180/lstm_540/zeros_1Fill/sequential_180/lstm_540/zeros_1/packed:output:0.sequential_180/lstm_540/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_180/lstm_540/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_180/lstm_540/transpose	Transposelstm_540_input/sequential_180/lstm_540/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_180/lstm_540/Shape_1Shape%sequential_180/lstm_540/transpose:y:0*
T0*
_output_shapes
:w
-sequential_180/lstm_540/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_540/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_180/lstm_540/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_540/strided_slice_1StridedSlice(sequential_180/lstm_540/Shape_1:output:06sequential_180/lstm_540/strided_slice_1/stack:output:08sequential_180/lstm_540/strided_slice_1/stack_1:output:08sequential_180/lstm_540/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_180/lstm_540/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_180/lstm_540/TensorArrayV2TensorListReserve<sequential_180/lstm_540/TensorArrayV2/element_shape:output:00sequential_180/lstm_540/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_180/lstm_540/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_180/lstm_540/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_180/lstm_540/transpose:y:0Vsequential_180/lstm_540/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_180/lstm_540/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_540/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_180/lstm_540/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_540/strided_slice_2StridedSlice%sequential_180/lstm_540/transpose:y:06sequential_180/lstm_540/strided_slice_2/stack:output:08sequential_180/lstm_540/strided_slice_2/stack_1:output:08sequential_180/lstm_540/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_180/lstm_540/lstm_cell_438/MatMul/ReadVariableOpReadVariableOpDsequential_180_lstm_540_lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_180/lstm_540/lstm_cell_438/MatMulMatMul0sequential_180/lstm_540/strided_slice_2:output:0Csequential_180/lstm_540/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_180/lstm_540/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOpFsequential_180_lstm_540_lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_180/lstm_540/lstm_cell_438/MatMul_1MatMul&sequential_180/lstm_540/zeros:output:0Esequential_180/lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_180/lstm_540/lstm_cell_438/addAddV26sequential_180/lstm_540/lstm_cell_438/MatMul:product:08sequential_180/lstm_540/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_180/lstm_540/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOpEsequential_180_lstm_540_lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_180/lstm_540/lstm_cell_438/BiasAddBiasAdd-sequential_180/lstm_540/lstm_cell_438/add:z:0Dsequential_180/lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_180/lstm_540/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_180/lstm_540/lstm_cell_438/splitSplit>sequential_180/lstm_540/lstm_cell_438/split/split_dim:output:06sequential_180/lstm_540/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_180/lstm_540/lstm_cell_438/SigmoidSigmoid4sequential_180/lstm_540/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_180/lstm_540/lstm_cell_438/Sigmoid_1Sigmoid4sequential_180/lstm_540/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_180/lstm_540/lstm_cell_438/mulMul3sequential_180/lstm_540/lstm_cell_438/Sigmoid_1:y:0(sequential_180/lstm_540/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_180/lstm_540/lstm_cell_438/ReluRelu4sequential_180/lstm_540/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_180/lstm_540/lstm_cell_438/mul_1Mul1sequential_180/lstm_540/lstm_cell_438/Sigmoid:y:08sequential_180/lstm_540/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_180/lstm_540/lstm_cell_438/add_1AddV2-sequential_180/lstm_540/lstm_cell_438/mul:z:0/sequential_180/lstm_540/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_180/lstm_540/lstm_cell_438/Sigmoid_2Sigmoid4sequential_180/lstm_540/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_180/lstm_540/lstm_cell_438/Relu_1Relu/sequential_180/lstm_540/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_180/lstm_540/lstm_cell_438/mul_2Mul3sequential_180/lstm_540/lstm_cell_438/Sigmoid_2:y:0:sequential_180/lstm_540/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_180/lstm_540/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_180/lstm_540/TensorArrayV2_1TensorListReserve>sequential_180/lstm_540/TensorArrayV2_1/element_shape:output:00sequential_180/lstm_540/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_180/lstm_540/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_180/lstm_540/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_180/lstm_540/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_180/lstm_540/whileWhile3sequential_180/lstm_540/while/loop_counter:output:09sequential_180/lstm_540/while/maximum_iterations:output:0%sequential_180/lstm_540/time:output:00sequential_180/lstm_540/TensorArrayV2_1:handle:0&sequential_180/lstm_540/zeros:output:0(sequential_180/lstm_540/zeros_1:output:00sequential_180/lstm_540/strided_slice_1:output:0Osequential_180/lstm_540/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_180_lstm_540_lstm_cell_438_matmul_readvariableop_resourceFsequential_180_lstm_540_lstm_cell_438_matmul_1_readvariableop_resourceEsequential_180_lstm_540_lstm_cell_438_biasadd_readvariableop_resource*
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
*sequential_180_lstm_540_while_body_2659314*6
cond.R,
*sequential_180_lstm_540_while_cond_2659313*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_180/lstm_540/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_180/lstm_540/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_180/lstm_540/while:output:3Qsequential_180/lstm_540/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_180/lstm_540/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_180/lstm_540/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_540/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_540/strided_slice_3StridedSliceCsequential_180/lstm_540/TensorArrayV2Stack/TensorListStack:tensor:06sequential_180/lstm_540/strided_slice_3/stack:output:08sequential_180/lstm_540/strided_slice_3/stack_1:output:08sequential_180/lstm_540/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_180/lstm_540/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_180/lstm_540/transpose_1	TransposeCsequential_180/lstm_540/TensorArrayV2Stack/TensorListStack:tensor:01sequential_180/lstm_540/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_180/lstm_540/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_180/lstm_541/ShapeShape'sequential_180/lstm_540/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_180/lstm_541/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_180/lstm_541/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_180/lstm_541/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_180/lstm_541/strided_sliceStridedSlice&sequential_180/lstm_541/Shape:output:04sequential_180/lstm_541/strided_slice/stack:output:06sequential_180/lstm_541/strided_slice/stack_1:output:06sequential_180/lstm_541/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_180/lstm_541/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_180/lstm_541/zeros/packedPack.sequential_180/lstm_541/strided_slice:output:0/sequential_180/lstm_541/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_180/lstm_541/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_180/lstm_541/zerosFill-sequential_180/lstm_541/zeros/packed:output:0,sequential_180/lstm_541/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_180/lstm_541/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_180/lstm_541/zeros_1/packedPack.sequential_180/lstm_541/strided_slice:output:01sequential_180/lstm_541/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_180/lstm_541/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_180/lstm_541/zeros_1Fill/sequential_180/lstm_541/zeros_1/packed:output:0.sequential_180/lstm_541/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_180/lstm_541/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_180/lstm_541/transpose	Transpose'sequential_180/lstm_540/transpose_1:y:0/sequential_180/lstm_541/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_180/lstm_541/Shape_1Shape%sequential_180/lstm_541/transpose:y:0*
T0*
_output_shapes
:w
-sequential_180/lstm_541/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_541/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_180/lstm_541/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_541/strided_slice_1StridedSlice(sequential_180/lstm_541/Shape_1:output:06sequential_180/lstm_541/strided_slice_1/stack:output:08sequential_180/lstm_541/strided_slice_1/stack_1:output:08sequential_180/lstm_541/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_180/lstm_541/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_180/lstm_541/TensorArrayV2TensorListReserve<sequential_180/lstm_541/TensorArrayV2/element_shape:output:00sequential_180/lstm_541/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_180/lstm_541/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_180/lstm_541/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_180/lstm_541/transpose:y:0Vsequential_180/lstm_541/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_180/lstm_541/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_541/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_180/lstm_541/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_541/strided_slice_2StridedSlice%sequential_180/lstm_541/transpose:y:06sequential_180/lstm_541/strided_slice_2/stack:output:08sequential_180/lstm_541/strided_slice_2/stack_1:output:08sequential_180/lstm_541/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_180/lstm_541/lstm_cell_439/MatMul/ReadVariableOpReadVariableOpDsequential_180_lstm_541_lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_180/lstm_541/lstm_cell_439/MatMulMatMul0sequential_180/lstm_541/strided_slice_2:output:0Csequential_180/lstm_541/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_180/lstm_541/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOpFsequential_180_lstm_541_lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_180/lstm_541/lstm_cell_439/MatMul_1MatMul&sequential_180/lstm_541/zeros:output:0Esequential_180/lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_180/lstm_541/lstm_cell_439/addAddV26sequential_180/lstm_541/lstm_cell_439/MatMul:product:08sequential_180/lstm_541/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_180/lstm_541/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOpEsequential_180_lstm_541_lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_180/lstm_541/lstm_cell_439/BiasAddBiasAdd-sequential_180/lstm_541/lstm_cell_439/add:z:0Dsequential_180/lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_180/lstm_541/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_180/lstm_541/lstm_cell_439/splitSplit>sequential_180/lstm_541/lstm_cell_439/split/split_dim:output:06sequential_180/lstm_541/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_180/lstm_541/lstm_cell_439/SigmoidSigmoid4sequential_180/lstm_541/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_180/lstm_541/lstm_cell_439/Sigmoid_1Sigmoid4sequential_180/lstm_541/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_180/lstm_541/lstm_cell_439/mulMul3sequential_180/lstm_541/lstm_cell_439/Sigmoid_1:y:0(sequential_180/lstm_541/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_180/lstm_541/lstm_cell_439/ReluRelu4sequential_180/lstm_541/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_180/lstm_541/lstm_cell_439/mul_1Mul1sequential_180/lstm_541/lstm_cell_439/Sigmoid:y:08sequential_180/lstm_541/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_180/lstm_541/lstm_cell_439/add_1AddV2-sequential_180/lstm_541/lstm_cell_439/mul:z:0/sequential_180/lstm_541/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_180/lstm_541/lstm_cell_439/Sigmoid_2Sigmoid4sequential_180/lstm_541/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_180/lstm_541/lstm_cell_439/Relu_1Relu/sequential_180/lstm_541/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_180/lstm_541/lstm_cell_439/mul_2Mul3sequential_180/lstm_541/lstm_cell_439/Sigmoid_2:y:0:sequential_180/lstm_541/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_180/lstm_541/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_180/lstm_541/TensorArrayV2_1TensorListReserve>sequential_180/lstm_541/TensorArrayV2_1/element_shape:output:00sequential_180/lstm_541/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_180/lstm_541/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_180/lstm_541/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_180/lstm_541/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_180/lstm_541/whileWhile3sequential_180/lstm_541/while/loop_counter:output:09sequential_180/lstm_541/while/maximum_iterations:output:0%sequential_180/lstm_541/time:output:00sequential_180/lstm_541/TensorArrayV2_1:handle:0&sequential_180/lstm_541/zeros:output:0(sequential_180/lstm_541/zeros_1:output:00sequential_180/lstm_541/strided_slice_1:output:0Osequential_180/lstm_541/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_180_lstm_541_lstm_cell_439_matmul_readvariableop_resourceFsequential_180_lstm_541_lstm_cell_439_matmul_1_readvariableop_resourceEsequential_180_lstm_541_lstm_cell_439_biasadd_readvariableop_resource*
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
*sequential_180_lstm_541_while_body_2659453*6
cond.R,
*sequential_180_lstm_541_while_cond_2659452*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_180/lstm_541/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_180/lstm_541/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_180/lstm_541/while:output:3Qsequential_180/lstm_541/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_180/lstm_541/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_180/lstm_541/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_541/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_541/strided_slice_3StridedSliceCsequential_180/lstm_541/TensorArrayV2Stack/TensorListStack:tensor:06sequential_180/lstm_541/strided_slice_3/stack:output:08sequential_180/lstm_541/strided_slice_3/stack_1:output:08sequential_180/lstm_541/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_180/lstm_541/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_180/lstm_541/transpose_1	TransposeCsequential_180/lstm_541/TensorArrayV2Stack/TensorListStack:tensor:01sequential_180/lstm_541/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_180/lstm_541/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_180/lstm_542/ShapeShape'sequential_180/lstm_541/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_180/lstm_542/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_180/lstm_542/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_180/lstm_542/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_180/lstm_542/strided_sliceStridedSlice&sequential_180/lstm_542/Shape:output:04sequential_180/lstm_542/strided_slice/stack:output:06sequential_180/lstm_542/strided_slice/stack_1:output:06sequential_180/lstm_542/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_180/lstm_542/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_180/lstm_542/zeros/packedPack.sequential_180/lstm_542/strided_slice:output:0/sequential_180/lstm_542/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_180/lstm_542/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_180/lstm_542/zerosFill-sequential_180/lstm_542/zeros/packed:output:0,sequential_180/lstm_542/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_180/lstm_542/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_180/lstm_542/zeros_1/packedPack.sequential_180/lstm_542/strided_slice:output:01sequential_180/lstm_542/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_180/lstm_542/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_180/lstm_542/zeros_1Fill/sequential_180/lstm_542/zeros_1/packed:output:0.sequential_180/lstm_542/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_180/lstm_542/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_180/lstm_542/transpose	Transpose'sequential_180/lstm_541/transpose_1:y:0/sequential_180/lstm_542/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_180/lstm_542/Shape_1Shape%sequential_180/lstm_542/transpose:y:0*
T0*
_output_shapes
:w
-sequential_180/lstm_542/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_542/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_180/lstm_542/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_542/strided_slice_1StridedSlice(sequential_180/lstm_542/Shape_1:output:06sequential_180/lstm_542/strided_slice_1/stack:output:08sequential_180/lstm_542/strided_slice_1/stack_1:output:08sequential_180/lstm_542/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_180/lstm_542/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_180/lstm_542/TensorArrayV2TensorListReserve<sequential_180/lstm_542/TensorArrayV2/element_shape:output:00sequential_180/lstm_542/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_180/lstm_542/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_180/lstm_542/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_180/lstm_542/transpose:y:0Vsequential_180/lstm_542/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_180/lstm_542/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_542/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_180/lstm_542/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_542/strided_slice_2StridedSlice%sequential_180/lstm_542/transpose:y:06sequential_180/lstm_542/strided_slice_2/stack:output:08sequential_180/lstm_542/strided_slice_2/stack_1:output:08sequential_180/lstm_542/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_180/lstm_542/lstm_cell_440/MatMul/ReadVariableOpReadVariableOpDsequential_180_lstm_542_lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_180/lstm_542/lstm_cell_440/MatMulMatMul0sequential_180/lstm_542/strided_slice_2:output:0Csequential_180/lstm_542/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_180/lstm_542/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOpFsequential_180_lstm_542_lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_180/lstm_542/lstm_cell_440/MatMul_1MatMul&sequential_180/lstm_542/zeros:output:0Esequential_180/lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_180/lstm_542/lstm_cell_440/addAddV26sequential_180/lstm_542/lstm_cell_440/MatMul:product:08sequential_180/lstm_542/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_180/lstm_542/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOpEsequential_180_lstm_542_lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_180/lstm_542/lstm_cell_440/BiasAddBiasAdd-sequential_180/lstm_542/lstm_cell_440/add:z:0Dsequential_180/lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_180/lstm_542/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_180/lstm_542/lstm_cell_440/splitSplit>sequential_180/lstm_542/lstm_cell_440/split/split_dim:output:06sequential_180/lstm_542/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_180/lstm_542/lstm_cell_440/SigmoidSigmoid4sequential_180/lstm_542/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_180/lstm_542/lstm_cell_440/Sigmoid_1Sigmoid4sequential_180/lstm_542/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_180/lstm_542/lstm_cell_440/mulMul3sequential_180/lstm_542/lstm_cell_440/Sigmoid_1:y:0(sequential_180/lstm_542/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_180/lstm_542/lstm_cell_440/ReluRelu4sequential_180/lstm_542/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_180/lstm_542/lstm_cell_440/mul_1Mul1sequential_180/lstm_542/lstm_cell_440/Sigmoid:y:08sequential_180/lstm_542/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_180/lstm_542/lstm_cell_440/add_1AddV2-sequential_180/lstm_542/lstm_cell_440/mul:z:0/sequential_180/lstm_542/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_180/lstm_542/lstm_cell_440/Sigmoid_2Sigmoid4sequential_180/lstm_542/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_180/lstm_542/lstm_cell_440/Relu_1Relu/sequential_180/lstm_542/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_180/lstm_542/lstm_cell_440/mul_2Mul3sequential_180/lstm_542/lstm_cell_440/Sigmoid_2:y:0:sequential_180/lstm_542/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_180/lstm_542/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_180/lstm_542/TensorArrayV2_1TensorListReserve>sequential_180/lstm_542/TensorArrayV2_1/element_shape:output:00sequential_180/lstm_542/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_180/lstm_542/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_180/lstm_542/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_180/lstm_542/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_180/lstm_542/whileWhile3sequential_180/lstm_542/while/loop_counter:output:09sequential_180/lstm_542/while/maximum_iterations:output:0%sequential_180/lstm_542/time:output:00sequential_180/lstm_542/TensorArrayV2_1:handle:0&sequential_180/lstm_542/zeros:output:0(sequential_180/lstm_542/zeros_1:output:00sequential_180/lstm_542/strided_slice_1:output:0Osequential_180/lstm_542/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_180_lstm_542_lstm_cell_440_matmul_readvariableop_resourceFsequential_180_lstm_542_lstm_cell_440_matmul_1_readvariableop_resourceEsequential_180_lstm_542_lstm_cell_440_biasadd_readvariableop_resource*
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
*sequential_180_lstm_542_while_body_2659592*6
cond.R,
*sequential_180_lstm_542_while_cond_2659591*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_180/lstm_542/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_180/lstm_542/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_180/lstm_542/while:output:3Qsequential_180/lstm_542/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_180/lstm_542/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_180/lstm_542/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_180/lstm_542/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_180/lstm_542/strided_slice_3StridedSliceCsequential_180/lstm_542/TensorArrayV2Stack/TensorListStack:tensor:06sequential_180/lstm_542/strided_slice_3/stack:output:08sequential_180/lstm_542/strided_slice_3/stack_1:output:08sequential_180/lstm_542/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_180/lstm_542/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_180/lstm_542/transpose_1	TransposeCsequential_180/lstm_542/TensorArrayV2Stack/TensorListStack:tensor:01sequential_180/lstm_542/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_180/lstm_542/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_180/dense_180/MatMul/ReadVariableOpReadVariableOp7sequential_180_dense_180_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_180/dense_180/MatMulMatMul0sequential_180/lstm_542/strided_slice_3:output:06sequential_180/dense_180/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_180/dense_180/BiasAdd/ReadVariableOpReadVariableOp8sequential_180_dense_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_180/dense_180/BiasAddBiasAdd)sequential_180/dense_180/MatMul:product:07sequential_180/dense_180/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_180/dense_180/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_180/dense_180/BiasAdd/ReadVariableOp/^sequential_180/dense_180/MatMul/ReadVariableOp=^sequential_180/lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp<^sequential_180/lstm_540/lstm_cell_438/MatMul/ReadVariableOp>^sequential_180/lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp^sequential_180/lstm_540/while=^sequential_180/lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp<^sequential_180/lstm_541/lstm_cell_439/MatMul/ReadVariableOp>^sequential_180/lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp^sequential_180/lstm_541/while=^sequential_180/lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp<^sequential_180/lstm_542/lstm_cell_440/MatMul/ReadVariableOp>^sequential_180/lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp^sequential_180/lstm_542/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_180/dense_180/BiasAdd/ReadVariableOp/sequential_180/dense_180/BiasAdd/ReadVariableOp2`
.sequential_180/dense_180/MatMul/ReadVariableOp.sequential_180/dense_180/MatMul/ReadVariableOp2|
<sequential_180/lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp<sequential_180/lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp2z
;sequential_180/lstm_540/lstm_cell_438/MatMul/ReadVariableOp;sequential_180/lstm_540/lstm_cell_438/MatMul/ReadVariableOp2~
=sequential_180/lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp=sequential_180/lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp2>
sequential_180/lstm_540/whilesequential_180/lstm_540/while2|
<sequential_180/lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp<sequential_180/lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp2z
;sequential_180/lstm_541/lstm_cell_439/MatMul/ReadVariableOp;sequential_180/lstm_541/lstm_cell_439/MatMul/ReadVariableOp2~
=sequential_180/lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp=sequential_180/lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp2>
sequential_180/lstm_541/whilesequential_180/lstm_541/while2|
<sequential_180/lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp<sequential_180/lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp2z
;sequential_180/lstm_542/lstm_cell_440/MatMul/ReadVariableOp;sequential_180/lstm_542/lstm_cell_440/MatMul/ReadVariableOp2~
=sequential_180/lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp=sequential_180/lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp2>
sequential_180/lstm_542/whilesequential_180/lstm_542/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_540_input
?#
?
while_body_2660654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_440_2660678_0:2(/
while_lstm_cell_440_2660680_0:
(+
while_lstm_cell_440_2660682_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_440_2660678:2(-
while_lstm_cell_440_2660680:
()
while_lstm_cell_440_2660682:(??+while/lstm_cell_440/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_440/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_440_2660678_0while_lstm_cell_440_2660680_0while_lstm_cell_440_2660682_0*
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660595?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_440/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_440/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_440/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_440/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_440_2660678while_lstm_cell_440_2660678_0"<
while_lstm_cell_440_2660680while_lstm_cell_440_2660680_0"<
while_lstm_cell_440_2660682while_lstm_cell_440_2660682_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_440/StatefulPartitionedCall+while/lstm_cell_440/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2660112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2660112___redundant_placeholder05
1while_while_cond_2660112___redundant_placeholder15
1while_while_cond_2660112___redundant_placeholder25
1while_while_cond_2660112___redundant_placeholder3
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
*sequential_180_lstm_541_while_cond_2659452L
Hsequential_180_lstm_541_while_sequential_180_lstm_541_while_loop_counterR
Nsequential_180_lstm_541_while_sequential_180_lstm_541_while_maximum_iterations-
)sequential_180_lstm_541_while_placeholder/
+sequential_180_lstm_541_while_placeholder_1/
+sequential_180_lstm_541_while_placeholder_2/
+sequential_180_lstm_541_while_placeholder_3N
Jsequential_180_lstm_541_while_less_sequential_180_lstm_541_strided_slice_1e
asequential_180_lstm_541_while_sequential_180_lstm_541_while_cond_2659452___redundant_placeholder0e
asequential_180_lstm_541_while_sequential_180_lstm_541_while_cond_2659452___redundant_placeholder1e
asequential_180_lstm_541_while_sequential_180_lstm_541_while_cond_2659452___redundant_placeholder2e
asequential_180_lstm_541_while_sequential_180_lstm_541_while_cond_2659452___redundant_placeholder3*
&sequential_180_lstm_541_while_identity
?
"sequential_180/lstm_541/while/LessLess)sequential_180_lstm_541_while_placeholderJsequential_180_lstm_541_while_less_sequential_180_lstm_541_strided_slice_1*
T0*
_output_shapes
: {
&sequential_180/lstm_541/while/IdentityIdentity&sequential_180/lstm_541/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_180_lstm_541_while_identity/sequential_180/lstm_541/while/Identity:output:0*(
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660245

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
*sequential_180_lstm_542_while_body_2659592L
Hsequential_180_lstm_542_while_sequential_180_lstm_542_while_loop_counterR
Nsequential_180_lstm_542_while_sequential_180_lstm_542_while_maximum_iterations-
)sequential_180_lstm_542_while_placeholder/
+sequential_180_lstm_542_while_placeholder_1/
+sequential_180_lstm_542_while_placeholder_2/
+sequential_180_lstm_542_while_placeholder_3K
Gsequential_180_lstm_542_while_sequential_180_lstm_542_strided_slice_1_0?
?sequential_180_lstm_542_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_542_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_180_lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0:2(`
Nsequential_180_lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0:
([
Msequential_180_lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0:(*
&sequential_180_lstm_542_while_identity,
(sequential_180_lstm_542_while_identity_1,
(sequential_180_lstm_542_while_identity_2,
(sequential_180_lstm_542_while_identity_3,
(sequential_180_lstm_542_while_identity_4,
(sequential_180_lstm_542_while_identity_5I
Esequential_180_lstm_542_while_sequential_180_lstm_542_strided_slice_1?
?sequential_180_lstm_542_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_542_tensorarrayunstack_tensorlistfromtensor\
Jsequential_180_lstm_542_while_lstm_cell_440_matmul_readvariableop_resource:2(^
Lsequential_180_lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource:
(Y
Ksequential_180_lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource:(??Bsequential_180/lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp?Asequential_180/lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp?Csequential_180/lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp?
Osequential_180/lstm_542/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_180/lstm_542/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_180_lstm_542_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_542_tensorarrayunstack_tensorlistfromtensor_0)sequential_180_lstm_542_while_placeholderXsequential_180/lstm_542/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_180/lstm_542/while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOpLsequential_180_lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_180/lstm_542/while/lstm_cell_440/MatMulMatMulHsequential_180/lstm_542/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_180/lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_180/lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOpNsequential_180_lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_180/lstm_542/while/lstm_cell_440/MatMul_1MatMul+sequential_180_lstm_542_while_placeholder_2Ksequential_180/lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_180/lstm_542/while/lstm_cell_440/addAddV2<sequential_180/lstm_542/while/lstm_cell_440/MatMul:product:0>sequential_180/lstm_542/while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_180/lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOpMsequential_180_lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_180/lstm_542/while/lstm_cell_440/BiasAddBiasAdd3sequential_180/lstm_542/while/lstm_cell_440/add:z:0Jsequential_180/lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_180/lstm_542/while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_180/lstm_542/while/lstm_cell_440/splitSplitDsequential_180/lstm_542/while/lstm_cell_440/split/split_dim:output:0<sequential_180/lstm_542/while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_180/lstm_542/while/lstm_cell_440/SigmoidSigmoid:sequential_180/lstm_542/while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_180/lstm_542/while/lstm_cell_440/Sigmoid_1Sigmoid:sequential_180/lstm_542/while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_180/lstm_542/while/lstm_cell_440/mulMul9sequential_180/lstm_542/while/lstm_cell_440/Sigmoid_1:y:0+sequential_180_lstm_542_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_180/lstm_542/while/lstm_cell_440/ReluRelu:sequential_180/lstm_542/while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_180/lstm_542/while/lstm_cell_440/mul_1Mul7sequential_180/lstm_542/while/lstm_cell_440/Sigmoid:y:0>sequential_180/lstm_542/while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_180/lstm_542/while/lstm_cell_440/add_1AddV23sequential_180/lstm_542/while/lstm_cell_440/mul:z:05sequential_180/lstm_542/while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_180/lstm_542/while/lstm_cell_440/Sigmoid_2Sigmoid:sequential_180/lstm_542/while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_180/lstm_542/while/lstm_cell_440/Relu_1Relu5sequential_180/lstm_542/while/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_180/lstm_542/while/lstm_cell_440/mul_2Mul9sequential_180/lstm_542/while/lstm_cell_440/Sigmoid_2:y:0@sequential_180/lstm_542/while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_180/lstm_542/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_180_lstm_542_while_placeholder_1)sequential_180_lstm_542_while_placeholder5sequential_180/lstm_542/while/lstm_cell_440/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_180/lstm_542/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_180/lstm_542/while/addAddV2)sequential_180_lstm_542_while_placeholder,sequential_180/lstm_542/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_180/lstm_542/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_180/lstm_542/while/add_1AddV2Hsequential_180_lstm_542_while_sequential_180_lstm_542_while_loop_counter.sequential_180/lstm_542/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_180/lstm_542/while/IdentityIdentity'sequential_180/lstm_542/while/add_1:z:0#^sequential_180/lstm_542/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_542/while/Identity_1IdentityNsequential_180_lstm_542_while_sequential_180_lstm_542_while_maximum_iterations#^sequential_180/lstm_542/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_542/while/Identity_2Identity%sequential_180/lstm_542/while/add:z:0#^sequential_180/lstm_542/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_542/while/Identity_3IdentityRsequential_180/lstm_542/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_180/lstm_542/while/NoOp*
T0*
_output_shapes
: ?
(sequential_180/lstm_542/while/Identity_4Identity5sequential_180/lstm_542/while/lstm_cell_440/mul_2:z:0#^sequential_180/lstm_542/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_180/lstm_542/while/Identity_5Identity5sequential_180/lstm_542/while/lstm_cell_440/add_1:z:0#^sequential_180/lstm_542/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_180/lstm_542/while/NoOpNoOpC^sequential_180/lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOpB^sequential_180/lstm_542/while/lstm_cell_440/MatMul/ReadVariableOpD^sequential_180/lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_180_lstm_542_while_identity/sequential_180/lstm_542/while/Identity:output:0"]
(sequential_180_lstm_542_while_identity_11sequential_180/lstm_542/while/Identity_1:output:0"]
(sequential_180_lstm_542_while_identity_21sequential_180/lstm_542/while/Identity_2:output:0"]
(sequential_180_lstm_542_while_identity_31sequential_180/lstm_542/while/Identity_3:output:0"]
(sequential_180_lstm_542_while_identity_41sequential_180/lstm_542/while/Identity_4:output:0"]
(sequential_180_lstm_542_while_identity_51sequential_180/lstm_542/while/Identity_5:output:0"?
Ksequential_180_lstm_542_while_lstm_cell_440_biasadd_readvariableop_resourceMsequential_180_lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0"?
Lsequential_180_lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resourceNsequential_180_lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0"?
Jsequential_180_lstm_542_while_lstm_cell_440_matmul_readvariableop_resourceLsequential_180_lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0"?
Esequential_180_lstm_542_while_sequential_180_lstm_542_strided_slice_1Gsequential_180_lstm_542_while_sequential_180_lstm_542_strided_slice_1_0"?
?sequential_180_lstm_542_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_542_tensorarrayunstack_tensorlistfromtensor?sequential_180_lstm_542_while_tensorarrayv2read_tensorlistgetitem_sequential_180_lstm_542_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_180/lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOpBsequential_180/lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp2?
Asequential_180/lstm_542/while/lstm_cell_440/MatMul/ReadVariableOpAsequential_180/lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp2?
Csequential_180/lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOpCsequential_180/lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_180_layer_call_fn_2661231
lstm_540_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_540_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661206o
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
_user_specified_namelstm_540_input
?
?
while_cond_2659953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2659953___redundant_placeholder05
1while_while_cond_2659953___redundant_placeholder15
1while_while_cond_2659953___redundant_placeholder25
1while_while_cond_2659953___redundant_placeholder3
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
while_cond_2663381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2663381___redundant_placeholder05
1while_while_cond_2663381___redundant_placeholder15
1while_while_cond_2663381___redundant_placeholder25
1while_while_cond_2663381___redundant_placeholder3
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2660723

inputs'
lstm_cell_440_2660641:2('
lstm_cell_440_2660643:
(#
lstm_cell_440_2660645:(
identity??%lstm_cell_440/StatefulPartitionedCall?while;
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
%lstm_cell_440/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_440_2660641lstm_cell_440_2660643lstm_cell_440_2660645*
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660595n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_440_2660641lstm_cell_440_2660643lstm_cell_440_2660645*
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
while_body_2660654*
condR
while_cond_2660653*K
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
NoOpNoOp&^lstm_cell_440/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_440/StatefulPartitionedCall%lstm_cell_440/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_541_while_body_2662621.
*lstm_541_while_lstm_541_while_loop_counter4
0lstm_541_while_lstm_541_while_maximum_iterations
lstm_541_while_placeholder 
lstm_541_while_placeholder_1 
lstm_541_while_placeholder_2 
lstm_541_while_placeholder_3-
)lstm_541_while_lstm_541_strided_slice_1_0i
elstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0:	d?R
?lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?M
>lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
lstm_541_while_identity
lstm_541_while_identity_1
lstm_541_while_identity_2
lstm_541_while_identity_3
lstm_541_while_identity_4
lstm_541_while_identity_5+
'lstm_541_while_lstm_541_strided_slice_1g
clstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensorN
;lstm_541_while_lstm_cell_439_matmul_readvariableop_resource:	d?P
=lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource:	2?K
<lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource:	???3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp?2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp?4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp?
@lstm_541/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_541/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensor_0lstm_541_while_placeholderIlstm_541/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp=lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_541/while/lstm_cell_439/MatMulMatMul9lstm_541/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp?lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_541/while/lstm_cell_439/MatMul_1MatMullstm_541_while_placeholder_2<lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_541/while/lstm_cell_439/addAddV2-lstm_541/while/lstm_cell_439/MatMul:product:0/lstm_541/while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp>lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_541/while/lstm_cell_439/BiasAddBiasAdd$lstm_541/while/lstm_cell_439/add:z:0;lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_541/while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_541/while/lstm_cell_439/splitSplit5lstm_541/while/lstm_cell_439/split/split_dim:output:0-lstm_541/while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_541/while/lstm_cell_439/SigmoidSigmoid+lstm_541/while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_541/while/lstm_cell_439/Sigmoid_1Sigmoid+lstm_541/while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_541/while/lstm_cell_439/mulMul*lstm_541/while/lstm_cell_439/Sigmoid_1:y:0lstm_541_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_541/while/lstm_cell_439/ReluRelu+lstm_541/while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_541/while/lstm_cell_439/mul_1Mul(lstm_541/while/lstm_cell_439/Sigmoid:y:0/lstm_541/while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_541/while/lstm_cell_439/add_1AddV2$lstm_541/while/lstm_cell_439/mul:z:0&lstm_541/while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_541/while/lstm_cell_439/Sigmoid_2Sigmoid+lstm_541/while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_541/while/lstm_cell_439/Relu_1Relu&lstm_541/while/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_541/while/lstm_cell_439/mul_2Mul*lstm_541/while/lstm_cell_439/Sigmoid_2:y:01lstm_541/while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_541/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_541_while_placeholder_1lstm_541_while_placeholder&lstm_541/while/lstm_cell_439/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_541/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_541/while/addAddV2lstm_541_while_placeholderlstm_541/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_541/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_541/while/add_1AddV2*lstm_541_while_lstm_541_while_loop_counterlstm_541/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_541/while/IdentityIdentitylstm_541/while/add_1:z:0^lstm_541/while/NoOp*
T0*
_output_shapes
: ?
lstm_541/while/Identity_1Identity0lstm_541_while_lstm_541_while_maximum_iterations^lstm_541/while/NoOp*
T0*
_output_shapes
: t
lstm_541/while/Identity_2Identitylstm_541/while/add:z:0^lstm_541/while/NoOp*
T0*
_output_shapes
: ?
lstm_541/while/Identity_3IdentityClstm_541/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_541/while/NoOp*
T0*
_output_shapes
: ?
lstm_541/while/Identity_4Identity&lstm_541/while/lstm_cell_439/mul_2:z:0^lstm_541/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_541/while/Identity_5Identity&lstm_541/while/lstm_cell_439/add_1:z:0^lstm_541/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_541/while/NoOpNoOp4^lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp3^lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp5^lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_541_while_identity lstm_541/while/Identity:output:0"?
lstm_541_while_identity_1"lstm_541/while/Identity_1:output:0"?
lstm_541_while_identity_2"lstm_541/while/Identity_2:output:0"?
lstm_541_while_identity_3"lstm_541/while/Identity_3:output:0"?
lstm_541_while_identity_4"lstm_541/while/Identity_4:output:0"?
lstm_541_while_identity_5"lstm_541/while/Identity_5:output:0"T
'lstm_541_while_lstm_541_strided_slice_1)lstm_541_while_lstm_541_strided_slice_1_0"~
<lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource>lstm_541_while_lstm_cell_439_biasadd_readvariableop_resource_0"?
=lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource?lstm_541_while_lstm_cell_439_matmul_1_readvariableop_resource_0"|
;lstm_541_while_lstm_cell_439_matmul_readvariableop_resource=lstm_541_while_lstm_cell_439_matmul_readvariableop_resource_0"?
clstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensorelstm_541_while_tensorarrayv2read_tensorlistgetitem_lstm_541_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp3lstm_541/while/lstm_cell_439/BiasAdd/ReadVariableOp2h
2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp2lstm_541/while/lstm_cell_439/MatMul/ReadVariableOp2l
4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp4lstm_541/while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660595

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
?
while_cond_2660653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2660653___redundant_placeholder05
1while_while_cond_2660653___redundant_placeholder15
1while_while_cond_2660653___redundant_placeholder25
1while_while_cond_2660653___redundant_placeholder3
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661397

inputs>
,lstm_cell_440_matmul_readvariableop_resource:2(@
.lstm_cell_440_matmul_1_readvariableop_resource:
(;
-lstm_cell_440_biasadd_readvariableop_resource:(
identity??$lstm_cell_440/BiasAdd/ReadVariableOp?#lstm_cell_440/MatMul/ReadVariableOp?%lstm_cell_440/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_440/MatMul/ReadVariableOpReadVariableOp,lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_440/MatMulMatMulstrided_slice_2:output:0+lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_440/MatMul_1MatMulzeros:output:0-lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_440/addAddV2lstm_cell_440/MatMul:product:0 lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_440/BiasAddBiasAddlstm_cell_440/add:z:0,lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_440/splitSplit&lstm_cell_440/split/split_dim:output:0lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_440/SigmoidSigmoidlstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_1Sigmoidlstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_440/mulMullstm_cell_440/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_440/ReluRelulstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_1Mullstm_cell_440/Sigmoid:y:0 lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_440/add_1AddV2lstm_cell_440/mul:z:0lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_2Sigmoidlstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_440/Relu_1Relulstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_2Mullstm_cell_440/Sigmoid_2:y:0"lstm_cell_440/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_440_matmul_readvariableop_resource.lstm_cell_440_matmul_1_readvariableop_resource-lstm_cell_440_biasadd_readvariableop_resource*
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
while_body_2661313*
condR
while_cond_2661312*K
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
NoOpNoOp%^lstm_cell_440/BiasAdd/ReadVariableOp$^lstm_cell_440/MatMul/ReadVariableOp&^lstm_cell_440/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_440/BiasAdd/ReadVariableOp$lstm_cell_440/BiasAdd/ReadVariableOp2J
#lstm_cell_440/MatMul/ReadVariableOp#lstm_cell_440/MatMul/ReadVariableOp2N
%lstm_cell_440/MatMul_1/ReadVariableOp%lstm_cell_440/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2663997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2663997___redundant_placeholder05
1while_while_cond_2663997___redundant_placeholder15
1while_while_cond_2663997___redundant_placeholder25
1while_while_cond_2663997___redundant_placeholder3
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
#__inference__traced_restore_2665284
file_prefix3
!assignvariableop_dense_180_kernel:
/
!assignvariableop_1_dense_180_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_540_lstm_cell_540_kernel:	?M
:assignvariableop_8_lstm_540_lstm_cell_540_recurrent_kernel:	d?=
.assignvariableop_9_lstm_540_lstm_cell_540_bias:	?D
1assignvariableop_10_lstm_541_lstm_cell_541_kernel:	d?N
;assignvariableop_11_lstm_541_lstm_cell_541_recurrent_kernel:	2?>
/assignvariableop_12_lstm_541_lstm_cell_541_bias:	?C
1assignvariableop_13_lstm_542_lstm_cell_542_kernel:2(M
;assignvariableop_14_lstm_542_lstm_cell_542_recurrent_kernel:
(=
/assignvariableop_15_lstm_542_lstm_cell_542_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_180_kernel_m:
7
)assignvariableop_19_adam_dense_180_bias_m:K
8assignvariableop_20_adam_lstm_540_lstm_cell_540_kernel_m:	?U
Bassignvariableop_21_adam_lstm_540_lstm_cell_540_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_540_lstm_cell_540_bias_m:	?K
8assignvariableop_23_adam_lstm_541_lstm_cell_541_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_541_lstm_cell_541_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_541_lstm_cell_541_bias_m:	?J
8assignvariableop_26_adam_lstm_542_lstm_cell_542_kernel_m:2(T
Bassignvariableop_27_adam_lstm_542_lstm_cell_542_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_542_lstm_cell_542_bias_m:(=
+assignvariableop_29_adam_dense_180_kernel_v:
7
)assignvariableop_30_adam_dense_180_bias_v:K
8assignvariableop_31_adam_lstm_540_lstm_cell_540_kernel_v:	?U
Bassignvariableop_32_adam_lstm_540_lstm_cell_540_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_540_lstm_cell_540_bias_v:	?K
8assignvariableop_34_adam_lstm_541_lstm_cell_541_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_541_lstm_cell_541_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_541_lstm_cell_541_bias_v:	?J
8assignvariableop_37_adam_lstm_542_lstm_cell_542_kernel_v:2(T
Bassignvariableop_38_adam_lstm_542_lstm_cell_542_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_542_lstm_cell_542_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_180_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_180_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_540_lstm_cell_540_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_540_lstm_cell_540_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_540_lstm_cell_540_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_541_lstm_cell_541_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_541_lstm_cell_541_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_541_lstm_cell_541_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_542_lstm_cell_542_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_542_lstm_cell_542_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_542_lstm_cell_542_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_180_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_180_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_540_lstm_cell_540_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_540_lstm_cell_540_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_540_lstm_cell_540_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_541_lstm_cell_541_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_541_lstm_cell_541_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_541_lstm_cell_541_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_542_lstm_cell_542_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_542_lstm_cell_542_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_542_lstm_cell_542_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_180_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_180_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_540_lstm_cell_540_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_540_lstm_cell_540_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_540_lstm_cell_540_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_541_lstm_cell_541_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_541_lstm_cell_541_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_541_lstm_cell_541_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_542_lstm_cell_542_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_542_lstm_cell_542_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_542_lstm_cell_542_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2661096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2661096___redundant_placeholder05
1while_while_cond_2661096___redundant_placeholder15
1while_while_cond_2661096___redundant_placeholder25
1while_while_cond_2661096___redundant_placeholder3
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

lstm_542_while_body_2662760.
*lstm_542_while_lstm_542_while_loop_counter4
0lstm_542_while_lstm_542_while_maximum_iterations
lstm_542_while_placeholder 
lstm_542_while_placeholder_1 
lstm_542_while_placeholder_2 
lstm_542_while_placeholder_3-
)lstm_542_while_lstm_542_strided_slice_1_0i
elstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0:2(Q
?lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(L
>lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0:(
lstm_542_while_identity
lstm_542_while_identity_1
lstm_542_while_identity_2
lstm_542_while_identity_3
lstm_542_while_identity_4
lstm_542_while_identity_5+
'lstm_542_while_lstm_542_strided_slice_1g
clstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensorM
;lstm_542_while_lstm_cell_440_matmul_readvariableop_resource:2(O
=lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource:
(J
<lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource:(??3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp?2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp?4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp?
@lstm_542/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_542/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensor_0lstm_542_while_placeholderIlstm_542/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp=lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_542/while/lstm_cell_440/MatMulMatMul9lstm_542/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp?lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_542/while/lstm_cell_440/MatMul_1MatMullstm_542_while_placeholder_2<lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_542/while/lstm_cell_440/addAddV2-lstm_542/while/lstm_cell_440/MatMul:product:0/lstm_542/while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp>lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_542/while/lstm_cell_440/BiasAddBiasAdd$lstm_542/while/lstm_cell_440/add:z:0;lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_542/while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_542/while/lstm_cell_440/splitSplit5lstm_542/while/lstm_cell_440/split/split_dim:output:0-lstm_542/while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_542/while/lstm_cell_440/SigmoidSigmoid+lstm_542/while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_542/while/lstm_cell_440/Sigmoid_1Sigmoid+lstm_542/while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_542/while/lstm_cell_440/mulMul*lstm_542/while/lstm_cell_440/Sigmoid_1:y:0lstm_542_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_542/while/lstm_cell_440/ReluRelu+lstm_542/while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_542/while/lstm_cell_440/mul_1Mul(lstm_542/while/lstm_cell_440/Sigmoid:y:0/lstm_542/while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_542/while/lstm_cell_440/add_1AddV2$lstm_542/while/lstm_cell_440/mul:z:0&lstm_542/while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_542/while/lstm_cell_440/Sigmoid_2Sigmoid+lstm_542/while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_542/while/lstm_cell_440/Relu_1Relu&lstm_542/while/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_542/while/lstm_cell_440/mul_2Mul*lstm_542/while/lstm_cell_440/Sigmoid_2:y:01lstm_542/while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_542/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_542_while_placeholder_1lstm_542_while_placeholder&lstm_542/while/lstm_cell_440/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_542/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_542/while/addAddV2lstm_542_while_placeholderlstm_542/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_542/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_542/while/add_1AddV2*lstm_542_while_lstm_542_while_loop_counterlstm_542/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_542/while/IdentityIdentitylstm_542/while/add_1:z:0^lstm_542/while/NoOp*
T0*
_output_shapes
: ?
lstm_542/while/Identity_1Identity0lstm_542_while_lstm_542_while_maximum_iterations^lstm_542/while/NoOp*
T0*
_output_shapes
: t
lstm_542/while/Identity_2Identitylstm_542/while/add:z:0^lstm_542/while/NoOp*
T0*
_output_shapes
: ?
lstm_542/while/Identity_3IdentityClstm_542/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_542/while/NoOp*
T0*
_output_shapes
: ?
lstm_542/while/Identity_4Identity&lstm_542/while/lstm_cell_440/mul_2:z:0^lstm_542/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_542/while/Identity_5Identity&lstm_542/while/lstm_cell_440/add_1:z:0^lstm_542/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_542/while/NoOpNoOp4^lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp3^lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp5^lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_542_while_identity lstm_542/while/Identity:output:0"?
lstm_542_while_identity_1"lstm_542/while/Identity_1:output:0"?
lstm_542_while_identity_2"lstm_542/while/Identity_2:output:0"?
lstm_542_while_identity_3"lstm_542/while/Identity_3:output:0"?
lstm_542_while_identity_4"lstm_542/while/Identity_4:output:0"?
lstm_542_while_identity_5"lstm_542/while/Identity_5:output:0"T
'lstm_542_while_lstm_542_strided_slice_1)lstm_542_while_lstm_542_strided_slice_1_0"~
<lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource>lstm_542_while_lstm_cell_440_biasadd_readvariableop_resource_0"?
=lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource?lstm_542_while_lstm_cell_440_matmul_1_readvariableop_resource_0"|
;lstm_542_while_lstm_cell_440_matmul_readvariableop_resource=lstm_542_while_lstm_cell_440_matmul_readvariableop_resource_0"?
clstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensorelstm_542_while_tensorarrayv2read_tensorlistgetitem_lstm_542_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp3lstm_542/while/lstm_cell_440/BiasAdd/ReadVariableOp2h
2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp2lstm_542/while/lstm_cell_440/MatMul/ReadVariableOp2l
4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp4lstm_542/while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_180_lstm_540_while_cond_2659313L
Hsequential_180_lstm_540_while_sequential_180_lstm_540_while_loop_counterR
Nsequential_180_lstm_540_while_sequential_180_lstm_540_while_maximum_iterations-
)sequential_180_lstm_540_while_placeholder/
+sequential_180_lstm_540_while_placeholder_1/
+sequential_180_lstm_540_while_placeholder_2/
+sequential_180_lstm_540_while_placeholder_3N
Jsequential_180_lstm_540_while_less_sequential_180_lstm_540_strided_slice_1e
asequential_180_lstm_540_while_sequential_180_lstm_540_while_cond_2659313___redundant_placeholder0e
asequential_180_lstm_540_while_sequential_180_lstm_540_while_cond_2659313___redundant_placeholder1e
asequential_180_lstm_540_while_sequential_180_lstm_540_while_cond_2659313___redundant_placeholder2e
asequential_180_lstm_540_while_sequential_180_lstm_540_while_cond_2659313___redundant_placeholder3*
&sequential_180_lstm_540_while_identity
?
"sequential_180/lstm_540/while/LessLess)sequential_180_lstm_540_while_placeholderJsequential_180_lstm_540_while_less_sequential_180_lstm_540_strided_slice_1*
T0*
_output_shapes
: {
&sequential_180/lstm_540/while/IdentityIdentity&sequential_180/lstm_540/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_180_lstm_540_while_identity/sequential_180/lstm_540/while/Identity:output:0*(
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2660182

inputs(
lstm_cell_439_2660100:	d?(
lstm_cell_439_2660102:	2?$
lstm_cell_439_2660104:	?
identity??%lstm_cell_439/StatefulPartitionedCall?while;
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
%lstm_cell_439/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_439_2660100lstm_cell_439_2660102lstm_cell_439_2660104*
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660099n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_439_2660100lstm_cell_439_2660102lstm_cell_439_2660104*
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
while_body_2660113*
condR
while_cond_2660112*K
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
NoOpNoOp&^lstm_cell_439/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_439/StatefulPartitionedCall%lstm_cell_439/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664555

inputs>
,lstm_cell_440_matmul_readvariableop_resource:2(@
.lstm_cell_440_matmul_1_readvariableop_resource:
(;
-lstm_cell_440_biasadd_readvariableop_resource:(
identity??$lstm_cell_440/BiasAdd/ReadVariableOp?#lstm_cell_440/MatMul/ReadVariableOp?%lstm_cell_440/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_440/MatMul/ReadVariableOpReadVariableOp,lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_440/MatMulMatMulstrided_slice_2:output:0+lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_440/MatMul_1MatMulzeros:output:0-lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_440/addAddV2lstm_cell_440/MatMul:product:0 lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_440/BiasAddBiasAddlstm_cell_440/add:z:0,lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_440/splitSplit&lstm_cell_440/split/split_dim:output:0lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_440/SigmoidSigmoidlstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_1Sigmoidlstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_440/mulMullstm_cell_440/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_440/ReluRelulstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_1Mullstm_cell_440/Sigmoid:y:0 lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_440/add_1AddV2lstm_cell_440/mul:z:0lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_440/Sigmoid_2Sigmoidlstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_440/Relu_1Relulstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_440/mul_2Mullstm_cell_440/Sigmoid_2:y:0"lstm_cell_440/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_440_matmul_readvariableop_resource.lstm_cell_440_matmul_1_readvariableop_resource-lstm_cell_440_biasadd_readvariableop_resource*
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
while_body_2664471*
condR
while_cond_2664470*K
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
NoOpNoOp%^lstm_cell_440/BiasAdd/ReadVariableOp$^lstm_cell_440/MatMul/ReadVariableOp&^lstm_cell_440/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_440/BiasAdd/ReadVariableOp$lstm_cell_440/BiasAdd/ReadVariableOp2J
#lstm_cell_440/MatMul/ReadVariableOp#lstm_cell_440/MatMul/ReadVariableOp2N
%lstm_cell_440/MatMul_1/ReadVariableOp%lstm_cell_440/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_540_while_body_2662055.
*lstm_540_while_lstm_540_while_loop_counter4
0lstm_540_while_lstm_540_while_maximum_iterations
lstm_540_while_placeholder 
lstm_540_while_placeholder_1 
lstm_540_while_placeholder_2 
lstm_540_while_placeholder_3-
)lstm_540_while_lstm_540_strided_slice_1_0i
elstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0:	?R
?lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?M
>lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
lstm_540_while_identity
lstm_540_while_identity_1
lstm_540_while_identity_2
lstm_540_while_identity_3
lstm_540_while_identity_4
lstm_540_while_identity_5+
'lstm_540_while_lstm_540_strided_slice_1g
clstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensorN
;lstm_540_while_lstm_cell_438_matmul_readvariableop_resource:	?P
=lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource:	d?K
<lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource:	???3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp?2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp?4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp?
@lstm_540/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_540/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensor_0lstm_540_while_placeholderIlstm_540/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp=lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_540/while/lstm_cell_438/MatMulMatMul9lstm_540/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp?lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_540/while/lstm_cell_438/MatMul_1MatMullstm_540_while_placeholder_2<lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_540/while/lstm_cell_438/addAddV2-lstm_540/while/lstm_cell_438/MatMul:product:0/lstm_540/while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp>lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_540/while/lstm_cell_438/BiasAddBiasAdd$lstm_540/while/lstm_cell_438/add:z:0;lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_540/while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_540/while/lstm_cell_438/splitSplit5lstm_540/while/lstm_cell_438/split/split_dim:output:0-lstm_540/while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_540/while/lstm_cell_438/SigmoidSigmoid+lstm_540/while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_540/while/lstm_cell_438/Sigmoid_1Sigmoid+lstm_540/while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_540/while/lstm_cell_438/mulMul*lstm_540/while/lstm_cell_438/Sigmoid_1:y:0lstm_540_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_540/while/lstm_cell_438/ReluRelu+lstm_540/while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_540/while/lstm_cell_438/mul_1Mul(lstm_540/while/lstm_cell_438/Sigmoid:y:0/lstm_540/while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_540/while/lstm_cell_438/add_1AddV2$lstm_540/while/lstm_cell_438/mul:z:0&lstm_540/while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_540/while/lstm_cell_438/Sigmoid_2Sigmoid+lstm_540/while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_540/while/lstm_cell_438/Relu_1Relu&lstm_540/while/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_540/while/lstm_cell_438/mul_2Mul*lstm_540/while/lstm_cell_438/Sigmoid_2:y:01lstm_540/while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_540/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_540_while_placeholder_1lstm_540_while_placeholder&lstm_540/while/lstm_cell_438/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_540/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_540/while/addAddV2lstm_540_while_placeholderlstm_540/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_540/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_540/while/add_1AddV2*lstm_540_while_lstm_540_while_loop_counterlstm_540/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_540/while/IdentityIdentitylstm_540/while/add_1:z:0^lstm_540/while/NoOp*
T0*
_output_shapes
: ?
lstm_540/while/Identity_1Identity0lstm_540_while_lstm_540_while_maximum_iterations^lstm_540/while/NoOp*
T0*
_output_shapes
: t
lstm_540/while/Identity_2Identitylstm_540/while/add:z:0^lstm_540/while/NoOp*
T0*
_output_shapes
: ?
lstm_540/while/Identity_3IdentityClstm_540/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_540/while/NoOp*
T0*
_output_shapes
: ?
lstm_540/while/Identity_4Identity&lstm_540/while/lstm_cell_438/mul_2:z:0^lstm_540/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_540/while/Identity_5Identity&lstm_540/while/lstm_cell_438/add_1:z:0^lstm_540/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_540/while/NoOpNoOp4^lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp3^lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp5^lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_540_while_identity lstm_540/while/Identity:output:0"?
lstm_540_while_identity_1"lstm_540/while/Identity_1:output:0"?
lstm_540_while_identity_2"lstm_540/while/Identity_2:output:0"?
lstm_540_while_identity_3"lstm_540/while/Identity_3:output:0"?
lstm_540_while_identity_4"lstm_540/while/Identity_4:output:0"?
lstm_540_while_identity_5"lstm_540/while/Identity_5:output:0"T
'lstm_540_while_lstm_540_strided_slice_1)lstm_540_while_lstm_540_strided_slice_1_0"~
<lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource>lstm_540_while_lstm_cell_438_biasadd_readvariableop_resource_0"?
=lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource?lstm_540_while_lstm_cell_438_matmul_1_readvariableop_resource_0"|
;lstm_540_while_lstm_cell_438_matmul_readvariableop_resource=lstm_540_while_lstm_cell_438_matmul_readvariableop_resource_0"?
clstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensorelstm_540_while_tensorarrayv2read_tensorlistgetitem_lstm_540_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp3lstm_540/while/lstm_cell_438/BiasAdd/ReadVariableOp2h
2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp2lstm_540/while/lstm_cell_438/MatMul/ReadVariableOp2l
4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp4lstm_540/while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2663998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_439_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_439_matmul_readvariableop_resource:	d?G
4while_lstm_cell_439_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_439_biasadd_readvariableop_resource:	???*while/lstm_cell_439/BiasAdd/ReadVariableOp?)while/lstm_cell_439/MatMul/ReadVariableOp?+while/lstm_cell_439/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_439/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_439/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_439/addAddV2$while/lstm_cell_439/MatMul:product:0&while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_439/BiasAddBiasAddwhile/lstm_cell_439/add:z:02while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_439/splitSplit,while/lstm_cell_439/split/split_dim:output:0$while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_439/SigmoidSigmoid"while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_1Sigmoid"while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mulMul!while/lstm_cell_439/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_439/ReluRelu"while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_1Mulwhile/lstm_cell_439/Sigmoid:y:0&while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/add_1AddV2while/lstm_cell_439/mul:z:0while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_2Sigmoid"while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_439/Relu_1Reluwhile/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_2Mul!while/lstm_cell_439/Sigmoid_2:y:0(while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_439/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_439/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_439/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_439/BiasAdd/ReadVariableOp*^while/lstm_cell_439/MatMul/ReadVariableOp,^while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_439_biasadd_readvariableop_resource5while_lstm_cell_439_biasadd_readvariableop_resource_0"n
4while_lstm_cell_439_matmul_1_readvariableop_resource6while_lstm_cell_439_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_439_matmul_readvariableop_resource4while_lstm_cell_439_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_439/BiasAdd/ReadVariableOp*while/lstm_cell_439/BiasAdd/ReadVariableOp2V
)while/lstm_cell_439/MatMul/ReadVariableOp)while/lstm_cell_439/MatMul/ReadVariableOp2Z
+while/lstm_cell_439/MatMul_1/ReadVariableOp+while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2663095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2663095___redundant_placeholder05
1while_while_cond_2663095___redundant_placeholder15
1while_while_cond_2663095___redundant_placeholder25
1while_while_cond_2663095___redundant_placeholder3
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
*__inference_lstm_541_layer_call_fn_2663488
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2660373|
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
?
/__inference_lstm_cell_439_layer_call_fn_2664849

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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660245o
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
*__inference_lstm_540_layer_call_fn_2662894

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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2661727s
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
while_body_2661478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_439_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_439_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_439_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_439_matmul_readvariableop_resource:	d?G
4while_lstm_cell_439_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_439_biasadd_readvariableop_resource:	???*while/lstm_cell_439/BiasAdd/ReadVariableOp?)while/lstm_cell_439/MatMul/ReadVariableOp?+while/lstm_cell_439/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_439_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_439/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_439_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_439/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_439/addAddV2$while/lstm_cell_439/MatMul:product:0&while/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_439_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_439/BiasAddBiasAddwhile/lstm_cell_439/add:z:02while/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_439/splitSplit,while/lstm_cell_439/split/split_dim:output:0$while/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_439/SigmoidSigmoid"while/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_1Sigmoid"while/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mulMul!while/lstm_cell_439/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_439/ReluRelu"while/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_1Mulwhile/lstm_cell_439/Sigmoid:y:0&while/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/add_1AddV2while/lstm_cell_439/mul:z:0while/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_439/Sigmoid_2Sigmoid"while/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_439/Relu_1Reluwhile/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_439/mul_2Mul!while/lstm_cell_439/Sigmoid_2:y:0(while/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_439/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_439/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_439/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_439/BiasAdd/ReadVariableOp*^while/lstm_cell_439/MatMul/ReadVariableOp,^while/lstm_cell_439/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_439_biasadd_readvariableop_resource5while_lstm_cell_439_biasadd_readvariableop_resource_0"n
4while_lstm_cell_439_matmul_1_readvariableop_resource6while_lstm_cell_439_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_439_matmul_readvariableop_resource4while_lstm_cell_439_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_439/BiasAdd/ReadVariableOp*while/lstm_cell_439/BiasAdd/ReadVariableOp2V
)while/lstm_cell_439/MatMul/ReadVariableOp)while/lstm_cell_439/MatMul/ReadVariableOp2Z
+while/lstm_cell_439/MatMul_1/ReadVariableOp+while/lstm_cell_439/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2664184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2664184___redundant_placeholder05
1while_while_cond_2664184___redundant_placeholder15
1while_while_cond_2664184___redundant_placeholder25
1while_while_cond_2664184___redundant_placeholder3
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659895

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
?#
?
while_body_2660304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_439_2660328_0:	d?0
while_lstm_cell_439_2660330_0:	2?,
while_lstm_cell_439_2660332_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_439_2660328:	d?.
while_lstm_cell_439_2660330:	2?*
while_lstm_cell_439_2660332:	???+while/lstm_cell_439/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_439/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_439_2660328_0while_lstm_cell_439_2660330_0while_lstm_cell_439_2660332_0*
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660245?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_439/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_439/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_439/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_439/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_439_2660328while_lstm_cell_439_2660328_0"<
while_lstm_cell_439_2660330while_lstm_cell_439_2660330_0"<
while_lstm_cell_439_2660332while_lstm_cell_439_2660332_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_439/StatefulPartitionedCall+while/lstm_cell_439/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2662953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_438_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_438_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_438_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_438_matmul_readvariableop_resource:	?G
4while_lstm_cell_438_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_438_biasadd_readvariableop_resource:	???*while/lstm_cell_438/BiasAdd/ReadVariableOp?)while/lstm_cell_438/MatMul/ReadVariableOp?+while/lstm_cell_438/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_438_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_438/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_438_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_438/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_438/addAddV2$while/lstm_cell_438/MatMul:product:0&while/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_438_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_438/BiasAddBiasAddwhile/lstm_cell_438/add:z:02while/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_438/splitSplit,while/lstm_cell_438/split/split_dim:output:0$while/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_438/SigmoidSigmoid"while/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_1Sigmoid"while/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mulMul!while/lstm_cell_438/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_438/ReluRelu"while/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_1Mulwhile/lstm_cell_438/Sigmoid:y:0&while/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/add_1AddV2while/lstm_cell_438/mul:z:0while/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_438/Sigmoid_2Sigmoid"while/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_438/Relu_1Reluwhile/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_438/mul_2Mul!while/lstm_cell_438/Sigmoid_2:y:0(while/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_438/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_438/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_438/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_438/BiasAdd/ReadVariableOp*^while/lstm_cell_438/MatMul/ReadVariableOp,^while/lstm_cell_438/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_438_biasadd_readvariableop_resource5while_lstm_cell_438_biasadd_readvariableop_resource_0"n
4while_lstm_cell_438_matmul_1_readvariableop_resource6while_lstm_cell_438_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_438_matmul_readvariableop_resource4while_lstm_cell_438_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_438/BiasAdd/ReadVariableOp*while/lstm_cell_438/BiasAdd/ReadVariableOp2V
)while/lstm_cell_438/MatMul/ReadVariableOp)while/lstm_cell_438/MatMul/ReadVariableOp2Z
+while/lstm_cell_438/MatMul_1/ReadVariableOp+while/lstm_cell_438/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2661031

inputs?
,lstm_cell_439_matmul_readvariableop_resource:	d?A
.lstm_cell_439_matmul_1_readvariableop_resource:	2?<
-lstm_cell_439_biasadd_readvariableop_resource:	?
identity??$lstm_cell_439/BiasAdd/ReadVariableOp?#lstm_cell_439/MatMul/ReadVariableOp?%lstm_cell_439/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_439/MatMul/ReadVariableOpReadVariableOp,lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_439/MatMulMatMulstrided_slice_2:output:0+lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_439/MatMul_1MatMulzeros:output:0-lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_439/addAddV2lstm_cell_439/MatMul:product:0 lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_439/BiasAddBiasAddlstm_cell_439/add:z:0,lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_439/splitSplit&lstm_cell_439/split/split_dim:output:0lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_439/SigmoidSigmoidlstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_1Sigmoidlstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_439/mulMullstm_cell_439/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_439/ReluRelulstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_1Mullstm_cell_439/Sigmoid:y:0 lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_439/add_1AddV2lstm_cell_439/mul:z:0lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_439/Sigmoid_2Sigmoidlstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_439/Relu_1Relulstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_439/mul_2Mullstm_cell_439/Sigmoid_2:y:0"lstm_cell_439/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_439_matmul_readvariableop_resource.lstm_cell_439_matmul_1_readvariableop_resource-lstm_cell_439_biasadd_readvariableop_resource*
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
while_body_2660947*
condR
while_cond_2660946*K
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
NoOpNoOp%^lstm_cell_439/BiasAdd/ReadVariableOp$^lstm_cell_439/MatMul/ReadVariableOp&^lstm_cell_439/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_439/BiasAdd/ReadVariableOp$lstm_cell_439/BiasAdd/ReadVariableOp2J
#lstm_cell_439/MatMul/ReadVariableOp#lstm_cell_439/MatMul/ReadVariableOp2N
%lstm_cell_439/MatMul_1/ReadVariableOp%lstm_cell_439/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_540_layer_call_and_return_conditional_losses_2661727

inputs?
,lstm_cell_438_matmul_readvariableop_resource:	?A
.lstm_cell_438_matmul_1_readvariableop_resource:	d?<
-lstm_cell_438_biasadd_readvariableop_resource:	?
identity??$lstm_cell_438/BiasAdd/ReadVariableOp?#lstm_cell_438/MatMul/ReadVariableOp?%lstm_cell_438/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_438/MatMul/ReadVariableOpReadVariableOp,lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_438/MatMulMatMulstrided_slice_2:output:0+lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_438/MatMul_1MatMulzeros:output:0-lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_438/addAddV2lstm_cell_438/MatMul:product:0 lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_438/BiasAddBiasAddlstm_cell_438/add:z:0,lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_438/splitSplit&lstm_cell_438/split/split_dim:output:0lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_438/SigmoidSigmoidlstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_1Sigmoidlstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_438/mulMullstm_cell_438/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_438/ReluRelulstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_1Mullstm_cell_438/Sigmoid:y:0 lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_438/add_1AddV2lstm_cell_438/mul:z:0lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_438/Sigmoid_2Sigmoidlstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_438/Relu_1Relulstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_438/mul_2Mullstm_cell_438/Sigmoid_2:y:0"lstm_cell_438/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_438_matmul_readvariableop_resource.lstm_cell_438_matmul_1_readvariableop_resource-lstm_cell_438_biasadd_readvariableop_resource*
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
while_body_2661643*
condR
while_cond_2661642*K
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
NoOpNoOp%^lstm_cell_438/BiasAdd/ReadVariableOp$^lstm_cell_438/MatMul/ReadVariableOp&^lstm_cell_438/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_438/BiasAdd/ReadVariableOp$lstm_cell_438/BiasAdd/ReadVariableOp2J
#lstm_cell_438/MatMul/ReadVariableOp#lstm_cell_438/MatMul/ReadVariableOp2N
%lstm_cell_438/MatMul_1/ReadVariableOp%lstm_cell_438/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2664614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_440_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_440_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_440_matmul_readvariableop_resource:2(F
4while_lstm_cell_440_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_440_biasadd_readvariableop_resource:(??*while/lstm_cell_440/BiasAdd/ReadVariableOp?)while/lstm_cell_440/MatMul/ReadVariableOp?+while/lstm_cell_440/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_440/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_440/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_440/addAddV2$while/lstm_cell_440/MatMul:product:0&while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_440/BiasAddBiasAddwhile/lstm_cell_440/add:z:02while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_440/splitSplit,while/lstm_cell_440/split/split_dim:output:0$while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_440/SigmoidSigmoid"while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_1Sigmoid"while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mulMul!while/lstm_cell_440/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_440/ReluRelu"while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_1Mulwhile/lstm_cell_440/Sigmoid:y:0&while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/add_1AddV2while/lstm_cell_440/mul:z:0while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_2Sigmoid"while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_440/Relu_1Reluwhile/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_2Mul!while/lstm_cell_440/Sigmoid_2:y:0(while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_440/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_440/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_440/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_440/BiasAdd/ReadVariableOp*^while/lstm_cell_440/MatMul/ReadVariableOp,^while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_440_biasadd_readvariableop_resource5while_lstm_cell_440_biasadd_readvariableop_resource_0"n
4while_lstm_cell_440_matmul_1_readvariableop_resource6while_lstm_cell_440_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_440_matmul_readvariableop_resource4while_lstm_cell_440_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_440/BiasAdd/ReadVariableOp*while/lstm_cell_440/BiasAdd/ReadVariableOp2V
)while/lstm_cell_440/MatMul/ReadVariableOp)while/lstm_cell_440/MatMul/ReadVariableOp2Z
+while/lstm_cell_440/MatMul_1/ReadVariableOp+while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2660113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_439_2660137_0:	d?0
while_lstm_cell_439_2660139_0:	2?,
while_lstm_cell_439_2660141_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_439_2660137:	d?.
while_lstm_cell_439_2660139:	2?*
while_lstm_cell_439_2660141:	???+while/lstm_cell_439/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_439/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_439_2660137_0while_lstm_cell_439_2660139_0while_lstm_cell_439_2660141_0*
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2660099?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_439/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_439/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_439/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_439/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_439_2660137while_lstm_cell_439_2660137_0"<
while_lstm_cell_439_2660139while_lstm_cell_439_2660139_0"<
while_lstm_cell_439_2660141while_lstm_cell_439_2660141_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_439/StatefulPartitionedCall+while/lstm_cell_439/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2664471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_440_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_440_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_440_matmul_readvariableop_resource:2(F
4while_lstm_cell_440_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_440_biasadd_readvariableop_resource:(??*while/lstm_cell_440/BiasAdd/ReadVariableOp?)while/lstm_cell_440/MatMul/ReadVariableOp?+while/lstm_cell_440/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_440/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_440/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_440/addAddV2$while/lstm_cell_440/MatMul:product:0&while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_440/BiasAddBiasAddwhile/lstm_cell_440/add:z:02while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_440/splitSplit,while/lstm_cell_440/split/split_dim:output:0$while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_440/SigmoidSigmoid"while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_1Sigmoid"while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mulMul!while/lstm_cell_440/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_440/ReluRelu"while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_1Mulwhile/lstm_cell_440/Sigmoid:y:0&while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/add_1AddV2while/lstm_cell_440/mul:z:0while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_2Sigmoid"while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_440/Relu_1Reluwhile/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_2Mul!while/lstm_cell_440/Sigmoid_2:y:0(while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_440/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_440/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_440/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_440/BiasAdd/ReadVariableOp*^while/lstm_cell_440/MatMul/ReadVariableOp,^while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_440_biasadd_readvariableop_resource5while_lstm_cell_440_biasadd_readvariableop_resource_0"n
4while_lstm_cell_440_matmul_1_readvariableop_resource6while_lstm_cell_440_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_440_matmul_readvariableop_resource4while_lstm_cell_440_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_440/BiasAdd/ReadVariableOp*while/lstm_cell_440/BiasAdd/ReadVariableOp2V
)while/lstm_cell_440/MatMul/ReadVariableOp)while/lstm_cell_440/MatMul/ReadVariableOp2Z
+while/lstm_cell_440/MatMul_1/ReadVariableOp+while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_180_layer_call_fn_2661969

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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661206o
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
while_cond_2660946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2660946___redundant_placeholder05
1while_while_cond_2660946___redundant_placeholder15
1while_while_cond_2660946___redundant_placeholder25
1while_while_cond_2660946___redundant_placeholder3
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2662850

inputsH
5lstm_540_lstm_cell_438_matmul_readvariableop_resource:	?J
7lstm_540_lstm_cell_438_matmul_1_readvariableop_resource:	d?E
6lstm_540_lstm_cell_438_biasadd_readvariableop_resource:	?H
5lstm_541_lstm_cell_439_matmul_readvariableop_resource:	d?J
7lstm_541_lstm_cell_439_matmul_1_readvariableop_resource:	2?E
6lstm_541_lstm_cell_439_biasadd_readvariableop_resource:	?G
5lstm_542_lstm_cell_440_matmul_readvariableop_resource:2(I
7lstm_542_lstm_cell_440_matmul_1_readvariableop_resource:
(D
6lstm_542_lstm_cell_440_biasadd_readvariableop_resource:(:
(dense_180_matmul_readvariableop_resource:
7
)dense_180_biasadd_readvariableop_resource:
identity?? dense_180/BiasAdd/ReadVariableOp?dense_180/MatMul/ReadVariableOp?-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp?,lstm_540/lstm_cell_438/MatMul/ReadVariableOp?.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp?lstm_540/while?-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp?,lstm_541/lstm_cell_439/MatMul/ReadVariableOp?.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp?lstm_541/while?-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp?,lstm_542/lstm_cell_440/MatMul/ReadVariableOp?.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp?lstm_542/whileD
lstm_540/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_540/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_540/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_540/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_sliceStridedSlicelstm_540/Shape:output:0%lstm_540/strided_slice/stack:output:0'lstm_540/strided_slice/stack_1:output:0'lstm_540/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_540/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_540/zeros/packedPacklstm_540/strided_slice:output:0 lstm_540/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_540/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_540/zerosFilllstm_540/zeros/packed:output:0lstm_540/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_540/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_540/zeros_1/packedPacklstm_540/strided_slice:output:0"lstm_540/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_540/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_540/zeros_1Fill lstm_540/zeros_1/packed:output:0lstm_540/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_540/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_540/transpose	Transposeinputs lstm_540/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_540/Shape_1Shapelstm_540/transpose:y:0*
T0*
_output_shapes
:h
lstm_540/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_540/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_540/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_slice_1StridedSlicelstm_540/Shape_1:output:0'lstm_540/strided_slice_1/stack:output:0)lstm_540/strided_slice_1/stack_1:output:0)lstm_540/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_540/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_540/TensorArrayV2TensorListReserve-lstm_540/TensorArrayV2/element_shape:output:0!lstm_540/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_540/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_540/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_540/transpose:y:0Glstm_540/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_540/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_540/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_540/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_slice_2StridedSlicelstm_540/transpose:y:0'lstm_540/strided_slice_2/stack:output:0)lstm_540/strided_slice_2/stack_1:output:0)lstm_540/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_540/lstm_cell_438/MatMul/ReadVariableOpReadVariableOp5lstm_540_lstm_cell_438_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_540/lstm_cell_438/MatMulMatMul!lstm_540/strided_slice_2:output:04lstm_540/lstm_cell_438/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOpReadVariableOp7lstm_540_lstm_cell_438_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_540/lstm_cell_438/MatMul_1MatMullstm_540/zeros:output:06lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_540/lstm_cell_438/addAddV2'lstm_540/lstm_cell_438/MatMul:product:0)lstm_540/lstm_cell_438/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOpReadVariableOp6lstm_540_lstm_cell_438_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_540/lstm_cell_438/BiasAddBiasAddlstm_540/lstm_cell_438/add:z:05lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_540/lstm_cell_438/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_540/lstm_cell_438/splitSplit/lstm_540/lstm_cell_438/split/split_dim:output:0'lstm_540/lstm_cell_438/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_540/lstm_cell_438/SigmoidSigmoid%lstm_540/lstm_cell_438/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_540/lstm_cell_438/Sigmoid_1Sigmoid%lstm_540/lstm_cell_438/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/mulMul$lstm_540/lstm_cell_438/Sigmoid_1:y:0lstm_540/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_540/lstm_cell_438/ReluRelu%lstm_540/lstm_cell_438/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/mul_1Mul"lstm_540/lstm_cell_438/Sigmoid:y:0)lstm_540/lstm_cell_438/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/add_1AddV2lstm_540/lstm_cell_438/mul:z:0 lstm_540/lstm_cell_438/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_540/lstm_cell_438/Sigmoid_2Sigmoid%lstm_540/lstm_cell_438/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_540/lstm_cell_438/Relu_1Relu lstm_540/lstm_cell_438/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_540/lstm_cell_438/mul_2Mul$lstm_540/lstm_cell_438/Sigmoid_2:y:0+lstm_540/lstm_cell_438/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_540/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_540/TensorArrayV2_1TensorListReserve/lstm_540/TensorArrayV2_1/element_shape:output:0!lstm_540/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_540/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_540/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_540/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_540/whileWhile$lstm_540/while/loop_counter:output:0*lstm_540/while/maximum_iterations:output:0lstm_540/time:output:0!lstm_540/TensorArrayV2_1:handle:0lstm_540/zeros:output:0lstm_540/zeros_1:output:0!lstm_540/strided_slice_1:output:0@lstm_540/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_540_lstm_cell_438_matmul_readvariableop_resource7lstm_540_lstm_cell_438_matmul_1_readvariableop_resource6lstm_540_lstm_cell_438_biasadd_readvariableop_resource*
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
lstm_540_while_body_2662482*'
condR
lstm_540_while_cond_2662481*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_540/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_540/TensorArrayV2Stack/TensorListStackTensorListStacklstm_540/while:output:3Blstm_540/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_540/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_540/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_540/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_540/strided_slice_3StridedSlice4lstm_540/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_540/strided_slice_3/stack:output:0)lstm_540/strided_slice_3/stack_1:output:0)lstm_540/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_540/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_540/transpose_1	Transpose4lstm_540/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_540/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_540/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_541/ShapeShapelstm_540/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_541/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_541/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_541/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_sliceStridedSlicelstm_541/Shape:output:0%lstm_541/strided_slice/stack:output:0'lstm_541/strided_slice/stack_1:output:0'lstm_541/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_541/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_541/zeros/packedPacklstm_541/strided_slice:output:0 lstm_541/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_541/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_541/zerosFilllstm_541/zeros/packed:output:0lstm_541/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_541/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_541/zeros_1/packedPacklstm_541/strided_slice:output:0"lstm_541/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_541/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_541/zeros_1Fill lstm_541/zeros_1/packed:output:0lstm_541/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_541/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_541/transpose	Transposelstm_540/transpose_1:y:0 lstm_541/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_541/Shape_1Shapelstm_541/transpose:y:0*
T0*
_output_shapes
:h
lstm_541/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_541/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_541/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_slice_1StridedSlicelstm_541/Shape_1:output:0'lstm_541/strided_slice_1/stack:output:0)lstm_541/strided_slice_1/stack_1:output:0)lstm_541/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_541/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_541/TensorArrayV2TensorListReserve-lstm_541/TensorArrayV2/element_shape:output:0!lstm_541/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_541/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_541/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_541/transpose:y:0Glstm_541/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_541/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_541/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_541/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_slice_2StridedSlicelstm_541/transpose:y:0'lstm_541/strided_slice_2/stack:output:0)lstm_541/strided_slice_2/stack_1:output:0)lstm_541/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_541/lstm_cell_439/MatMul/ReadVariableOpReadVariableOp5lstm_541_lstm_cell_439_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_541/lstm_cell_439/MatMulMatMul!lstm_541/strided_slice_2:output:04lstm_541/lstm_cell_439/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOpReadVariableOp7lstm_541_lstm_cell_439_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_541/lstm_cell_439/MatMul_1MatMullstm_541/zeros:output:06lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_541/lstm_cell_439/addAddV2'lstm_541/lstm_cell_439/MatMul:product:0)lstm_541/lstm_cell_439/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOpReadVariableOp6lstm_541_lstm_cell_439_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_541/lstm_cell_439/BiasAddBiasAddlstm_541/lstm_cell_439/add:z:05lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_541/lstm_cell_439/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_541/lstm_cell_439/splitSplit/lstm_541/lstm_cell_439/split/split_dim:output:0'lstm_541/lstm_cell_439/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_541/lstm_cell_439/SigmoidSigmoid%lstm_541/lstm_cell_439/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_541/lstm_cell_439/Sigmoid_1Sigmoid%lstm_541/lstm_cell_439/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/mulMul$lstm_541/lstm_cell_439/Sigmoid_1:y:0lstm_541/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_541/lstm_cell_439/ReluRelu%lstm_541/lstm_cell_439/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/mul_1Mul"lstm_541/lstm_cell_439/Sigmoid:y:0)lstm_541/lstm_cell_439/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/add_1AddV2lstm_541/lstm_cell_439/mul:z:0 lstm_541/lstm_cell_439/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_541/lstm_cell_439/Sigmoid_2Sigmoid%lstm_541/lstm_cell_439/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_541/lstm_cell_439/Relu_1Relu lstm_541/lstm_cell_439/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_541/lstm_cell_439/mul_2Mul$lstm_541/lstm_cell_439/Sigmoid_2:y:0+lstm_541/lstm_cell_439/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_541/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_541/TensorArrayV2_1TensorListReserve/lstm_541/TensorArrayV2_1/element_shape:output:0!lstm_541/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_541/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_541/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_541/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_541/whileWhile$lstm_541/while/loop_counter:output:0*lstm_541/while/maximum_iterations:output:0lstm_541/time:output:0!lstm_541/TensorArrayV2_1:handle:0lstm_541/zeros:output:0lstm_541/zeros_1:output:0!lstm_541/strided_slice_1:output:0@lstm_541/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_541_lstm_cell_439_matmul_readvariableop_resource7lstm_541_lstm_cell_439_matmul_1_readvariableop_resource6lstm_541_lstm_cell_439_biasadd_readvariableop_resource*
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
lstm_541_while_body_2662621*'
condR
lstm_541_while_cond_2662620*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_541/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_541/TensorArrayV2Stack/TensorListStackTensorListStacklstm_541/while:output:3Blstm_541/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_541/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_541/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_541/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_541/strided_slice_3StridedSlice4lstm_541/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_541/strided_slice_3/stack:output:0)lstm_541/strided_slice_3/stack_1:output:0)lstm_541/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_541/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_541/transpose_1	Transpose4lstm_541/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_541/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_541/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_542/ShapeShapelstm_541/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_542/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_542/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_542/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_sliceStridedSlicelstm_542/Shape:output:0%lstm_542/strided_slice/stack:output:0'lstm_542/strided_slice/stack_1:output:0'lstm_542/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_542/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_542/zeros/packedPacklstm_542/strided_slice:output:0 lstm_542/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_542/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_542/zerosFilllstm_542/zeros/packed:output:0lstm_542/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_542/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_542/zeros_1/packedPacklstm_542/strided_slice:output:0"lstm_542/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_542/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_542/zeros_1Fill lstm_542/zeros_1/packed:output:0lstm_542/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_542/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_542/transpose	Transposelstm_541/transpose_1:y:0 lstm_542/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_542/Shape_1Shapelstm_542/transpose:y:0*
T0*
_output_shapes
:h
lstm_542/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_542/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_542/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_slice_1StridedSlicelstm_542/Shape_1:output:0'lstm_542/strided_slice_1/stack:output:0)lstm_542/strided_slice_1/stack_1:output:0)lstm_542/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_542/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_542/TensorArrayV2TensorListReserve-lstm_542/TensorArrayV2/element_shape:output:0!lstm_542/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_542/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_542/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_542/transpose:y:0Glstm_542/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_542/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_542/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_542/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_slice_2StridedSlicelstm_542/transpose:y:0'lstm_542/strided_slice_2/stack:output:0)lstm_542/strided_slice_2/stack_1:output:0)lstm_542/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_542/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp5lstm_542_lstm_cell_440_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_542/lstm_cell_440/MatMulMatMul!lstm_542/strided_slice_2:output:04lstm_542/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp7lstm_542_lstm_cell_440_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_542/lstm_cell_440/MatMul_1MatMullstm_542/zeros:output:06lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_542/lstm_cell_440/addAddV2'lstm_542/lstm_cell_440/MatMul:product:0)lstm_542/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp6lstm_542_lstm_cell_440_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_542/lstm_cell_440/BiasAddBiasAddlstm_542/lstm_cell_440/add:z:05lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_542/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_542/lstm_cell_440/splitSplit/lstm_542/lstm_cell_440/split/split_dim:output:0'lstm_542/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_542/lstm_cell_440/SigmoidSigmoid%lstm_542/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_542/lstm_cell_440/Sigmoid_1Sigmoid%lstm_542/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/mulMul$lstm_542/lstm_cell_440/Sigmoid_1:y:0lstm_542/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_542/lstm_cell_440/ReluRelu%lstm_542/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/mul_1Mul"lstm_542/lstm_cell_440/Sigmoid:y:0)lstm_542/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/add_1AddV2lstm_542/lstm_cell_440/mul:z:0 lstm_542/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_542/lstm_cell_440/Sigmoid_2Sigmoid%lstm_542/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_542/lstm_cell_440/Relu_1Relu lstm_542/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_542/lstm_cell_440/mul_2Mul$lstm_542/lstm_cell_440/Sigmoid_2:y:0+lstm_542/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_542/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_542/TensorArrayV2_1TensorListReserve/lstm_542/TensorArrayV2_1/element_shape:output:0!lstm_542/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_542/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_542/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_542/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_542/whileWhile$lstm_542/while/loop_counter:output:0*lstm_542/while/maximum_iterations:output:0lstm_542/time:output:0!lstm_542/TensorArrayV2_1:handle:0lstm_542/zeros:output:0lstm_542/zeros_1:output:0!lstm_542/strided_slice_1:output:0@lstm_542/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_542_lstm_cell_440_matmul_readvariableop_resource7lstm_542_lstm_cell_440_matmul_1_readvariableop_resource6lstm_542_lstm_cell_440_biasadd_readvariableop_resource*
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
lstm_542_while_body_2662760*'
condR
lstm_542_while_cond_2662759*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_542/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_542/TensorArrayV2Stack/TensorListStackTensorListStacklstm_542/while:output:3Blstm_542/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_542/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_542/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_542/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_542/strided_slice_3StridedSlice4lstm_542/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_542/strided_slice_3/stack:output:0)lstm_542/strided_slice_3/stack_1:output:0)lstm_542/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_542/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_542/transpose_1	Transpose4lstm_542/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_542/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_542/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_180/MatMul/ReadVariableOpReadVariableOp(dense_180_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_180/MatMulMatMul!lstm_542/strided_slice_3:output:0'dense_180/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_180/BiasAdd/ReadVariableOpReadVariableOp)dense_180_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_180/BiasAddBiasAdddense_180/MatMul:product:0(dense_180/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_180/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_180/BiasAdd/ReadVariableOp ^dense_180/MatMul/ReadVariableOp.^lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp-^lstm_540/lstm_cell_438/MatMul/ReadVariableOp/^lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp^lstm_540/while.^lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp-^lstm_541/lstm_cell_439/MatMul/ReadVariableOp/^lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp^lstm_541/while.^lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp-^lstm_542/lstm_cell_440/MatMul/ReadVariableOp/^lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp^lstm_542/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_180/BiasAdd/ReadVariableOp dense_180/BiasAdd/ReadVariableOp2B
dense_180/MatMul/ReadVariableOpdense_180/MatMul/ReadVariableOp2^
-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp-lstm_540/lstm_cell_438/BiasAdd/ReadVariableOp2\
,lstm_540/lstm_cell_438/MatMul/ReadVariableOp,lstm_540/lstm_cell_438/MatMul/ReadVariableOp2`
.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp.lstm_540/lstm_cell_438/MatMul_1/ReadVariableOp2 
lstm_540/whilelstm_540/while2^
-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp-lstm_541/lstm_cell_439/BiasAdd/ReadVariableOp2\
,lstm_541/lstm_cell_439/MatMul/ReadVariableOp,lstm_541/lstm_cell_439/MatMul/ReadVariableOp2`
.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp.lstm_541/lstm_cell_439/MatMul_1/ReadVariableOp2 
lstm_541/whilelstm_541/while2^
-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp-lstm_542/lstm_cell_440/BiasAdd/ReadVariableOp2\
,lstm_542/lstm_cell_440/MatMul/ReadVariableOp,lstm_542/lstm_cell_440/MatMul/ReadVariableOp2`
.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp.lstm_542/lstm_cell_440/MatMul_1/ReadVariableOp2 
lstm_542/whilelstm_542/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_440_layer_call_fn_2664947

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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660595o
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2659749

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
while_cond_2664470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2664470___redundant_placeholder05
1while_while_cond_2664470___redundant_placeholder15
1while_while_cond_2664470___redundant_placeholder25
1while_while_cond_2664470___redundant_placeholder3
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
*__inference_lstm_542_layer_call_fn_2664126

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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2661397o
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2660449

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
while_body_2664328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_440_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_440_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_440_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_440_matmul_readvariableop_resource:2(F
4while_lstm_cell_440_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_440_biasadd_readvariableop_resource:(??*while/lstm_cell_440/BiasAdd/ReadVariableOp?)while/lstm_cell_440/MatMul/ReadVariableOp?+while/lstm_cell_440/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_440/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_440_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_440/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_440/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_440/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_440_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_440/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_440/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_440/addAddV2$while/lstm_cell_440/MatMul:product:0&while/lstm_cell_440/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_440/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_440_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_440/BiasAddBiasAddwhile/lstm_cell_440/add:z:02while/lstm_cell_440/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_440/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_440/splitSplit,while/lstm_cell_440/split/split_dim:output:0$while/lstm_cell_440/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_440/SigmoidSigmoid"while/lstm_cell_440/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_1Sigmoid"while/lstm_cell_440/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mulMul!while/lstm_cell_440/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_440/ReluRelu"while/lstm_cell_440/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_1Mulwhile/lstm_cell_440/Sigmoid:y:0&while/lstm_cell_440/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/add_1AddV2while/lstm_cell_440/mul:z:0while/lstm_cell_440/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_440/Sigmoid_2Sigmoid"while/lstm_cell_440/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_440/Relu_1Reluwhile/lstm_cell_440/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_440/mul_2Mul!while/lstm_cell_440/Sigmoid_2:y:0(while/lstm_cell_440/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_440/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_440/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_440/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_440/BiasAdd/ReadVariableOp*^while/lstm_cell_440/MatMul/ReadVariableOp,^while/lstm_cell_440/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_440_biasadd_readvariableop_resource5while_lstm_cell_440_biasadd_readvariableop_resource_0"n
4while_lstm_cell_440_matmul_1_readvariableop_resource6while_lstm_cell_440_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_440_matmul_readvariableop_resource4while_lstm_cell_440_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_440/BiasAdd/ReadVariableOp*while/lstm_cell_440/BiasAdd/ReadVariableOp2V
)while/lstm_cell_440/MatMul/ReadVariableOp)while/lstm_cell_440/MatMul/ReadVariableOp2Z
+while/lstm_cell_440/MatMul_1/ReadVariableOp+while/lstm_cell_440/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_540_input;
 serving_default_lstm_540_input:0?????????=
	dense_1800
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
2dense_180/kernel
:2dense_180/bias
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
0:.	?2lstm_540/lstm_cell_540/kernel
::8	d?2'lstm_540/lstm_cell_540/recurrent_kernel
*:(?2lstm_540/lstm_cell_540/bias
0:.	d?2lstm_541/lstm_cell_541/kernel
::8	2?2'lstm_541/lstm_cell_541/recurrent_kernel
*:(?2lstm_541/lstm_cell_541/bias
/:-2(2lstm_542/lstm_cell_542/kernel
9:7
(2'lstm_542/lstm_cell_542/recurrent_kernel
):'(2lstm_542/lstm_cell_542/bias
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
2Adam/dense_180/kernel/m
!:2Adam/dense_180/bias/m
5:3	?2$Adam/lstm_540/lstm_cell_540/kernel/m
?:=	d?2.Adam/lstm_540/lstm_cell_540/recurrent_kernel/m
/:-?2"Adam/lstm_540/lstm_cell_540/bias/m
5:3	d?2$Adam/lstm_541/lstm_cell_541/kernel/m
?:=	2?2.Adam/lstm_541/lstm_cell_541/recurrent_kernel/m
/:-?2"Adam/lstm_541/lstm_cell_541/bias/m
4:22(2$Adam/lstm_542/lstm_cell_542/kernel/m
>:<
(2.Adam/lstm_542/lstm_cell_542/recurrent_kernel/m
.:,(2"Adam/lstm_542/lstm_cell_542/bias/m
':%
2Adam/dense_180/kernel/v
!:2Adam/dense_180/bias/v
5:3	?2$Adam/lstm_540/lstm_cell_540/kernel/v
?:=	d?2.Adam/lstm_540/lstm_cell_540/recurrent_kernel/v
/:-?2"Adam/lstm_540/lstm_cell_540/bias/v
5:3	d?2$Adam/lstm_541/lstm_cell_541/kernel/v
?:=	2?2.Adam/lstm_541/lstm_cell_541/recurrent_kernel/v
/:-?2"Adam/lstm_541/lstm_cell_541/bias/v
4:22(2$Adam/lstm_542/lstm_cell_542/kernel/v
>:<
(2.Adam/lstm_542/lstm_cell_542/recurrent_kernel/v
.:,(2"Adam/lstm_542/lstm_cell_542/bias/v
?2?
0__inference_sequential_180_layer_call_fn_2661231
0__inference_sequential_180_layer_call_fn_2661969
0__inference_sequential_180_layer_call_fn_2661996
0__inference_sequential_180_layer_call_fn_2661847?
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2662423
K__inference_sequential_180_layer_call_and_return_conditional_losses_2662850
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661877
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661907?
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
"__inference__wrapped_model_2659682lstm_540_input"?
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
*__inference_lstm_540_layer_call_fn_2662861
*__inference_lstm_540_layer_call_fn_2662872
*__inference_lstm_540_layer_call_fn_2662883
*__inference_lstm_540_layer_call_fn_2662894?
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663037
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663180
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663323
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663466?
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
*__inference_lstm_541_layer_call_fn_2663477
*__inference_lstm_541_layer_call_fn_2663488
*__inference_lstm_541_layer_call_fn_2663499
*__inference_lstm_541_layer_call_fn_2663510?
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663653
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663796
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663939
E__inference_lstm_541_layer_call_and_return_conditional_losses_2664082?
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
*__inference_lstm_542_layer_call_fn_2664093
*__inference_lstm_542_layer_call_fn_2664104
*__inference_lstm_542_layer_call_fn_2664115
*__inference_lstm_542_layer_call_fn_2664126?
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664269
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664412
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664555
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664698?
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
+__inference_dense_180_layer_call_fn_2664707?
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
F__inference_dense_180_layer_call_and_return_conditional_losses_2664717?
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
%__inference_signature_wrapper_2661942lstm_540_input"?
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
/__inference_lstm_cell_438_layer_call_fn_2664734
/__inference_lstm_cell_438_layer_call_fn_2664751?
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2664783
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2664815?
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
/__inference_lstm_cell_439_layer_call_fn_2664832
/__inference_lstm_cell_439_layer_call_fn_2664849?
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2664881
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2664913?
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
/__inference_lstm_cell_440_layer_call_fn_2664930
/__inference_lstm_cell_440_layer_call_fn_2664947?
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2664979
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2665011?
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
"__inference__wrapped_model_2659682?-./012345!";?8
1?.
,?)
lstm_540_input?????????
? "5?2
0
	dense_180#? 
	dense_180??????????
F__inference_dense_180_layer_call_and_return_conditional_losses_2664717\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_180_layer_call_fn_2664707O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663037?-./O?L
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663180?-./O?L
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663323q-./??<
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
E__inference_lstm_540_layer_call_and_return_conditional_losses_2663466q-./??<
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
*__inference_lstm_540_layer_call_fn_2662861}-./O?L
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
*__inference_lstm_540_layer_call_fn_2662872}-./O?L
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
*__inference_lstm_540_layer_call_fn_2662883d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_540_layer_call_fn_2662894d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663653?012O?L
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663796?012O?L
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2663939q012??<
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
E__inference_lstm_541_layer_call_and_return_conditional_losses_2664082q012??<
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
*__inference_lstm_541_layer_call_fn_2663477}012O?L
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
*__inference_lstm_541_layer_call_fn_2663488}012O?L
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
*__inference_lstm_541_layer_call_fn_2663499d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_541_layer_call_fn_2663510d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664269}345O?L
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664412}345O?L
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664555m345??<
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
E__inference_lstm_542_layer_call_and_return_conditional_losses_2664698m345??<
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
*__inference_lstm_542_layer_call_fn_2664093p345O?L
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
*__inference_lstm_542_layer_call_fn_2664104p345O?L
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
*__inference_lstm_542_layer_call_fn_2664115`345??<
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
*__inference_lstm_542_layer_call_fn_2664126`345??<
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2664783?-./??}
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
J__inference_lstm_cell_438_layer_call_and_return_conditional_losses_2664815?-./??}
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
/__inference_lstm_cell_438_layer_call_fn_2664734?-./??}
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
/__inference_lstm_cell_438_layer_call_fn_2664751?-./??}
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2664881?012??}
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
J__inference_lstm_cell_439_layer_call_and_return_conditional_losses_2664913?012??}
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
/__inference_lstm_cell_439_layer_call_fn_2664832?012??}
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
/__inference_lstm_cell_439_layer_call_fn_2664849?012??}
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2664979?345??}
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
J__inference_lstm_cell_440_layer_call_and_return_conditional_losses_2665011?345??}
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
/__inference_lstm_cell_440_layer_call_fn_2664930?345??}
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
/__inference_lstm_cell_440_layer_call_fn_2664947?345??}
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661877y-./012345!"C?@
9?6
,?)
lstm_540_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_180_layer_call_and_return_conditional_losses_2661907y-./012345!"C?@
9?6
,?)
lstm_540_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_180_layer_call_and_return_conditional_losses_2662423q-./012345!";?8
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
K__inference_sequential_180_layer_call_and_return_conditional_losses_2662850q-./012345!";?8
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
0__inference_sequential_180_layer_call_fn_2661231l-./012345!"C?@
9?6
,?)
lstm_540_input?????????
p 

 
? "???????????
0__inference_sequential_180_layer_call_fn_2661847l-./012345!"C?@
9?6
,?)
lstm_540_input?????????
p

 
? "???????????
0__inference_sequential_180_layer_call_fn_2661969d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_180_layer_call_fn_2661996d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2661942?-./012345!"M?J
? 
C?@
>
lstm_540_input,?)
lstm_540_input?????????"5?2
0
	dense_180#? 
	dense_180?????????