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
dense_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_121/kernel
u
$dense_121/kernel/Read/ReadVariableOpReadVariableOpdense_121/kernel*
_output_shapes

:
*
dtype0
t
dense_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_121/bias
m
"dense_121/bias/Read/ReadVariableOpReadVariableOpdense_121/bias*
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
lstm_363/lstm_cell_363/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_363/lstm_cell_363/kernel
?
1lstm_363/lstm_cell_363/kernel/Read/ReadVariableOpReadVariableOplstm_363/lstm_cell_363/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_363/lstm_cell_363/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_363/lstm_cell_363/recurrent_kernel
?
;lstm_363/lstm_cell_363/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_363/lstm_cell_363/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_363/lstm_cell_363/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_363/lstm_cell_363/bias
?
/lstm_363/lstm_cell_363/bias/Read/ReadVariableOpReadVariableOplstm_363/lstm_cell_363/bias*
_output_shapes	
:?*
dtype0
?
lstm_364/lstm_cell_364/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_364/lstm_cell_364/kernel
?
1lstm_364/lstm_cell_364/kernel/Read/ReadVariableOpReadVariableOplstm_364/lstm_cell_364/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_364/lstm_cell_364/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_364/lstm_cell_364/recurrent_kernel
?
;lstm_364/lstm_cell_364/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_364/lstm_cell_364/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_364/lstm_cell_364/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_364/lstm_cell_364/bias
?
/lstm_364/lstm_cell_364/bias/Read/ReadVariableOpReadVariableOplstm_364/lstm_cell_364/bias*
_output_shapes	
:?*
dtype0
?
lstm_365/lstm_cell_365/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_365/lstm_cell_365/kernel
?
1lstm_365/lstm_cell_365/kernel/Read/ReadVariableOpReadVariableOplstm_365/lstm_cell_365/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_365/lstm_cell_365/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_365/lstm_cell_365/recurrent_kernel
?
;lstm_365/lstm_cell_365/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_365/lstm_cell_365/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_365/lstm_cell_365/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_365/lstm_cell_365/bias
?
/lstm_365/lstm_cell_365/bias/Read/ReadVariableOpReadVariableOplstm_365/lstm_cell_365/bias*
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
Adam/dense_121/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_121/kernel/m
?
+Adam/dense_121/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_121/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_121/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_121/bias/m
{
)Adam/dense_121/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_121/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_363/lstm_cell_363/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_363/lstm_cell_363/kernel/m
?
8Adam/lstm_363/lstm_cell_363/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_363/lstm_cell_363/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_363/lstm_cell_363/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_363/lstm_cell_363/recurrent_kernel/m
?
BAdam/lstm_363/lstm_cell_363/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_363/lstm_cell_363/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_363/lstm_cell_363/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_363/lstm_cell_363/bias/m
?
6Adam/lstm_363/lstm_cell_363/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_363/lstm_cell_363/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_364/lstm_cell_364/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_364/lstm_cell_364/kernel/m
?
8Adam/lstm_364/lstm_cell_364/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_364/lstm_cell_364/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_364/lstm_cell_364/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_364/lstm_cell_364/recurrent_kernel/m
?
BAdam/lstm_364/lstm_cell_364/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_364/lstm_cell_364/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_364/lstm_cell_364/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_364/lstm_cell_364/bias/m
?
6Adam/lstm_364/lstm_cell_364/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_364/lstm_cell_364/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_365/lstm_cell_365/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_365/lstm_cell_365/kernel/m
?
8Adam/lstm_365/lstm_cell_365/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_365/lstm_cell_365/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_365/lstm_cell_365/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_365/lstm_cell_365/recurrent_kernel/m
?
BAdam/lstm_365/lstm_cell_365/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_365/lstm_cell_365/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_365/lstm_cell_365/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_365/lstm_cell_365/bias/m
?
6Adam/lstm_365/lstm_cell_365/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_365/lstm_cell_365/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_121/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_121/kernel/v
?
+Adam/dense_121/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_121/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_121/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_121/bias/v
{
)Adam/dense_121/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_121/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_363/lstm_cell_363/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_363/lstm_cell_363/kernel/v
?
8Adam/lstm_363/lstm_cell_363/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_363/lstm_cell_363/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_363/lstm_cell_363/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_363/lstm_cell_363/recurrent_kernel/v
?
BAdam/lstm_363/lstm_cell_363/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_363/lstm_cell_363/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_363/lstm_cell_363/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_363/lstm_cell_363/bias/v
?
6Adam/lstm_363/lstm_cell_363/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_363/lstm_cell_363/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_364/lstm_cell_364/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_364/lstm_cell_364/kernel/v
?
8Adam/lstm_364/lstm_cell_364/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_364/lstm_cell_364/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_364/lstm_cell_364/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_364/lstm_cell_364/recurrent_kernel/v
?
BAdam/lstm_364/lstm_cell_364/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_364/lstm_cell_364/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_364/lstm_cell_364/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_364/lstm_cell_364/bias/v
?
6Adam/lstm_364/lstm_cell_364/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_364/lstm_cell_364/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_365/lstm_cell_365/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_365/lstm_cell_365/kernel/v
?
8Adam/lstm_365/lstm_cell_365/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_365/lstm_cell_365/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_365/lstm_cell_365/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_365/lstm_cell_365/recurrent_kernel/v
?
BAdam/lstm_365/lstm_cell_365/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_365/lstm_cell_365/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_365/lstm_cell_365/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_365/lstm_cell_365/bias/v
?
6Adam/lstm_365/lstm_cell_365/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_365/lstm_cell_365/bias/v*
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
VARIABLE_VALUEdense_121/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_121/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_363/lstm_cell_363/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_363/lstm_cell_363/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_363/lstm_cell_363/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_364/lstm_cell_364/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_364/lstm_cell_364/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_364/lstm_cell_364/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_365/lstm_cell_365/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_365/lstm_cell_365/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_365/lstm_cell_365/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_121/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_121/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_363/lstm_cell_363/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_363/lstm_cell_363/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_363/lstm_cell_363/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_364/lstm_cell_364/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_364/lstm_cell_364/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_364/lstm_cell_364/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_365/lstm_cell_365/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_365/lstm_cell_365/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_365/lstm_cell_365/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_121/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_121/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_363/lstm_cell_363/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_363/lstm_cell_363/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_363/lstm_cell_363/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_364/lstm_cell_364/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_364/lstm_cell_364/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_364/lstm_cell_364/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_365/lstm_cell_365/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_365/lstm_cell_365/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_365/lstm_cell_365/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_363_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_363_inputlstm_363/lstm_cell_363/kernel'lstm_363/lstm_cell_363/recurrent_kernellstm_363/lstm_cell_363/biaslstm_364/lstm_cell_364/kernel'lstm_364/lstm_cell_364/recurrent_kernellstm_364/lstm_cell_364/biaslstm_365/lstm_cell_365/kernel'lstm_365/lstm_cell_365/recurrent_kernellstm_365/lstm_cell_365/biasdense_121/kerneldense_121/bias*
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
%__inference_signature_wrapper_1665631
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_121/kernel/Read/ReadVariableOp"dense_121/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_363/lstm_cell_363/kernel/Read/ReadVariableOp;lstm_363/lstm_cell_363/recurrent_kernel/Read/ReadVariableOp/lstm_363/lstm_cell_363/bias/Read/ReadVariableOp1lstm_364/lstm_cell_364/kernel/Read/ReadVariableOp;lstm_364/lstm_cell_364/recurrent_kernel/Read/ReadVariableOp/lstm_364/lstm_cell_364/bias/Read/ReadVariableOp1lstm_365/lstm_cell_365/kernel/Read/ReadVariableOp;lstm_365/lstm_cell_365/recurrent_kernel/Read/ReadVariableOp/lstm_365/lstm_cell_365/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_121/kernel/m/Read/ReadVariableOp)Adam/dense_121/bias/m/Read/ReadVariableOp8Adam/lstm_363/lstm_cell_363/kernel/m/Read/ReadVariableOpBAdam/lstm_363/lstm_cell_363/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_363/lstm_cell_363/bias/m/Read/ReadVariableOp8Adam/lstm_364/lstm_cell_364/kernel/m/Read/ReadVariableOpBAdam/lstm_364/lstm_cell_364/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_364/lstm_cell_364/bias/m/Read/ReadVariableOp8Adam/lstm_365/lstm_cell_365/kernel/m/Read/ReadVariableOpBAdam/lstm_365/lstm_cell_365/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_365/lstm_cell_365/bias/m/Read/ReadVariableOp+Adam/dense_121/kernel/v/Read/ReadVariableOp)Adam/dense_121/bias/v/Read/ReadVariableOp8Adam/lstm_363/lstm_cell_363/kernel/v/Read/ReadVariableOpBAdam/lstm_363/lstm_cell_363/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_363/lstm_cell_363/bias/v/Read/ReadVariableOp8Adam/lstm_364/lstm_cell_364/kernel/v/Read/ReadVariableOpBAdam/lstm_364/lstm_cell_364/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_364/lstm_cell_364/bias/v/Read/ReadVariableOp8Adam/lstm_365/lstm_cell_365/kernel/v/Read/ReadVariableOpBAdam/lstm_365/lstm_cell_365/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_365/lstm_cell_365/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1668843
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_121/kerneldense_121/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_363/lstm_cell_363/kernel'lstm_363/lstm_cell_363/recurrent_kernellstm_363/lstm_cell_363/biaslstm_364/lstm_cell_364/kernel'lstm_364/lstm_cell_364/recurrent_kernellstm_364/lstm_cell_364/biaslstm_365/lstm_cell_365/kernel'lstm_365/lstm_cell_365/recurrent_kernellstm_365/lstm_cell_365/biastotalcountAdam/dense_121/kernel/mAdam/dense_121/bias/m$Adam/lstm_363/lstm_cell_363/kernel/m.Adam/lstm_363/lstm_cell_363/recurrent_kernel/m"Adam/lstm_363/lstm_cell_363/bias/m$Adam/lstm_364/lstm_cell_364/kernel/m.Adam/lstm_364/lstm_cell_364/recurrent_kernel/m"Adam/lstm_364/lstm_cell_364/bias/m$Adam/lstm_365/lstm_cell_365/kernel/m.Adam/lstm_365/lstm_cell_365/recurrent_kernel/m"Adam/lstm_365/lstm_cell_365/bias/mAdam/dense_121/kernel/vAdam/dense_121/bias/v$Adam/lstm_363/lstm_cell_363/kernel/v.Adam/lstm_363/lstm_cell_363/recurrent_kernel/v"Adam/lstm_363/lstm_cell_363/bias/v$Adam/lstm_364/lstm_cell_364/kernel/v.Adam/lstm_364/lstm_cell_364/recurrent_kernel/v"Adam/lstm_364/lstm_cell_364/bias/v$Adam/lstm_365/lstm_cell_365/kernel/v.Adam/lstm_365/lstm_cell_365/recurrent_kernel/v"Adam/lstm_365/lstm_cell_365/bias/v*4
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
#__inference__traced_restore_1668973??+
?8
?
while_body_1665002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_275_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_275_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_275_matmul_readvariableop_resource:2(F
4while_lstm_cell_275_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_275_biasadd_readvariableop_resource:(??*while/lstm_cell_275/BiasAdd/ReadVariableOp?)while/lstm_cell_275/MatMul/ReadVariableOp?+while/lstm_cell_275/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_275/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_275/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_275/addAddV2$while/lstm_cell_275/MatMul:product:0&while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_275/BiasAddBiasAddwhile/lstm_cell_275/add:z:02while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_275/splitSplit,while/lstm_cell_275/split/split_dim:output:0$while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_275/SigmoidSigmoid"while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_1Sigmoid"while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mulMul!while/lstm_cell_275/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_275/ReluRelu"while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_1Mulwhile/lstm_cell_275/Sigmoid:y:0&while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/add_1AddV2while/lstm_cell_275/mul:z:0while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_2Sigmoid"while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_275/Relu_1Reluwhile/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_2Mul!while/lstm_cell_275/Sigmoid_2:y:0(while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_275/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_275/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_275/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_275/BiasAdd/ReadVariableOp*^while/lstm_cell_275/MatMul/ReadVariableOp,^while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_275_biasadd_readvariableop_resource5while_lstm_cell_275_biasadd_readvariableop_resource_0"n
4while_lstm_cell_275_matmul_1_readvariableop_resource6while_lstm_cell_275_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_275_matmul_readvariableop_resource4while_lstm_cell_275_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_275/BiasAdd/ReadVariableOp*while/lstm_cell_275/BiasAdd/ReadVariableOp2V
)while/lstm_cell_275/MatMul/ReadVariableOp)while/lstm_cell_275/MatMul/ReadVariableOp2Z
+while/lstm_cell_275/MatMul_1/ReadVariableOp+while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_365_while_cond_1666021.
*lstm_365_while_lstm_365_while_loop_counter4
0lstm_365_while_lstm_365_while_maximum_iterations
lstm_365_while_placeholder 
lstm_365_while_placeholder_1 
lstm_365_while_placeholder_2 
lstm_365_while_placeholder_30
,lstm_365_while_less_lstm_365_strided_slice_1G
Clstm_365_while_lstm_365_while_cond_1666021___redundant_placeholder0G
Clstm_365_while_lstm_365_while_cond_1666021___redundant_placeholder1G
Clstm_365_while_lstm_365_while_cond_1666021___redundant_placeholder2G
Clstm_365_while_lstm_365_while_cond_1666021___redundant_placeholder3
lstm_365_while_identity
?
lstm_365/while/LessLesslstm_365_while_placeholder,lstm_365_while_less_lstm_365_strided_slice_1*
T0*
_output_shapes
: ]
lstm_365/while/IdentityIdentitylstm_365/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_365_while_identity lstm_365/while/Identity:output:0*(
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664412

inputs'
lstm_cell_275_1664330:2('
lstm_cell_275_1664332:
(#
lstm_cell_275_1664334:(
identity??%lstm_cell_275/StatefulPartitionedCall?while;
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
%lstm_cell_275/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_275_1664330lstm_cell_275_1664332lstm_cell_275_1664334*
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664284n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_275_1664330lstm_cell_275_1664332lstm_cell_275_1664334*
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
while_body_1664343*
condR
while_cond_1664342*K
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
NoOpNoOp&^lstm_cell_275/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_275/StatefulPartitionedCall%lstm_cell_275/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_1668843
file_prefix/
+savev2_dense_121_kernel_read_readvariableop-
)savev2_dense_121_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_363_lstm_cell_363_kernel_read_readvariableopF
Bsavev2_lstm_363_lstm_cell_363_recurrent_kernel_read_readvariableop:
6savev2_lstm_363_lstm_cell_363_bias_read_readvariableop<
8savev2_lstm_364_lstm_cell_364_kernel_read_readvariableopF
Bsavev2_lstm_364_lstm_cell_364_recurrent_kernel_read_readvariableop:
6savev2_lstm_364_lstm_cell_364_bias_read_readvariableop<
8savev2_lstm_365_lstm_cell_365_kernel_read_readvariableopF
Bsavev2_lstm_365_lstm_cell_365_recurrent_kernel_read_readvariableop:
6savev2_lstm_365_lstm_cell_365_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_121_kernel_m_read_readvariableop4
0savev2_adam_dense_121_bias_m_read_readvariableopC
?savev2_adam_lstm_363_lstm_cell_363_kernel_m_read_readvariableopM
Isavev2_adam_lstm_363_lstm_cell_363_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_363_lstm_cell_363_bias_m_read_readvariableopC
?savev2_adam_lstm_364_lstm_cell_364_kernel_m_read_readvariableopM
Isavev2_adam_lstm_364_lstm_cell_364_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_364_lstm_cell_364_bias_m_read_readvariableopC
?savev2_adam_lstm_365_lstm_cell_365_kernel_m_read_readvariableopM
Isavev2_adam_lstm_365_lstm_cell_365_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_365_lstm_cell_365_bias_m_read_readvariableop6
2savev2_adam_dense_121_kernel_v_read_readvariableop4
0savev2_adam_dense_121_bias_v_read_readvariableopC
?savev2_adam_lstm_363_lstm_cell_363_kernel_v_read_readvariableopM
Isavev2_adam_lstm_363_lstm_cell_363_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_363_lstm_cell_363_bias_v_read_readvariableopC
?savev2_adam_lstm_364_lstm_cell_364_kernel_v_read_readvariableopM
Isavev2_adam_lstm_364_lstm_cell_364_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_364_lstm_cell_364_bias_v_read_readvariableopC
?savev2_adam_lstm_365_lstm_cell_365_kernel_v_read_readvariableopM
Isavev2_adam_lstm_365_lstm_cell_365_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_365_lstm_cell_365_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_121_kernel_read_readvariableop)savev2_dense_121_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_363_lstm_cell_363_kernel_read_readvariableopBsavev2_lstm_363_lstm_cell_363_recurrent_kernel_read_readvariableop6savev2_lstm_363_lstm_cell_363_bias_read_readvariableop8savev2_lstm_364_lstm_cell_364_kernel_read_readvariableopBsavev2_lstm_364_lstm_cell_364_recurrent_kernel_read_readvariableop6savev2_lstm_364_lstm_cell_364_bias_read_readvariableop8savev2_lstm_365_lstm_cell_365_kernel_read_readvariableopBsavev2_lstm_365_lstm_cell_365_recurrent_kernel_read_readvariableop6savev2_lstm_365_lstm_cell_365_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_121_kernel_m_read_readvariableop0savev2_adam_dense_121_bias_m_read_readvariableop?savev2_adam_lstm_363_lstm_cell_363_kernel_m_read_readvariableopIsavev2_adam_lstm_363_lstm_cell_363_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_363_lstm_cell_363_bias_m_read_readvariableop?savev2_adam_lstm_364_lstm_cell_364_kernel_m_read_readvariableopIsavev2_adam_lstm_364_lstm_cell_364_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_364_lstm_cell_364_bias_m_read_readvariableop?savev2_adam_lstm_365_lstm_cell_365_kernel_m_read_readvariableopIsavev2_adam_lstm_365_lstm_cell_365_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_365_lstm_cell_365_bias_m_read_readvariableop2savev2_adam_dense_121_kernel_v_read_readvariableop0savev2_adam_dense_121_bias_v_read_readvariableop?savev2_adam_lstm_363_lstm_cell_363_kernel_v_read_readvariableopIsavev2_adam_lstm_363_lstm_cell_363_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_363_lstm_cell_363_bias_v_read_readvariableop?savev2_adam_lstm_364_lstm_cell_364_kernel_v_read_readvariableopIsavev2_adam_lstm_364_lstm_cell_364_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_364_lstm_cell_364_bias_v_read_readvariableop?savev2_adam_lstm_365_lstm_cell_365_kernel_v_read_readvariableopIsavev2_adam_lstm_365_lstm_cell_365_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_365_lstm_cell_365_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_1668017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_275_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_275_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_275_matmul_readvariableop_resource:2(F
4while_lstm_cell_275_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_275_biasadd_readvariableop_resource:(??*while/lstm_cell_275/BiasAdd/ReadVariableOp?)while/lstm_cell_275/MatMul/ReadVariableOp?+while/lstm_cell_275/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_275/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_275/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_275/addAddV2$while/lstm_cell_275/MatMul:product:0&while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_275/BiasAddBiasAddwhile/lstm_cell_275/add:z:02while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_275/splitSplit,while/lstm_cell_275/split/split_dim:output:0$while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_275/SigmoidSigmoid"while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_1Sigmoid"while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mulMul!while/lstm_cell_275/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_275/ReluRelu"while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_1Mulwhile/lstm_cell_275/Sigmoid:y:0&while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/add_1AddV2while/lstm_cell_275/mul:z:0while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_2Sigmoid"while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_275/Relu_1Reluwhile/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_2Mul!while/lstm_cell_275/Sigmoid_2:y:0(while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_275/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_275/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_275/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_275/BiasAdd/ReadVariableOp*^while/lstm_cell_275/MatMul/ReadVariableOp,^while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_275_biasadd_readvariableop_resource5while_lstm_cell_275_biasadd_readvariableop_resource_0"n
4while_lstm_cell_275_matmul_1_readvariableop_resource6while_lstm_cell_275_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_275_matmul_readvariableop_resource4while_lstm_cell_275_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_275/BiasAdd/ReadVariableOp*while/lstm_cell_275/BiasAdd/ReadVariableOp2V
)while/lstm_cell_275/MatMul/ReadVariableOp)while/lstm_cell_275/MatMul/ReadVariableOp2Z
+while/lstm_cell_275/MatMul_1/ReadVariableOp+while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_364_layer_call_fn_1667177
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1664062|
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
?8
?
while_body_1667874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_275_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_275_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_275_matmul_readvariableop_resource:2(F
4while_lstm_cell_275_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_275_biasadd_readvariableop_resource:(??*while/lstm_cell_275/BiasAdd/ReadVariableOp?)while/lstm_cell_275/MatMul/ReadVariableOp?+while/lstm_cell_275/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_275/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_275/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_275/addAddV2$while/lstm_cell_275/MatMul:product:0&while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_275/BiasAddBiasAddwhile/lstm_cell_275/add:z:02while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_275/splitSplit,while/lstm_cell_275/split/split_dim:output:0$while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_275/SigmoidSigmoid"while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_1Sigmoid"while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mulMul!while/lstm_cell_275/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_275/ReluRelu"while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_1Mulwhile/lstm_cell_275/Sigmoid:y:0&while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/add_1AddV2while/lstm_cell_275/mul:z:0while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_2Sigmoid"while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_275/Relu_1Reluwhile/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_2Mul!while/lstm_cell_275/Sigmoid_2:y:0(while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_275/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_275/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_275/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_275/BiasAdd/ReadVariableOp*^while/lstm_cell_275/MatMul/ReadVariableOp,^while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_275_biasadd_readvariableop_resource5while_lstm_cell_275_biasadd_readvariableop_resource_0"n
4while_lstm_cell_275_matmul_1_readvariableop_resource6while_lstm_cell_275_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_275_matmul_readvariableop_resource4while_lstm_cell_275_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_275/BiasAdd/ReadVariableOp*while/lstm_cell_275/BiasAdd/ReadVariableOp2V
)while/lstm_cell_275/MatMul/ReadVariableOp)while/lstm_cell_275/MatMul/ReadVariableOp2Z
+while/lstm_cell_275/MatMul_1/ReadVariableOp+while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1664635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1664635___redundant_placeholder05
1while_while_cond_1664635___redundant_placeholder15
1while_while_cond_1664635___redundant_placeholder25
1while_while_cond_1664635___redundant_placeholder3
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
while_body_1668160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_275_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_275_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_275_matmul_readvariableop_resource:2(F
4while_lstm_cell_275_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_275_biasadd_readvariableop_resource:(??*while/lstm_cell_275/BiasAdd/ReadVariableOp?)while/lstm_cell_275/MatMul/ReadVariableOp?+while/lstm_cell_275/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_275/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_275/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_275/addAddV2$while/lstm_cell_275/MatMul:product:0&while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_275/BiasAddBiasAddwhile/lstm_cell_275/add:z:02while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_275/splitSplit,while/lstm_cell_275/split/split_dim:output:0$while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_275/SigmoidSigmoid"while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_1Sigmoid"while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mulMul!while/lstm_cell_275/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_275/ReluRelu"while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_1Mulwhile/lstm_cell_275/Sigmoid:y:0&while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/add_1AddV2while/lstm_cell_275/mul:z:0while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_2Sigmoid"while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_275/Relu_1Reluwhile/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_2Mul!while/lstm_cell_275/Sigmoid_2:y:0(while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_275/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_275/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_275/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_275/BiasAdd/ReadVariableOp*^while/lstm_cell_275/MatMul/ReadVariableOp,^while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_275_biasadd_readvariableop_resource5while_lstm_cell_275_biasadd_readvariableop_resource_0"n
4while_lstm_cell_275_matmul_1_readvariableop_resource6while_lstm_cell_275_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_275_matmul_readvariableop_resource4while_lstm_cell_275_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_275/BiasAdd/ReadVariableOp*while/lstm_cell_275/BiasAdd/ReadVariableOp2V
)while/lstm_cell_275/MatMul/ReadVariableOp)while/lstm_cell_275/MatMul/ReadVariableOp2Z
+while/lstm_cell_275/MatMul_1/ReadVariableOp+while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1668700

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
while_cond_1664151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1664151___redundant_placeholder05
1while_while_cond_1664151___redundant_placeholder15
1while_while_cond_1664151___redundant_placeholder25
1while_while_cond_1664151___redundant_placeholder3
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1667958
inputs_0>
,lstm_cell_275_matmul_readvariableop_resource:2(@
.lstm_cell_275_matmul_1_readvariableop_resource:
(;
-lstm_cell_275_biasadd_readvariableop_resource:(
identity??$lstm_cell_275/BiasAdd/ReadVariableOp?#lstm_cell_275/MatMul/ReadVariableOp?%lstm_cell_275/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_275/MatMul/ReadVariableOpReadVariableOp,lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_275/MatMulMatMulstrided_slice_2:output:0+lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_275/MatMul_1MatMulzeros:output:0-lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_275/addAddV2lstm_cell_275/MatMul:product:0 lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_275/BiasAddBiasAddlstm_cell_275/add:z:0,lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_275/splitSplit&lstm_cell_275/split/split_dim:output:0lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_275/SigmoidSigmoidlstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_1Sigmoidlstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_275/mulMullstm_cell_275/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_275/ReluRelulstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_1Mullstm_cell_275/Sigmoid:y:0 lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_275/add_1AddV2lstm_cell_275/mul:z:0lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_2Sigmoidlstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_275/Relu_1Relulstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_2Mullstm_cell_275/Sigmoid_2:y:0"lstm_cell_275/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_275_matmul_readvariableop_resource.lstm_cell_275_matmul_1_readvariableop_resource-lstm_cell_275_biasadd_readvariableop_resource*
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
while_body_1667874*
condR
while_cond_1667873*K
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
NoOpNoOp%^lstm_cell_275/BiasAdd/ReadVariableOp$^lstm_cell_275/MatMul/ReadVariableOp&^lstm_cell_275/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_275/BiasAdd/ReadVariableOp$lstm_cell_275/BiasAdd/ReadVariableOp2J
#lstm_cell_275/MatMul/ReadVariableOp#lstm_cell_275/MatMul/ReadVariableOp2N
%lstm_cell_275/MatMul_1/ReadVariableOp%lstm_cell_275/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665566
lstm_363_input#
lstm_363_1665539:	?#
lstm_363_1665541:	d?
lstm_363_1665543:	?#
lstm_364_1665546:	d?#
lstm_364_1665548:	2?
lstm_364_1665550:	?"
lstm_365_1665553:2("
lstm_365_1665555:
(
lstm_365_1665557:(#
dense_121_1665560:

dense_121_1665562:
identity??!dense_121/StatefulPartitionedCall? lstm_363/StatefulPartitionedCall? lstm_364/StatefulPartitionedCall? lstm_365/StatefulPartitionedCall?
 lstm_363/StatefulPartitionedCallStatefulPartitionedCalllstm_363_inputlstm_363_1665539lstm_363_1665541lstm_363_1665543*
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1664570?
 lstm_364/StatefulPartitionedCallStatefulPartitionedCall)lstm_363/StatefulPartitionedCall:output:0lstm_364_1665546lstm_364_1665548lstm_364_1665550*
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1664720?
 lstm_365/StatefulPartitionedCallStatefulPartitionedCall)lstm_364/StatefulPartitionedCall:output:0lstm_365_1665553lstm_365_1665555lstm_365_1665557*
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664870?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_365/StatefulPartitionedCall:output:0dense_121_1665560dense_121_1665562*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_1664888y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_121/StatefulPartitionedCall!^lstm_363/StatefulPartitionedCall!^lstm_364/StatefulPartitionedCall!^lstm_365/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 lstm_363/StatefulPartitionedCall lstm_363/StatefulPartitionedCall2D
 lstm_364/StatefulPartitionedCall lstm_364/StatefulPartitionedCall2D
 lstm_365/StatefulPartitionedCall lstm_365/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_363_input
?
?
while_cond_1664342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1664342___redundant_placeholder05
1while_while_cond_1664342___redundant_placeholder15
1while_while_cond_1664342___redundant_placeholder25
1while_while_cond_1664342___redundant_placeholder3
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664284

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
while_cond_1667400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1667400___redundant_placeholder05
1while_while_cond_1667400___redundant_placeholder15
1while_while_cond_1667400___redundant_placeholder25
1while_while_cond_1667400___redundant_placeholder3
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1668570

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
?T
?
*sequential_121_lstm_365_while_body_1663281L
Hsequential_121_lstm_365_while_sequential_121_lstm_365_while_loop_counterR
Nsequential_121_lstm_365_while_sequential_121_lstm_365_while_maximum_iterations-
)sequential_121_lstm_365_while_placeholder/
+sequential_121_lstm_365_while_placeholder_1/
+sequential_121_lstm_365_while_placeholder_2/
+sequential_121_lstm_365_while_placeholder_3K
Gsequential_121_lstm_365_while_sequential_121_lstm_365_strided_slice_1_0?
?sequential_121_lstm_365_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_365_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_121_lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0:2(`
Nsequential_121_lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0:
([
Msequential_121_lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0:(*
&sequential_121_lstm_365_while_identity,
(sequential_121_lstm_365_while_identity_1,
(sequential_121_lstm_365_while_identity_2,
(sequential_121_lstm_365_while_identity_3,
(sequential_121_lstm_365_while_identity_4,
(sequential_121_lstm_365_while_identity_5I
Esequential_121_lstm_365_while_sequential_121_lstm_365_strided_slice_1?
?sequential_121_lstm_365_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_365_tensorarrayunstack_tensorlistfromtensor\
Jsequential_121_lstm_365_while_lstm_cell_275_matmul_readvariableop_resource:2(^
Lsequential_121_lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource:
(Y
Ksequential_121_lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource:(??Bsequential_121/lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp?Asequential_121/lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp?Csequential_121/lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp?
Osequential_121/lstm_365/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_121/lstm_365/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_121_lstm_365_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_365_tensorarrayunstack_tensorlistfromtensor_0)sequential_121_lstm_365_while_placeholderXsequential_121/lstm_365/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_121/lstm_365/while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOpLsequential_121_lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_121/lstm_365/while/lstm_cell_275/MatMulMatMulHsequential_121/lstm_365/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_121/lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_121/lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOpNsequential_121_lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_121/lstm_365/while/lstm_cell_275/MatMul_1MatMul+sequential_121_lstm_365_while_placeholder_2Ksequential_121/lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_121/lstm_365/while/lstm_cell_275/addAddV2<sequential_121/lstm_365/while/lstm_cell_275/MatMul:product:0>sequential_121/lstm_365/while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_121/lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOpMsequential_121_lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_121/lstm_365/while/lstm_cell_275/BiasAddBiasAdd3sequential_121/lstm_365/while/lstm_cell_275/add:z:0Jsequential_121/lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_121/lstm_365/while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_121/lstm_365/while/lstm_cell_275/splitSplitDsequential_121/lstm_365/while/lstm_cell_275/split/split_dim:output:0<sequential_121/lstm_365/while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_121/lstm_365/while/lstm_cell_275/SigmoidSigmoid:sequential_121/lstm_365/while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_121/lstm_365/while/lstm_cell_275/Sigmoid_1Sigmoid:sequential_121/lstm_365/while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_121/lstm_365/while/lstm_cell_275/mulMul9sequential_121/lstm_365/while/lstm_cell_275/Sigmoid_1:y:0+sequential_121_lstm_365_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_121/lstm_365/while/lstm_cell_275/ReluRelu:sequential_121/lstm_365/while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_121/lstm_365/while/lstm_cell_275/mul_1Mul7sequential_121/lstm_365/while/lstm_cell_275/Sigmoid:y:0>sequential_121/lstm_365/while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_121/lstm_365/while/lstm_cell_275/add_1AddV23sequential_121/lstm_365/while/lstm_cell_275/mul:z:05sequential_121/lstm_365/while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_121/lstm_365/while/lstm_cell_275/Sigmoid_2Sigmoid:sequential_121/lstm_365/while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_121/lstm_365/while/lstm_cell_275/Relu_1Relu5sequential_121/lstm_365/while/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_121/lstm_365/while/lstm_cell_275/mul_2Mul9sequential_121/lstm_365/while/lstm_cell_275/Sigmoid_2:y:0@sequential_121/lstm_365/while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_121/lstm_365/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_121_lstm_365_while_placeholder_1)sequential_121_lstm_365_while_placeholder5sequential_121/lstm_365/while/lstm_cell_275/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_121/lstm_365/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_121/lstm_365/while/addAddV2)sequential_121_lstm_365_while_placeholder,sequential_121/lstm_365/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_121/lstm_365/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_121/lstm_365/while/add_1AddV2Hsequential_121_lstm_365_while_sequential_121_lstm_365_while_loop_counter.sequential_121/lstm_365/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_121/lstm_365/while/IdentityIdentity'sequential_121/lstm_365/while/add_1:z:0#^sequential_121/lstm_365/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_365/while/Identity_1IdentityNsequential_121_lstm_365_while_sequential_121_lstm_365_while_maximum_iterations#^sequential_121/lstm_365/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_365/while/Identity_2Identity%sequential_121/lstm_365/while/add:z:0#^sequential_121/lstm_365/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_365/while/Identity_3IdentityRsequential_121/lstm_365/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_121/lstm_365/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_365/while/Identity_4Identity5sequential_121/lstm_365/while/lstm_cell_275/mul_2:z:0#^sequential_121/lstm_365/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_121/lstm_365/while/Identity_5Identity5sequential_121/lstm_365/while/lstm_cell_275/add_1:z:0#^sequential_121/lstm_365/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_121/lstm_365/while/NoOpNoOpC^sequential_121/lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOpB^sequential_121/lstm_365/while/lstm_cell_275/MatMul/ReadVariableOpD^sequential_121/lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_121_lstm_365_while_identity/sequential_121/lstm_365/while/Identity:output:0"]
(sequential_121_lstm_365_while_identity_11sequential_121/lstm_365/while/Identity_1:output:0"]
(sequential_121_lstm_365_while_identity_21sequential_121/lstm_365/while/Identity_2:output:0"]
(sequential_121_lstm_365_while_identity_31sequential_121/lstm_365/while/Identity_3:output:0"]
(sequential_121_lstm_365_while_identity_41sequential_121/lstm_365/while/Identity_4:output:0"]
(sequential_121_lstm_365_while_identity_51sequential_121/lstm_365/while/Identity_5:output:0"?
Ksequential_121_lstm_365_while_lstm_cell_275_biasadd_readvariableop_resourceMsequential_121_lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0"?
Lsequential_121_lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resourceNsequential_121_lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0"?
Jsequential_121_lstm_365_while_lstm_cell_275_matmul_readvariableop_resourceLsequential_121_lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0"?
Esequential_121_lstm_365_while_sequential_121_lstm_365_strided_slice_1Gsequential_121_lstm_365_while_sequential_121_lstm_365_strided_slice_1_0"?
?sequential_121_lstm_365_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_365_tensorarrayunstack_tensorlistfromtensor?sequential_121_lstm_365_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_365_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_121/lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOpBsequential_121/lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp2?
Asequential_121/lstm_365/while/lstm_cell_275/MatMul/ReadVariableOpAsequential_121/lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp2?
Csequential_121/lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOpCsequential_121/lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1666642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_273_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_273_matmul_readvariableop_resource:	?G
4while_lstm_cell_273_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_273_biasadd_readvariableop_resource:	???*while/lstm_cell_273/BiasAdd/ReadVariableOp?)while/lstm_cell_273/MatMul/ReadVariableOp?+while/lstm_cell_273/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_273/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_273/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_273/addAddV2$while/lstm_cell_273/MatMul:product:0&while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_273/BiasAddBiasAddwhile/lstm_cell_273/add:z:02while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_273/splitSplit,while/lstm_cell_273/split/split_dim:output:0$while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_273/SigmoidSigmoid"while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_1Sigmoid"while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mulMul!while/lstm_cell_273/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_273/ReluRelu"while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_1Mulwhile/lstm_cell_273/Sigmoid:y:0&while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/add_1AddV2while/lstm_cell_273/mul:z:0while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_2Sigmoid"while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_273/Relu_1Reluwhile/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_2Mul!while/lstm_cell_273/Sigmoid_2:y:0(while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_273/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_273/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_273/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_273/BiasAdd/ReadVariableOp*^while/lstm_cell_273/MatMul/ReadVariableOp,^while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_273_biasadd_readvariableop_resource5while_lstm_cell_273_biasadd_readvariableop_resource_0"n
4while_lstm_cell_273_matmul_1_readvariableop_resource6while_lstm_cell_273_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_273_matmul_readvariableop_resource4while_lstm_cell_273_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_273/BiasAdd/ReadVariableOp*while/lstm_cell_273/BiasAdd/ReadVariableOp2V
)while/lstm_cell_273/MatMul/ReadVariableOp)while/lstm_cell_273/MatMul/ReadVariableOp2Z
+while/lstm_cell_273/MatMul_1/ReadVariableOp+while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_121_lstm_363_while_cond_1663002L
Hsequential_121_lstm_363_while_sequential_121_lstm_363_while_loop_counterR
Nsequential_121_lstm_363_while_sequential_121_lstm_363_while_maximum_iterations-
)sequential_121_lstm_363_while_placeholder/
+sequential_121_lstm_363_while_placeholder_1/
+sequential_121_lstm_363_while_placeholder_2/
+sequential_121_lstm_363_while_placeholder_3N
Jsequential_121_lstm_363_while_less_sequential_121_lstm_363_strided_slice_1e
asequential_121_lstm_363_while_sequential_121_lstm_363_while_cond_1663002___redundant_placeholder0e
asequential_121_lstm_363_while_sequential_121_lstm_363_while_cond_1663002___redundant_placeholder1e
asequential_121_lstm_363_while_sequential_121_lstm_363_while_cond_1663002___redundant_placeholder2e
asequential_121_lstm_363_while_sequential_121_lstm_363_while_cond_1663002___redundant_placeholder3*
&sequential_121_lstm_363_while_identity
?
"sequential_121/lstm_363/while/LessLess)sequential_121_lstm_363_while_placeholderJsequential_121_lstm_363_while_less_sequential_121_lstm_363_strided_slice_1*
T0*
_output_shapes
: {
&sequential_121/lstm_363/while/IdentityIdentity&sequential_121/lstm_363/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_121_lstm_363_while_identity/sequential_121/lstm_363/while/Identity:output:0*(
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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1666112

inputsH
5lstm_363_lstm_cell_273_matmul_readvariableop_resource:	?J
7lstm_363_lstm_cell_273_matmul_1_readvariableop_resource:	d?E
6lstm_363_lstm_cell_273_biasadd_readvariableop_resource:	?H
5lstm_364_lstm_cell_274_matmul_readvariableop_resource:	d?J
7lstm_364_lstm_cell_274_matmul_1_readvariableop_resource:	2?E
6lstm_364_lstm_cell_274_biasadd_readvariableop_resource:	?G
5lstm_365_lstm_cell_275_matmul_readvariableop_resource:2(I
7lstm_365_lstm_cell_275_matmul_1_readvariableop_resource:
(D
6lstm_365_lstm_cell_275_biasadd_readvariableop_resource:(:
(dense_121_matmul_readvariableop_resource:
7
)dense_121_biasadd_readvariableop_resource:
identity?? dense_121/BiasAdd/ReadVariableOp?dense_121/MatMul/ReadVariableOp?-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp?,lstm_363/lstm_cell_273/MatMul/ReadVariableOp?.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp?lstm_363/while?-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp?,lstm_364/lstm_cell_274/MatMul/ReadVariableOp?.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp?lstm_364/while?-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp?,lstm_365/lstm_cell_275/MatMul/ReadVariableOp?.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp?lstm_365/whileD
lstm_363/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_363/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_363/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_363/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_sliceStridedSlicelstm_363/Shape:output:0%lstm_363/strided_slice/stack:output:0'lstm_363/strided_slice/stack_1:output:0'lstm_363/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_363/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_363/zeros/packedPacklstm_363/strided_slice:output:0 lstm_363/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_363/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_363/zerosFilllstm_363/zeros/packed:output:0lstm_363/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_363/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_363/zeros_1/packedPacklstm_363/strided_slice:output:0"lstm_363/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_363/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_363/zeros_1Fill lstm_363/zeros_1/packed:output:0lstm_363/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_363/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_363/transpose	Transposeinputs lstm_363/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_363/Shape_1Shapelstm_363/transpose:y:0*
T0*
_output_shapes
:h
lstm_363/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_363/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_363/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_slice_1StridedSlicelstm_363/Shape_1:output:0'lstm_363/strided_slice_1/stack:output:0)lstm_363/strided_slice_1/stack_1:output:0)lstm_363/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_363/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_363/TensorArrayV2TensorListReserve-lstm_363/TensorArrayV2/element_shape:output:0!lstm_363/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_363/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_363/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_363/transpose:y:0Glstm_363/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_363/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_363/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_363/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_slice_2StridedSlicelstm_363/transpose:y:0'lstm_363/strided_slice_2/stack:output:0)lstm_363/strided_slice_2/stack_1:output:0)lstm_363/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_363/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp5lstm_363_lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_363/lstm_cell_273/MatMulMatMul!lstm_363/strided_slice_2:output:04lstm_363/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp7lstm_363_lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_363/lstm_cell_273/MatMul_1MatMullstm_363/zeros:output:06lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_363/lstm_cell_273/addAddV2'lstm_363/lstm_cell_273/MatMul:product:0)lstm_363/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp6lstm_363_lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_363/lstm_cell_273/BiasAddBiasAddlstm_363/lstm_cell_273/add:z:05lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_363/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_363/lstm_cell_273/splitSplit/lstm_363/lstm_cell_273/split/split_dim:output:0'lstm_363/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_363/lstm_cell_273/SigmoidSigmoid%lstm_363/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_363/lstm_cell_273/Sigmoid_1Sigmoid%lstm_363/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/mulMul$lstm_363/lstm_cell_273/Sigmoid_1:y:0lstm_363/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_363/lstm_cell_273/ReluRelu%lstm_363/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/mul_1Mul"lstm_363/lstm_cell_273/Sigmoid:y:0)lstm_363/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/add_1AddV2lstm_363/lstm_cell_273/mul:z:0 lstm_363/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_363/lstm_cell_273/Sigmoid_2Sigmoid%lstm_363/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_363/lstm_cell_273/Relu_1Relu lstm_363/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/mul_2Mul$lstm_363/lstm_cell_273/Sigmoid_2:y:0+lstm_363/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_363/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_363/TensorArrayV2_1TensorListReserve/lstm_363/TensorArrayV2_1/element_shape:output:0!lstm_363/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_363/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_363/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_363/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_363/whileWhile$lstm_363/while/loop_counter:output:0*lstm_363/while/maximum_iterations:output:0lstm_363/time:output:0!lstm_363/TensorArrayV2_1:handle:0lstm_363/zeros:output:0lstm_363/zeros_1:output:0!lstm_363/strided_slice_1:output:0@lstm_363/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_363_lstm_cell_273_matmul_readvariableop_resource7lstm_363_lstm_cell_273_matmul_1_readvariableop_resource6lstm_363_lstm_cell_273_biasadd_readvariableop_resource*
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
lstm_363_while_body_1665744*'
condR
lstm_363_while_cond_1665743*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_363/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_363/TensorArrayV2Stack/TensorListStackTensorListStacklstm_363/while:output:3Blstm_363/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_363/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_363/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_363/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_slice_3StridedSlice4lstm_363/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_363/strided_slice_3/stack:output:0)lstm_363/strided_slice_3/stack_1:output:0)lstm_363/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_363/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_363/transpose_1	Transpose4lstm_363/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_363/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_363/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_364/ShapeShapelstm_363/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_364/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_364/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_364/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_sliceStridedSlicelstm_364/Shape:output:0%lstm_364/strided_slice/stack:output:0'lstm_364/strided_slice/stack_1:output:0'lstm_364/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_364/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_364/zeros/packedPacklstm_364/strided_slice:output:0 lstm_364/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_364/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_364/zerosFilllstm_364/zeros/packed:output:0lstm_364/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_364/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_364/zeros_1/packedPacklstm_364/strided_slice:output:0"lstm_364/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_364/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_364/zeros_1Fill lstm_364/zeros_1/packed:output:0lstm_364/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_364/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_364/transpose	Transposelstm_363/transpose_1:y:0 lstm_364/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_364/Shape_1Shapelstm_364/transpose:y:0*
T0*
_output_shapes
:h
lstm_364/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_364/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_364/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_slice_1StridedSlicelstm_364/Shape_1:output:0'lstm_364/strided_slice_1/stack:output:0)lstm_364/strided_slice_1/stack_1:output:0)lstm_364/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_364/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_364/TensorArrayV2TensorListReserve-lstm_364/TensorArrayV2/element_shape:output:0!lstm_364/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_364/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_364/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_364/transpose:y:0Glstm_364/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_364/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_364/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_364/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_slice_2StridedSlicelstm_364/transpose:y:0'lstm_364/strided_slice_2/stack:output:0)lstm_364/strided_slice_2/stack_1:output:0)lstm_364/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_364/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp5lstm_364_lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_364/lstm_cell_274/MatMulMatMul!lstm_364/strided_slice_2:output:04lstm_364/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp7lstm_364_lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_364/lstm_cell_274/MatMul_1MatMullstm_364/zeros:output:06lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_364/lstm_cell_274/addAddV2'lstm_364/lstm_cell_274/MatMul:product:0)lstm_364/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp6lstm_364_lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_364/lstm_cell_274/BiasAddBiasAddlstm_364/lstm_cell_274/add:z:05lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_364/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_364/lstm_cell_274/splitSplit/lstm_364/lstm_cell_274/split/split_dim:output:0'lstm_364/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_364/lstm_cell_274/SigmoidSigmoid%lstm_364/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_364/lstm_cell_274/Sigmoid_1Sigmoid%lstm_364/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/mulMul$lstm_364/lstm_cell_274/Sigmoid_1:y:0lstm_364/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_364/lstm_cell_274/ReluRelu%lstm_364/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/mul_1Mul"lstm_364/lstm_cell_274/Sigmoid:y:0)lstm_364/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/add_1AddV2lstm_364/lstm_cell_274/mul:z:0 lstm_364/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_364/lstm_cell_274/Sigmoid_2Sigmoid%lstm_364/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_364/lstm_cell_274/Relu_1Relu lstm_364/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/mul_2Mul$lstm_364/lstm_cell_274/Sigmoid_2:y:0+lstm_364/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_364/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_364/TensorArrayV2_1TensorListReserve/lstm_364/TensorArrayV2_1/element_shape:output:0!lstm_364/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_364/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_364/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_364/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_364/whileWhile$lstm_364/while/loop_counter:output:0*lstm_364/while/maximum_iterations:output:0lstm_364/time:output:0!lstm_364/TensorArrayV2_1:handle:0lstm_364/zeros:output:0lstm_364/zeros_1:output:0!lstm_364/strided_slice_1:output:0@lstm_364/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_364_lstm_cell_274_matmul_readvariableop_resource7lstm_364_lstm_cell_274_matmul_1_readvariableop_resource6lstm_364_lstm_cell_274_biasadd_readvariableop_resource*
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
lstm_364_while_body_1665883*'
condR
lstm_364_while_cond_1665882*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_364/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_364/TensorArrayV2Stack/TensorListStackTensorListStacklstm_364/while:output:3Blstm_364/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_364/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_364/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_364/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_slice_3StridedSlice4lstm_364/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_364/strided_slice_3/stack:output:0)lstm_364/strided_slice_3/stack_1:output:0)lstm_364/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_364/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_364/transpose_1	Transpose4lstm_364/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_364/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_364/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_365/ShapeShapelstm_364/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_365/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_365/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_365/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_sliceStridedSlicelstm_365/Shape:output:0%lstm_365/strided_slice/stack:output:0'lstm_365/strided_slice/stack_1:output:0'lstm_365/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_365/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_365/zeros/packedPacklstm_365/strided_slice:output:0 lstm_365/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_365/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_365/zerosFilllstm_365/zeros/packed:output:0lstm_365/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_365/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_365/zeros_1/packedPacklstm_365/strided_slice:output:0"lstm_365/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_365/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_365/zeros_1Fill lstm_365/zeros_1/packed:output:0lstm_365/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_365/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_365/transpose	Transposelstm_364/transpose_1:y:0 lstm_365/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_365/Shape_1Shapelstm_365/transpose:y:0*
T0*
_output_shapes
:h
lstm_365/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_365/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_365/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_slice_1StridedSlicelstm_365/Shape_1:output:0'lstm_365/strided_slice_1/stack:output:0)lstm_365/strided_slice_1/stack_1:output:0)lstm_365/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_365/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_365/TensorArrayV2TensorListReserve-lstm_365/TensorArrayV2/element_shape:output:0!lstm_365/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_365/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_365/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_365/transpose:y:0Glstm_365/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_365/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_365/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_365/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_slice_2StridedSlicelstm_365/transpose:y:0'lstm_365/strided_slice_2/stack:output:0)lstm_365/strided_slice_2/stack_1:output:0)lstm_365/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_365/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp5lstm_365_lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_365/lstm_cell_275/MatMulMatMul!lstm_365/strided_slice_2:output:04lstm_365/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp7lstm_365_lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_365/lstm_cell_275/MatMul_1MatMullstm_365/zeros:output:06lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_365/lstm_cell_275/addAddV2'lstm_365/lstm_cell_275/MatMul:product:0)lstm_365/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp6lstm_365_lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_365/lstm_cell_275/BiasAddBiasAddlstm_365/lstm_cell_275/add:z:05lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_365/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_365/lstm_cell_275/splitSplit/lstm_365/lstm_cell_275/split/split_dim:output:0'lstm_365/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_365/lstm_cell_275/SigmoidSigmoid%lstm_365/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_365/lstm_cell_275/Sigmoid_1Sigmoid%lstm_365/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/mulMul$lstm_365/lstm_cell_275/Sigmoid_1:y:0lstm_365/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_365/lstm_cell_275/ReluRelu%lstm_365/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/mul_1Mul"lstm_365/lstm_cell_275/Sigmoid:y:0)lstm_365/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/add_1AddV2lstm_365/lstm_cell_275/mul:z:0 lstm_365/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_365/lstm_cell_275/Sigmoid_2Sigmoid%lstm_365/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_365/lstm_cell_275/Relu_1Relu lstm_365/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/mul_2Mul$lstm_365/lstm_cell_275/Sigmoid_2:y:0+lstm_365/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_365/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_365/TensorArrayV2_1TensorListReserve/lstm_365/TensorArrayV2_1/element_shape:output:0!lstm_365/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_365/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_365/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_365/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_365/whileWhile$lstm_365/while/loop_counter:output:0*lstm_365/while/maximum_iterations:output:0lstm_365/time:output:0!lstm_365/TensorArrayV2_1:handle:0lstm_365/zeros:output:0lstm_365/zeros_1:output:0!lstm_365/strided_slice_1:output:0@lstm_365/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_365_lstm_cell_275_matmul_readvariableop_resource7lstm_365_lstm_cell_275_matmul_1_readvariableop_resource6lstm_365_lstm_cell_275_biasadd_readvariableop_resource*
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
lstm_365_while_body_1666022*'
condR
lstm_365_while_cond_1666021*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_365/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_365/TensorArrayV2Stack/TensorListStackTensorListStacklstm_365/while:output:3Blstm_365/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_365/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_365/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_365/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_slice_3StridedSlice4lstm_365/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_365/strided_slice_3/stack:output:0)lstm_365/strided_slice_3/stack_1:output:0)lstm_365/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_365/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_365/transpose_1	Transpose4lstm_365/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_365/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_365/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_121/MatMulMatMul!lstm_365/strided_slice_3:output:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_121/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp.^lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp-^lstm_363/lstm_cell_273/MatMul/ReadVariableOp/^lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp^lstm_363/while.^lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp-^lstm_364/lstm_cell_274/MatMul/ReadVariableOp/^lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp^lstm_364/while.^lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp-^lstm_365/lstm_cell_275/MatMul/ReadVariableOp/^lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp^lstm_365/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2^
-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp2\
,lstm_363/lstm_cell_273/MatMul/ReadVariableOp,lstm_363/lstm_cell_273/MatMul/ReadVariableOp2`
.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp2 
lstm_363/whilelstm_363/while2^
-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp2\
,lstm_364/lstm_cell_274/MatMul/ReadVariableOp,lstm_364/lstm_cell_274/MatMul/ReadVariableOp2`
.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp2 
lstm_364/whilelstm_364/while2^
-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp2\
,lstm_365/lstm_cell_275/MatMul/ReadVariableOp,lstm_365/lstm_cell_275/MatMul/ReadVariableOp2`
.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp2 
lstm_365/whilelstm_365/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1667257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1667257___redundant_placeholder05
1while_while_cond_1667257___redundant_placeholder15
1while_while_cond_1667257___redundant_placeholder25
1while_while_cond_1667257___redundant_placeholder3
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
while_cond_1667543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1667543___redundant_placeholder05
1while_while_cond_1667543___redundant_placeholder15
1while_while_cond_1667543___redundant_placeholder25
1while_while_cond_1667543___redundant_placeholder3
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
*sequential_121_lstm_363_while_body_1663003L
Hsequential_121_lstm_363_while_sequential_121_lstm_363_while_loop_counterR
Nsequential_121_lstm_363_while_sequential_121_lstm_363_while_maximum_iterations-
)sequential_121_lstm_363_while_placeholder/
+sequential_121_lstm_363_while_placeholder_1/
+sequential_121_lstm_363_while_placeholder_2/
+sequential_121_lstm_363_while_placeholder_3K
Gsequential_121_lstm_363_while_sequential_121_lstm_363_strided_slice_1_0?
?sequential_121_lstm_363_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_363_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_121_lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0:	?a
Nsequential_121_lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?\
Msequential_121_lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0:	?*
&sequential_121_lstm_363_while_identity,
(sequential_121_lstm_363_while_identity_1,
(sequential_121_lstm_363_while_identity_2,
(sequential_121_lstm_363_while_identity_3,
(sequential_121_lstm_363_while_identity_4,
(sequential_121_lstm_363_while_identity_5I
Esequential_121_lstm_363_while_sequential_121_lstm_363_strided_slice_1?
?sequential_121_lstm_363_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_363_tensorarrayunstack_tensorlistfromtensor]
Jsequential_121_lstm_363_while_lstm_cell_273_matmul_readvariableop_resource:	?_
Lsequential_121_lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource:	d?Z
Ksequential_121_lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource:	???Bsequential_121/lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp?Asequential_121/lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp?Csequential_121/lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp?
Osequential_121/lstm_363/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_121/lstm_363/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_121_lstm_363_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_363_tensorarrayunstack_tensorlistfromtensor_0)sequential_121_lstm_363_while_placeholderXsequential_121/lstm_363/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_121/lstm_363/while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOpLsequential_121_lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_121/lstm_363/while/lstm_cell_273/MatMulMatMulHsequential_121/lstm_363/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_121/lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_121/lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOpNsequential_121_lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_121/lstm_363/while/lstm_cell_273/MatMul_1MatMul+sequential_121_lstm_363_while_placeholder_2Ksequential_121/lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_121/lstm_363/while/lstm_cell_273/addAddV2<sequential_121/lstm_363/while/lstm_cell_273/MatMul:product:0>sequential_121/lstm_363/while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_121/lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOpMsequential_121_lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_121/lstm_363/while/lstm_cell_273/BiasAddBiasAdd3sequential_121/lstm_363/while/lstm_cell_273/add:z:0Jsequential_121/lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_121/lstm_363/while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_121/lstm_363/while/lstm_cell_273/splitSplitDsequential_121/lstm_363/while/lstm_cell_273/split/split_dim:output:0<sequential_121/lstm_363/while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_121/lstm_363/while/lstm_cell_273/SigmoidSigmoid:sequential_121/lstm_363/while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_121/lstm_363/while/lstm_cell_273/Sigmoid_1Sigmoid:sequential_121/lstm_363/while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_121/lstm_363/while/lstm_cell_273/mulMul9sequential_121/lstm_363/while/lstm_cell_273/Sigmoid_1:y:0+sequential_121_lstm_363_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_121/lstm_363/while/lstm_cell_273/ReluRelu:sequential_121/lstm_363/while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_121/lstm_363/while/lstm_cell_273/mul_1Mul7sequential_121/lstm_363/while/lstm_cell_273/Sigmoid:y:0>sequential_121/lstm_363/while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_121/lstm_363/while/lstm_cell_273/add_1AddV23sequential_121/lstm_363/while/lstm_cell_273/mul:z:05sequential_121/lstm_363/while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_121/lstm_363/while/lstm_cell_273/Sigmoid_2Sigmoid:sequential_121/lstm_363/while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_121/lstm_363/while/lstm_cell_273/Relu_1Relu5sequential_121/lstm_363/while/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_121/lstm_363/while/lstm_cell_273/mul_2Mul9sequential_121/lstm_363/while/lstm_cell_273/Sigmoid_2:y:0@sequential_121/lstm_363/while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_121/lstm_363/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_121_lstm_363_while_placeholder_1)sequential_121_lstm_363_while_placeholder5sequential_121/lstm_363/while/lstm_cell_273/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_121/lstm_363/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_121/lstm_363/while/addAddV2)sequential_121_lstm_363_while_placeholder,sequential_121/lstm_363/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_121/lstm_363/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_121/lstm_363/while/add_1AddV2Hsequential_121_lstm_363_while_sequential_121_lstm_363_while_loop_counter.sequential_121/lstm_363/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_121/lstm_363/while/IdentityIdentity'sequential_121/lstm_363/while/add_1:z:0#^sequential_121/lstm_363/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_363/while/Identity_1IdentityNsequential_121_lstm_363_while_sequential_121_lstm_363_while_maximum_iterations#^sequential_121/lstm_363/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_363/while/Identity_2Identity%sequential_121/lstm_363/while/add:z:0#^sequential_121/lstm_363/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_363/while/Identity_3IdentityRsequential_121/lstm_363/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_121/lstm_363/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_363/while/Identity_4Identity5sequential_121/lstm_363/while/lstm_cell_273/mul_2:z:0#^sequential_121/lstm_363/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_121/lstm_363/while/Identity_5Identity5sequential_121/lstm_363/while/lstm_cell_273/add_1:z:0#^sequential_121/lstm_363/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_121/lstm_363/while/NoOpNoOpC^sequential_121/lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOpB^sequential_121/lstm_363/while/lstm_cell_273/MatMul/ReadVariableOpD^sequential_121/lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_121_lstm_363_while_identity/sequential_121/lstm_363/while/Identity:output:0"]
(sequential_121_lstm_363_while_identity_11sequential_121/lstm_363/while/Identity_1:output:0"]
(sequential_121_lstm_363_while_identity_21sequential_121/lstm_363/while/Identity_2:output:0"]
(sequential_121_lstm_363_while_identity_31sequential_121/lstm_363/while/Identity_3:output:0"]
(sequential_121_lstm_363_while_identity_41sequential_121/lstm_363/while/Identity_4:output:0"]
(sequential_121_lstm_363_while_identity_51sequential_121/lstm_363/while/Identity_5:output:0"?
Ksequential_121_lstm_363_while_lstm_cell_273_biasadd_readvariableop_resourceMsequential_121_lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0"?
Lsequential_121_lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resourceNsequential_121_lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0"?
Jsequential_121_lstm_363_while_lstm_cell_273_matmul_readvariableop_resourceLsequential_121_lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0"?
Esequential_121_lstm_363_while_sequential_121_lstm_363_strided_slice_1Gsequential_121_lstm_363_while_sequential_121_lstm_363_strided_slice_1_0"?
?sequential_121_lstm_363_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_363_tensorarrayunstack_tensorlistfromtensor?sequential_121_lstm_363_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_363_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_121/lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOpBsequential_121/lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp2?
Asequential_121/lstm_363/while/lstm_cell_273/MatMul/ReadVariableOpAsequential_121/lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp2?
Csequential_121/lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOpCsequential_121/lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1664343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_275_1664367_0:2(/
while_lstm_cell_275_1664369_0:
(+
while_lstm_cell_275_1664371_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_275_1664367:2(-
while_lstm_cell_275_1664369:
()
while_lstm_cell_275_1664371:(??+while/lstm_cell_275/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_275/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_275_1664367_0while_lstm_cell_275_1664369_0while_lstm_cell_275_1664371_0*
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664284?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_275/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_275/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_275/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_275/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_275_1664367while_lstm_cell_275_1664367_0"<
while_lstm_cell_275_1664369while_lstm_cell_275_1664369_0"<
while_lstm_cell_275_1664371while_lstm_cell_275_1664371_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_275/StatefulPartitionedCall+while/lstm_cell_275/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_121_layer_call_fn_1665658

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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1664895o
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
+__inference_dense_121_layer_call_fn_1668396

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
F__inference_dense_121_layer_call_and_return_conditional_losses_1664888o
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
while_cond_1668016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1668016___redundant_placeholder05
1while_while_cond_1668016___redundant_placeholder15
1while_while_cond_1668016___redundant_placeholder25
1while_while_cond_1668016___redundant_placeholder3
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668244

inputs>
,lstm_cell_275_matmul_readvariableop_resource:2(@
.lstm_cell_275_matmul_1_readvariableop_resource:
(;
-lstm_cell_275_biasadd_readvariableop_resource:(
identity??$lstm_cell_275/BiasAdd/ReadVariableOp?#lstm_cell_275/MatMul/ReadVariableOp?%lstm_cell_275/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_275/MatMul/ReadVariableOpReadVariableOp,lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_275/MatMulMatMulstrided_slice_2:output:0+lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_275/MatMul_1MatMulzeros:output:0-lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_275/addAddV2lstm_cell_275/MatMul:product:0 lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_275/BiasAddBiasAddlstm_cell_275/add:z:0,lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_275/splitSplit&lstm_cell_275/split/split_dim:output:0lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_275/SigmoidSigmoidlstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_1Sigmoidlstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_275/mulMullstm_cell_275/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_275/ReluRelulstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_1Mullstm_cell_275/Sigmoid:y:0 lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_275/add_1AddV2lstm_cell_275/mul:z:0lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_2Sigmoidlstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_275/Relu_1Relulstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_2Mullstm_cell_275/Sigmoid_2:y:0"lstm_cell_275/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_275_matmul_readvariableop_resource.lstm_cell_275_matmul_1_readvariableop_resource-lstm_cell_275_biasadd_readvariableop_resource*
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
while_body_1668160*
condR
while_cond_1668159*K
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
NoOpNoOp%^lstm_cell_275/BiasAdd/ReadVariableOp$^lstm_cell_275/MatMul/ReadVariableOp&^lstm_cell_275/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_275/BiasAdd/ReadVariableOp$lstm_cell_275/BiasAdd/ReadVariableOp2J
#lstm_cell_275/MatMul/ReadVariableOp#lstm_cell_275/MatMul/ReadVariableOp2N
%lstm_cell_275/MatMul_1/ReadVariableOp%lstm_cell_275/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1667544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_274_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_274_matmul_readvariableop_resource:	d?G
4while_lstm_cell_274_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_274_biasadd_readvariableop_resource:	???*while/lstm_cell_274/BiasAdd/ReadVariableOp?)while/lstm_cell_274/MatMul/ReadVariableOp?+while/lstm_cell_274/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_274/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_274/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_274/addAddV2$while/lstm_cell_274/MatMul:product:0&while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_274/BiasAddBiasAddwhile/lstm_cell_274/add:z:02while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_274/splitSplit,while/lstm_cell_274/split/split_dim:output:0$while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_274/SigmoidSigmoid"while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_1Sigmoid"while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mulMul!while/lstm_cell_274/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_274/ReluRelu"while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_1Mulwhile/lstm_cell_274/Sigmoid:y:0&while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/add_1AddV2while/lstm_cell_274/mul:z:0while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_2Sigmoid"while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_274/Relu_1Reluwhile/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_2Mul!while/lstm_cell_274/Sigmoid_2:y:0(while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_274/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_274/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_274/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_274/BiasAdd/ReadVariableOp*^while/lstm_cell_274/MatMul/ReadVariableOp,^while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_274_biasadd_readvariableop_resource5while_lstm_cell_274_biasadd_readvariableop_resource_0"n
4while_lstm_cell_274_matmul_1_readvariableop_resource6while_lstm_cell_274_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_274_matmul_readvariableop_resource4while_lstm_cell_274_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_274/BiasAdd/ReadVariableOp*while/lstm_cell_274/BiasAdd/ReadVariableOp2V
)while/lstm_cell_274/MatMul/ReadVariableOp)while/lstm_cell_274/MatMul/ReadVariableOp2Z
+while/lstm_cell_274/MatMul_1/ReadVariableOp+while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_363_layer_call_fn_1666561
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1663712|
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663934

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
?
while_cond_1664485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1664485___redundant_placeholder05
1while_while_cond_1664485___redundant_placeholder15
1while_while_cond_1664485___redundant_placeholder25
1while_while_cond_1664485___redundant_placeholder3
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
?
K__inference_sequential_121_layer_call_and_return_conditional_losses_1664895

inputs#
lstm_363_1664571:	?#
lstm_363_1664573:	d?
lstm_363_1664575:	?#
lstm_364_1664721:	d?#
lstm_364_1664723:	2?
lstm_364_1664725:	?"
lstm_365_1664871:2("
lstm_365_1664873:
(
lstm_365_1664875:(#
dense_121_1664889:

dense_121_1664891:
identity??!dense_121/StatefulPartitionedCall? lstm_363/StatefulPartitionedCall? lstm_364/StatefulPartitionedCall? lstm_365/StatefulPartitionedCall?
 lstm_363/StatefulPartitionedCallStatefulPartitionedCallinputslstm_363_1664571lstm_363_1664573lstm_363_1664575*
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1664570?
 lstm_364/StatefulPartitionedCallStatefulPartitionedCall)lstm_363/StatefulPartitionedCall:output:0lstm_364_1664721lstm_364_1664723lstm_364_1664725*
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1664720?
 lstm_365/StatefulPartitionedCallStatefulPartitionedCall)lstm_364/StatefulPartitionedCall:output:0lstm_365_1664871lstm_365_1664873lstm_365_1664875*
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664870?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_365/StatefulPartitionedCall:output:0dense_121_1664889dense_121_1664891*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_1664888y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_121/StatefulPartitionedCall!^lstm_363/StatefulPartitionedCall!^lstm_364/StatefulPartitionedCall!^lstm_365/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 lstm_363/StatefulPartitionedCall lstm_363/StatefulPartitionedCall2D
 lstm_364/StatefulPartitionedCall lstm_364/StatefulPartitionedCall2D
 lstm_365/StatefulPartitionedCall lstm_365/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_364_while_body_1665883.
*lstm_364_while_lstm_364_while_loop_counter4
0lstm_364_while_lstm_364_while_maximum_iterations
lstm_364_while_placeholder 
lstm_364_while_placeholder_1 
lstm_364_while_placeholder_2 
lstm_364_while_placeholder_3-
)lstm_364_while_lstm_364_strided_slice_1_0i
elstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0:	d?R
?lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?M
>lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
lstm_364_while_identity
lstm_364_while_identity_1
lstm_364_while_identity_2
lstm_364_while_identity_3
lstm_364_while_identity_4
lstm_364_while_identity_5+
'lstm_364_while_lstm_364_strided_slice_1g
clstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensorN
;lstm_364_while_lstm_cell_274_matmul_readvariableop_resource:	d?P
=lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource:	2?K
<lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource:	???3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp?2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp?4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp?
@lstm_364/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_364/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensor_0lstm_364_while_placeholderIlstm_364/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp=lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_364/while/lstm_cell_274/MatMulMatMul9lstm_364/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp?lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_364/while/lstm_cell_274/MatMul_1MatMullstm_364_while_placeholder_2<lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_364/while/lstm_cell_274/addAddV2-lstm_364/while/lstm_cell_274/MatMul:product:0/lstm_364/while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp>lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_364/while/lstm_cell_274/BiasAddBiasAdd$lstm_364/while/lstm_cell_274/add:z:0;lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_364/while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_364/while/lstm_cell_274/splitSplit5lstm_364/while/lstm_cell_274/split/split_dim:output:0-lstm_364/while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_364/while/lstm_cell_274/SigmoidSigmoid+lstm_364/while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_364/while/lstm_cell_274/Sigmoid_1Sigmoid+lstm_364/while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_364/while/lstm_cell_274/mulMul*lstm_364/while/lstm_cell_274/Sigmoid_1:y:0lstm_364_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_364/while/lstm_cell_274/ReluRelu+lstm_364/while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_364/while/lstm_cell_274/mul_1Mul(lstm_364/while/lstm_cell_274/Sigmoid:y:0/lstm_364/while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_364/while/lstm_cell_274/add_1AddV2$lstm_364/while/lstm_cell_274/mul:z:0&lstm_364/while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_364/while/lstm_cell_274/Sigmoid_2Sigmoid+lstm_364/while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_364/while/lstm_cell_274/Relu_1Relu&lstm_364/while/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_364/while/lstm_cell_274/mul_2Mul*lstm_364/while/lstm_cell_274/Sigmoid_2:y:01lstm_364/while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_364/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_364_while_placeholder_1lstm_364_while_placeholder&lstm_364/while/lstm_cell_274/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_364/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_364/while/addAddV2lstm_364_while_placeholderlstm_364/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_364/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_364/while/add_1AddV2*lstm_364_while_lstm_364_while_loop_counterlstm_364/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_364/while/IdentityIdentitylstm_364/while/add_1:z:0^lstm_364/while/NoOp*
T0*
_output_shapes
: ?
lstm_364/while/Identity_1Identity0lstm_364_while_lstm_364_while_maximum_iterations^lstm_364/while/NoOp*
T0*
_output_shapes
: t
lstm_364/while/Identity_2Identitylstm_364/while/add:z:0^lstm_364/while/NoOp*
T0*
_output_shapes
: ?
lstm_364/while/Identity_3IdentityClstm_364/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_364/while/NoOp*
T0*
_output_shapes
: ?
lstm_364/while/Identity_4Identity&lstm_364/while/lstm_cell_274/mul_2:z:0^lstm_364/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_364/while/Identity_5Identity&lstm_364/while/lstm_cell_274/add_1:z:0^lstm_364/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_364/while/NoOpNoOp4^lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp3^lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp5^lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_364_while_identity lstm_364/while/Identity:output:0"?
lstm_364_while_identity_1"lstm_364/while/Identity_1:output:0"?
lstm_364_while_identity_2"lstm_364/while/Identity_2:output:0"?
lstm_364_while_identity_3"lstm_364/while/Identity_3:output:0"?
lstm_364_while_identity_4"lstm_364/while/Identity_4:output:0"?
lstm_364_while_identity_5"lstm_364/while/Identity_5:output:0"T
'lstm_364_while_lstm_364_strided_slice_1)lstm_364_while_lstm_364_strided_slice_1_0"~
<lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource>lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0"?
=lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource?lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0"|
;lstm_364_while_lstm_cell_274_matmul_readvariableop_resource=lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0"?
clstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensorelstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp2h
2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp2l
4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1665166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1665166___redundant_placeholder05
1while_while_cond_1665166___redundant_placeholder15
1while_while_cond_1665166___redundant_placeholder25
1while_while_cond_1665166___redundant_placeholder3
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
%__inference_signature_wrapper_1665631
lstm_363_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_363_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1663371o
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
_user_specified_namelstm_363_input
?
?
*__inference_lstm_364_layer_call_fn_1667188

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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1664720s
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1668504

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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1666539

inputsH
5lstm_363_lstm_cell_273_matmul_readvariableop_resource:	?J
7lstm_363_lstm_cell_273_matmul_1_readvariableop_resource:	d?E
6lstm_363_lstm_cell_273_biasadd_readvariableop_resource:	?H
5lstm_364_lstm_cell_274_matmul_readvariableop_resource:	d?J
7lstm_364_lstm_cell_274_matmul_1_readvariableop_resource:	2?E
6lstm_364_lstm_cell_274_biasadd_readvariableop_resource:	?G
5lstm_365_lstm_cell_275_matmul_readvariableop_resource:2(I
7lstm_365_lstm_cell_275_matmul_1_readvariableop_resource:
(D
6lstm_365_lstm_cell_275_biasadd_readvariableop_resource:(:
(dense_121_matmul_readvariableop_resource:
7
)dense_121_biasadd_readvariableop_resource:
identity?? dense_121/BiasAdd/ReadVariableOp?dense_121/MatMul/ReadVariableOp?-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp?,lstm_363/lstm_cell_273/MatMul/ReadVariableOp?.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp?lstm_363/while?-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp?,lstm_364/lstm_cell_274/MatMul/ReadVariableOp?.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp?lstm_364/while?-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp?,lstm_365/lstm_cell_275/MatMul/ReadVariableOp?.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp?lstm_365/whileD
lstm_363/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_363/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_363/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_363/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_sliceStridedSlicelstm_363/Shape:output:0%lstm_363/strided_slice/stack:output:0'lstm_363/strided_slice/stack_1:output:0'lstm_363/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_363/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_363/zeros/packedPacklstm_363/strided_slice:output:0 lstm_363/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_363/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_363/zerosFilllstm_363/zeros/packed:output:0lstm_363/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_363/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_363/zeros_1/packedPacklstm_363/strided_slice:output:0"lstm_363/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_363/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_363/zeros_1Fill lstm_363/zeros_1/packed:output:0lstm_363/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_363/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_363/transpose	Transposeinputs lstm_363/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_363/Shape_1Shapelstm_363/transpose:y:0*
T0*
_output_shapes
:h
lstm_363/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_363/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_363/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_slice_1StridedSlicelstm_363/Shape_1:output:0'lstm_363/strided_slice_1/stack:output:0)lstm_363/strided_slice_1/stack_1:output:0)lstm_363/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_363/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_363/TensorArrayV2TensorListReserve-lstm_363/TensorArrayV2/element_shape:output:0!lstm_363/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_363/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_363/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_363/transpose:y:0Glstm_363/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_363/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_363/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_363/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_slice_2StridedSlicelstm_363/transpose:y:0'lstm_363/strided_slice_2/stack:output:0)lstm_363/strided_slice_2/stack_1:output:0)lstm_363/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_363/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp5lstm_363_lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_363/lstm_cell_273/MatMulMatMul!lstm_363/strided_slice_2:output:04lstm_363/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp7lstm_363_lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_363/lstm_cell_273/MatMul_1MatMullstm_363/zeros:output:06lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_363/lstm_cell_273/addAddV2'lstm_363/lstm_cell_273/MatMul:product:0)lstm_363/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp6lstm_363_lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_363/lstm_cell_273/BiasAddBiasAddlstm_363/lstm_cell_273/add:z:05lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_363/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_363/lstm_cell_273/splitSplit/lstm_363/lstm_cell_273/split/split_dim:output:0'lstm_363/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_363/lstm_cell_273/SigmoidSigmoid%lstm_363/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_363/lstm_cell_273/Sigmoid_1Sigmoid%lstm_363/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/mulMul$lstm_363/lstm_cell_273/Sigmoid_1:y:0lstm_363/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_363/lstm_cell_273/ReluRelu%lstm_363/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/mul_1Mul"lstm_363/lstm_cell_273/Sigmoid:y:0)lstm_363/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/add_1AddV2lstm_363/lstm_cell_273/mul:z:0 lstm_363/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_363/lstm_cell_273/Sigmoid_2Sigmoid%lstm_363/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_363/lstm_cell_273/Relu_1Relu lstm_363/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_363/lstm_cell_273/mul_2Mul$lstm_363/lstm_cell_273/Sigmoid_2:y:0+lstm_363/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_363/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_363/TensorArrayV2_1TensorListReserve/lstm_363/TensorArrayV2_1/element_shape:output:0!lstm_363/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_363/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_363/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_363/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_363/whileWhile$lstm_363/while/loop_counter:output:0*lstm_363/while/maximum_iterations:output:0lstm_363/time:output:0!lstm_363/TensorArrayV2_1:handle:0lstm_363/zeros:output:0lstm_363/zeros_1:output:0!lstm_363/strided_slice_1:output:0@lstm_363/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_363_lstm_cell_273_matmul_readvariableop_resource7lstm_363_lstm_cell_273_matmul_1_readvariableop_resource6lstm_363_lstm_cell_273_biasadd_readvariableop_resource*
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
lstm_363_while_body_1666171*'
condR
lstm_363_while_cond_1666170*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_363/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_363/TensorArrayV2Stack/TensorListStackTensorListStacklstm_363/while:output:3Blstm_363/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_363/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_363/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_363/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_363/strided_slice_3StridedSlice4lstm_363/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_363/strided_slice_3/stack:output:0)lstm_363/strided_slice_3/stack_1:output:0)lstm_363/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_363/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_363/transpose_1	Transpose4lstm_363/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_363/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_363/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_364/ShapeShapelstm_363/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_364/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_364/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_364/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_sliceStridedSlicelstm_364/Shape:output:0%lstm_364/strided_slice/stack:output:0'lstm_364/strided_slice/stack_1:output:0'lstm_364/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_364/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_364/zeros/packedPacklstm_364/strided_slice:output:0 lstm_364/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_364/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_364/zerosFilllstm_364/zeros/packed:output:0lstm_364/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_364/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_364/zeros_1/packedPacklstm_364/strided_slice:output:0"lstm_364/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_364/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_364/zeros_1Fill lstm_364/zeros_1/packed:output:0lstm_364/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_364/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_364/transpose	Transposelstm_363/transpose_1:y:0 lstm_364/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_364/Shape_1Shapelstm_364/transpose:y:0*
T0*
_output_shapes
:h
lstm_364/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_364/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_364/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_slice_1StridedSlicelstm_364/Shape_1:output:0'lstm_364/strided_slice_1/stack:output:0)lstm_364/strided_slice_1/stack_1:output:0)lstm_364/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_364/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_364/TensorArrayV2TensorListReserve-lstm_364/TensorArrayV2/element_shape:output:0!lstm_364/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_364/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_364/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_364/transpose:y:0Glstm_364/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_364/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_364/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_364/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_slice_2StridedSlicelstm_364/transpose:y:0'lstm_364/strided_slice_2/stack:output:0)lstm_364/strided_slice_2/stack_1:output:0)lstm_364/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_364/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp5lstm_364_lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_364/lstm_cell_274/MatMulMatMul!lstm_364/strided_slice_2:output:04lstm_364/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp7lstm_364_lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_364/lstm_cell_274/MatMul_1MatMullstm_364/zeros:output:06lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_364/lstm_cell_274/addAddV2'lstm_364/lstm_cell_274/MatMul:product:0)lstm_364/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp6lstm_364_lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_364/lstm_cell_274/BiasAddBiasAddlstm_364/lstm_cell_274/add:z:05lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_364/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_364/lstm_cell_274/splitSplit/lstm_364/lstm_cell_274/split/split_dim:output:0'lstm_364/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_364/lstm_cell_274/SigmoidSigmoid%lstm_364/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_364/lstm_cell_274/Sigmoid_1Sigmoid%lstm_364/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/mulMul$lstm_364/lstm_cell_274/Sigmoid_1:y:0lstm_364/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_364/lstm_cell_274/ReluRelu%lstm_364/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/mul_1Mul"lstm_364/lstm_cell_274/Sigmoid:y:0)lstm_364/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/add_1AddV2lstm_364/lstm_cell_274/mul:z:0 lstm_364/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_364/lstm_cell_274/Sigmoid_2Sigmoid%lstm_364/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_364/lstm_cell_274/Relu_1Relu lstm_364/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_364/lstm_cell_274/mul_2Mul$lstm_364/lstm_cell_274/Sigmoid_2:y:0+lstm_364/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_364/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_364/TensorArrayV2_1TensorListReserve/lstm_364/TensorArrayV2_1/element_shape:output:0!lstm_364/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_364/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_364/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_364/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_364/whileWhile$lstm_364/while/loop_counter:output:0*lstm_364/while/maximum_iterations:output:0lstm_364/time:output:0!lstm_364/TensorArrayV2_1:handle:0lstm_364/zeros:output:0lstm_364/zeros_1:output:0!lstm_364/strided_slice_1:output:0@lstm_364/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_364_lstm_cell_274_matmul_readvariableop_resource7lstm_364_lstm_cell_274_matmul_1_readvariableop_resource6lstm_364_lstm_cell_274_biasadd_readvariableop_resource*
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
lstm_364_while_body_1666310*'
condR
lstm_364_while_cond_1666309*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_364/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_364/TensorArrayV2Stack/TensorListStackTensorListStacklstm_364/while:output:3Blstm_364/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_364/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_364/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_364/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_364/strided_slice_3StridedSlice4lstm_364/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_364/strided_slice_3/stack:output:0)lstm_364/strided_slice_3/stack_1:output:0)lstm_364/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_364/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_364/transpose_1	Transpose4lstm_364/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_364/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_364/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_365/ShapeShapelstm_364/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_365/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_365/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_365/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_sliceStridedSlicelstm_365/Shape:output:0%lstm_365/strided_slice/stack:output:0'lstm_365/strided_slice/stack_1:output:0'lstm_365/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_365/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_365/zeros/packedPacklstm_365/strided_slice:output:0 lstm_365/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_365/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_365/zerosFilllstm_365/zeros/packed:output:0lstm_365/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_365/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_365/zeros_1/packedPacklstm_365/strided_slice:output:0"lstm_365/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_365/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_365/zeros_1Fill lstm_365/zeros_1/packed:output:0lstm_365/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_365/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_365/transpose	Transposelstm_364/transpose_1:y:0 lstm_365/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_365/Shape_1Shapelstm_365/transpose:y:0*
T0*
_output_shapes
:h
lstm_365/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_365/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_365/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_slice_1StridedSlicelstm_365/Shape_1:output:0'lstm_365/strided_slice_1/stack:output:0)lstm_365/strided_slice_1/stack_1:output:0)lstm_365/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_365/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_365/TensorArrayV2TensorListReserve-lstm_365/TensorArrayV2/element_shape:output:0!lstm_365/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_365/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_365/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_365/transpose:y:0Glstm_365/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_365/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_365/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_365/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_slice_2StridedSlicelstm_365/transpose:y:0'lstm_365/strided_slice_2/stack:output:0)lstm_365/strided_slice_2/stack_1:output:0)lstm_365/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_365/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp5lstm_365_lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_365/lstm_cell_275/MatMulMatMul!lstm_365/strided_slice_2:output:04lstm_365/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp7lstm_365_lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_365/lstm_cell_275/MatMul_1MatMullstm_365/zeros:output:06lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_365/lstm_cell_275/addAddV2'lstm_365/lstm_cell_275/MatMul:product:0)lstm_365/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp6lstm_365_lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_365/lstm_cell_275/BiasAddBiasAddlstm_365/lstm_cell_275/add:z:05lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_365/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_365/lstm_cell_275/splitSplit/lstm_365/lstm_cell_275/split/split_dim:output:0'lstm_365/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_365/lstm_cell_275/SigmoidSigmoid%lstm_365/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_365/lstm_cell_275/Sigmoid_1Sigmoid%lstm_365/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/mulMul$lstm_365/lstm_cell_275/Sigmoid_1:y:0lstm_365/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_365/lstm_cell_275/ReluRelu%lstm_365/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/mul_1Mul"lstm_365/lstm_cell_275/Sigmoid:y:0)lstm_365/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/add_1AddV2lstm_365/lstm_cell_275/mul:z:0 lstm_365/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_365/lstm_cell_275/Sigmoid_2Sigmoid%lstm_365/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_365/lstm_cell_275/Relu_1Relu lstm_365/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_365/lstm_cell_275/mul_2Mul$lstm_365/lstm_cell_275/Sigmoid_2:y:0+lstm_365/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_365/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_365/TensorArrayV2_1TensorListReserve/lstm_365/TensorArrayV2_1/element_shape:output:0!lstm_365/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_365/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_365/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_365/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_365/whileWhile$lstm_365/while/loop_counter:output:0*lstm_365/while/maximum_iterations:output:0lstm_365/time:output:0!lstm_365/TensorArrayV2_1:handle:0lstm_365/zeros:output:0lstm_365/zeros_1:output:0!lstm_365/strided_slice_1:output:0@lstm_365/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_365_lstm_cell_275_matmul_readvariableop_resource7lstm_365_lstm_cell_275_matmul_1_readvariableop_resource6lstm_365_lstm_cell_275_biasadd_readvariableop_resource*
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
lstm_365_while_body_1666449*'
condR
lstm_365_while_cond_1666448*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_365/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_365/TensorArrayV2Stack/TensorListStackTensorListStacklstm_365/while:output:3Blstm_365/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_365/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_365/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_365/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_365/strided_slice_3StridedSlice4lstm_365/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_365/strided_slice_3/stack:output:0)lstm_365/strided_slice_3/stack_1:output:0)lstm_365/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_365/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_365/transpose_1	Transpose4lstm_365/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_365/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_365/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_121/MatMulMatMul!lstm_365/strided_slice_3:output:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_121/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp.^lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp-^lstm_363/lstm_cell_273/MatMul/ReadVariableOp/^lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp^lstm_363/while.^lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp-^lstm_364/lstm_cell_274/MatMul/ReadVariableOp/^lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp^lstm_364/while.^lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp-^lstm_365/lstm_cell_275/MatMul/ReadVariableOp/^lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp^lstm_365/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2^
-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp-lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp2\
,lstm_363/lstm_cell_273/MatMul/ReadVariableOp,lstm_363/lstm_cell_273/MatMul/ReadVariableOp2`
.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp.lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp2 
lstm_363/whilelstm_363/while2^
-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp-lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp2\
,lstm_364/lstm_cell_274/MatMul/ReadVariableOp,lstm_364/lstm_cell_274/MatMul/ReadVariableOp2`
.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp.lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp2 
lstm_364/whilelstm_364/while2^
-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp-lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp2\
,lstm_365/lstm_cell_275/MatMul/ReadVariableOp,lstm_365/lstm_cell_275/MatMul/ReadVariableOp2`
.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp.lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp2 
lstm_365/whilelstm_365/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1667258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_274_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_274_matmul_readvariableop_resource:	d?G
4while_lstm_cell_274_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_274_biasadd_readvariableop_resource:	???*while/lstm_cell_274/BiasAdd/ReadVariableOp?)while/lstm_cell_274/MatMul/ReadVariableOp?+while/lstm_cell_274/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_274/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_274/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_274/addAddV2$while/lstm_cell_274/MatMul:product:0&while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_274/BiasAddBiasAddwhile/lstm_cell_274/add:z:02while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_274/splitSplit,while/lstm_cell_274/split/split_dim:output:0$while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_274/SigmoidSigmoid"while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_1Sigmoid"while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mulMul!while/lstm_cell_274/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_274/ReluRelu"while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_1Mulwhile/lstm_cell_274/Sigmoid:y:0&while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/add_1AddV2while/lstm_cell_274/mul:z:0while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_2Sigmoid"while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_274/Relu_1Reluwhile/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_2Mul!while/lstm_cell_274/Sigmoid_2:y:0(while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_274/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_274/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_274/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_274/BiasAdd/ReadVariableOp*^while/lstm_cell_274/MatMul/ReadVariableOp,^while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_274_biasadd_readvariableop_resource5while_lstm_cell_274_biasadd_readvariableop_resource_0"n
4while_lstm_cell_274_matmul_1_readvariableop_resource6while_lstm_cell_274_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_274_matmul_readvariableop_resource4while_lstm_cell_274_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_274/BiasAdd/ReadVariableOp*while/lstm_cell_274/BiasAdd/ReadVariableOp2V
)while/lstm_cell_274/MatMul/ReadVariableOp)while/lstm_cell_274/MatMul/ReadVariableOp2Z
+while/lstm_cell_274/MatMul_1/ReadVariableOp+while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664221

inputs'
lstm_cell_275_1664139:2('
lstm_cell_275_1664141:
(#
lstm_cell_275_1664143:(
identity??%lstm_cell_275/StatefulPartitionedCall?while;
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
%lstm_cell_275/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_275_1664139lstm_cell_275_1664141lstm_cell_275_1664143*
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664138n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_275_1664139lstm_cell_275_1664141lstm_cell_275_1664143*
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
while_body_1664152*
condR
while_cond_1664151*K
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
NoOpNoOp&^lstm_cell_275/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_275/StatefulPartitionedCall%lstm_cell_275/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1663371
lstm_363_inputW
Dsequential_121_lstm_363_lstm_cell_273_matmul_readvariableop_resource:	?Y
Fsequential_121_lstm_363_lstm_cell_273_matmul_1_readvariableop_resource:	d?T
Esequential_121_lstm_363_lstm_cell_273_biasadd_readvariableop_resource:	?W
Dsequential_121_lstm_364_lstm_cell_274_matmul_readvariableop_resource:	d?Y
Fsequential_121_lstm_364_lstm_cell_274_matmul_1_readvariableop_resource:	2?T
Esequential_121_lstm_364_lstm_cell_274_biasadd_readvariableop_resource:	?V
Dsequential_121_lstm_365_lstm_cell_275_matmul_readvariableop_resource:2(X
Fsequential_121_lstm_365_lstm_cell_275_matmul_1_readvariableop_resource:
(S
Esequential_121_lstm_365_lstm_cell_275_biasadd_readvariableop_resource:(I
7sequential_121_dense_121_matmul_readvariableop_resource:
F
8sequential_121_dense_121_biasadd_readvariableop_resource:
identity??/sequential_121/dense_121/BiasAdd/ReadVariableOp?.sequential_121/dense_121/MatMul/ReadVariableOp?<sequential_121/lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp?;sequential_121/lstm_363/lstm_cell_273/MatMul/ReadVariableOp?=sequential_121/lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp?sequential_121/lstm_363/while?<sequential_121/lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp?;sequential_121/lstm_364/lstm_cell_274/MatMul/ReadVariableOp?=sequential_121/lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp?sequential_121/lstm_364/while?<sequential_121/lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp?;sequential_121/lstm_365/lstm_cell_275/MatMul/ReadVariableOp?=sequential_121/lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp?sequential_121/lstm_365/while[
sequential_121/lstm_363/ShapeShapelstm_363_input*
T0*
_output_shapes
:u
+sequential_121/lstm_363/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_121/lstm_363/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_121/lstm_363/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_121/lstm_363/strided_sliceStridedSlice&sequential_121/lstm_363/Shape:output:04sequential_121/lstm_363/strided_slice/stack:output:06sequential_121/lstm_363/strided_slice/stack_1:output:06sequential_121/lstm_363/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_121/lstm_363/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_121/lstm_363/zeros/packedPack.sequential_121/lstm_363/strided_slice:output:0/sequential_121/lstm_363/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_121/lstm_363/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_121/lstm_363/zerosFill-sequential_121/lstm_363/zeros/packed:output:0,sequential_121/lstm_363/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_121/lstm_363/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_121/lstm_363/zeros_1/packedPack.sequential_121/lstm_363/strided_slice:output:01sequential_121/lstm_363/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_121/lstm_363/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_121/lstm_363/zeros_1Fill/sequential_121/lstm_363/zeros_1/packed:output:0.sequential_121/lstm_363/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_121/lstm_363/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_121/lstm_363/transpose	Transposelstm_363_input/sequential_121/lstm_363/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_121/lstm_363/Shape_1Shape%sequential_121/lstm_363/transpose:y:0*
T0*
_output_shapes
:w
-sequential_121/lstm_363/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_363/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_121/lstm_363/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_363/strided_slice_1StridedSlice(sequential_121/lstm_363/Shape_1:output:06sequential_121/lstm_363/strided_slice_1/stack:output:08sequential_121/lstm_363/strided_slice_1/stack_1:output:08sequential_121/lstm_363/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_121/lstm_363/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_121/lstm_363/TensorArrayV2TensorListReserve<sequential_121/lstm_363/TensorArrayV2/element_shape:output:00sequential_121/lstm_363/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_121/lstm_363/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_121/lstm_363/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_121/lstm_363/transpose:y:0Vsequential_121/lstm_363/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_121/lstm_363/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_363/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_121/lstm_363/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_363/strided_slice_2StridedSlice%sequential_121/lstm_363/transpose:y:06sequential_121/lstm_363/strided_slice_2/stack:output:08sequential_121/lstm_363/strided_slice_2/stack_1:output:08sequential_121/lstm_363/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_121/lstm_363/lstm_cell_273/MatMul/ReadVariableOpReadVariableOpDsequential_121_lstm_363_lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_121/lstm_363/lstm_cell_273/MatMulMatMul0sequential_121/lstm_363/strided_slice_2:output:0Csequential_121/lstm_363/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_121/lstm_363/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOpFsequential_121_lstm_363_lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_121/lstm_363/lstm_cell_273/MatMul_1MatMul&sequential_121/lstm_363/zeros:output:0Esequential_121/lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_121/lstm_363/lstm_cell_273/addAddV26sequential_121/lstm_363/lstm_cell_273/MatMul:product:08sequential_121/lstm_363/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_121/lstm_363/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOpEsequential_121_lstm_363_lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_121/lstm_363/lstm_cell_273/BiasAddBiasAdd-sequential_121/lstm_363/lstm_cell_273/add:z:0Dsequential_121/lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_121/lstm_363/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_121/lstm_363/lstm_cell_273/splitSplit>sequential_121/lstm_363/lstm_cell_273/split/split_dim:output:06sequential_121/lstm_363/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_121/lstm_363/lstm_cell_273/SigmoidSigmoid4sequential_121/lstm_363/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_121/lstm_363/lstm_cell_273/Sigmoid_1Sigmoid4sequential_121/lstm_363/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_121/lstm_363/lstm_cell_273/mulMul3sequential_121/lstm_363/lstm_cell_273/Sigmoid_1:y:0(sequential_121/lstm_363/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_121/lstm_363/lstm_cell_273/ReluRelu4sequential_121/lstm_363/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_121/lstm_363/lstm_cell_273/mul_1Mul1sequential_121/lstm_363/lstm_cell_273/Sigmoid:y:08sequential_121/lstm_363/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_121/lstm_363/lstm_cell_273/add_1AddV2-sequential_121/lstm_363/lstm_cell_273/mul:z:0/sequential_121/lstm_363/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_121/lstm_363/lstm_cell_273/Sigmoid_2Sigmoid4sequential_121/lstm_363/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_121/lstm_363/lstm_cell_273/Relu_1Relu/sequential_121/lstm_363/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_121/lstm_363/lstm_cell_273/mul_2Mul3sequential_121/lstm_363/lstm_cell_273/Sigmoid_2:y:0:sequential_121/lstm_363/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_121/lstm_363/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_121/lstm_363/TensorArrayV2_1TensorListReserve>sequential_121/lstm_363/TensorArrayV2_1/element_shape:output:00sequential_121/lstm_363/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_121/lstm_363/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_121/lstm_363/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_121/lstm_363/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_121/lstm_363/whileWhile3sequential_121/lstm_363/while/loop_counter:output:09sequential_121/lstm_363/while/maximum_iterations:output:0%sequential_121/lstm_363/time:output:00sequential_121/lstm_363/TensorArrayV2_1:handle:0&sequential_121/lstm_363/zeros:output:0(sequential_121/lstm_363/zeros_1:output:00sequential_121/lstm_363/strided_slice_1:output:0Osequential_121/lstm_363/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_121_lstm_363_lstm_cell_273_matmul_readvariableop_resourceFsequential_121_lstm_363_lstm_cell_273_matmul_1_readvariableop_resourceEsequential_121_lstm_363_lstm_cell_273_biasadd_readvariableop_resource*
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
*sequential_121_lstm_363_while_body_1663003*6
cond.R,
*sequential_121_lstm_363_while_cond_1663002*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_121/lstm_363/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_121/lstm_363/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_121/lstm_363/while:output:3Qsequential_121/lstm_363/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_121/lstm_363/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_121/lstm_363/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_363/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_363/strided_slice_3StridedSliceCsequential_121/lstm_363/TensorArrayV2Stack/TensorListStack:tensor:06sequential_121/lstm_363/strided_slice_3/stack:output:08sequential_121/lstm_363/strided_slice_3/stack_1:output:08sequential_121/lstm_363/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_121/lstm_363/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_121/lstm_363/transpose_1	TransposeCsequential_121/lstm_363/TensorArrayV2Stack/TensorListStack:tensor:01sequential_121/lstm_363/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_121/lstm_363/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_121/lstm_364/ShapeShape'sequential_121/lstm_363/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_121/lstm_364/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_121/lstm_364/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_121/lstm_364/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_121/lstm_364/strided_sliceStridedSlice&sequential_121/lstm_364/Shape:output:04sequential_121/lstm_364/strided_slice/stack:output:06sequential_121/lstm_364/strided_slice/stack_1:output:06sequential_121/lstm_364/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_121/lstm_364/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_121/lstm_364/zeros/packedPack.sequential_121/lstm_364/strided_slice:output:0/sequential_121/lstm_364/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_121/lstm_364/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_121/lstm_364/zerosFill-sequential_121/lstm_364/zeros/packed:output:0,sequential_121/lstm_364/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_121/lstm_364/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_121/lstm_364/zeros_1/packedPack.sequential_121/lstm_364/strided_slice:output:01sequential_121/lstm_364/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_121/lstm_364/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_121/lstm_364/zeros_1Fill/sequential_121/lstm_364/zeros_1/packed:output:0.sequential_121/lstm_364/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_121/lstm_364/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_121/lstm_364/transpose	Transpose'sequential_121/lstm_363/transpose_1:y:0/sequential_121/lstm_364/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_121/lstm_364/Shape_1Shape%sequential_121/lstm_364/transpose:y:0*
T0*
_output_shapes
:w
-sequential_121/lstm_364/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_364/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_121/lstm_364/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_364/strided_slice_1StridedSlice(sequential_121/lstm_364/Shape_1:output:06sequential_121/lstm_364/strided_slice_1/stack:output:08sequential_121/lstm_364/strided_slice_1/stack_1:output:08sequential_121/lstm_364/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_121/lstm_364/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_121/lstm_364/TensorArrayV2TensorListReserve<sequential_121/lstm_364/TensorArrayV2/element_shape:output:00sequential_121/lstm_364/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_121/lstm_364/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_121/lstm_364/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_121/lstm_364/transpose:y:0Vsequential_121/lstm_364/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_121/lstm_364/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_364/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_121/lstm_364/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_364/strided_slice_2StridedSlice%sequential_121/lstm_364/transpose:y:06sequential_121/lstm_364/strided_slice_2/stack:output:08sequential_121/lstm_364/strided_slice_2/stack_1:output:08sequential_121/lstm_364/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_121/lstm_364/lstm_cell_274/MatMul/ReadVariableOpReadVariableOpDsequential_121_lstm_364_lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_121/lstm_364/lstm_cell_274/MatMulMatMul0sequential_121/lstm_364/strided_slice_2:output:0Csequential_121/lstm_364/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_121/lstm_364/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOpFsequential_121_lstm_364_lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_121/lstm_364/lstm_cell_274/MatMul_1MatMul&sequential_121/lstm_364/zeros:output:0Esequential_121/lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_121/lstm_364/lstm_cell_274/addAddV26sequential_121/lstm_364/lstm_cell_274/MatMul:product:08sequential_121/lstm_364/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_121/lstm_364/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOpEsequential_121_lstm_364_lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_121/lstm_364/lstm_cell_274/BiasAddBiasAdd-sequential_121/lstm_364/lstm_cell_274/add:z:0Dsequential_121/lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_121/lstm_364/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_121/lstm_364/lstm_cell_274/splitSplit>sequential_121/lstm_364/lstm_cell_274/split/split_dim:output:06sequential_121/lstm_364/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_121/lstm_364/lstm_cell_274/SigmoidSigmoid4sequential_121/lstm_364/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_121/lstm_364/lstm_cell_274/Sigmoid_1Sigmoid4sequential_121/lstm_364/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_121/lstm_364/lstm_cell_274/mulMul3sequential_121/lstm_364/lstm_cell_274/Sigmoid_1:y:0(sequential_121/lstm_364/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_121/lstm_364/lstm_cell_274/ReluRelu4sequential_121/lstm_364/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_121/lstm_364/lstm_cell_274/mul_1Mul1sequential_121/lstm_364/lstm_cell_274/Sigmoid:y:08sequential_121/lstm_364/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_121/lstm_364/lstm_cell_274/add_1AddV2-sequential_121/lstm_364/lstm_cell_274/mul:z:0/sequential_121/lstm_364/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_121/lstm_364/lstm_cell_274/Sigmoid_2Sigmoid4sequential_121/lstm_364/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_121/lstm_364/lstm_cell_274/Relu_1Relu/sequential_121/lstm_364/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_121/lstm_364/lstm_cell_274/mul_2Mul3sequential_121/lstm_364/lstm_cell_274/Sigmoid_2:y:0:sequential_121/lstm_364/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_121/lstm_364/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_121/lstm_364/TensorArrayV2_1TensorListReserve>sequential_121/lstm_364/TensorArrayV2_1/element_shape:output:00sequential_121/lstm_364/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_121/lstm_364/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_121/lstm_364/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_121/lstm_364/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_121/lstm_364/whileWhile3sequential_121/lstm_364/while/loop_counter:output:09sequential_121/lstm_364/while/maximum_iterations:output:0%sequential_121/lstm_364/time:output:00sequential_121/lstm_364/TensorArrayV2_1:handle:0&sequential_121/lstm_364/zeros:output:0(sequential_121/lstm_364/zeros_1:output:00sequential_121/lstm_364/strided_slice_1:output:0Osequential_121/lstm_364/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_121_lstm_364_lstm_cell_274_matmul_readvariableop_resourceFsequential_121_lstm_364_lstm_cell_274_matmul_1_readvariableop_resourceEsequential_121_lstm_364_lstm_cell_274_biasadd_readvariableop_resource*
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
*sequential_121_lstm_364_while_body_1663142*6
cond.R,
*sequential_121_lstm_364_while_cond_1663141*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_121/lstm_364/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_121/lstm_364/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_121/lstm_364/while:output:3Qsequential_121/lstm_364/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_121/lstm_364/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_121/lstm_364/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_364/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_364/strided_slice_3StridedSliceCsequential_121/lstm_364/TensorArrayV2Stack/TensorListStack:tensor:06sequential_121/lstm_364/strided_slice_3/stack:output:08sequential_121/lstm_364/strided_slice_3/stack_1:output:08sequential_121/lstm_364/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_121/lstm_364/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_121/lstm_364/transpose_1	TransposeCsequential_121/lstm_364/TensorArrayV2Stack/TensorListStack:tensor:01sequential_121/lstm_364/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_121/lstm_364/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_121/lstm_365/ShapeShape'sequential_121/lstm_364/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_121/lstm_365/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_121/lstm_365/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_121/lstm_365/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_121/lstm_365/strided_sliceStridedSlice&sequential_121/lstm_365/Shape:output:04sequential_121/lstm_365/strided_slice/stack:output:06sequential_121/lstm_365/strided_slice/stack_1:output:06sequential_121/lstm_365/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_121/lstm_365/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_121/lstm_365/zeros/packedPack.sequential_121/lstm_365/strided_slice:output:0/sequential_121/lstm_365/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_121/lstm_365/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_121/lstm_365/zerosFill-sequential_121/lstm_365/zeros/packed:output:0,sequential_121/lstm_365/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_121/lstm_365/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_121/lstm_365/zeros_1/packedPack.sequential_121/lstm_365/strided_slice:output:01sequential_121/lstm_365/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_121/lstm_365/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_121/lstm_365/zeros_1Fill/sequential_121/lstm_365/zeros_1/packed:output:0.sequential_121/lstm_365/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_121/lstm_365/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_121/lstm_365/transpose	Transpose'sequential_121/lstm_364/transpose_1:y:0/sequential_121/lstm_365/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_121/lstm_365/Shape_1Shape%sequential_121/lstm_365/transpose:y:0*
T0*
_output_shapes
:w
-sequential_121/lstm_365/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_365/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_121/lstm_365/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_365/strided_slice_1StridedSlice(sequential_121/lstm_365/Shape_1:output:06sequential_121/lstm_365/strided_slice_1/stack:output:08sequential_121/lstm_365/strided_slice_1/stack_1:output:08sequential_121/lstm_365/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_121/lstm_365/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_121/lstm_365/TensorArrayV2TensorListReserve<sequential_121/lstm_365/TensorArrayV2/element_shape:output:00sequential_121/lstm_365/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_121/lstm_365/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_121/lstm_365/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_121/lstm_365/transpose:y:0Vsequential_121/lstm_365/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_121/lstm_365/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_365/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_121/lstm_365/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_365/strided_slice_2StridedSlice%sequential_121/lstm_365/transpose:y:06sequential_121/lstm_365/strided_slice_2/stack:output:08sequential_121/lstm_365/strided_slice_2/stack_1:output:08sequential_121/lstm_365/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_121/lstm_365/lstm_cell_275/MatMul/ReadVariableOpReadVariableOpDsequential_121_lstm_365_lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_121/lstm_365/lstm_cell_275/MatMulMatMul0sequential_121/lstm_365/strided_slice_2:output:0Csequential_121/lstm_365/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_121/lstm_365/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOpFsequential_121_lstm_365_lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_121/lstm_365/lstm_cell_275/MatMul_1MatMul&sequential_121/lstm_365/zeros:output:0Esequential_121/lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_121/lstm_365/lstm_cell_275/addAddV26sequential_121/lstm_365/lstm_cell_275/MatMul:product:08sequential_121/lstm_365/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_121/lstm_365/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOpEsequential_121_lstm_365_lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_121/lstm_365/lstm_cell_275/BiasAddBiasAdd-sequential_121/lstm_365/lstm_cell_275/add:z:0Dsequential_121/lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_121/lstm_365/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_121/lstm_365/lstm_cell_275/splitSplit>sequential_121/lstm_365/lstm_cell_275/split/split_dim:output:06sequential_121/lstm_365/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_121/lstm_365/lstm_cell_275/SigmoidSigmoid4sequential_121/lstm_365/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_121/lstm_365/lstm_cell_275/Sigmoid_1Sigmoid4sequential_121/lstm_365/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_121/lstm_365/lstm_cell_275/mulMul3sequential_121/lstm_365/lstm_cell_275/Sigmoid_1:y:0(sequential_121/lstm_365/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_121/lstm_365/lstm_cell_275/ReluRelu4sequential_121/lstm_365/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_121/lstm_365/lstm_cell_275/mul_1Mul1sequential_121/lstm_365/lstm_cell_275/Sigmoid:y:08sequential_121/lstm_365/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_121/lstm_365/lstm_cell_275/add_1AddV2-sequential_121/lstm_365/lstm_cell_275/mul:z:0/sequential_121/lstm_365/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_121/lstm_365/lstm_cell_275/Sigmoid_2Sigmoid4sequential_121/lstm_365/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_121/lstm_365/lstm_cell_275/Relu_1Relu/sequential_121/lstm_365/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_121/lstm_365/lstm_cell_275/mul_2Mul3sequential_121/lstm_365/lstm_cell_275/Sigmoid_2:y:0:sequential_121/lstm_365/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_121/lstm_365/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_121/lstm_365/TensorArrayV2_1TensorListReserve>sequential_121/lstm_365/TensorArrayV2_1/element_shape:output:00sequential_121/lstm_365/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_121/lstm_365/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_121/lstm_365/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_121/lstm_365/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_121/lstm_365/whileWhile3sequential_121/lstm_365/while/loop_counter:output:09sequential_121/lstm_365/while/maximum_iterations:output:0%sequential_121/lstm_365/time:output:00sequential_121/lstm_365/TensorArrayV2_1:handle:0&sequential_121/lstm_365/zeros:output:0(sequential_121/lstm_365/zeros_1:output:00sequential_121/lstm_365/strided_slice_1:output:0Osequential_121/lstm_365/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_121_lstm_365_lstm_cell_275_matmul_readvariableop_resourceFsequential_121_lstm_365_lstm_cell_275_matmul_1_readvariableop_resourceEsequential_121_lstm_365_lstm_cell_275_biasadd_readvariableop_resource*
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
*sequential_121_lstm_365_while_body_1663281*6
cond.R,
*sequential_121_lstm_365_while_cond_1663280*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_121/lstm_365/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_121/lstm_365/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_121/lstm_365/while:output:3Qsequential_121/lstm_365/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_121/lstm_365/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_121/lstm_365/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_121/lstm_365/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_121/lstm_365/strided_slice_3StridedSliceCsequential_121/lstm_365/TensorArrayV2Stack/TensorListStack:tensor:06sequential_121/lstm_365/strided_slice_3/stack:output:08sequential_121/lstm_365/strided_slice_3/stack_1:output:08sequential_121/lstm_365/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_121/lstm_365/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_121/lstm_365/transpose_1	TransposeCsequential_121/lstm_365/TensorArrayV2Stack/TensorListStack:tensor:01sequential_121/lstm_365/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_121/lstm_365/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_121/dense_121/MatMul/ReadVariableOpReadVariableOp7sequential_121_dense_121_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_121/dense_121/MatMulMatMul0sequential_121/lstm_365/strided_slice_3:output:06sequential_121/dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_121/dense_121/BiasAdd/ReadVariableOpReadVariableOp8sequential_121_dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_121/dense_121/BiasAddBiasAdd)sequential_121/dense_121/MatMul:product:07sequential_121/dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_121/dense_121/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_121/dense_121/BiasAdd/ReadVariableOp/^sequential_121/dense_121/MatMul/ReadVariableOp=^sequential_121/lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp<^sequential_121/lstm_363/lstm_cell_273/MatMul/ReadVariableOp>^sequential_121/lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp^sequential_121/lstm_363/while=^sequential_121/lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp<^sequential_121/lstm_364/lstm_cell_274/MatMul/ReadVariableOp>^sequential_121/lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp^sequential_121/lstm_364/while=^sequential_121/lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp<^sequential_121/lstm_365/lstm_cell_275/MatMul/ReadVariableOp>^sequential_121/lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp^sequential_121/lstm_365/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_121/dense_121/BiasAdd/ReadVariableOp/sequential_121/dense_121/BiasAdd/ReadVariableOp2`
.sequential_121/dense_121/MatMul/ReadVariableOp.sequential_121/dense_121/MatMul/ReadVariableOp2|
<sequential_121/lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp<sequential_121/lstm_363/lstm_cell_273/BiasAdd/ReadVariableOp2z
;sequential_121/lstm_363/lstm_cell_273/MatMul/ReadVariableOp;sequential_121/lstm_363/lstm_cell_273/MatMul/ReadVariableOp2~
=sequential_121/lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp=sequential_121/lstm_363/lstm_cell_273/MatMul_1/ReadVariableOp2>
sequential_121/lstm_363/whilesequential_121/lstm_363/while2|
<sequential_121/lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp<sequential_121/lstm_364/lstm_cell_274/BiasAdd/ReadVariableOp2z
;sequential_121/lstm_364/lstm_cell_274/MatMul/ReadVariableOp;sequential_121/lstm_364/lstm_cell_274/MatMul/ReadVariableOp2~
=sequential_121/lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp=sequential_121/lstm_364/lstm_cell_274/MatMul_1/ReadVariableOp2>
sequential_121/lstm_364/whilesequential_121/lstm_364/while2|
<sequential_121/lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp<sequential_121/lstm_365/lstm_cell_275/BiasAdd/ReadVariableOp2z
;sequential_121/lstm_365/lstm_cell_275/MatMul/ReadVariableOp;sequential_121/lstm_365/lstm_cell_275/MatMul/ReadVariableOp2~
=sequential_121/lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp=sequential_121/lstm_365/lstm_cell_275/MatMul_1/ReadVariableOp2>
sequential_121/lstm_365/whilesequential_121/lstm_365/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_363_input
?8
?
while_body_1668303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_275_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_275_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_275_matmul_readvariableop_resource:2(F
4while_lstm_cell_275_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_275_biasadd_readvariableop_resource:(??*while/lstm_cell_275/BiasAdd/ReadVariableOp?)while/lstm_cell_275/MatMul/ReadVariableOp?+while/lstm_cell_275/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_275/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_275/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_275/addAddV2$while/lstm_cell_275/MatMul:product:0&while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_275/BiasAddBiasAddwhile/lstm_cell_275/add:z:02while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_275/splitSplit,while/lstm_cell_275/split/split_dim:output:0$while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_275/SigmoidSigmoid"while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_1Sigmoid"while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mulMul!while/lstm_cell_275/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_275/ReluRelu"while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_1Mulwhile/lstm_cell_275/Sigmoid:y:0&while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/add_1AddV2while/lstm_cell_275/mul:z:0while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_2Sigmoid"while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_275/Relu_1Reluwhile/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_2Mul!while/lstm_cell_275/Sigmoid_2:y:0(while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_275/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_275/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_275/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_275/BiasAdd/ReadVariableOp*^while/lstm_cell_275/MatMul/ReadVariableOp,^while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_275_biasadd_readvariableop_resource5while_lstm_cell_275_biasadd_readvariableop_resource_0"n
4while_lstm_cell_275_matmul_1_readvariableop_resource6while_lstm_cell_275_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_275_matmul_readvariableop_resource4while_lstm_cell_275_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_275/BiasAdd/ReadVariableOp*while/lstm_cell_275/BiasAdd/ReadVariableOp2V
)while/lstm_cell_275/MatMul/ReadVariableOp)while/lstm_cell_275/MatMul/ReadVariableOp2Z
+while/lstm_cell_275/MatMul_1/ReadVariableOp+while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1664062

inputs(
lstm_cell_274_1663980:	d?(
lstm_cell_274_1663982:	2?$
lstm_cell_274_1663984:	?
identity??%lstm_cell_274/StatefulPartitionedCall?while;
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
%lstm_cell_274/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_274_1663980lstm_cell_274_1663982lstm_cell_274_1663984*
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663934n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_274_1663980lstm_cell_274_1663982lstm_cell_274_1663984*
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
while_body_1663993*
condR
while_cond_1663992*K
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
NoOpNoOp&^lstm_cell_274/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_274/StatefulPartitionedCall%lstm_cell_274/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_364_layer_call_and_return_conditional_losses_1663871

inputs(
lstm_cell_274_1663789:	d?(
lstm_cell_274_1663791:	2?$
lstm_cell_274_1663793:	?
identity??%lstm_cell_274/StatefulPartitionedCall?while;
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
%lstm_cell_274/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_274_1663789lstm_cell_274_1663791lstm_cell_274_1663793*
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663788n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_274_1663789lstm_cell_274_1663791lstm_cell_274_1663793*
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
while_body_1663802*
condR
while_cond_1663801*K
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
NoOpNoOp&^lstm_cell_274/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_274/StatefulPartitionedCall%lstm_cell_274/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1667070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1667070___redundant_placeholder05
1while_while_cond_1667070___redundant_placeholder15
1while_while_cond_1667070___redundant_placeholder25
1while_while_cond_1667070___redundant_placeholder3
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
while_cond_1665331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1665331___redundant_placeholder05
1while_while_cond_1665331___redundant_placeholder15
1while_while_cond_1665331___redundant_placeholder25
1while_while_cond_1665331___redundant_placeholder3
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
while_cond_1665001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1665001___redundant_placeholder05
1while_while_cond_1665001___redundant_placeholder15
1while_while_cond_1665001___redundant_placeholder25
1while_while_cond_1665001___redundant_placeholder3
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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665596
lstm_363_input#
lstm_363_1665569:	?#
lstm_363_1665571:	d?
lstm_363_1665573:	?#
lstm_364_1665576:	d?#
lstm_364_1665578:	2?
lstm_364_1665580:	?"
lstm_365_1665583:2("
lstm_365_1665585:
(
lstm_365_1665587:(#
dense_121_1665590:

dense_121_1665592:
identity??!dense_121/StatefulPartitionedCall? lstm_363/StatefulPartitionedCall? lstm_364/StatefulPartitionedCall? lstm_365/StatefulPartitionedCall?
 lstm_363/StatefulPartitionedCallStatefulPartitionedCalllstm_363_inputlstm_363_1665569lstm_363_1665571lstm_363_1665573*
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1665416?
 lstm_364/StatefulPartitionedCallStatefulPartitionedCall)lstm_363/StatefulPartitionedCall:output:0lstm_364_1665576lstm_364_1665578lstm_364_1665580*
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1665251?
 lstm_365/StatefulPartitionedCallStatefulPartitionedCall)lstm_364/StatefulPartitionedCall:output:0lstm_365_1665583lstm_365_1665585lstm_365_1665587*
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1665086?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_365/StatefulPartitionedCall:output:0dense_121_1665590dense_121_1665592*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_1664888y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_121/StatefulPartitionedCall!^lstm_363/StatefulPartitionedCall!^lstm_364/StatefulPartitionedCall!^lstm_365/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 lstm_363/StatefulPartitionedCall lstm_363/StatefulPartitionedCall2D
 lstm_364/StatefulPartitionedCall lstm_364/StatefulPartitionedCall2D
 lstm_365/StatefulPartitionedCall lstm_365/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_363_input
?
?
while_cond_1666641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1666641___redundant_placeholder05
1while_while_cond_1666641___redundant_placeholder15
1while_while_cond_1666641___redundant_placeholder25
1while_while_cond_1666641___redundant_placeholder3
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1664720

inputs?
,lstm_cell_274_matmul_readvariableop_resource:	d?A
.lstm_cell_274_matmul_1_readvariableop_resource:	2?<
-lstm_cell_274_biasadd_readvariableop_resource:	?
identity??$lstm_cell_274/BiasAdd/ReadVariableOp?#lstm_cell_274/MatMul/ReadVariableOp?%lstm_cell_274/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_274/MatMul/ReadVariableOpReadVariableOp,lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_274/MatMulMatMulstrided_slice_2:output:0+lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_274/MatMul_1MatMulzeros:output:0-lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_274/addAddV2lstm_cell_274/MatMul:product:0 lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_274/BiasAddBiasAddlstm_cell_274/add:z:0,lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_274/splitSplit&lstm_cell_274/split/split_dim:output:0lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_274/SigmoidSigmoidlstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_1Sigmoidlstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_274/mulMullstm_cell_274/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_274/ReluRelulstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_1Mullstm_cell_274/Sigmoid:y:0 lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_274/add_1AddV2lstm_cell_274/mul:z:0lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_2Sigmoidlstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_274/Relu_1Relulstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_2Mullstm_cell_274/Sigmoid_2:y:0"lstm_cell_274/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_274_matmul_readvariableop_resource.lstm_cell_274_matmul_1_readvariableop_resource-lstm_cell_274_biasadd_readvariableop_resource*
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
while_body_1664636*
condR
while_cond_1664635*K
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
NoOpNoOp%^lstm_cell_274/BiasAdd/ReadVariableOp$^lstm_cell_274/MatMul/ReadVariableOp&^lstm_cell_274/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_274/BiasAdd/ReadVariableOp$lstm_cell_274/BiasAdd/ReadVariableOp2J
#lstm_cell_274/MatMul/ReadVariableOp#lstm_cell_274/MatMul/ReadVariableOp2N
%lstm_cell_274/MatMul_1/ReadVariableOp%lstm_cell_274/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_121_lstm_365_while_cond_1663280L
Hsequential_121_lstm_365_while_sequential_121_lstm_365_while_loop_counterR
Nsequential_121_lstm_365_while_sequential_121_lstm_365_while_maximum_iterations-
)sequential_121_lstm_365_while_placeholder/
+sequential_121_lstm_365_while_placeholder_1/
+sequential_121_lstm_365_while_placeholder_2/
+sequential_121_lstm_365_while_placeholder_3N
Jsequential_121_lstm_365_while_less_sequential_121_lstm_365_strided_slice_1e
asequential_121_lstm_365_while_sequential_121_lstm_365_while_cond_1663280___redundant_placeholder0e
asequential_121_lstm_365_while_sequential_121_lstm_365_while_cond_1663280___redundant_placeholder1e
asequential_121_lstm_365_while_sequential_121_lstm_365_while_cond_1663280___redundant_placeholder2e
asequential_121_lstm_365_while_sequential_121_lstm_365_while_cond_1663280___redundant_placeholder3*
&sequential_121_lstm_365_while_identity
?
"sequential_121/lstm_365/while/LessLess)sequential_121_lstm_365_while_placeholderJsequential_121_lstm_365_while_less_sequential_121_lstm_365_strided_slice_1*
T0*
_output_shapes
: {
&sequential_121/lstm_365/while/IdentityIdentity&sequential_121/lstm_365/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_121_lstm_365_while_identity/sequential_121/lstm_365/while/Identity:output:0*(
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
while_body_1665332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_273_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_273_matmul_readvariableop_resource:	?G
4while_lstm_cell_273_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_273_biasadd_readvariableop_resource:	???*while/lstm_cell_273/BiasAdd/ReadVariableOp?)while/lstm_cell_273/MatMul/ReadVariableOp?+while/lstm_cell_273/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_273/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_273/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_273/addAddV2$while/lstm_cell_273/MatMul:product:0&while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_273/BiasAddBiasAddwhile/lstm_cell_273/add:z:02while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_273/splitSplit,while/lstm_cell_273/split/split_dim:output:0$while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_273/SigmoidSigmoid"while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_1Sigmoid"while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mulMul!while/lstm_cell_273/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_273/ReluRelu"while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_1Mulwhile/lstm_cell_273/Sigmoid:y:0&while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/add_1AddV2while/lstm_cell_273/mul:z:0while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_2Sigmoid"while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_273/Relu_1Reluwhile/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_2Mul!while/lstm_cell_273/Sigmoid_2:y:0(while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_273/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_273/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_273/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_273/BiasAdd/ReadVariableOp*^while/lstm_cell_273/MatMul/ReadVariableOp,^while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_273_biasadd_readvariableop_resource5while_lstm_cell_273_biasadd_readvariableop_resource_0"n
4while_lstm_cell_273_matmul_1_readvariableop_resource6while_lstm_cell_273_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_273_matmul_readvariableop_resource4while_lstm_cell_273_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_273/BiasAdd/ReadVariableOp*while/lstm_cell_273/BiasAdd/ReadVariableOp2V
)while/lstm_cell_273/MatMul/ReadVariableOp)while/lstm_cell_273/MatMul/ReadVariableOp2Z
+while/lstm_cell_273/MatMul_1/ReadVariableOp+while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668101
inputs_0>
,lstm_cell_275_matmul_readvariableop_resource:2(@
.lstm_cell_275_matmul_1_readvariableop_resource:
(;
-lstm_cell_275_biasadd_readvariableop_resource:(
identity??$lstm_cell_275/BiasAdd/ReadVariableOp?#lstm_cell_275/MatMul/ReadVariableOp?%lstm_cell_275/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_275/MatMul/ReadVariableOpReadVariableOp,lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_275/MatMulMatMulstrided_slice_2:output:0+lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_275/MatMul_1MatMulzeros:output:0-lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_275/addAddV2lstm_cell_275/MatMul:product:0 lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_275/BiasAddBiasAddlstm_cell_275/add:z:0,lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_275/splitSplit&lstm_cell_275/split/split_dim:output:0lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_275/SigmoidSigmoidlstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_1Sigmoidlstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_275/mulMullstm_cell_275/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_275/ReluRelulstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_1Mullstm_cell_275/Sigmoid:y:0 lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_275/add_1AddV2lstm_cell_275/mul:z:0lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_2Sigmoidlstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_275/Relu_1Relulstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_2Mullstm_cell_275/Sigmoid_2:y:0"lstm_cell_275/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_275_matmul_readvariableop_resource.lstm_cell_275_matmul_1_readvariableop_resource-lstm_cell_275_biasadd_readvariableop_resource*
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
while_body_1668017*
condR
while_cond_1668016*K
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
NoOpNoOp%^lstm_cell_275/BiasAdd/ReadVariableOp$^lstm_cell_275/MatMul/ReadVariableOp&^lstm_cell_275/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_275/BiasAdd/ReadVariableOp$lstm_cell_275/BiasAdd/ReadVariableOp2J
#lstm_cell_275/MatMul/ReadVariableOp#lstm_cell_275/MatMul/ReadVariableOp2N
%lstm_cell_275/MatMul_1/ReadVariableOp%lstm_cell_275/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_363_while_body_1666171.
*lstm_363_while_lstm_363_while_loop_counter4
0lstm_363_while_lstm_363_while_maximum_iterations
lstm_363_while_placeholder 
lstm_363_while_placeholder_1 
lstm_363_while_placeholder_2 
lstm_363_while_placeholder_3-
)lstm_363_while_lstm_363_strided_slice_1_0i
elstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0:	?R
?lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?M
>lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
lstm_363_while_identity
lstm_363_while_identity_1
lstm_363_while_identity_2
lstm_363_while_identity_3
lstm_363_while_identity_4
lstm_363_while_identity_5+
'lstm_363_while_lstm_363_strided_slice_1g
clstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensorN
;lstm_363_while_lstm_cell_273_matmul_readvariableop_resource:	?P
=lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource:	d?K
<lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource:	???3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp?2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp?4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp?
@lstm_363/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_363/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensor_0lstm_363_while_placeholderIlstm_363/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp=lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_363/while/lstm_cell_273/MatMulMatMul9lstm_363/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp?lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_363/while/lstm_cell_273/MatMul_1MatMullstm_363_while_placeholder_2<lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_363/while/lstm_cell_273/addAddV2-lstm_363/while/lstm_cell_273/MatMul:product:0/lstm_363/while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp>lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_363/while/lstm_cell_273/BiasAddBiasAdd$lstm_363/while/lstm_cell_273/add:z:0;lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_363/while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_363/while/lstm_cell_273/splitSplit5lstm_363/while/lstm_cell_273/split/split_dim:output:0-lstm_363/while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_363/while/lstm_cell_273/SigmoidSigmoid+lstm_363/while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_363/while/lstm_cell_273/Sigmoid_1Sigmoid+lstm_363/while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_363/while/lstm_cell_273/mulMul*lstm_363/while/lstm_cell_273/Sigmoid_1:y:0lstm_363_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_363/while/lstm_cell_273/ReluRelu+lstm_363/while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_363/while/lstm_cell_273/mul_1Mul(lstm_363/while/lstm_cell_273/Sigmoid:y:0/lstm_363/while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_363/while/lstm_cell_273/add_1AddV2$lstm_363/while/lstm_cell_273/mul:z:0&lstm_363/while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_363/while/lstm_cell_273/Sigmoid_2Sigmoid+lstm_363/while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_363/while/lstm_cell_273/Relu_1Relu&lstm_363/while/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_363/while/lstm_cell_273/mul_2Mul*lstm_363/while/lstm_cell_273/Sigmoid_2:y:01lstm_363/while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_363/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_363_while_placeholder_1lstm_363_while_placeholder&lstm_363/while/lstm_cell_273/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_363/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_363/while/addAddV2lstm_363_while_placeholderlstm_363/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_363/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_363/while/add_1AddV2*lstm_363_while_lstm_363_while_loop_counterlstm_363/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_363/while/IdentityIdentitylstm_363/while/add_1:z:0^lstm_363/while/NoOp*
T0*
_output_shapes
: ?
lstm_363/while/Identity_1Identity0lstm_363_while_lstm_363_while_maximum_iterations^lstm_363/while/NoOp*
T0*
_output_shapes
: t
lstm_363/while/Identity_2Identitylstm_363/while/add:z:0^lstm_363/while/NoOp*
T0*
_output_shapes
: ?
lstm_363/while/Identity_3IdentityClstm_363/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_363/while/NoOp*
T0*
_output_shapes
: ?
lstm_363/while/Identity_4Identity&lstm_363/while/lstm_cell_273/mul_2:z:0^lstm_363/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_363/while/Identity_5Identity&lstm_363/while/lstm_cell_273/add_1:z:0^lstm_363/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_363/while/NoOpNoOp4^lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp3^lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp5^lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_363_while_identity lstm_363/while/Identity:output:0"?
lstm_363_while_identity_1"lstm_363/while/Identity_1:output:0"?
lstm_363_while_identity_2"lstm_363/while/Identity_2:output:0"?
lstm_363_while_identity_3"lstm_363/while/Identity_3:output:0"?
lstm_363_while_identity_4"lstm_363/while/Identity_4:output:0"?
lstm_363_while_identity_5"lstm_363/while/Identity_5:output:0"T
'lstm_363_while_lstm_363_strided_slice_1)lstm_363_while_lstm_363_strided_slice_1_0"~
<lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource>lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0"?
=lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource?lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0"|
;lstm_363_while_lstm_cell_273_matmul_readvariableop_resource=lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0"?
clstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensorelstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp2h
2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp2l
4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_365_while_cond_1666448.
*lstm_365_while_lstm_365_while_loop_counter4
0lstm_365_while_lstm_365_while_maximum_iterations
lstm_365_while_placeholder 
lstm_365_while_placeholder_1 
lstm_365_while_placeholder_2 
lstm_365_while_placeholder_30
,lstm_365_while_less_lstm_365_strided_slice_1G
Clstm_365_while_lstm_365_while_cond_1666448___redundant_placeholder0G
Clstm_365_while_lstm_365_while_cond_1666448___redundant_placeholder1G
Clstm_365_while_lstm_365_while_cond_1666448___redundant_placeholder2G
Clstm_365_while_lstm_365_while_cond_1666448___redundant_placeholder3
lstm_365_while_identity
?
lstm_365/while/LessLesslstm_365_while_placeholder,lstm_365_while_less_lstm_365_strided_slice_1*
T0*
_output_shapes
: ]
lstm_365/while/IdentityIdentitylstm_365/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_365_while_identity lstm_365/while/Identity:output:0*(
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
*__inference_lstm_364_layer_call_fn_1667199

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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1665251s
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
??
?
#__inference__traced_restore_1668973
file_prefix3
!assignvariableop_dense_121_kernel:
/
!assignvariableop_1_dense_121_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_363_lstm_cell_363_kernel:	?M
:assignvariableop_8_lstm_363_lstm_cell_363_recurrent_kernel:	d?=
.assignvariableop_9_lstm_363_lstm_cell_363_bias:	?D
1assignvariableop_10_lstm_364_lstm_cell_364_kernel:	d?N
;assignvariableop_11_lstm_364_lstm_cell_364_recurrent_kernel:	2?>
/assignvariableop_12_lstm_364_lstm_cell_364_bias:	?C
1assignvariableop_13_lstm_365_lstm_cell_365_kernel:2(M
;assignvariableop_14_lstm_365_lstm_cell_365_recurrent_kernel:
(=
/assignvariableop_15_lstm_365_lstm_cell_365_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_121_kernel_m:
7
)assignvariableop_19_adam_dense_121_bias_m:K
8assignvariableop_20_adam_lstm_363_lstm_cell_363_kernel_m:	?U
Bassignvariableop_21_adam_lstm_363_lstm_cell_363_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_363_lstm_cell_363_bias_m:	?K
8assignvariableop_23_adam_lstm_364_lstm_cell_364_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_364_lstm_cell_364_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_364_lstm_cell_364_bias_m:	?J
8assignvariableop_26_adam_lstm_365_lstm_cell_365_kernel_m:2(T
Bassignvariableop_27_adam_lstm_365_lstm_cell_365_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_365_lstm_cell_365_bias_m:(=
+assignvariableop_29_adam_dense_121_kernel_v:
7
)assignvariableop_30_adam_dense_121_bias_v:K
8assignvariableop_31_adam_lstm_363_lstm_cell_363_kernel_v:	?U
Bassignvariableop_32_adam_lstm_363_lstm_cell_363_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_363_lstm_cell_363_bias_v:	?K
8assignvariableop_34_adam_lstm_364_lstm_cell_364_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_364_lstm_cell_364_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_364_lstm_cell_364_bias_v:	?J
8assignvariableop_37_adam_lstm_365_lstm_cell_365_kernel_v:2(T
Bassignvariableop_38_adam_lstm_365_lstm_cell_365_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_365_lstm_cell_365_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_121_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_121_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_363_lstm_cell_363_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_363_lstm_cell_363_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_363_lstm_cell_363_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_364_lstm_cell_364_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_364_lstm_cell_364_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_364_lstm_cell_364_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_365_lstm_cell_365_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_365_lstm_cell_365_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_365_lstm_cell_365_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_121_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_121_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_363_lstm_cell_363_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_363_lstm_cell_363_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_363_lstm_cell_363_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_364_lstm_cell_364_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_364_lstm_cell_364_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_364_lstm_cell_364_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_365_lstm_cell_365_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_365_lstm_cell_365_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_365_lstm_cell_365_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_121_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_121_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_363_lstm_cell_363_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_363_lstm_cell_363_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_363_lstm_cell_363_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_364_lstm_cell_364_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_364_lstm_cell_364_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_364_lstm_cell_364_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_365_lstm_cell_365_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_365_lstm_cell_365_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_365_lstm_cell_365_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
E__inference_lstm_363_layer_call_and_return_conditional_losses_1663712

inputs(
lstm_cell_273_1663630:	?(
lstm_cell_273_1663632:	d?$
lstm_cell_273_1663634:	?
identity??%lstm_cell_273/StatefulPartitionedCall?while;
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
%lstm_cell_273/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_273_1663630lstm_cell_273_1663632lstm_cell_273_1663634*
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663584n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_273_1663630lstm_cell_273_1663632lstm_cell_273_1663634*
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
while_body_1663643*
condR
while_cond_1663642*K
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
NoOpNoOp&^lstm_cell_273/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_273/StatefulPartitionedCall%lstm_cell_273/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_365_layer_call_fn_1667782
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664221o
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
?
/__inference_lstm_cell_275_layer_call_fn_1668636

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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664284o
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
lstm_364_while_cond_1666309.
*lstm_364_while_lstm_364_while_loop_counter4
0lstm_364_while_lstm_364_while_maximum_iterations
lstm_364_while_placeholder 
lstm_364_while_placeholder_1 
lstm_364_while_placeholder_2 
lstm_364_while_placeholder_30
,lstm_364_while_less_lstm_364_strided_slice_1G
Clstm_364_while_lstm_364_while_cond_1666309___redundant_placeholder0G
Clstm_364_while_lstm_364_while_cond_1666309___redundant_placeholder1G
Clstm_364_while_lstm_364_while_cond_1666309___redundant_placeholder2G
Clstm_364_while_lstm_364_while_cond_1666309___redundant_placeholder3
lstm_364_while_identity
?
lstm_364/while/LessLesslstm_364_while_placeholder,lstm_364_while_less_lstm_364_strided_slice_1*
T0*
_output_shapes
: ]
lstm_364/while/IdentityIdentitylstm_364/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_364_while_identity lstm_364/while/Identity:output:0*(
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1668602

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
*__inference_lstm_364_layer_call_fn_1667166
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1663871|
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
/__inference_lstm_cell_274_layer_call_fn_1668538

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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663934o
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
while_body_1663452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_273_1663476_0:	?0
while_lstm_cell_273_1663478_0:	d?,
while_lstm_cell_273_1663480_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_273_1663476:	?.
while_lstm_cell_273_1663478:	d?*
while_lstm_cell_273_1663480:	???+while/lstm_cell_273/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_273/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_273_1663476_0while_lstm_cell_273_1663478_0while_lstm_cell_273_1663480_0*
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663438?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_273/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_273/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_273/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_273/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_273_1663476while_lstm_cell_273_1663476_0"<
while_lstm_cell_273_1663478while_lstm_cell_273_1663478_0"<
while_lstm_cell_273_1663480while_lstm_cell_273_1663480_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_273/StatefulPartitionedCall+while/lstm_cell_273/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1665416

inputs?
,lstm_cell_273_matmul_readvariableop_resource:	?A
.lstm_cell_273_matmul_1_readvariableop_resource:	d?<
-lstm_cell_273_biasadd_readvariableop_resource:	?
identity??$lstm_cell_273/BiasAdd/ReadVariableOp?#lstm_cell_273/MatMul/ReadVariableOp?%lstm_cell_273/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_273/MatMul/ReadVariableOpReadVariableOp,lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_273/MatMulMatMulstrided_slice_2:output:0+lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_273/MatMul_1MatMulzeros:output:0-lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_273/addAddV2lstm_cell_273/MatMul:product:0 lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_273/BiasAddBiasAddlstm_cell_273/add:z:0,lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_273/splitSplit&lstm_cell_273/split/split_dim:output:0lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_273/SigmoidSigmoidlstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_1Sigmoidlstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_273/mulMullstm_cell_273/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_273/ReluRelulstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_1Mullstm_cell_273/Sigmoid:y:0 lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_273/add_1AddV2lstm_cell_273/mul:z:0lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_2Sigmoidlstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_273/Relu_1Relulstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_2Mullstm_cell_273/Sigmoid_2:y:0"lstm_cell_273/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_273_matmul_readvariableop_resource.lstm_cell_273_matmul_1_readvariableop_resource-lstm_cell_273_biasadd_readvariableop_resource*
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
while_body_1665332*
condR
while_cond_1665331*K
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
NoOpNoOp%^lstm_cell_273/BiasAdd/ReadVariableOp$^lstm_cell_273/MatMul/ReadVariableOp&^lstm_cell_273/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_273/BiasAdd/ReadVariableOp$lstm_cell_273/BiasAdd/ReadVariableOp2J
#lstm_cell_273/MatMul/ReadVariableOp#lstm_cell_273/MatMul/ReadVariableOp2N
%lstm_cell_273/MatMul_1/ReadVariableOp%lstm_cell_273/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663438

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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1664570

inputs?
,lstm_cell_273_matmul_readvariableop_resource:	?A
.lstm_cell_273_matmul_1_readvariableop_resource:	d?<
-lstm_cell_273_biasadd_readvariableop_resource:	?
identity??$lstm_cell_273/BiasAdd/ReadVariableOp?#lstm_cell_273/MatMul/ReadVariableOp?%lstm_cell_273/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_273/MatMul/ReadVariableOpReadVariableOp,lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_273/MatMulMatMulstrided_slice_2:output:0+lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_273/MatMul_1MatMulzeros:output:0-lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_273/addAddV2lstm_cell_273/MatMul:product:0 lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_273/BiasAddBiasAddlstm_cell_273/add:z:0,lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_273/splitSplit&lstm_cell_273/split/split_dim:output:0lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_273/SigmoidSigmoidlstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_1Sigmoidlstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_273/mulMullstm_cell_273/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_273/ReluRelulstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_1Mullstm_cell_273/Sigmoid:y:0 lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_273/add_1AddV2lstm_cell_273/mul:z:0lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_2Sigmoidlstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_273/Relu_1Relulstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_2Mullstm_cell_273/Sigmoid_2:y:0"lstm_cell_273/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_273_matmul_readvariableop_resource.lstm_cell_273_matmul_1_readvariableop_resource-lstm_cell_273_biasadd_readvariableop_resource*
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
while_body_1664486*
condR
while_cond_1664485*K
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
NoOpNoOp%^lstm_cell_273/BiasAdd/ReadVariableOp$^lstm_cell_273/MatMul/ReadVariableOp&^lstm_cell_273/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_273/BiasAdd/ReadVariableOp$lstm_cell_273/BiasAdd/ReadVariableOp2J
#lstm_cell_273/MatMul/ReadVariableOp#lstm_cell_273/MatMul/ReadVariableOp2N
%lstm_cell_273/MatMul_1/ReadVariableOp%lstm_cell_273/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1663451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1663451___redundant_placeholder05
1while_while_cond_1663451___redundant_placeholder15
1while_while_cond_1663451___redundant_placeholder25
1while_while_cond_1663451___redundant_placeholder3
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663788

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
*__inference_lstm_363_layer_call_fn_1666583

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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1665416s
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
?
?
*__inference_lstm_365_layer_call_fn_1667804

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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664870o
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
?J
?
E__inference_lstm_365_layer_call_and_return_conditional_losses_1665086

inputs>
,lstm_cell_275_matmul_readvariableop_resource:2(@
.lstm_cell_275_matmul_1_readvariableop_resource:
(;
-lstm_cell_275_biasadd_readvariableop_resource:(
identity??$lstm_cell_275/BiasAdd/ReadVariableOp?#lstm_cell_275/MatMul/ReadVariableOp?%lstm_cell_275/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_275/MatMul/ReadVariableOpReadVariableOp,lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_275/MatMulMatMulstrided_slice_2:output:0+lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_275/MatMul_1MatMulzeros:output:0-lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_275/addAddV2lstm_cell_275/MatMul:product:0 lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_275/BiasAddBiasAddlstm_cell_275/add:z:0,lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_275/splitSplit&lstm_cell_275/split/split_dim:output:0lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_275/SigmoidSigmoidlstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_1Sigmoidlstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_275/mulMullstm_cell_275/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_275/ReluRelulstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_1Mullstm_cell_275/Sigmoid:y:0 lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_275/add_1AddV2lstm_cell_275/mul:z:0lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_2Sigmoidlstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_275/Relu_1Relulstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_2Mullstm_cell_275/Sigmoid_2:y:0"lstm_cell_275/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_275_matmul_readvariableop_resource.lstm_cell_275_matmul_1_readvariableop_resource-lstm_cell_275_biasadd_readvariableop_resource*
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
while_body_1665002*
condR
while_cond_1665001*K
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
NoOpNoOp%^lstm_cell_275/BiasAdd/ReadVariableOp$^lstm_cell_275/MatMul/ReadVariableOp&^lstm_cell_275/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_275/BiasAdd/ReadVariableOp$lstm_cell_275/BiasAdd/ReadVariableOp2J
#lstm_cell_275/MatMul/ReadVariableOp#lstm_cell_275/MatMul/ReadVariableOp2N
%lstm_cell_275/MatMul_1/ReadVariableOp%lstm_cell_275/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_121_layer_call_and_return_conditional_losses_1664888

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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1667012

inputs?
,lstm_cell_273_matmul_readvariableop_resource:	?A
.lstm_cell_273_matmul_1_readvariableop_resource:	d?<
-lstm_cell_273_biasadd_readvariableop_resource:	?
identity??$lstm_cell_273/BiasAdd/ReadVariableOp?#lstm_cell_273/MatMul/ReadVariableOp?%lstm_cell_273/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_273/MatMul/ReadVariableOpReadVariableOp,lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_273/MatMulMatMulstrided_slice_2:output:0+lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_273/MatMul_1MatMulzeros:output:0-lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_273/addAddV2lstm_cell_273/MatMul:product:0 lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_273/BiasAddBiasAddlstm_cell_273/add:z:0,lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_273/splitSplit&lstm_cell_273/split/split_dim:output:0lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_273/SigmoidSigmoidlstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_1Sigmoidlstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_273/mulMullstm_cell_273/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_273/ReluRelulstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_1Mullstm_cell_273/Sigmoid:y:0 lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_273/add_1AddV2lstm_cell_273/mul:z:0lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_2Sigmoidlstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_273/Relu_1Relulstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_2Mullstm_cell_273/Sigmoid_2:y:0"lstm_cell_273/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_273_matmul_readvariableop_resource.lstm_cell_273_matmul_1_readvariableop_resource-lstm_cell_273_biasadd_readvariableop_resource*
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
while_body_1666928*
condR
while_cond_1666927*K
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
NoOpNoOp%^lstm_cell_273/BiasAdd/ReadVariableOp$^lstm_cell_273/MatMul/ReadVariableOp&^lstm_cell_273/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_273/BiasAdd/ReadVariableOp$lstm_cell_273/BiasAdd/ReadVariableOp2J
#lstm_cell_273/MatMul/ReadVariableOp#lstm_cell_273/MatMul/ReadVariableOp2N
%lstm_cell_273/MatMul_1/ReadVariableOp%lstm_cell_273/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667628

inputs?
,lstm_cell_274_matmul_readvariableop_resource:	d?A
.lstm_cell_274_matmul_1_readvariableop_resource:	2?<
-lstm_cell_274_biasadd_readvariableop_resource:	?
identity??$lstm_cell_274/BiasAdd/ReadVariableOp?#lstm_cell_274/MatMul/ReadVariableOp?%lstm_cell_274/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_274/MatMul/ReadVariableOpReadVariableOp,lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_274/MatMulMatMulstrided_slice_2:output:0+lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_274/MatMul_1MatMulzeros:output:0-lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_274/addAddV2lstm_cell_274/MatMul:product:0 lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_274/BiasAddBiasAddlstm_cell_274/add:z:0,lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_274/splitSplit&lstm_cell_274/split/split_dim:output:0lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_274/SigmoidSigmoidlstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_1Sigmoidlstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_274/mulMullstm_cell_274/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_274/ReluRelulstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_1Mullstm_cell_274/Sigmoid:y:0 lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_274/add_1AddV2lstm_cell_274/mul:z:0lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_2Sigmoidlstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_274/Relu_1Relulstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_2Mullstm_cell_274/Sigmoid_2:y:0"lstm_cell_274/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_274_matmul_readvariableop_resource.lstm_cell_274_matmul_1_readvariableop_resource-lstm_cell_274_biasadd_readvariableop_resource*
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
while_body_1667544*
condR
while_cond_1667543*K
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
NoOpNoOp%^lstm_cell_274/BiasAdd/ReadVariableOp$^lstm_cell_274/MatMul/ReadVariableOp&^lstm_cell_274/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_274/BiasAdd/ReadVariableOp$lstm_cell_274/BiasAdd/ReadVariableOp2J
#lstm_cell_274/MatMul/ReadVariableOp#lstm_cell_274/MatMul/ReadVariableOp2N
%lstm_cell_274/MatMul_1/ReadVariableOp%lstm_cell_274/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667485
inputs_0?
,lstm_cell_274_matmul_readvariableop_resource:	d?A
.lstm_cell_274_matmul_1_readvariableop_resource:	2?<
-lstm_cell_274_biasadd_readvariableop_resource:	?
identity??$lstm_cell_274/BiasAdd/ReadVariableOp?#lstm_cell_274/MatMul/ReadVariableOp?%lstm_cell_274/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_274/MatMul/ReadVariableOpReadVariableOp,lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_274/MatMulMatMulstrided_slice_2:output:0+lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_274/MatMul_1MatMulzeros:output:0-lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_274/addAddV2lstm_cell_274/MatMul:product:0 lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_274/BiasAddBiasAddlstm_cell_274/add:z:0,lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_274/splitSplit&lstm_cell_274/split/split_dim:output:0lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_274/SigmoidSigmoidlstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_1Sigmoidlstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_274/mulMullstm_cell_274/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_274/ReluRelulstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_1Mullstm_cell_274/Sigmoid:y:0 lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_274/add_1AddV2lstm_cell_274/mul:z:0lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_2Sigmoidlstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_274/Relu_1Relulstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_2Mullstm_cell_274/Sigmoid_2:y:0"lstm_cell_274/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_274_matmul_readvariableop_resource.lstm_cell_274_matmul_1_readvariableop_resource-lstm_cell_274_biasadd_readvariableop_resource*
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
while_body_1667401*
condR
while_cond_1667400*K
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
NoOpNoOp%^lstm_cell_274/BiasAdd/ReadVariableOp$^lstm_cell_274/MatMul/ReadVariableOp&^lstm_cell_274/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_274/BiasAdd/ReadVariableOp$lstm_cell_274/BiasAdd/ReadVariableOp2J
#lstm_cell_274/MatMul/ReadVariableOp#lstm_cell_274/MatMul/ReadVariableOp2N
%lstm_cell_274/MatMul_1/ReadVariableOp%lstm_cell_274/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1668159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1668159___redundant_placeholder05
1while_while_cond_1668159___redundant_placeholder15
1while_while_cond_1668159___redundant_placeholder25
1while_while_cond_1668159___redundant_placeholder3
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
while_body_1665167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_274_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_274_matmul_readvariableop_resource:	d?G
4while_lstm_cell_274_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_274_biasadd_readvariableop_resource:	???*while/lstm_cell_274/BiasAdd/ReadVariableOp?)while/lstm_cell_274/MatMul/ReadVariableOp?+while/lstm_cell_274/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_274/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_274/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_274/addAddV2$while/lstm_cell_274/MatMul:product:0&while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_274/BiasAddBiasAddwhile/lstm_cell_274/add:z:02while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_274/splitSplit,while/lstm_cell_274/split/split_dim:output:0$while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_274/SigmoidSigmoid"while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_1Sigmoid"while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mulMul!while/lstm_cell_274/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_274/ReluRelu"while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_1Mulwhile/lstm_cell_274/Sigmoid:y:0&while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/add_1AddV2while/lstm_cell_274/mul:z:0while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_2Sigmoid"while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_274/Relu_1Reluwhile/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_2Mul!while/lstm_cell_274/Sigmoid_2:y:0(while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_274/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_274/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_274/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_274/BiasAdd/ReadVariableOp*^while/lstm_cell_274/MatMul/ReadVariableOp,^while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_274_biasadd_readvariableop_resource5while_lstm_cell_274_biasadd_readvariableop_resource_0"n
4while_lstm_cell_274_matmul_1_readvariableop_resource6while_lstm_cell_274_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_274_matmul_readvariableop_resource4while_lstm_cell_274_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_274/BiasAdd/ReadVariableOp*while/lstm_cell_274/BiasAdd/ReadVariableOp2V
)while/lstm_cell_274/MatMul/ReadVariableOp)while/lstm_cell_274/MatMul/ReadVariableOp2Z
+while/lstm_cell_274/MatMul_1/ReadVariableOp+while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_363_while_cond_1665743.
*lstm_363_while_lstm_363_while_loop_counter4
0lstm_363_while_lstm_363_while_maximum_iterations
lstm_363_while_placeholder 
lstm_363_while_placeholder_1 
lstm_363_while_placeholder_2 
lstm_363_while_placeholder_30
,lstm_363_while_less_lstm_363_strided_slice_1G
Clstm_363_while_lstm_363_while_cond_1665743___redundant_placeholder0G
Clstm_363_while_lstm_363_while_cond_1665743___redundant_placeholder1G
Clstm_363_while_lstm_363_while_cond_1665743___redundant_placeholder2G
Clstm_363_while_lstm_363_while_cond_1665743___redundant_placeholder3
lstm_363_while_identity
?
lstm_363/while/LessLesslstm_363_while_placeholder,lstm_363_while_less_lstm_363_strided_slice_1*
T0*
_output_shapes
: ]
lstm_363/while/IdentityIdentitylstm_363/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_363_while_identity lstm_363/while/Identity:output:0*(
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

lstm_365_while_body_1666449.
*lstm_365_while_lstm_365_while_loop_counter4
0lstm_365_while_lstm_365_while_maximum_iterations
lstm_365_while_placeholder 
lstm_365_while_placeholder_1 
lstm_365_while_placeholder_2 
lstm_365_while_placeholder_3-
)lstm_365_while_lstm_365_strided_slice_1_0i
elstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0:2(Q
?lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(L
>lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0:(
lstm_365_while_identity
lstm_365_while_identity_1
lstm_365_while_identity_2
lstm_365_while_identity_3
lstm_365_while_identity_4
lstm_365_while_identity_5+
'lstm_365_while_lstm_365_strided_slice_1g
clstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensorM
;lstm_365_while_lstm_cell_275_matmul_readvariableop_resource:2(O
=lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource:
(J
<lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource:(??3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp?2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp?4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp?
@lstm_365/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_365/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensor_0lstm_365_while_placeholderIlstm_365/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp=lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_365/while/lstm_cell_275/MatMulMatMul9lstm_365/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp?lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_365/while/lstm_cell_275/MatMul_1MatMullstm_365_while_placeholder_2<lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_365/while/lstm_cell_275/addAddV2-lstm_365/while/lstm_cell_275/MatMul:product:0/lstm_365/while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp>lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_365/while/lstm_cell_275/BiasAddBiasAdd$lstm_365/while/lstm_cell_275/add:z:0;lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_365/while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_365/while/lstm_cell_275/splitSplit5lstm_365/while/lstm_cell_275/split/split_dim:output:0-lstm_365/while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_365/while/lstm_cell_275/SigmoidSigmoid+lstm_365/while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_365/while/lstm_cell_275/Sigmoid_1Sigmoid+lstm_365/while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_365/while/lstm_cell_275/mulMul*lstm_365/while/lstm_cell_275/Sigmoid_1:y:0lstm_365_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_365/while/lstm_cell_275/ReluRelu+lstm_365/while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_365/while/lstm_cell_275/mul_1Mul(lstm_365/while/lstm_cell_275/Sigmoid:y:0/lstm_365/while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_365/while/lstm_cell_275/add_1AddV2$lstm_365/while/lstm_cell_275/mul:z:0&lstm_365/while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_365/while/lstm_cell_275/Sigmoid_2Sigmoid+lstm_365/while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_365/while/lstm_cell_275/Relu_1Relu&lstm_365/while/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_365/while/lstm_cell_275/mul_2Mul*lstm_365/while/lstm_cell_275/Sigmoid_2:y:01lstm_365/while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_365/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_365_while_placeholder_1lstm_365_while_placeholder&lstm_365/while/lstm_cell_275/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_365/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_365/while/addAddV2lstm_365_while_placeholderlstm_365/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_365/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_365/while/add_1AddV2*lstm_365_while_lstm_365_while_loop_counterlstm_365/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_365/while/IdentityIdentitylstm_365/while/add_1:z:0^lstm_365/while/NoOp*
T0*
_output_shapes
: ?
lstm_365/while/Identity_1Identity0lstm_365_while_lstm_365_while_maximum_iterations^lstm_365/while/NoOp*
T0*
_output_shapes
: t
lstm_365/while/Identity_2Identitylstm_365/while/add:z:0^lstm_365/while/NoOp*
T0*
_output_shapes
: ?
lstm_365/while/Identity_3IdentityClstm_365/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_365/while/NoOp*
T0*
_output_shapes
: ?
lstm_365/while/Identity_4Identity&lstm_365/while/lstm_cell_275/mul_2:z:0^lstm_365/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_365/while/Identity_5Identity&lstm_365/while/lstm_cell_275/add_1:z:0^lstm_365/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_365/while/NoOpNoOp4^lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp3^lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp5^lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_365_while_identity lstm_365/while/Identity:output:0"?
lstm_365_while_identity_1"lstm_365/while/Identity_1:output:0"?
lstm_365_while_identity_2"lstm_365/while/Identity_2:output:0"?
lstm_365_while_identity_3"lstm_365/while/Identity_3:output:0"?
lstm_365_while_identity_4"lstm_365/while/Identity_4:output:0"?
lstm_365_while_identity_5"lstm_365/while/Identity_5:output:0"T
'lstm_365_while_lstm_365_strided_slice_1)lstm_365_while_lstm_365_strided_slice_1_0"~
<lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource>lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0"?
=lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource?lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0"|
;lstm_365_while_lstm_cell_275_matmul_readvariableop_resource=lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0"?
clstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensorelstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp2h
2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp2l
4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1663642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1663642___redundant_placeholder05
1while_while_cond_1663642___redundant_placeholder15
1while_while_cond_1663642___redundant_placeholder25
1while_while_cond_1663642___redundant_placeholder3
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
0__inference_sequential_121_layer_call_fn_1665685

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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665484o
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
while_body_1664786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_275_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_275_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_275_matmul_readvariableop_resource:2(F
4while_lstm_cell_275_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_275_biasadd_readvariableop_resource:(??*while/lstm_cell_275/BiasAdd/ReadVariableOp?)while/lstm_cell_275/MatMul/ReadVariableOp?+while/lstm_cell_275/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_275/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_275/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_275/addAddV2$while/lstm_cell_275/MatMul:product:0&while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_275/BiasAddBiasAddwhile/lstm_cell_275/add:z:02while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_275/splitSplit,while/lstm_cell_275/split/split_dim:output:0$while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_275/SigmoidSigmoid"while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_1Sigmoid"while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mulMul!while/lstm_cell_275/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_275/ReluRelu"while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_1Mulwhile/lstm_cell_275/Sigmoid:y:0&while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/add_1AddV2while/lstm_cell_275/mul:z:0while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_275/Sigmoid_2Sigmoid"while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_275/Relu_1Reluwhile/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_275/mul_2Mul!while/lstm_cell_275/Sigmoid_2:y:0(while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_275/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_275/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_275/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_275/BiasAdd/ReadVariableOp*^while/lstm_cell_275/MatMul/ReadVariableOp,^while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_275_biasadd_readvariableop_resource5while_lstm_cell_275_biasadd_readvariableop_resource_0"n
4while_lstm_cell_275_matmul_1_readvariableop_resource6while_lstm_cell_275_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_275_matmul_readvariableop_resource4while_lstm_cell_275_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_275/BiasAdd/ReadVariableOp*while/lstm_cell_275/BiasAdd/ReadVariableOp2V
)while/lstm_cell_275/MatMul/ReadVariableOp)while/lstm_cell_275/MatMul/ReadVariableOp2Z
+while/lstm_cell_275/MatMul_1/ReadVariableOp+while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1664152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_275_1664176_0:2(/
while_lstm_cell_275_1664178_0:
(+
while_lstm_cell_275_1664180_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_275_1664176:2(-
while_lstm_cell_275_1664178:
()
while_lstm_cell_275_1664180:(??+while/lstm_cell_275/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_275/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_275_1664176_0while_lstm_cell_275_1664178_0while_lstm_cell_275_1664180_0*
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664138?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_275/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_275/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_275/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_275/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_275_1664176while_lstm_cell_275_1664176_0"<
while_lstm_cell_275_1664178while_lstm_cell_275_1664178_0"<
while_lstm_cell_275_1664180while_lstm_cell_275_1664180_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_275/StatefulPartitionedCall+while/lstm_cell_275/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1664785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1664785___redundant_placeholder05
1while_while_cond_1664785___redundant_placeholder15
1while_while_cond_1664785___redundant_placeholder25
1while_while_cond_1664785___redundant_placeholder3
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
while_cond_1667873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1667873___redundant_placeholder05
1while_while_cond_1667873___redundant_placeholder15
1while_while_cond_1667873___redundant_placeholder25
1while_while_cond_1667873___redundant_placeholder3
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668387

inputs>
,lstm_cell_275_matmul_readvariableop_resource:2(@
.lstm_cell_275_matmul_1_readvariableop_resource:
(;
-lstm_cell_275_biasadd_readvariableop_resource:(
identity??$lstm_cell_275/BiasAdd/ReadVariableOp?#lstm_cell_275/MatMul/ReadVariableOp?%lstm_cell_275/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_275/MatMul/ReadVariableOpReadVariableOp,lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_275/MatMulMatMulstrided_slice_2:output:0+lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_275/MatMul_1MatMulzeros:output:0-lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_275/addAddV2lstm_cell_275/MatMul:product:0 lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_275/BiasAddBiasAddlstm_cell_275/add:z:0,lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_275/splitSplit&lstm_cell_275/split/split_dim:output:0lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_275/SigmoidSigmoidlstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_1Sigmoidlstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_275/mulMullstm_cell_275/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_275/ReluRelulstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_1Mullstm_cell_275/Sigmoid:y:0 lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_275/add_1AddV2lstm_cell_275/mul:z:0lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_2Sigmoidlstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_275/Relu_1Relulstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_2Mullstm_cell_275/Sigmoid_2:y:0"lstm_cell_275/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_275_matmul_readvariableop_resource.lstm_cell_275_matmul_1_readvariableop_resource-lstm_cell_275_biasadd_readvariableop_resource*
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
while_body_1668303*
condR
while_cond_1668302*K
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
NoOpNoOp%^lstm_cell_275/BiasAdd/ReadVariableOp$^lstm_cell_275/MatMul/ReadVariableOp&^lstm_cell_275/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_275/BiasAdd/ReadVariableOp$lstm_cell_275/BiasAdd/ReadVariableOp2J
#lstm_cell_275/MatMul/ReadVariableOp#lstm_cell_275/MatMul/ReadVariableOp2N
%lstm_cell_275/MatMul_1/ReadVariableOp%lstm_cell_275/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_365_layer_call_fn_1667793
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664412o
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1668472

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
while_body_1667071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_273_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_273_matmul_readvariableop_resource:	?G
4while_lstm_cell_273_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_273_biasadd_readvariableop_resource:	???*while/lstm_cell_273/BiasAdd/ReadVariableOp?)while/lstm_cell_273/MatMul/ReadVariableOp?+while/lstm_cell_273/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_273/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_273/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_273/addAddV2$while/lstm_cell_273/MatMul:product:0&while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_273/BiasAddBiasAddwhile/lstm_cell_273/add:z:02while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_273/splitSplit,while/lstm_cell_273/split/split_dim:output:0$while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_273/SigmoidSigmoid"while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_1Sigmoid"while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mulMul!while/lstm_cell_273/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_273/ReluRelu"while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_1Mulwhile/lstm_cell_273/Sigmoid:y:0&while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/add_1AddV2while/lstm_cell_273/mul:z:0while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_2Sigmoid"while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_273/Relu_1Reluwhile/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_2Mul!while/lstm_cell_273/Sigmoid_2:y:0(while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_273/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_273/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_273/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_273/BiasAdd/ReadVariableOp*^while/lstm_cell_273/MatMul/ReadVariableOp,^while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_273_biasadd_readvariableop_resource5while_lstm_cell_273_biasadd_readvariableop_resource_0"n
4while_lstm_cell_273_matmul_1_readvariableop_resource6while_lstm_cell_273_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_273_matmul_readvariableop_resource4while_lstm_cell_273_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_273/BiasAdd/ReadVariableOp*while/lstm_cell_273/BiasAdd/ReadVariableOp2V
)while/lstm_cell_273/MatMul/ReadVariableOp)while/lstm_cell_273/MatMul/ReadVariableOp2Z
+while/lstm_cell_273/MatMul_1/ReadVariableOp+while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1663993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_274_1664017_0:	d?0
while_lstm_cell_274_1664019_0:	2?,
while_lstm_cell_274_1664021_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_274_1664017:	d?.
while_lstm_cell_274_1664019:	2?*
while_lstm_cell_274_1664021:	???+while/lstm_cell_274/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_274/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_274_1664017_0while_lstm_cell_274_1664019_0while_lstm_cell_274_1664021_0*
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663934?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_274/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_274/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_274/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_274/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_274_1664017while_lstm_cell_274_1664017_0"<
while_lstm_cell_274_1664019while_lstm_cell_274_1664019_0"<
while_lstm_cell_274_1664021while_lstm_cell_274_1664021_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_274/StatefulPartitionedCall+while/lstm_cell_274/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_274_layer_call_fn_1668521

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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663788o
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
?
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665484

inputs#
lstm_363_1665457:	?#
lstm_363_1665459:	d?
lstm_363_1665461:	?#
lstm_364_1665464:	d?#
lstm_364_1665466:	2?
lstm_364_1665468:	?"
lstm_365_1665471:2("
lstm_365_1665473:
(
lstm_365_1665475:(#
dense_121_1665478:

dense_121_1665480:
identity??!dense_121/StatefulPartitionedCall? lstm_363/StatefulPartitionedCall? lstm_364/StatefulPartitionedCall? lstm_365/StatefulPartitionedCall?
 lstm_363/StatefulPartitionedCallStatefulPartitionedCallinputslstm_363_1665457lstm_363_1665459lstm_363_1665461*
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1665416?
 lstm_364/StatefulPartitionedCallStatefulPartitionedCall)lstm_363/StatefulPartitionedCall:output:0lstm_364_1665464lstm_364_1665466lstm_364_1665468*
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1665251?
 lstm_365/StatefulPartitionedCallStatefulPartitionedCall)lstm_364/StatefulPartitionedCall:output:0lstm_365_1665471lstm_365_1665473lstm_365_1665475*
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1665086?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_365/StatefulPartitionedCall:output:0dense_121_1665478dense_121_1665480*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_1664888y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_121/StatefulPartitionedCall!^lstm_363/StatefulPartitionedCall!^lstm_364/StatefulPartitionedCall!^lstm_365/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 lstm_363/StatefulPartitionedCall lstm_363/StatefulPartitionedCall2D
 lstm_364/StatefulPartitionedCall lstm_364/StatefulPartitionedCall2D
 lstm_365/StatefulPartitionedCall lstm_365/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_365_layer_call_and_return_conditional_losses_1664870

inputs>
,lstm_cell_275_matmul_readvariableop_resource:2(@
.lstm_cell_275_matmul_1_readvariableop_resource:
(;
-lstm_cell_275_biasadd_readvariableop_resource:(
identity??$lstm_cell_275/BiasAdd/ReadVariableOp?#lstm_cell_275/MatMul/ReadVariableOp?%lstm_cell_275/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_275/MatMul/ReadVariableOpReadVariableOp,lstm_cell_275_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_275/MatMulMatMulstrided_slice_2:output:0+lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_275_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_275/MatMul_1MatMulzeros:output:0-lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_275/addAddV2lstm_cell_275/MatMul:product:0 lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_275_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_275/BiasAddBiasAddlstm_cell_275/add:z:0,lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_275/splitSplit&lstm_cell_275/split/split_dim:output:0lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_275/SigmoidSigmoidlstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_1Sigmoidlstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_275/mulMullstm_cell_275/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_275/ReluRelulstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_1Mullstm_cell_275/Sigmoid:y:0 lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_275/add_1AddV2lstm_cell_275/mul:z:0lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_275/Sigmoid_2Sigmoidlstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_275/Relu_1Relulstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_275/mul_2Mullstm_cell_275/Sigmoid_2:y:0"lstm_cell_275/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_275_matmul_readvariableop_resource.lstm_cell_275_matmul_1_readvariableop_resource-lstm_cell_275_biasadd_readvariableop_resource*
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
while_body_1664786*
condR
while_cond_1664785*K
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
NoOpNoOp%^lstm_cell_275/BiasAdd/ReadVariableOp$^lstm_cell_275/MatMul/ReadVariableOp&^lstm_cell_275/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_275/BiasAdd/ReadVariableOp$lstm_cell_275/BiasAdd/ReadVariableOp2J
#lstm_cell_275/MatMul/ReadVariableOp#lstm_cell_275/MatMul/ReadVariableOp2N
%lstm_cell_275/MatMul_1/ReadVariableOp%lstm_cell_275/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_363_layer_call_fn_1666550
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1663521|
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
while_cond_1666784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1666784___redundant_placeholder05
1while_while_cond_1666784___redundant_placeholder15
1while_while_cond_1666784___redundant_placeholder25
1while_while_cond_1666784___redundant_placeholder3
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

lstm_365_while_body_1666022.
*lstm_365_while_lstm_365_while_loop_counter4
0lstm_365_while_lstm_365_while_maximum_iterations
lstm_365_while_placeholder 
lstm_365_while_placeholder_1 
lstm_365_while_placeholder_2 
lstm_365_while_placeholder_3-
)lstm_365_while_lstm_365_strided_slice_1_0i
elstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0:2(Q
?lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0:
(L
>lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0:(
lstm_365_while_identity
lstm_365_while_identity_1
lstm_365_while_identity_2
lstm_365_while_identity_3
lstm_365_while_identity_4
lstm_365_while_identity_5+
'lstm_365_while_lstm_365_strided_slice_1g
clstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensorM
;lstm_365_while_lstm_cell_275_matmul_readvariableop_resource:2(O
=lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource:
(J
<lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource:(??3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp?2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp?4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp?
@lstm_365/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_365/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensor_0lstm_365_while_placeholderIlstm_365/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOpReadVariableOp=lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_365/while/lstm_cell_275/MatMulMatMul9lstm_365/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOpReadVariableOp?lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_365/while/lstm_cell_275/MatMul_1MatMullstm_365_while_placeholder_2<lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_365/while/lstm_cell_275/addAddV2-lstm_365/while/lstm_cell_275/MatMul:product:0/lstm_365/while/lstm_cell_275/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOpReadVariableOp>lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_365/while/lstm_cell_275/BiasAddBiasAdd$lstm_365/while/lstm_cell_275/add:z:0;lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_365/while/lstm_cell_275/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_365/while/lstm_cell_275/splitSplit5lstm_365/while/lstm_cell_275/split/split_dim:output:0-lstm_365/while/lstm_cell_275/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_365/while/lstm_cell_275/SigmoidSigmoid+lstm_365/while/lstm_cell_275/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_365/while/lstm_cell_275/Sigmoid_1Sigmoid+lstm_365/while/lstm_cell_275/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_365/while/lstm_cell_275/mulMul*lstm_365/while/lstm_cell_275/Sigmoid_1:y:0lstm_365_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_365/while/lstm_cell_275/ReluRelu+lstm_365/while/lstm_cell_275/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_365/while/lstm_cell_275/mul_1Mul(lstm_365/while/lstm_cell_275/Sigmoid:y:0/lstm_365/while/lstm_cell_275/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_365/while/lstm_cell_275/add_1AddV2$lstm_365/while/lstm_cell_275/mul:z:0&lstm_365/while/lstm_cell_275/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_365/while/lstm_cell_275/Sigmoid_2Sigmoid+lstm_365/while/lstm_cell_275/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_365/while/lstm_cell_275/Relu_1Relu&lstm_365/while/lstm_cell_275/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_365/while/lstm_cell_275/mul_2Mul*lstm_365/while/lstm_cell_275/Sigmoid_2:y:01lstm_365/while/lstm_cell_275/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_365/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_365_while_placeholder_1lstm_365_while_placeholder&lstm_365/while/lstm_cell_275/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_365/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_365/while/addAddV2lstm_365_while_placeholderlstm_365/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_365/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_365/while/add_1AddV2*lstm_365_while_lstm_365_while_loop_counterlstm_365/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_365/while/IdentityIdentitylstm_365/while/add_1:z:0^lstm_365/while/NoOp*
T0*
_output_shapes
: ?
lstm_365/while/Identity_1Identity0lstm_365_while_lstm_365_while_maximum_iterations^lstm_365/while/NoOp*
T0*
_output_shapes
: t
lstm_365/while/Identity_2Identitylstm_365/while/add:z:0^lstm_365/while/NoOp*
T0*
_output_shapes
: ?
lstm_365/while/Identity_3IdentityClstm_365/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_365/while/NoOp*
T0*
_output_shapes
: ?
lstm_365/while/Identity_4Identity&lstm_365/while/lstm_cell_275/mul_2:z:0^lstm_365/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_365/while/Identity_5Identity&lstm_365/while/lstm_cell_275/add_1:z:0^lstm_365/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_365/while/NoOpNoOp4^lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp3^lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp5^lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_365_while_identity lstm_365/while/Identity:output:0"?
lstm_365_while_identity_1"lstm_365/while/Identity_1:output:0"?
lstm_365_while_identity_2"lstm_365/while/Identity_2:output:0"?
lstm_365_while_identity_3"lstm_365/while/Identity_3:output:0"?
lstm_365_while_identity_4"lstm_365/while/Identity_4:output:0"?
lstm_365_while_identity_5"lstm_365/while/Identity_5:output:0"T
'lstm_365_while_lstm_365_strided_slice_1)lstm_365_while_lstm_365_strided_slice_1_0"~
<lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource>lstm_365_while_lstm_cell_275_biasadd_readvariableop_resource_0"?
=lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource?lstm_365_while_lstm_cell_275_matmul_1_readvariableop_resource_0"|
;lstm_365_while_lstm_cell_275_matmul_readvariableop_resource=lstm_365_while_lstm_cell_275_matmul_readvariableop_resource_0"?
clstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensorelstm_365_while_tensorarrayv2read_tensorlistgetitem_lstm_365_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp3lstm_365/while/lstm_cell_275/BiasAdd/ReadVariableOp2h
2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp2lstm_365/while/lstm_cell_275/MatMul/ReadVariableOp2l
4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp4lstm_365/while/lstm_cell_275/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_121_lstm_364_while_body_1663142L
Hsequential_121_lstm_364_while_sequential_121_lstm_364_while_loop_counterR
Nsequential_121_lstm_364_while_sequential_121_lstm_364_while_maximum_iterations-
)sequential_121_lstm_364_while_placeholder/
+sequential_121_lstm_364_while_placeholder_1/
+sequential_121_lstm_364_while_placeholder_2/
+sequential_121_lstm_364_while_placeholder_3K
Gsequential_121_lstm_364_while_sequential_121_lstm_364_strided_slice_1_0?
?sequential_121_lstm_364_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_364_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_121_lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0:	d?a
Nsequential_121_lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?\
Msequential_121_lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0:	?*
&sequential_121_lstm_364_while_identity,
(sequential_121_lstm_364_while_identity_1,
(sequential_121_lstm_364_while_identity_2,
(sequential_121_lstm_364_while_identity_3,
(sequential_121_lstm_364_while_identity_4,
(sequential_121_lstm_364_while_identity_5I
Esequential_121_lstm_364_while_sequential_121_lstm_364_strided_slice_1?
?sequential_121_lstm_364_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_364_tensorarrayunstack_tensorlistfromtensor]
Jsequential_121_lstm_364_while_lstm_cell_274_matmul_readvariableop_resource:	d?_
Lsequential_121_lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource:	2?Z
Ksequential_121_lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource:	???Bsequential_121/lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp?Asequential_121/lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp?Csequential_121/lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp?
Osequential_121/lstm_364/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_121/lstm_364/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_121_lstm_364_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_364_tensorarrayunstack_tensorlistfromtensor_0)sequential_121_lstm_364_while_placeholderXsequential_121/lstm_364/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_121/lstm_364/while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOpLsequential_121_lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_121/lstm_364/while/lstm_cell_274/MatMulMatMulHsequential_121/lstm_364/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_121/lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_121/lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOpNsequential_121_lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_121/lstm_364/while/lstm_cell_274/MatMul_1MatMul+sequential_121_lstm_364_while_placeholder_2Ksequential_121/lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_121/lstm_364/while/lstm_cell_274/addAddV2<sequential_121/lstm_364/while/lstm_cell_274/MatMul:product:0>sequential_121/lstm_364/while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_121/lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOpMsequential_121_lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_121/lstm_364/while/lstm_cell_274/BiasAddBiasAdd3sequential_121/lstm_364/while/lstm_cell_274/add:z:0Jsequential_121/lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_121/lstm_364/while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_121/lstm_364/while/lstm_cell_274/splitSplitDsequential_121/lstm_364/while/lstm_cell_274/split/split_dim:output:0<sequential_121/lstm_364/while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_121/lstm_364/while/lstm_cell_274/SigmoidSigmoid:sequential_121/lstm_364/while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_121/lstm_364/while/lstm_cell_274/Sigmoid_1Sigmoid:sequential_121/lstm_364/while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_121/lstm_364/while/lstm_cell_274/mulMul9sequential_121/lstm_364/while/lstm_cell_274/Sigmoid_1:y:0+sequential_121_lstm_364_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_121/lstm_364/while/lstm_cell_274/ReluRelu:sequential_121/lstm_364/while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_121/lstm_364/while/lstm_cell_274/mul_1Mul7sequential_121/lstm_364/while/lstm_cell_274/Sigmoid:y:0>sequential_121/lstm_364/while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_121/lstm_364/while/lstm_cell_274/add_1AddV23sequential_121/lstm_364/while/lstm_cell_274/mul:z:05sequential_121/lstm_364/while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_121/lstm_364/while/lstm_cell_274/Sigmoid_2Sigmoid:sequential_121/lstm_364/while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_121/lstm_364/while/lstm_cell_274/Relu_1Relu5sequential_121/lstm_364/while/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_121/lstm_364/while/lstm_cell_274/mul_2Mul9sequential_121/lstm_364/while/lstm_cell_274/Sigmoid_2:y:0@sequential_121/lstm_364/while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_121/lstm_364/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_121_lstm_364_while_placeholder_1)sequential_121_lstm_364_while_placeholder5sequential_121/lstm_364/while/lstm_cell_274/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_121/lstm_364/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_121/lstm_364/while/addAddV2)sequential_121_lstm_364_while_placeholder,sequential_121/lstm_364/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_121/lstm_364/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_121/lstm_364/while/add_1AddV2Hsequential_121_lstm_364_while_sequential_121_lstm_364_while_loop_counter.sequential_121/lstm_364/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_121/lstm_364/while/IdentityIdentity'sequential_121/lstm_364/while/add_1:z:0#^sequential_121/lstm_364/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_364/while/Identity_1IdentityNsequential_121_lstm_364_while_sequential_121_lstm_364_while_maximum_iterations#^sequential_121/lstm_364/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_364/while/Identity_2Identity%sequential_121/lstm_364/while/add:z:0#^sequential_121/lstm_364/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_364/while/Identity_3IdentityRsequential_121/lstm_364/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_121/lstm_364/while/NoOp*
T0*
_output_shapes
: ?
(sequential_121/lstm_364/while/Identity_4Identity5sequential_121/lstm_364/while/lstm_cell_274/mul_2:z:0#^sequential_121/lstm_364/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_121/lstm_364/while/Identity_5Identity5sequential_121/lstm_364/while/lstm_cell_274/add_1:z:0#^sequential_121/lstm_364/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_121/lstm_364/while/NoOpNoOpC^sequential_121/lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOpB^sequential_121/lstm_364/while/lstm_cell_274/MatMul/ReadVariableOpD^sequential_121/lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_121_lstm_364_while_identity/sequential_121/lstm_364/while/Identity:output:0"]
(sequential_121_lstm_364_while_identity_11sequential_121/lstm_364/while/Identity_1:output:0"]
(sequential_121_lstm_364_while_identity_21sequential_121/lstm_364/while/Identity_2:output:0"]
(sequential_121_lstm_364_while_identity_31sequential_121/lstm_364/while/Identity_3:output:0"]
(sequential_121_lstm_364_while_identity_41sequential_121/lstm_364/while/Identity_4:output:0"]
(sequential_121_lstm_364_while_identity_51sequential_121/lstm_364/while/Identity_5:output:0"?
Ksequential_121_lstm_364_while_lstm_cell_274_biasadd_readvariableop_resourceMsequential_121_lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0"?
Lsequential_121_lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resourceNsequential_121_lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0"?
Jsequential_121_lstm_364_while_lstm_cell_274_matmul_readvariableop_resourceLsequential_121_lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0"?
Esequential_121_lstm_364_while_sequential_121_lstm_364_strided_slice_1Gsequential_121_lstm_364_while_sequential_121_lstm_364_strided_slice_1_0"?
?sequential_121_lstm_364_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_364_tensorarrayunstack_tensorlistfromtensor?sequential_121_lstm_364_while_tensorarrayv2read_tensorlistgetitem_sequential_121_lstm_364_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_121/lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOpBsequential_121/lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp2?
Asequential_121/lstm_364/while/lstm_cell_274/MatMul/ReadVariableOpAsequential_121/lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp2?
Csequential_121/lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOpCsequential_121/lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1664636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_274_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_274_matmul_readvariableop_resource:	d?G
4while_lstm_cell_274_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_274_biasadd_readvariableop_resource:	???*while/lstm_cell_274/BiasAdd/ReadVariableOp?)while/lstm_cell_274/MatMul/ReadVariableOp?+while/lstm_cell_274/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_274/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_274/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_274/addAddV2$while/lstm_cell_274/MatMul:product:0&while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_274/BiasAddBiasAddwhile/lstm_cell_274/add:z:02while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_274/splitSplit,while/lstm_cell_274/split/split_dim:output:0$while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_274/SigmoidSigmoid"while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_1Sigmoid"while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mulMul!while/lstm_cell_274/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_274/ReluRelu"while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_1Mulwhile/lstm_cell_274/Sigmoid:y:0&while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/add_1AddV2while/lstm_cell_274/mul:z:0while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_2Sigmoid"while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_274/Relu_1Reluwhile/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_2Mul!while/lstm_cell_274/Sigmoid_2:y:0(while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_274/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_274/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_274/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_274/BiasAdd/ReadVariableOp*^while/lstm_cell_274/MatMul/ReadVariableOp,^while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_274_biasadd_readvariableop_resource5while_lstm_cell_274_biasadd_readvariableop_resource_0"n
4while_lstm_cell_274_matmul_1_readvariableop_resource6while_lstm_cell_274_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_274_matmul_readvariableop_resource4while_lstm_cell_274_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_274/BiasAdd/ReadVariableOp*while/lstm_cell_274/BiasAdd/ReadVariableOp2V
)while/lstm_cell_274/MatMul/ReadVariableOp)while/lstm_cell_274/MatMul/ReadVariableOp2Z
+while/lstm_cell_274/MatMul_1/ReadVariableOp+while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1667686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1667686___redundant_placeholder05
1while_while_cond_1667686___redundant_placeholder15
1while_while_cond_1667686___redundant_placeholder25
1while_while_cond_1667686___redundant_placeholder3
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
lstm_364_while_cond_1665882.
*lstm_364_while_lstm_364_while_loop_counter4
0lstm_364_while_lstm_364_while_maximum_iterations
lstm_364_while_placeholder 
lstm_364_while_placeholder_1 
lstm_364_while_placeholder_2 
lstm_364_while_placeholder_30
,lstm_364_while_less_lstm_364_strided_slice_1G
Clstm_364_while_lstm_364_while_cond_1665882___redundant_placeholder0G
Clstm_364_while_lstm_364_while_cond_1665882___redundant_placeholder1G
Clstm_364_while_lstm_364_while_cond_1665882___redundant_placeholder2G
Clstm_364_while_lstm_364_while_cond_1665882___redundant_placeholder3
lstm_364_while_identity
?
lstm_364/while/LessLesslstm_364_while_placeholder,lstm_364_while_less_lstm_364_strided_slice_1*
T0*
_output_shapes
: ]
lstm_364/while/IdentityIdentitylstm_364/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_364_while_identity lstm_364/while/Identity:output:0*(
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
*__inference_lstm_363_layer_call_fn_1666572

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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1664570s
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
?
?
*__inference_lstm_365_layer_call_fn_1667815

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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1665086o
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
?
*sequential_121_lstm_364_while_cond_1663141L
Hsequential_121_lstm_364_while_sequential_121_lstm_364_while_loop_counterR
Nsequential_121_lstm_364_while_sequential_121_lstm_364_while_maximum_iterations-
)sequential_121_lstm_364_while_placeholder/
+sequential_121_lstm_364_while_placeholder_1/
+sequential_121_lstm_364_while_placeholder_2/
+sequential_121_lstm_364_while_placeholder_3N
Jsequential_121_lstm_364_while_less_sequential_121_lstm_364_strided_slice_1e
asequential_121_lstm_364_while_sequential_121_lstm_364_while_cond_1663141___redundant_placeholder0e
asequential_121_lstm_364_while_sequential_121_lstm_364_while_cond_1663141___redundant_placeholder1e
asequential_121_lstm_364_while_sequential_121_lstm_364_while_cond_1663141___redundant_placeholder2e
asequential_121_lstm_364_while_sequential_121_lstm_364_while_cond_1663141___redundant_placeholder3*
&sequential_121_lstm_364_while_identity
?
"sequential_121/lstm_364/while/LessLess)sequential_121_lstm_364_while_placeholderJsequential_121_lstm_364_while_less_sequential_121_lstm_364_strided_slice_1*
T0*
_output_shapes
: {
&sequential_121/lstm_364/while/IdentityIdentity&sequential_121/lstm_364/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_121_lstm_364_while_identity/sequential_121/lstm_364/while/Identity:output:0*(
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
while_cond_1663992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1663992___redundant_placeholder05
1while_while_cond_1663992___redundant_placeholder15
1while_while_cond_1663992___redundant_placeholder25
1while_while_cond_1663992___redundant_placeholder3
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1665251

inputs?
,lstm_cell_274_matmul_readvariableop_resource:	d?A
.lstm_cell_274_matmul_1_readvariableop_resource:	2?<
-lstm_cell_274_biasadd_readvariableop_resource:	?
identity??$lstm_cell_274/BiasAdd/ReadVariableOp?#lstm_cell_274/MatMul/ReadVariableOp?%lstm_cell_274/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_274/MatMul/ReadVariableOpReadVariableOp,lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_274/MatMulMatMulstrided_slice_2:output:0+lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_274/MatMul_1MatMulzeros:output:0-lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_274/addAddV2lstm_cell_274/MatMul:product:0 lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_274/BiasAddBiasAddlstm_cell_274/add:z:0,lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_274/splitSplit&lstm_cell_274/split/split_dim:output:0lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_274/SigmoidSigmoidlstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_1Sigmoidlstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_274/mulMullstm_cell_274/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_274/ReluRelulstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_1Mullstm_cell_274/Sigmoid:y:0 lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_274/add_1AddV2lstm_cell_274/mul:z:0lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_2Sigmoidlstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_274/Relu_1Relulstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_2Mullstm_cell_274/Sigmoid_2:y:0"lstm_cell_274/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_274_matmul_readvariableop_resource.lstm_cell_274_matmul_1_readvariableop_resource-lstm_cell_274_biasadd_readvariableop_resource*
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
while_body_1665167*
condR
while_cond_1665166*K
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
NoOpNoOp%^lstm_cell_274/BiasAdd/ReadVariableOp$^lstm_cell_274/MatMul/ReadVariableOp&^lstm_cell_274/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_274/BiasAdd/ReadVariableOp$lstm_cell_274/BiasAdd/ReadVariableOp2J
#lstm_cell_274/MatMul/ReadVariableOp#lstm_cell_274/MatMul/ReadVariableOp2N
%lstm_cell_274/MatMul_1/ReadVariableOp%lstm_cell_274/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_363_layer_call_and_return_conditional_losses_1667155

inputs?
,lstm_cell_273_matmul_readvariableop_resource:	?A
.lstm_cell_273_matmul_1_readvariableop_resource:	d?<
-lstm_cell_273_biasadd_readvariableop_resource:	?
identity??$lstm_cell_273/BiasAdd/ReadVariableOp?#lstm_cell_273/MatMul/ReadVariableOp?%lstm_cell_273/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_273/MatMul/ReadVariableOpReadVariableOp,lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_273/MatMulMatMulstrided_slice_2:output:0+lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_273/MatMul_1MatMulzeros:output:0-lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_273/addAddV2lstm_cell_273/MatMul:product:0 lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_273/BiasAddBiasAddlstm_cell_273/add:z:0,lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_273/splitSplit&lstm_cell_273/split/split_dim:output:0lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_273/SigmoidSigmoidlstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_1Sigmoidlstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_273/mulMullstm_cell_273/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_273/ReluRelulstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_1Mullstm_cell_273/Sigmoid:y:0 lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_273/add_1AddV2lstm_cell_273/mul:z:0lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_2Sigmoidlstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_273/Relu_1Relulstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_2Mullstm_cell_273/Sigmoid_2:y:0"lstm_cell_273/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_273_matmul_readvariableop_resource.lstm_cell_273_matmul_1_readvariableop_resource-lstm_cell_273_biasadd_readvariableop_resource*
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
while_body_1667071*
condR
while_cond_1667070*K
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
NoOpNoOp%^lstm_cell_273/BiasAdd/ReadVariableOp$^lstm_cell_273/MatMul/ReadVariableOp&^lstm_cell_273/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_273/BiasAdd/ReadVariableOp$lstm_cell_273/BiasAdd/ReadVariableOp2J
#lstm_cell_273/MatMul/ReadVariableOp#lstm_cell_273/MatMul/ReadVariableOp2N
%lstm_cell_273/MatMul_1/ReadVariableOp%lstm_cell_273/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1666928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_273_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_273_matmul_readvariableop_resource:	?G
4while_lstm_cell_273_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_273_biasadd_readvariableop_resource:	???*while/lstm_cell_273/BiasAdd/ReadVariableOp?)while/lstm_cell_273/MatMul/ReadVariableOp?+while/lstm_cell_273/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_273/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_273/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_273/addAddV2$while/lstm_cell_273/MatMul:product:0&while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_273/BiasAddBiasAddwhile/lstm_cell_273/add:z:02while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_273/splitSplit,while/lstm_cell_273/split/split_dim:output:0$while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_273/SigmoidSigmoid"while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_1Sigmoid"while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mulMul!while/lstm_cell_273/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_273/ReluRelu"while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_1Mulwhile/lstm_cell_273/Sigmoid:y:0&while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/add_1AddV2while/lstm_cell_273/mul:z:0while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_2Sigmoid"while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_273/Relu_1Reluwhile/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_2Mul!while/lstm_cell_273/Sigmoid_2:y:0(while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_273/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_273/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_273/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_273/BiasAdd/ReadVariableOp*^while/lstm_cell_273/MatMul/ReadVariableOp,^while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_273_biasadd_readvariableop_resource5while_lstm_cell_273_biasadd_readvariableop_resource_0"n
4while_lstm_cell_273_matmul_1_readvariableop_resource6while_lstm_cell_273_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_273_matmul_readvariableop_resource4while_lstm_cell_273_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_273/BiasAdd/ReadVariableOp*while/lstm_cell_273/BiasAdd/ReadVariableOp2V
)while/lstm_cell_273/MatMul/ReadVariableOp)while/lstm_cell_273/MatMul/ReadVariableOp2Z
+while/lstm_cell_273/MatMul_1/ReadVariableOp+while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1668302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1668302___redundant_placeholder05
1while_while_cond_1668302___redundant_placeholder15
1while_while_cond_1668302___redundant_placeholder25
1while_while_cond_1668302___redundant_placeholder3
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1663521

inputs(
lstm_cell_273_1663439:	?(
lstm_cell_273_1663441:	d?$
lstm_cell_273_1663443:	?
identity??%lstm_cell_273/StatefulPartitionedCall?while;
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
%lstm_cell_273/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_273_1663439lstm_cell_273_1663441lstm_cell_273_1663443*
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663438n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_273_1663439lstm_cell_273_1663441lstm_cell_273_1663443*
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
while_body_1663452*
condR
while_cond_1663451*K
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
NoOpNoOp&^lstm_cell_273/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_273/StatefulPartitionedCall%lstm_cell_273/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1667687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_274_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_274_matmul_readvariableop_resource:	d?G
4while_lstm_cell_274_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_274_biasadd_readvariableop_resource:	???*while/lstm_cell_274/BiasAdd/ReadVariableOp?)while/lstm_cell_274/MatMul/ReadVariableOp?+while/lstm_cell_274/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_274/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_274/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_274/addAddV2$while/lstm_cell_274/MatMul:product:0&while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_274/BiasAddBiasAddwhile/lstm_cell_274/add:z:02while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_274/splitSplit,while/lstm_cell_274/split/split_dim:output:0$while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_274/SigmoidSigmoid"while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_1Sigmoid"while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mulMul!while/lstm_cell_274/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_274/ReluRelu"while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_1Mulwhile/lstm_cell_274/Sigmoid:y:0&while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/add_1AddV2while/lstm_cell_274/mul:z:0while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_2Sigmoid"while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_274/Relu_1Reluwhile/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_2Mul!while/lstm_cell_274/Sigmoid_2:y:0(while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_274/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_274/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_274/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_274/BiasAdd/ReadVariableOp*^while/lstm_cell_274/MatMul/ReadVariableOp,^while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_274_biasadd_readvariableop_resource5while_lstm_cell_274_biasadd_readvariableop_resource_0"n
4while_lstm_cell_274_matmul_1_readvariableop_resource6while_lstm_cell_274_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_274_matmul_readvariableop_resource4while_lstm_cell_274_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_274/BiasAdd/ReadVariableOp*while/lstm_cell_274/BiasAdd/ReadVariableOp2V
)while/lstm_cell_274/MatMul/ReadVariableOp)while/lstm_cell_274/MatMul/ReadVariableOp2Z
+while/lstm_cell_274/MatMul_1/ReadVariableOp+while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_364_while_body_1666310.
*lstm_364_while_lstm_364_while_loop_counter4
0lstm_364_while_lstm_364_while_maximum_iterations
lstm_364_while_placeholder 
lstm_364_while_placeholder_1 
lstm_364_while_placeholder_2 
lstm_364_while_placeholder_3-
)lstm_364_while_lstm_364_strided_slice_1_0i
elstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0:	d?R
?lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?M
>lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
lstm_364_while_identity
lstm_364_while_identity_1
lstm_364_while_identity_2
lstm_364_while_identity_3
lstm_364_while_identity_4
lstm_364_while_identity_5+
'lstm_364_while_lstm_364_strided_slice_1g
clstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensorN
;lstm_364_while_lstm_cell_274_matmul_readvariableop_resource:	d?P
=lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource:	2?K
<lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource:	???3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp?2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp?4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp?
@lstm_364/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_364/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensor_0lstm_364_while_placeholderIlstm_364/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp=lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_364/while/lstm_cell_274/MatMulMatMul9lstm_364/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp?lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_364/while/lstm_cell_274/MatMul_1MatMullstm_364_while_placeholder_2<lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_364/while/lstm_cell_274/addAddV2-lstm_364/while/lstm_cell_274/MatMul:product:0/lstm_364/while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp>lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_364/while/lstm_cell_274/BiasAddBiasAdd$lstm_364/while/lstm_cell_274/add:z:0;lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_364/while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_364/while/lstm_cell_274/splitSplit5lstm_364/while/lstm_cell_274/split/split_dim:output:0-lstm_364/while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_364/while/lstm_cell_274/SigmoidSigmoid+lstm_364/while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_364/while/lstm_cell_274/Sigmoid_1Sigmoid+lstm_364/while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_364/while/lstm_cell_274/mulMul*lstm_364/while/lstm_cell_274/Sigmoid_1:y:0lstm_364_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_364/while/lstm_cell_274/ReluRelu+lstm_364/while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_364/while/lstm_cell_274/mul_1Mul(lstm_364/while/lstm_cell_274/Sigmoid:y:0/lstm_364/while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_364/while/lstm_cell_274/add_1AddV2$lstm_364/while/lstm_cell_274/mul:z:0&lstm_364/while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_364/while/lstm_cell_274/Sigmoid_2Sigmoid+lstm_364/while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_364/while/lstm_cell_274/Relu_1Relu&lstm_364/while/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_364/while/lstm_cell_274/mul_2Mul*lstm_364/while/lstm_cell_274/Sigmoid_2:y:01lstm_364/while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_364/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_364_while_placeholder_1lstm_364_while_placeholder&lstm_364/while/lstm_cell_274/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_364/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_364/while/addAddV2lstm_364_while_placeholderlstm_364/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_364/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_364/while/add_1AddV2*lstm_364_while_lstm_364_while_loop_counterlstm_364/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_364/while/IdentityIdentitylstm_364/while/add_1:z:0^lstm_364/while/NoOp*
T0*
_output_shapes
: ?
lstm_364/while/Identity_1Identity0lstm_364_while_lstm_364_while_maximum_iterations^lstm_364/while/NoOp*
T0*
_output_shapes
: t
lstm_364/while/Identity_2Identitylstm_364/while/add:z:0^lstm_364/while/NoOp*
T0*
_output_shapes
: ?
lstm_364/while/Identity_3IdentityClstm_364/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_364/while/NoOp*
T0*
_output_shapes
: ?
lstm_364/while/Identity_4Identity&lstm_364/while/lstm_cell_274/mul_2:z:0^lstm_364/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_364/while/Identity_5Identity&lstm_364/while/lstm_cell_274/add_1:z:0^lstm_364/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_364/while/NoOpNoOp4^lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp3^lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp5^lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_364_while_identity lstm_364/while/Identity:output:0"?
lstm_364_while_identity_1"lstm_364/while/Identity_1:output:0"?
lstm_364_while_identity_2"lstm_364/while/Identity_2:output:0"?
lstm_364_while_identity_3"lstm_364/while/Identity_3:output:0"?
lstm_364_while_identity_4"lstm_364/while/Identity_4:output:0"?
lstm_364_while_identity_5"lstm_364/while/Identity_5:output:0"T
'lstm_364_while_lstm_364_strided_slice_1)lstm_364_while_lstm_364_strided_slice_1_0"~
<lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource>lstm_364_while_lstm_cell_274_biasadd_readvariableop_resource_0"?
=lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource?lstm_364_while_lstm_cell_274_matmul_1_readvariableop_resource_0"|
;lstm_364_while_lstm_cell_274_matmul_readvariableop_resource=lstm_364_while_lstm_cell_274_matmul_readvariableop_resource_0"?
clstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensorelstm_364_while_tensorarrayv2read_tensorlistgetitem_lstm_364_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp3lstm_364/while/lstm_cell_274/BiasAdd/ReadVariableOp2h
2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp2lstm_364/while/lstm_cell_274/MatMul/ReadVariableOp2l
4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp4lstm_364/while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1666726
inputs_0?
,lstm_cell_273_matmul_readvariableop_resource:	?A
.lstm_cell_273_matmul_1_readvariableop_resource:	d?<
-lstm_cell_273_biasadd_readvariableop_resource:	?
identity??$lstm_cell_273/BiasAdd/ReadVariableOp?#lstm_cell_273/MatMul/ReadVariableOp?%lstm_cell_273/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_273/MatMul/ReadVariableOpReadVariableOp,lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_273/MatMulMatMulstrided_slice_2:output:0+lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_273/MatMul_1MatMulzeros:output:0-lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_273/addAddV2lstm_cell_273/MatMul:product:0 lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_273/BiasAddBiasAddlstm_cell_273/add:z:0,lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_273/splitSplit&lstm_cell_273/split/split_dim:output:0lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_273/SigmoidSigmoidlstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_1Sigmoidlstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_273/mulMullstm_cell_273/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_273/ReluRelulstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_1Mullstm_cell_273/Sigmoid:y:0 lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_273/add_1AddV2lstm_cell_273/mul:z:0lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_2Sigmoidlstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_273/Relu_1Relulstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_2Mullstm_cell_273/Sigmoid_2:y:0"lstm_cell_273/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_273_matmul_readvariableop_resource.lstm_cell_273_matmul_1_readvariableop_resource-lstm_cell_273_biasadd_readvariableop_resource*
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
while_body_1666642*
condR
while_cond_1666641*K
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
NoOpNoOp%^lstm_cell_273/BiasAdd/ReadVariableOp$^lstm_cell_273/MatMul/ReadVariableOp&^lstm_cell_273/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_273/BiasAdd/ReadVariableOp$lstm_cell_273/BiasAdd/ReadVariableOp2J
#lstm_cell_273/MatMul/ReadVariableOp#lstm_cell_273/MatMul/ReadVariableOp2N
%lstm_cell_273/MatMul_1/ReadVariableOp%lstm_cell_273/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?#
?
while_body_1663643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_273_1663667_0:	?0
while_lstm_cell_273_1663669_0:	d?,
while_lstm_cell_273_1663671_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_273_1663667:	?.
while_lstm_cell_273_1663669:	d?*
while_lstm_cell_273_1663671:	???+while/lstm_cell_273/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_273/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_273_1663667_0while_lstm_cell_273_1663669_0while_lstm_cell_273_1663671_0*
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663584?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_273/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_273/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_273/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_273/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_273_1663667while_lstm_cell_273_1663667_0"<
while_lstm_cell_273_1663669while_lstm_cell_273_1663669_0"<
while_lstm_cell_273_1663671while_lstm_cell_273_1663671_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_273/StatefulPartitionedCall+while/lstm_cell_273/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1664486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_273_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_273_matmul_readvariableop_resource:	?G
4while_lstm_cell_273_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_273_biasadd_readvariableop_resource:	???*while/lstm_cell_273/BiasAdd/ReadVariableOp?)while/lstm_cell_273/MatMul/ReadVariableOp?+while/lstm_cell_273/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_273/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_273/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_273/addAddV2$while/lstm_cell_273/MatMul:product:0&while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_273/BiasAddBiasAddwhile/lstm_cell_273/add:z:02while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_273/splitSplit,while/lstm_cell_273/split/split_dim:output:0$while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_273/SigmoidSigmoid"while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_1Sigmoid"while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mulMul!while/lstm_cell_273/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_273/ReluRelu"while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_1Mulwhile/lstm_cell_273/Sigmoid:y:0&while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/add_1AddV2while/lstm_cell_273/mul:z:0while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_2Sigmoid"while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_273/Relu_1Reluwhile/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_2Mul!while/lstm_cell_273/Sigmoid_2:y:0(while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_273/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_273/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_273/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_273/BiasAdd/ReadVariableOp*^while/lstm_cell_273/MatMul/ReadVariableOp,^while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_273_biasadd_readvariableop_resource5while_lstm_cell_273_biasadd_readvariableop_resource_0"n
4while_lstm_cell_273_matmul_1_readvariableop_resource6while_lstm_cell_273_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_273_matmul_readvariableop_resource4while_lstm_cell_273_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_273/BiasAdd/ReadVariableOp*while/lstm_cell_273/BiasAdd/ReadVariableOp2V
)while/lstm_cell_273/MatMul/ReadVariableOp)while/lstm_cell_273/MatMul/ReadVariableOp2Z
+while/lstm_cell_273/MatMul_1/ReadVariableOp+while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1663802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_274_1663826_0:	d?0
while_lstm_cell_274_1663828_0:	2?,
while_lstm_cell_274_1663830_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_274_1663826:	d?.
while_lstm_cell_274_1663828:	2?*
while_lstm_cell_274_1663830:	???+while/lstm_cell_274/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_274/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_274_1663826_0while_lstm_cell_274_1663828_0while_lstm_cell_274_1663830_0*
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1663788?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_274/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_274/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_274/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_274/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_274_1663826while_lstm_cell_274_1663826_0"<
while_lstm_cell_274_1663828while_lstm_cell_274_1663828_0"<
while_lstm_cell_274_1663830while_lstm_cell_274_1663830_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_274/StatefulPartitionedCall+while/lstm_cell_274/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667342
inputs_0?
,lstm_cell_274_matmul_readvariableop_resource:	d?A
.lstm_cell_274_matmul_1_readvariableop_resource:	2?<
-lstm_cell_274_biasadd_readvariableop_resource:	?
identity??$lstm_cell_274/BiasAdd/ReadVariableOp?#lstm_cell_274/MatMul/ReadVariableOp?%lstm_cell_274/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_274/MatMul/ReadVariableOpReadVariableOp,lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_274/MatMulMatMulstrided_slice_2:output:0+lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_274/MatMul_1MatMulzeros:output:0-lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_274/addAddV2lstm_cell_274/MatMul:product:0 lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_274/BiasAddBiasAddlstm_cell_274/add:z:0,lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_274/splitSplit&lstm_cell_274/split/split_dim:output:0lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_274/SigmoidSigmoidlstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_1Sigmoidlstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_274/mulMullstm_cell_274/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_274/ReluRelulstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_1Mullstm_cell_274/Sigmoid:y:0 lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_274/add_1AddV2lstm_cell_274/mul:z:0lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_2Sigmoidlstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_274/Relu_1Relulstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_2Mullstm_cell_274/Sigmoid_2:y:0"lstm_cell_274/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_274_matmul_readvariableop_resource.lstm_cell_274_matmul_1_readvariableop_resource-lstm_cell_274_biasadd_readvariableop_resource*
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
while_body_1667258*
condR
while_cond_1667257*K
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
NoOpNoOp%^lstm_cell_274/BiasAdd/ReadVariableOp$^lstm_cell_274/MatMul/ReadVariableOp&^lstm_cell_274/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_274/BiasAdd/ReadVariableOp$lstm_cell_274/BiasAdd/ReadVariableOp2J
#lstm_cell_274/MatMul/ReadVariableOp#lstm_cell_274/MatMul/ReadVariableOp2N
%lstm_cell_274/MatMul_1/ReadVariableOp%lstm_cell_274/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1666785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_273_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_273_matmul_readvariableop_resource:	?G
4while_lstm_cell_273_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_273_biasadd_readvariableop_resource:	???*while/lstm_cell_273/BiasAdd/ReadVariableOp?)while/lstm_cell_273/MatMul/ReadVariableOp?+while/lstm_cell_273/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_273/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_273/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_273/addAddV2$while/lstm_cell_273/MatMul:product:0&while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_273/BiasAddBiasAddwhile/lstm_cell_273/add:z:02while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_273/splitSplit,while/lstm_cell_273/split/split_dim:output:0$while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_273/SigmoidSigmoid"while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_1Sigmoid"while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mulMul!while/lstm_cell_273/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_273/ReluRelu"while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_1Mulwhile/lstm_cell_273/Sigmoid:y:0&while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/add_1AddV2while/lstm_cell_273/mul:z:0while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_273/Sigmoid_2Sigmoid"while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_273/Relu_1Reluwhile/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_273/mul_2Mul!while/lstm_cell_273/Sigmoid_2:y:0(while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_273/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_273/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_273/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_273/BiasAdd/ReadVariableOp*^while/lstm_cell_273/MatMul/ReadVariableOp,^while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_273_biasadd_readvariableop_resource5while_lstm_cell_273_biasadd_readvariableop_resource_0"n
4while_lstm_cell_273_matmul_1_readvariableop_resource6while_lstm_cell_273_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_273_matmul_readvariableop_resource4while_lstm_cell_273_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_273/BiasAdd/ReadVariableOp*while/lstm_cell_273/BiasAdd/ReadVariableOp2V
)while/lstm_cell_273/MatMul/ReadVariableOp)while/lstm_cell_273/MatMul/ReadVariableOp2Z
+while/lstm_cell_273/MatMul_1/ReadVariableOp+while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_121_layer_call_and_return_conditional_losses_1668406

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
?
/__inference_lstm_cell_273_layer_call_fn_1668423

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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663438o
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

?
0__inference_sequential_121_layer_call_fn_1664920
lstm_363_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_363_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1664895o
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
_user_specified_namelstm_363_input
?

?
lstm_363_while_cond_1666170.
*lstm_363_while_lstm_363_while_loop_counter4
0lstm_363_while_lstm_363_while_maximum_iterations
lstm_363_while_placeholder 
lstm_363_while_placeholder_1 
lstm_363_while_placeholder_2 
lstm_363_while_placeholder_30
,lstm_363_while_less_lstm_363_strided_slice_1G
Clstm_363_while_lstm_363_while_cond_1666170___redundant_placeholder0G
Clstm_363_while_lstm_363_while_cond_1666170___redundant_placeholder1G
Clstm_363_while_lstm_363_while_cond_1666170___redundant_placeholder2G
Clstm_363_while_lstm_363_while_cond_1666170___redundant_placeholder3
lstm_363_while_identity
?
lstm_363/while/LessLesslstm_363_while_placeholder,lstm_363_while_less_lstm_363_strided_slice_1*
T0*
_output_shapes
: ]
lstm_363/while/IdentityIdentitylstm_363/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_363_while_identity lstm_363/while/Identity:output:0*(
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
/__inference_lstm_cell_273_layer_call_fn_1668440

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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663584o
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

lstm_363_while_body_1665744.
*lstm_363_while_lstm_363_while_loop_counter4
0lstm_363_while_lstm_363_while_maximum_iterations
lstm_363_while_placeholder 
lstm_363_while_placeholder_1 
lstm_363_while_placeholder_2 
lstm_363_while_placeholder_3-
)lstm_363_while_lstm_363_strided_slice_1_0i
elstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0:	?R
?lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0:	d?M
>lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0:	?
lstm_363_while_identity
lstm_363_while_identity_1
lstm_363_while_identity_2
lstm_363_while_identity_3
lstm_363_while_identity_4
lstm_363_while_identity_5+
'lstm_363_while_lstm_363_strided_slice_1g
clstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensorN
;lstm_363_while_lstm_cell_273_matmul_readvariableop_resource:	?P
=lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource:	d?K
<lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource:	???3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp?2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp?4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp?
@lstm_363/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_363/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensor_0lstm_363_while_placeholderIlstm_363/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOpReadVariableOp=lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_363/while/lstm_cell_273/MatMulMatMul9lstm_363/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp?lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_363/while/lstm_cell_273/MatMul_1MatMullstm_363_while_placeholder_2<lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_363/while/lstm_cell_273/addAddV2-lstm_363/while/lstm_cell_273/MatMul:product:0/lstm_363/while/lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp>lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_363/while/lstm_cell_273/BiasAddBiasAdd$lstm_363/while/lstm_cell_273/add:z:0;lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_363/while/lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_363/while/lstm_cell_273/splitSplit5lstm_363/while/lstm_cell_273/split/split_dim:output:0-lstm_363/while/lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_363/while/lstm_cell_273/SigmoidSigmoid+lstm_363/while/lstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_363/while/lstm_cell_273/Sigmoid_1Sigmoid+lstm_363/while/lstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_363/while/lstm_cell_273/mulMul*lstm_363/while/lstm_cell_273/Sigmoid_1:y:0lstm_363_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_363/while/lstm_cell_273/ReluRelu+lstm_363/while/lstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_363/while/lstm_cell_273/mul_1Mul(lstm_363/while/lstm_cell_273/Sigmoid:y:0/lstm_363/while/lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_363/while/lstm_cell_273/add_1AddV2$lstm_363/while/lstm_cell_273/mul:z:0&lstm_363/while/lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_363/while/lstm_cell_273/Sigmoid_2Sigmoid+lstm_363/while/lstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_363/while/lstm_cell_273/Relu_1Relu&lstm_363/while/lstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_363/while/lstm_cell_273/mul_2Mul*lstm_363/while/lstm_cell_273/Sigmoid_2:y:01lstm_363/while/lstm_cell_273/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_363/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_363_while_placeholder_1lstm_363_while_placeholder&lstm_363/while/lstm_cell_273/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_363/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_363/while/addAddV2lstm_363_while_placeholderlstm_363/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_363/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_363/while/add_1AddV2*lstm_363_while_lstm_363_while_loop_counterlstm_363/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_363/while/IdentityIdentitylstm_363/while/add_1:z:0^lstm_363/while/NoOp*
T0*
_output_shapes
: ?
lstm_363/while/Identity_1Identity0lstm_363_while_lstm_363_while_maximum_iterations^lstm_363/while/NoOp*
T0*
_output_shapes
: t
lstm_363/while/Identity_2Identitylstm_363/while/add:z:0^lstm_363/while/NoOp*
T0*
_output_shapes
: ?
lstm_363/while/Identity_3IdentityClstm_363/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_363/while/NoOp*
T0*
_output_shapes
: ?
lstm_363/while/Identity_4Identity&lstm_363/while/lstm_cell_273/mul_2:z:0^lstm_363/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_363/while/Identity_5Identity&lstm_363/while/lstm_cell_273/add_1:z:0^lstm_363/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_363/while/NoOpNoOp4^lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp3^lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp5^lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_363_while_identity lstm_363/while/Identity:output:0"?
lstm_363_while_identity_1"lstm_363/while/Identity_1:output:0"?
lstm_363_while_identity_2"lstm_363/while/Identity_2:output:0"?
lstm_363_while_identity_3"lstm_363/while/Identity_3:output:0"?
lstm_363_while_identity_4"lstm_363/while/Identity_4:output:0"?
lstm_363_while_identity_5"lstm_363/while/Identity_5:output:0"T
'lstm_363_while_lstm_363_strided_slice_1)lstm_363_while_lstm_363_strided_slice_1_0"~
<lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource>lstm_363_while_lstm_cell_273_biasadd_readvariableop_resource_0"?
=lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource?lstm_363_while_lstm_cell_273_matmul_1_readvariableop_resource_0"|
;lstm_363_while_lstm_cell_273_matmul_readvariableop_resource=lstm_363_while_lstm_cell_273_matmul_readvariableop_resource_0"?
clstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensorelstm_363_while_tensorarrayv2read_tensorlistgetitem_lstm_363_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp3lstm_363/while/lstm_cell_273/BiasAdd/ReadVariableOp2h
2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp2lstm_363/while/lstm_cell_273/MatMul/ReadVariableOp2l
4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp4lstm_363/while/lstm_cell_273/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667771

inputs?
,lstm_cell_274_matmul_readvariableop_resource:	d?A
.lstm_cell_274_matmul_1_readvariableop_resource:	2?<
-lstm_cell_274_biasadd_readvariableop_resource:	?
identity??$lstm_cell_274/BiasAdd/ReadVariableOp?#lstm_cell_274/MatMul/ReadVariableOp?%lstm_cell_274/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_274/MatMul/ReadVariableOpReadVariableOp,lstm_cell_274_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_274/MatMulMatMulstrided_slice_2:output:0+lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_274_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_274/MatMul_1MatMulzeros:output:0-lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_274/addAddV2lstm_cell_274/MatMul:product:0 lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_274_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_274/BiasAddBiasAddlstm_cell_274/add:z:0,lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_274/splitSplit&lstm_cell_274/split/split_dim:output:0lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_274/SigmoidSigmoidlstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_1Sigmoidlstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_274/mulMullstm_cell_274/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_274/ReluRelulstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_1Mullstm_cell_274/Sigmoid:y:0 lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_274/add_1AddV2lstm_cell_274/mul:z:0lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_274/Sigmoid_2Sigmoidlstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_274/Relu_1Relulstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_274/mul_2Mullstm_cell_274/Sigmoid_2:y:0"lstm_cell_274/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_274_matmul_readvariableop_resource.lstm_cell_274_matmul_1_readvariableop_resource-lstm_cell_274_biasadd_readvariableop_resource*
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
while_body_1667687*
condR
while_cond_1667686*K
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
NoOpNoOp%^lstm_cell_274/BiasAdd/ReadVariableOp$^lstm_cell_274/MatMul/ReadVariableOp&^lstm_cell_274/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_274/BiasAdd/ReadVariableOp$lstm_cell_274/BiasAdd/ReadVariableOp2J
#lstm_cell_274/MatMul/ReadVariableOp#lstm_cell_274/MatMul/ReadVariableOp2N
%lstm_cell_274/MatMul_1/ReadVariableOp%lstm_cell_274/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1663801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1663801___redundant_placeholder05
1while_while_cond_1663801___redundant_placeholder15
1while_while_cond_1663801___redundant_placeholder25
1while_while_cond_1663801___redundant_placeholder3
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664138

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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1663584

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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1666869
inputs_0?
,lstm_cell_273_matmul_readvariableop_resource:	?A
.lstm_cell_273_matmul_1_readvariableop_resource:	d?<
-lstm_cell_273_biasadd_readvariableop_resource:	?
identity??$lstm_cell_273/BiasAdd/ReadVariableOp?#lstm_cell_273/MatMul/ReadVariableOp?%lstm_cell_273/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_273/MatMul/ReadVariableOpReadVariableOp,lstm_cell_273_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_273/MatMulMatMulstrided_slice_2:output:0+lstm_cell_273/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_273/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_273_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_273/MatMul_1MatMulzeros:output:0-lstm_cell_273/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_273/addAddV2lstm_cell_273/MatMul:product:0 lstm_cell_273/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_273/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_273_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_273/BiasAddBiasAddlstm_cell_273/add:z:0,lstm_cell_273/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_273/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_273/splitSplit&lstm_cell_273/split/split_dim:output:0lstm_cell_273/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_273/SigmoidSigmoidlstm_cell_273/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_1Sigmoidlstm_cell_273/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_273/mulMullstm_cell_273/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_273/ReluRelulstm_cell_273/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_1Mullstm_cell_273/Sigmoid:y:0 lstm_cell_273/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_273/add_1AddV2lstm_cell_273/mul:z:0lstm_cell_273/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_273/Sigmoid_2Sigmoidlstm_cell_273/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_273/Relu_1Relulstm_cell_273/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_273/mul_2Mullstm_cell_273/Sigmoid_2:y:0"lstm_cell_273/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_273_matmul_readvariableop_resource.lstm_cell_273_matmul_1_readvariableop_resource-lstm_cell_273_biasadd_readvariableop_resource*
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
while_body_1666785*
condR
while_cond_1666784*K
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
NoOpNoOp%^lstm_cell_273/BiasAdd/ReadVariableOp$^lstm_cell_273/MatMul/ReadVariableOp&^lstm_cell_273/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_273/BiasAdd/ReadVariableOp$lstm_cell_273/BiasAdd/ReadVariableOp2J
#lstm_cell_273/MatMul/ReadVariableOp#lstm_cell_273/MatMul/ReadVariableOp2N
%lstm_cell_273/MatMul_1/ReadVariableOp%lstm_cell_273/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1667401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_274_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_274_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_274_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_274_matmul_readvariableop_resource:	d?G
4while_lstm_cell_274_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_274_biasadd_readvariableop_resource:	???*while/lstm_cell_274/BiasAdd/ReadVariableOp?)while/lstm_cell_274/MatMul/ReadVariableOp?+while/lstm_cell_274/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_274/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_274_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_274/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_274/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_274/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_274_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_274/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_274/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_274/addAddV2$while/lstm_cell_274/MatMul:product:0&while/lstm_cell_274/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_274/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_274_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_274/BiasAddBiasAddwhile/lstm_cell_274/add:z:02while/lstm_cell_274/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_274/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_274/splitSplit,while/lstm_cell_274/split/split_dim:output:0$while/lstm_cell_274/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_274/SigmoidSigmoid"while/lstm_cell_274/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_1Sigmoid"while/lstm_cell_274/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mulMul!while/lstm_cell_274/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_274/ReluRelu"while/lstm_cell_274/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_1Mulwhile/lstm_cell_274/Sigmoid:y:0&while/lstm_cell_274/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/add_1AddV2while/lstm_cell_274/mul:z:0while/lstm_cell_274/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_274/Sigmoid_2Sigmoid"while/lstm_cell_274/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_274/Relu_1Reluwhile/lstm_cell_274/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_274/mul_2Mul!while/lstm_cell_274/Sigmoid_2:y:0(while/lstm_cell_274/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_274/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_274/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_274/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_274/BiasAdd/ReadVariableOp*^while/lstm_cell_274/MatMul/ReadVariableOp,^while/lstm_cell_274/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_274_biasadd_readvariableop_resource5while_lstm_cell_274_biasadd_readvariableop_resource_0"n
4while_lstm_cell_274_matmul_1_readvariableop_resource6while_lstm_cell_274_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_274_matmul_readvariableop_resource4while_lstm_cell_274_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_274/BiasAdd/ReadVariableOp*while/lstm_cell_274/BiasAdd/ReadVariableOp2V
)while/lstm_cell_274/MatMul/ReadVariableOp)while/lstm_cell_274/MatMul/ReadVariableOp2Z
+while/lstm_cell_274/MatMul_1/ReadVariableOp+while/lstm_cell_274/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_275_layer_call_fn_1668619

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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1664138o
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1668668

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
while_cond_1666927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1666927___redundant_placeholder05
1while_while_cond_1666927___redundant_placeholder15
1while_while_cond_1666927___redundant_placeholder25
1while_while_cond_1666927___redundant_placeholder3
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
0__inference_sequential_121_layer_call_fn_1665536
lstm_363_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_363_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665484o
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
_user_specified_namelstm_363_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_363_input;
 serving_default_lstm_363_input:0?????????=
	dense_1210
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
2dense_121/kernel
:2dense_121/bias
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
0:.	?2lstm_363/lstm_cell_363/kernel
::8	d?2'lstm_363/lstm_cell_363/recurrent_kernel
*:(?2lstm_363/lstm_cell_363/bias
0:.	d?2lstm_364/lstm_cell_364/kernel
::8	2?2'lstm_364/lstm_cell_364/recurrent_kernel
*:(?2lstm_364/lstm_cell_364/bias
/:-2(2lstm_365/lstm_cell_365/kernel
9:7
(2'lstm_365/lstm_cell_365/recurrent_kernel
):'(2lstm_365/lstm_cell_365/bias
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
2Adam/dense_121/kernel/m
!:2Adam/dense_121/bias/m
5:3	?2$Adam/lstm_363/lstm_cell_363/kernel/m
?:=	d?2.Adam/lstm_363/lstm_cell_363/recurrent_kernel/m
/:-?2"Adam/lstm_363/lstm_cell_363/bias/m
5:3	d?2$Adam/lstm_364/lstm_cell_364/kernel/m
?:=	2?2.Adam/lstm_364/lstm_cell_364/recurrent_kernel/m
/:-?2"Adam/lstm_364/lstm_cell_364/bias/m
4:22(2$Adam/lstm_365/lstm_cell_365/kernel/m
>:<
(2.Adam/lstm_365/lstm_cell_365/recurrent_kernel/m
.:,(2"Adam/lstm_365/lstm_cell_365/bias/m
':%
2Adam/dense_121/kernel/v
!:2Adam/dense_121/bias/v
5:3	?2$Adam/lstm_363/lstm_cell_363/kernel/v
?:=	d?2.Adam/lstm_363/lstm_cell_363/recurrent_kernel/v
/:-?2"Adam/lstm_363/lstm_cell_363/bias/v
5:3	d?2$Adam/lstm_364/lstm_cell_364/kernel/v
?:=	2?2.Adam/lstm_364/lstm_cell_364/recurrent_kernel/v
/:-?2"Adam/lstm_364/lstm_cell_364/bias/v
4:22(2$Adam/lstm_365/lstm_cell_365/kernel/v
>:<
(2.Adam/lstm_365/lstm_cell_365/recurrent_kernel/v
.:,(2"Adam/lstm_365/lstm_cell_365/bias/v
?2?
0__inference_sequential_121_layer_call_fn_1664920
0__inference_sequential_121_layer_call_fn_1665658
0__inference_sequential_121_layer_call_fn_1665685
0__inference_sequential_121_layer_call_fn_1665536?
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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1666112
K__inference_sequential_121_layer_call_and_return_conditional_losses_1666539
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665566
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665596?
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
"__inference__wrapped_model_1663371lstm_363_input"?
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
*__inference_lstm_363_layer_call_fn_1666550
*__inference_lstm_363_layer_call_fn_1666561
*__inference_lstm_363_layer_call_fn_1666572
*__inference_lstm_363_layer_call_fn_1666583?
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1666726
E__inference_lstm_363_layer_call_and_return_conditional_losses_1666869
E__inference_lstm_363_layer_call_and_return_conditional_losses_1667012
E__inference_lstm_363_layer_call_and_return_conditional_losses_1667155?
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
*__inference_lstm_364_layer_call_fn_1667166
*__inference_lstm_364_layer_call_fn_1667177
*__inference_lstm_364_layer_call_fn_1667188
*__inference_lstm_364_layer_call_fn_1667199?
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667342
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667485
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667628
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667771?
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
*__inference_lstm_365_layer_call_fn_1667782
*__inference_lstm_365_layer_call_fn_1667793
*__inference_lstm_365_layer_call_fn_1667804
*__inference_lstm_365_layer_call_fn_1667815?
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1667958
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668101
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668244
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668387?
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
+__inference_dense_121_layer_call_fn_1668396?
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
F__inference_dense_121_layer_call_and_return_conditional_losses_1668406?
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
%__inference_signature_wrapper_1665631lstm_363_input"?
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
/__inference_lstm_cell_273_layer_call_fn_1668423
/__inference_lstm_cell_273_layer_call_fn_1668440?
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1668472
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1668504?
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
/__inference_lstm_cell_274_layer_call_fn_1668521
/__inference_lstm_cell_274_layer_call_fn_1668538?
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1668570
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1668602?
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
/__inference_lstm_cell_275_layer_call_fn_1668619
/__inference_lstm_cell_275_layer_call_fn_1668636?
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1668668
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1668700?
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
"__inference__wrapped_model_1663371?-./012345!";?8
1?.
,?)
lstm_363_input?????????
? "5?2
0
	dense_121#? 
	dense_121??????????
F__inference_dense_121_layer_call_and_return_conditional_losses_1668406\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_121_layer_call_fn_1668396O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_363_layer_call_and_return_conditional_losses_1666726?-./O?L
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1666869?-./O?L
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1667012q-./??<
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
E__inference_lstm_363_layer_call_and_return_conditional_losses_1667155q-./??<
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
*__inference_lstm_363_layer_call_fn_1666550}-./O?L
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
*__inference_lstm_363_layer_call_fn_1666561}-./O?L
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
*__inference_lstm_363_layer_call_fn_1666572d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_363_layer_call_fn_1666583d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667342?012O?L
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667485?012O?L
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667628q012??<
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
E__inference_lstm_364_layer_call_and_return_conditional_losses_1667771q012??<
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
*__inference_lstm_364_layer_call_fn_1667166}012O?L
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
*__inference_lstm_364_layer_call_fn_1667177}012O?L
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
*__inference_lstm_364_layer_call_fn_1667188d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_364_layer_call_fn_1667199d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_365_layer_call_and_return_conditional_losses_1667958}345O?L
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668101}345O?L
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668244m345??<
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
E__inference_lstm_365_layer_call_and_return_conditional_losses_1668387m345??<
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
*__inference_lstm_365_layer_call_fn_1667782p345O?L
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
*__inference_lstm_365_layer_call_fn_1667793p345O?L
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
*__inference_lstm_365_layer_call_fn_1667804`345??<
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
*__inference_lstm_365_layer_call_fn_1667815`345??<
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1668472?-./??}
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
J__inference_lstm_cell_273_layer_call_and_return_conditional_losses_1668504?-./??}
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
/__inference_lstm_cell_273_layer_call_fn_1668423?-./??}
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
/__inference_lstm_cell_273_layer_call_fn_1668440?-./??}
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1668570?012??}
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
J__inference_lstm_cell_274_layer_call_and_return_conditional_losses_1668602?012??}
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
/__inference_lstm_cell_274_layer_call_fn_1668521?012??}
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
/__inference_lstm_cell_274_layer_call_fn_1668538?012??}
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1668668?345??}
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
J__inference_lstm_cell_275_layer_call_and_return_conditional_losses_1668700?345??}
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
/__inference_lstm_cell_275_layer_call_fn_1668619?345??}
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
/__inference_lstm_cell_275_layer_call_fn_1668636?345??}
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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665566y-./012345!"C?@
9?6
,?)
lstm_363_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_121_layer_call_and_return_conditional_losses_1665596y-./012345!"C?@
9?6
,?)
lstm_363_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_121_layer_call_and_return_conditional_losses_1666112q-./012345!";?8
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
K__inference_sequential_121_layer_call_and_return_conditional_losses_1666539q-./012345!";?8
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
0__inference_sequential_121_layer_call_fn_1664920l-./012345!"C?@
9?6
,?)
lstm_363_input?????????
p 

 
? "???????????
0__inference_sequential_121_layer_call_fn_1665536l-./012345!"C?@
9?6
,?)
lstm_363_input?????????
p

 
? "???????????
0__inference_sequential_121_layer_call_fn_1665658d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_121_layer_call_fn_1665685d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1665631?-./012345!"M?J
? 
C?@
>
lstm_363_input,?)
lstm_363_input?????????"5?2
0
	dense_121#? 
	dense_121?????????